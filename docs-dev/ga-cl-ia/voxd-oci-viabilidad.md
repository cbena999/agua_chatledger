# Análisis de Viabilidad: Whisper en VM OCI Always Free (ARM A1)

**Fecha:** 2026-04-10  
**Contexto:** Evaluar si el stack Voxd/Whisper que corre en Host "Roja Dell S1" puede ejecutarse eficientemente en una VM OCI Always Free, y qué modelos serían óptimos para esa arquitectura.

---

## 1. Especificaciones de la VM OCI

| Característica | Valor |
|:---|:---|
| **Shape** | VM.Standard.A1.Flex |
| **Arquitectura CPU** | ARM AArch64 (Ampere A1) |
| **S.O.** | Ubuntu 22.04.5 LTS (kernel 6.8.0-1029-oracle aarch64) |
| **OCPUs** | 4 (cores ARM) |
| **Memoria RAM** | 24 GB |
| **Red** | 4 Gbps |
| **Almacenamiento** | 47 GB (boot volume) |
| **GPU** | **Ninguna** — CPU-only |
| **Egress/Ingress** | 10 GB/mes (costo extra si excede) |
| **Seguridad** | BM Confidential Computing |
| **Uptime** | 7×24 garantizado (Always Free) |

---

## 2. Diferencias Críticas vs. Host Roja Dell S1

| Factor | Roja Dell S1 | OCI VM A1 |
|:---|:---|:---|
| **CPU** | Intel x86_64 (i7, ~8 threads) | ARM AArch64 (Ampere, 4 OCPUs = 4 threads) |
| **GPU** | NVIDIA GTX 1050 Ti (CUDA 12.2) | **Sin GPU** |
| **RAM** | ~16 GB sistema | **24 GB** (ventaja) |
| **Binario actual** | whisper-cli x86_64+CUDA 71 MB | Incompatible — requiere recompilación ARM |
| **CUDA** | Sí | **No disponible** |
| **Display/X11** | KDE Plasma X11 | Sin interfaz gráfica (headless) |
| **Uso de Voxd UI** | Tray app con hotkey Ctrl+J | **No aplica** — sin GUI |

---

## 3. Viabilidad del Modelo Actual (large-v3-turbo)

### 3.1 Análisis de Recursos

El modelo `ggml-large-v3-turbo.bin` pesa **1.6 GB** y en CPU requiere:
- **RAM mínima en uso:** ~3–4 GB para inferencia
- **RAM disponible en OCI:** 24 GB — suficiente
- **Tiempo de transcripción en CPU x86 (sin CUDA):** ~15–30 seg/fragmento
- **Tiempo estimado en ARM Ampere A1 (4 cores):** ~20–45 seg/fragmento

### 3.2 Veredicto

| Criterio | Resultado |
|:---|:---|
| ¿Corre técnicamente? | **Sí**, previa recompilación para ARM |
| ¿Rendimiento aceptable? | **Marginal** — 20–45s latencia por fragmento |
| ¿Recomendable como STT interactivo? | **No** — latencia inaceptable para dictado en tiempo real |
| ¿Recomendable para batch/asíncrono? | **Sí** — procesamiento diferido de audio |

### 3.3 Nota sobre Compilación ARM

El binario actual (`whisper-cli x86_64+CUDA`) es **incompatible con ARM**. Para correr en OCI A1 se necesitaría:
```bash
# En OCI VM (aarch64):
git clone https://github.com/ggerganov/whisper.cpp
cmake -B build \
  -DGGML_CUDA=OFF \        # No hay GPU
  -DGGML_BLAS=ON \         # OpenBLAS para aceleración CPU ARM
  -DCMAKE_BUILD_TYPE=Release
make -C build -j4 whisper-cli
```
Y opcionalmente con soporte **NEON** (SIMD de ARM) que whisper.cpp ya incluye por defecto para AArch64.

---

## 4. Modelos Whisper Recomendados para OCI A1

Ordenados por viabilidad en esta VM:

### 4.1 `whisper-small` — **RECOMENDADO PRINCIPAL**

| Parámetro | Valor |
|:---|:---|
| Tamaño modelo | 466 MB |
| Parámetros | 244 M |
| RAM requerida | ~1.0 GB |
| Latencia en A1 (4 cores) | **~3–6 seg/fragmento** |
| Precisión español | Buena (WER ~15%) |
| Multilingüe | Sí |

