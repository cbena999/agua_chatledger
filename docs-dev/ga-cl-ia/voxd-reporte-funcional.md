# Reporte Funcional-Técnico: Instalación Voxd en Host "Roja Dell S1"

**Fecha:** 2026-04-10  
**Preparado por:** Claude Code / Sesión de trabajo  
**Host:** Roja Dell S1 — Ubuntu 22.04.5 LTS x86_64, KDE Plasma 5.24.7, X11  
**Alcance:** Dictado de voz por IA para flujo de trabajo con VS Code y Google Antigravity/Claude Code

---

## 1. Objetivo Logrado

Habilitar dictado de voz continuo en español mexicano técnico, activado por hotkey global (**Ctrl+J**), con reconocimiento de vocabulario especializado en programación web y gestión de agua potable, acelerado por GPU NVIDIA GTX 1050 Ti vía CUDA.

---

## 2. Stack Instalado

| Componente | Versión / Detalle |
|:---|:---|
| **voxd** | v1.7.0 — UI tray, motor STT, hotkey daemon |
| **whisper.cpp** | Compilado estático con CUDA 12.2 (`whisper-cli`, 71 MB) |
| **Modelo STT activo** | `ggml-large-v3-turbo.bin` — 1.6 GB, multilingüe, máxima precisión |
| **Modelos disponibles** | `ggml-base.en.bin` (142 MB) · `ggml-small.bin` (466 MB) |
| **GPU Backend** | CUDA 12.2 / GTX 1050 Ti |
| **Python runtime** | Python 3.10.12 · venv `/opt/voxd/.venv` |
| **CMake** | 4.3.1 (actualizado vía pip — 3.22.1 de apt insuficiente para compilar whisper.cpp) |
| **S.O.** | Ubuntu 22.04.5 LTS x86_64 |
| **Sesión gráfica** | KDE Plasma 5.24.7 / X11 (DISPLAY :0) |

---

## 3. Arquitectura de la Solución

```
┌─────────────────────────────────────────────────────────────────┐
│  KDE Plasma (X11 / DISPLAY :0)                                  │
│                                                                 │
│  Hotkey: Ctrl+J ──► voxd-trigger.sh ──► /usr/bin/voxd --trigger │
│                                                     │           │
│                         ┌───────────────────────────┘           │
│                         ▼                                       │
│              voxd-tray (systemd user service)                   │
│              Python 3.10 · /opt/voxd/.venv                      │
│                         │                                       │
│              ┌──────────┴──────────┐                           │
│              │ Graba audio (PortAudio / sounddevice)           │
│              │ Nivel mic: 0.6 · VAD FLUX mode                  │
│              └──────────┬──────────┘                           │
│                         │ .wav temporal                        │
│                         ▼                                       │
│              whisper-cli (71 MB, CUDA estático)                 │
│              └── Modelo: ggml-large-v3-turbo.bin (1.6 GB)       │
│              └── Backend: CUDA 12.2 / GTX 1050 Ti              │
│              └── Threads: 8 · Language: es                     │
│              └── Prompt: vocabulario técnico                    │
│                         │ texto transcrito                     │
│                         ▼                                       │
│              xdotool type / xclip ──► foco activo (VS Code etc) │
└─────────────────────────────────────────────────────────────────┘
```

---

## 4. Ruta de Instalación (Resumen Cronológico)

### Fase 1 — Dependencias del Sistema
```bash
apt install xdotool xclip libportaudio2 libglib2.0-dev libxcb-cursor0
pip install cmake==4.3.1   # versión apt insuficiente para whisper.cpp
```

### Fase 2 — Instalación de Voxd
```bash
dpkg -i voxd_1.7.0_amd64.deb
# Dependencias Python faltantes resueltas con paquetes ficticios v99.0:
# python3-pyqt6 y python3-pyperclip (PyPI ya las satisface en .venv)
```

### Fase 3 — Modelo Whisper
```bash
voxd model --download large-v3-turbo
# Descarga: ~/.local/share/voxd/models/ggml-large-v3-turbo.bin (1.6 GB)
```

### Fase 4 — Compilación Nativa whisper.cpp con CUDA
```bash
git clone https://github.com/ggerganov/whisper.cpp
cmake -B build \
  -DGGML_CUDA=ON \
  -DGGML_BLAS=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_SHARED_LIBS=OFF    # linking estático: evita problemas .so
make -C build -j8 whisper-cli
cp build/bin/whisper-cli ~/.local/share/voxd/bin/
# Resultado: binario 71 MB, sin dependencias dinámicas rotas
```

### Fase 5 — Configuración y Optimizaciones
```yaml
# ~/.config/voxd/config.yaml
language: es
whisper_model_path: /home/carlos/.local/share/voxd/models/ggml-large-v3-turbo.bin
whisper_binary: /home/carlos/.local/share/voxd/bin/whisper-cli
mic_autoset_enabled: true
mic_autoset_level: 0.6
autostart: true
flux_monitor_enabled: true  # VAD
```

Parches en `/opt/voxd/src/voxd/core/transcriber.py`:
1. **8 threads CPU** — aprovecha i7 de 8 núcleos
2. **Prompt técnico** — orienta Whisper a vocabulario del dominio:
   > "Programación web PHP MySQL MariaDB JavaScript AJAX jQuery HTML CSS array foreach función variable clase método base de datos consulta tabla registro usuario contrato factura cargo pago caja reporte asamblea domicilio toma agua potable"

