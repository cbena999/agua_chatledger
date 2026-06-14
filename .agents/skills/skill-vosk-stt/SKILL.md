# SKILL: Vosk + Kaldi — Reconocimiento de Voz Offline
---
name: Vosk Offline STT
description: Integración de Vosk (alphacep/kaldi) para Speech-to-Text offline en browser y servidor, modelos en español, issues y workarounds.
---

## 🎙️ Contexto
El proyecto Restaurant usa Vosk para dictado por voz de comandas, operando 100% offline en la LAN. El modelo usado es `vosk-model-small-es-0.42` (español). La aplicación `vozweb.php` es el MVP activo.

---

## 1. Arquitectura de Reconocimiento

### 1.1 Modo Browser (WASM)
```
[Micrófono] → [AudioWorklet (16kHz PCM)] → [Vosk WASM Worker] → [Texto]
```
- Modelo cargado en el browser vía WebAssembly.
- Audio capturado con `getUserMedia()` + `AudioWorkletNode`.
- Procesamiento en Web Worker para no bloquear UI.

### 1.2 Modo Servidor (WebSocket)
```
[Browser: Micrófono] → [WebSocket (audio PCM)] → [Servidor Python/Vosk] → [Texto JSON]
```
- Más preciso (modelos grandes disponibles).
- Requiere servidor Python con `vosk-server` corriendo.

---

## 2. Configuración del Audio

> [!IMPORTANT]
> El audio **debe** ser: **16kHz, 16-bit, mono, PCM (Little-Endian)**. Cualquier otra configuración produce resultados vacíos o basura.

```javascript
// AudioWorklet Processor (pcm-processor.js)
class PcmProcessor extends AudioWorkletProcessor {
    process(inputs) {
        const input = inputs[0][0]; // Canal mono
        if (input) {
            // Convertir Float32 → Int16 PCM
            const pcm = new Int16Array(input.length);
            for (let i = 0; i < input.length; i++) {
                pcm[i] = Math.max(-32768, Math.min(32767, input[i] * 32768));
            }
            this.port.postMessage(pcm.buffer, [pcm.buffer]);
        }
        return true;
    }
}
registerProcessor('pcm-processor', PcmProcessor);
```

### 2.1 Resampling (si AudioContext ≠ 16kHz)
```javascript
// Forzar 16kHz desde el contexto de audio
const audioCtx = new AudioContext({ sampleRate: 16000 });
// Si el navegador no soporta 16kHz nativo, usar OfflineAudioContext para resamplear
```

---

## 3. Modelos Disponibles (Español)

| Modelo | Tamaño | Precisión | Uso |
|---|---|---|---|
| `vosk-model-small-es-0.42` | ~40MB | Media | Browser WASM, dispositivos ligeros |
| `vosk-model-es-0.42` | ~1.4GB | Alta | Servidor, desktop |
| Custom (KenLM) | Variable | Dominio | Vocabulario restringido (menú) |

### 3.1 Gramática Restringida (Vocabulario de Menú)
```python
# Servidor Python: restringir vocabulario
rec = KaldiRecognizer(model, 16000, 
    '["una orden de tacos", "dos sodas", "cuenta de mesa cinco", "[unk]"]')
```

---

## 4. Integración Browser (vozweb.php)

```javascript
// Inicialización con AudioWorklet (moderno, reemplaza ScriptProcessorNode)
async function iniciarDictado() {
    const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
    const ctx = new AudioContext({ sampleRate: 16000 });
    await ctx.audioWorklet.addModule('/web-assets/js/pcm-processor.js');
    
    const source = ctx.createMediaStreamSource(stream);
    const worklet = new AudioWorkletNode(ctx, 'pcm-processor');
    
    worklet.port.onmessage = (e) => {
        // Enviar PCM al reconocedor (WASM o WebSocket)
        recognizer.acceptWaveform(e.data);
    };
    
    source.connect(worklet);
    worklet.connect(ctx.destination);
    
    // Wake Lock para evitar suspensión en móviles
    if ('wakeLock' in navigator) {
        await navigator.wakeLock.request('screen');
    }
}
```

---

## 5. Corrección Fonética (Post-Procesamiento)

```javascript
// Levenshtein para corregir errores comunes del modelo
function corregirFonetico(texto, diccionario) {
    const palabras = texto.split(' ');
    return palabras.map(p => {
        let mejorMatch = p;
        let mejorDist = Infinity;
        for (const entrada of diccionario) {
            const dist = levenshtein(p.toLowerCase(), entrada.toLowerCase());
            if (dist < mejorDist && dist <= 2) {
                mejorDist = dist;
                mejorMatch = entrada;
            }
        }
        return mejorMatch;
    }).join(' ');
}

const menuDict = ['tacos', 'tortas', 'sodas', 'agua', 'cerveza', 'cuenta', 'mesa'];
```

---

## 6. Issues Conocidos y Workarounds

| Issue | Descripción | Workaround |
|---|---|---|
| **Resultados vacíos** | Sample rate incorrecto | Forzar `sampleRate: 16000` en AudioContext |
| **Modelo no carga** | CORS o ruta incorrecta | Servir modelo desde mismo origen; verificar MIME types |
| **Chrome vs Firefox** | Diferencias en getUserMedia | Test cross-browser obligatorio |
| **Latencia en móvil** | WASM pesado en dispositivos viejos | Usar modo WebSocket (servidor) en móvil |
| **Memoria alta** | Modelo grande en browser | Usar modelo `small-es`; liberar recursos con `.free()` |
| **No funciona sin HTTPS** | getUserMedia requiere contexto seguro | HTTPS o `localhost` obligatorio |
| **ScriptProcessor deprecated** | API antigua eliminándose | Migrar a AudioWorklet (ya implementado) |

---

## 7. Mejores Prácticas

1. **AudioWorklet** obligatorio (nunca ScriptProcessorNode).
2. **Wake Lock** en móviles para sesiones largas de dictado.
3. **Caching de modelo** en IndexedDB/Dexie para evitar re-descarga.
4. **SetLogLevel(-1)** en producción para silenciar logs de Vosk.
5. **Limpiar recursos**: desconectar nodos de audio al terminar.
6. **Feedback visual**: mostrar nivel de audio en tiempo real para confirmar que el micrófono funciona.

---
**Nota IA**: El audio debe ser siempre 16kHz/16-bit/mono/PCM. Usar AudioWorklet, nunca ScriptProcessorNode. HTTPS obligatorio para getUserMedia.