**Evaluación:** Equilibrio óptimo rendimiento/precisión para ARM sin GPU. Con el prompt técnico aplicado a Whisper, la precisión sube notablemente para vocabulario del dominio.

### 4.2 `whisper-base` — **Respaldo rápido**

| Parámetro | Valor |
|:---|:---|
| Tamaño modelo | 142 MB |
| Parámetros | 74 M |
| RAM requerida | ~0.5 GB |
| Latencia en A1 (4 cores) | **~1–2 seg/fragmento** |
| Precisión español | Aceptable (WER ~22%) |

**Evaluación:** Para uso sin exigencias de precisión alta o cuando la latencia es crítica.

### 4.3 `whisper-medium` — **Opción intermedia**

| Parámetro | Valor |
|:---|:---|
| Tamaño modelo | 1.5 GB |
| Parámetros | 769 M |
| RAM requerida | ~2.5 GB |
| Latencia en A1 (4 cores) | **~12–20 seg/fragmento** |
| Precisión español | Muy buena (WER ~8%) |

**Evaluación:** Viable para batch pero no para tiempo real. Si el caso de uso es transcripción diferida de grabaciones, es el modelo más conveniente.

### 4.4 `whisper-large-v3-turbo` (actual) — **Solo batch**

| Parámetro | Valor |
|:---|:---|
| Tamaño modelo | 1.6 GB |
| RAM requerida | ~3.5 GB |
| Latencia en A1 (4 cores) | **~25–50 seg/fragmento** |
| Precisión español | Máxima (WER ~5%) |

**Evaluación:** Solo recomendable para procesar archivos de audio offline, no para STT interactivo.

---

## 5. Modelos Alternativos OpenSource Eficientes para OCI A1

### 5.1 `faster-whisper` (CTranslate2) — **RECOMENDADO ALTERNATIVO**

Reimplementación de Whisper con CTranslate2. Hasta **4× más rápido** que whisper.cpp en CPU, con menor uso de RAM gracias a cuantización int8.

| Modelo | RAM | Latencia A1 estimada | Precisión |
|:---|:---|:---|:---|
| `small` int8 | ~500 MB | **~1–2 seg** | Buena |
| `medium` int8 | ~1.2 GB | **~4–8 seg** | Muy buena |
| `large-v3` int8 | ~2.0 GB | **~10–18 seg** | Máxima |

```bash
pip install faster-whisper
python -c "
from faster_whisper import WhisperModel
model = WhisperModel('small', device='cpu', compute_type='int8')
segments, info = model.transcribe('audio.wav', language='es')
"
```

**Ventaja clave:** El motor int8 de CTranslate2 explota las instrucciones NEON de ARM Ampere de forma eficiente.

### 5.2 `whisper.cpp` con OpenBLAS — **Variante optimizada ARM**

Compilar whisper.cpp con OpenBLAS activa las rutinas BLAS optimizadas para ARM:
```bash
apt install libopenblas-dev
cmake -B build -DGGML_BLAS=ON -DGGML_BLAS_VENDOR=OpenBLAS
```
Mejora ~20–30% sobre la compilación básica.

### 5.3 `vosk` — **Alternativa ligera offline**

Motor STT ruso/multilingüe, muy ligero, sin dependencia de CUDA:

| Aspecto | Detalle |
|:---|:---|
| Modelo español grande | ~1.3 GB |
| RAM requerida | ~500 MB |
| Latencia en CPU ARM | **~0.5–1.5 seg** (streaming) |
| Precisión | Inferior a Whisper para español técnico |

**Ventaja:** Latencia muy baja gracias a reconocimiento en streaming (no por fragmentos).  
**Desventaja:** Menor precisión en español técnico con jerga de programación vs Whisper.

### 5.4 `moonshine` (Useful Sensors) — **Diseñado para edge ARM**

Modelo STT optimizado específicamente para dispositivos ARM (Raspberry Pi, Apple Silicon, etc.):

| Aspecto | Detalle |
|:---|:---|
| Tamaño | ~400 MB |
| Latencia ARM | **~1–3 seg** |
| Idioma | Inglés principalmente (español limitado) |
| Licencia | Apache 2.0 |

**Limitación:** Soporte español aún experimental al corte de conocimiento (ago-2025).

---

## 6. Casos de Uso Recomendados en OCI A1

### Caso A — API REST de Transcripción (Recomendado)

Desplegar `faster-whisper small int8` como servicio HTTP interno:

```
Cliente (Roja Dell S1 / otros) ──HTTP POST audio──► OCI VM A1
                                                    faster-whisper small
                                                    ◄── texto transcrito ──
```