### Fase 6 — Servicio systemd y Hotkey Global
```ini
# /home/carlos/.config/systemd/user/voxd-tray.service.d/env.conf
[Service]
Environment=VOXD_WC_BIN=/home/carlos/.local/share/voxd/bin/whisper-cli
Environment=LD_LIBRARY_PATH=/usr/local/cuda-12.2/targets/x86_64-linux/lib
Environment=PATH=/usr/local/cuda-12.2/bin:...
Environment=DISPLAY=:0
Environment=XAUTHORITY=/home/carlos/.Xauthority
ExecStartPre=/bin/sleep 5   # espera que X11 esté disponible
```

Hotkey **Ctrl+J** configurado en KDE → Configuración del sistema → Accesos rápidos personalizados → voxd-trigger.sh.

---

## 5. Issues Encontrados y Soluciones

| Issue | Causa Raíz | Solución Aplicada |
|:---|:---|:---|
| `dpkg` falla por python3-pyqt6 | apt reporta que falta, pero la wheel de PyPI ya está en .venv | Crear paquetes ficticios `_99.0_all.deb` con `equivs` |
| `libwhisper.so not found` al inicio | Compilación dinámica por defecto | Recompilar con `-DBUILD_SHARED_LIBS=OFF` (estático) |
| Servicio systemd sin CUDA | systemd no hereda PATH/LD_LIBRARY_PATH del usuario | Override `env.conf` con variables explícitas |
| X11 unavailable al boot | Servicio arranca antes de que X11 esté listo | `ExecStartPre=/bin/sleep 5` en env.conf |
| Hotkey interceptada antes de VS Code | Orden de activación en KDE | Configurar en "Accesos rápidos globales → Custom shortcuts" en lugar de atajos de app |
| `xcb-cursor0` faltante (transitorio) | Paquete no instalado inicialmente | `apt install libxcb-cursor0` |

---

## 6. Estado Operativo Final (2026-04-10)

| Check | Estado |
|:---|:---|
| whisper-cli presente y ejecutable (71 MB) | ✓ |
| Modelo large-v3-turbo (1.6 GB) | ✓ |
| Parche 8 hilos en transcriber.py | ✓ |
| Prompt técnico español aplicado | ✓ |
| Idioma: `es` en config.yaml | ✓ |
| Nivel micrófono: 0.6 | ✓ |
| python3-pyqt6 blindado v99.0 | ✓ |
| python3-pyperclip blindado v99.0 | ✓ |
| `apt-mark hold voxd` activo | ✓ |
| Override systemd env.conf presente | ✓ |
| whisper-cli sin dependencias rotas | ✓ |
| Script voxd-trigger.sh ejecutable | ✓ |
| Servicio voxd-tray: **active (running)** | ✓ |

**PID activo:** 4518 (Python) · **Memoria en uso:** 1.7 GB · **Uptime:** ~2h al momento del reporte

---

## 7. Rendimiento Observado

- **Latencia de transcripción:** ~3 segundos por fragmento de voz (GPU CUDA)
- **Precisión en español técnico:** Alta — vocabulario de programación web y términos del dominio reconocidos correctamente
- **Modo de operación:** Push-to-talk vía Ctrl+J; graba mientras se sostiene, transcribe al soltar
- **Destino del texto:** Ventana con foco activo (VS Code, terminal, navegador, etc.)

---

## 8. Archivos Clave del Sistema

| Propósito | Ruta |
|:---|:---|
| Documentación de instalación | `/home/carlos/GitHub/agua_chatledger/docs-dev/ga-cl-ia/voxd-instalacion.md` |
| Script de restauración/validación | `/home/carlos/GitHub/agua_chatledger/docs-dev/ga-cl-ia/voxd-restore-optimizations.sh` |
| Configuración activa | `/home/carlos/.config/voxd/config.yaml` |
| Binario whisper-cli | `/home/carlos/.local/share/voxd/bin/whisper-cli` |
| Modelo STT activo | `/home/carlos/.local/share/voxd/models/ggml-large-v3-turbo.bin` |
| Motor STT (parches aplicados) | `/opt/voxd/src/voxd/core/transcriber.py` |
| Override systemd | `/home/carlos/.config/systemd/user/voxd-tray.service.d/env.conf` |
| Script wrapper hotkey | `/home/carlos/.local/bin/voxd-trigger.sh` |

---

## 9. Resguardo y Reproducibilidad

El script `voxd-restore-optimizations.sh` permite **restaurar todas las optimizaciones en un solo comando** después de cualquier actualización del sistema que pueda sobreescribir `transcriber.py`. Valida 13 puntos y aplica automáticamente los parches faltantes.

```bash
bash /home/carlos/GitHub/agua_chatledger/docs-dev/ga-cl-ia/voxd-restore-optimizations.sh
```

---

## 10. Análisis de Viabilidad: Migración a VM OCI Always Free (ARM)

> Ver sección separada: [voxd-oci-viabilidad.md](voxd-oci-viabilidad.md)

---

*Documento generado: 2026-04-10 | Host: Roja Dell S1 | Ubuntu 22.04.5 LTS x86_64*