- Latencia round-trip aceptable (~2–4 seg total incluyendo red)
- Permite centralizar el modelo y servir múltiples clientes
- Usa solo ~600 MB de los 24 GB de RAM disponibles
- La red interna OCI no consume egress

**Stack sugerido:**
```bash
pip install faster-whisper flask
# API mínima: endpoint POST /transcribe (audio wav/mp3) → json {"text": "..."}
```

### Caso B — Procesamiento Batch Nocturno

Usar `large-v3-turbo` o `medium` para transcribir grabaciones acumuladas del día:
- Calidad máxima sin restricción de latencia
- Aprovechar los 24 GB de RAM y los 4 cores ARM al máximo
- Programar con cron, sin afectar uso interactivo

### Caso C — STT Interactivo con `small` (Directo)

Si se adapta Voxd para conectarse a un backend remoto (modificando `transcriber.py` para enviar audio vía HTTP en lugar de invocar whisper-cli local), OCI podría servir como motor remoto de baja latencia con el modelo `small`.

---

## 7. Consideraciones de Red y Egress

| Operación | Tamaño estimado | Impacto en cuota 10 GB/mes |
|:---|:---|:---|
| 1 fragmento audio (5 seg, 16kHz mono) | ~160 KB | Negligible |
| 100 transcripciones/día × 30 días | ~480 MB/mes | **4.8%** de cuota |
| 500 transcripciones/día × 30 días | ~2.4 GB/mes | **24%** — vigilar |
| Descarga modelo `small` (466 MB) | 466 MB | Única, no recurrente |

**Recomendación:** Con uso moderado (≤200 transcripciones/día), el egress se mantiene muy por debajo del límite de 10 GB/mes.

---

## 8. Tabla Resumen de Recomendaciones

| Modelo | Backend | Caso de uso | Latencia est. | RAM | Viabilidad |
|:---|:---|:---|:---|:---|:---|
| `faster-whisper small int8` | CTranslate2 | STT interactivo API | 1–2 seg | 500 MB | ⭐⭐⭐ ÓPTIMO |
| `whisper small` | whisper.cpp+BLAS | STT interactivo directo | 3–6 seg | 1.0 GB | ⭐⭐ Bueno |
| `faster-whisper medium int8` | CTranslate2 | Batch/alta precisión | 4–8 seg | 1.2 GB | ⭐⭐ Bueno |
| `whisper medium` | whisper.cpp+BLAS | Batch offline | 12–20 seg | 2.5 GB | ⭐ Marginal |
| `whisper large-v3-turbo` | whisper.cpp | Batch alta precisión | 25–50 seg | 3.5 GB | ⚠ Solo batch |
| `vosk es large` | vosk | STT streaming | 0.5–1.5 seg | 500 MB | ⭐ (precisión baja) |

---

## 9. Conclusiones

1. **El binario actual (whisper-cli x86_64+CUDA) no es compatible** con la VM OCI A1 (ARM). Se requiere recompilación para AArch64.

2. **El modelo large-v3-turbo no es adecuado para STT interactivo** en OCI A1 sin GPU; la latencia de 25–50 seg lo hace inviable para dictado.

3. **El escenario más eficiente es desplegar `faster-whisper small int8`** como API REST. Ofrece ~2 seg de latencia, consume ~500 MB de RAM (de 24 GB disponibles) y aprovecha NEON de Ampere A1.

4. **La VM OCI A1 tiene RAM abundante (24 GB)** — el cuello de botella es el cómputo (4 cores ARM, sin GPU), no la memoria.

5. **Para máxima precisión sin restricción de tiempo**, el modelo `large-v3-turbo` o `medium` con `faster-whisper int8` es viable en modo batch nocturno.

6. **El egress no es problema** con uso moderado; 100–200 transcripciones/día consumen <1 GB/mes de los 10 GB de cuota.

---

## 10. Próximos Pasos Sugeridos

- [ ] Compilar `whisper.cpp` para AArch64 en la VM OCI con OpenBLAS
- [ ] Instalar y benchmarkear `faster-whisper small int8` en OCI
- [ ] Implementar API REST mínima (Flask/FastAPI) en OCI como servicio de transcripción
- [ ] Modificar `transcriber.py` en Voxd para soportar backend remoto HTTP (opcional)
- [ ] Evaluar `vosk` si se requiere streaming real con baja latencia

---

*Documento generado: 2026-04-10 | Referencia: voxd-reporte-funcional.md*
