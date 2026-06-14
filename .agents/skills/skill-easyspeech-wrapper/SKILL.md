# SKILL: EasySpeech (Wrapper TTS)
---
name: EasySpeech + Web Speech API
description: Uso de EasySpeech para abstracción de Text-To-Speech (MIT), fixes multiplataforma, asincronía y quirks resueltos.
---

## 🗣️ Contexto
`EasySpeech` (MIT) es un wrapper moderno para la `window.speechSynthesis` API. Se recomienda para el proyecto **Restaurant** ya que estandariza inconsistencias severas entre navegadores (Safari, Chrome Mobile, the 15-second bug).

---

## 1. Inicialización Segura (Asíncrona)

> [!IMPORTANT]
> A diferencia del API nativo, EasySpeech detecta automáticamente la disponibilidad del engine y espera a que el SO cargue las voces antes de resolver.

```javascript
import EasySpeech from 'easy-speech';

async function iniciarTTS() {
    try {
        const success = await EasySpeech.init({ maxTimeout: 5000, interval: 250 });
        console.log('EasySpeech inicializado', success);
        
        // Obtener la mejor voz en español
        const voces = EasySpeech.voices();
        const vozEs = voces.find(v => v.lang.includes('es') && v.localService === true) 
                   || voces[0]; // Fallback
                   
        EasySpeech.defaults({ voice: vozEs, pitch: 1, rate: 1, volume: 1 });
        
    } catch (e) {
        console.error('TTS no soportado o error:', e);
    }
}
```

---

## 2. Reproducción Controlada

```javascript
async function hablarOrden(texto) {
    if (!EasySpeech.status().initialized) return;

    try {
        // Cancelar reproducción en curso para evitar superposición
        EasySpeech.cancel();
        
        await EasySpeech.speak({
            text: texto,
            boundary: e => console.log('Leyendo palabra:', e.name),
            end: e => console.log('Finalizado', e)
        });
    } catch (e) {
        console.warn('Playback error (probable falta de user-interaction):', e);
    }
}
```

---

## 3. Resolución de Quirks Nativos

### 3.1 El Bug de Chrome de 15 Segundos
La API nativa se silencia tras 15 segundos continuos.
**EasySpeech Fix**: No lo soluciona mágicamente, pero expone hooks limpios. Si el texto es largo, debes enviar "chunks".

```javascript
// Chunking usando EasySpeech
async function hablarTextoLargo(text) {
    const chunks = text.match(/[^.!?]+[.!?]+/g) || [text];
    for (let chunk of chunks) {
        await EasySpeech.speak({ text: chunk.trim() });
    }
}
```

### 3.2 Interacción de Usuario en Mobile (Safari/iOS/Android)
El navegador bloqueará el TTS si no es disparado por un evento humano.
**Workaround**: Crear un "desbloqueador" silencioso en el primer toque de la pantalla.

```javascript
document.body.addEventListener('click', async function initOnce() {
    if (EasySpeech.status().initialized) {
        // Reproducir un string vacío para destrabar el engine de audio en iOS/Android
        EasySpeech.speak({ text: '', volume: 0 });
        document.body.removeEventListener('click', initOnce);
    }
});
```

---

## 4. Issues Restantes y Limitaciones

| Limitación | Causa | Workaround |
|---|---|---|
| **Calidad de voz** | Depende del OS (Linux vs MacOS vs Android). | No hay fix. Usar servicios cloud (ElevenLabs, TTS APIs) para calidad premium constante. |
| **Safari M1 Timing** | Bugs en WebKit de Apple desajustan el `rate`. | Evitar ajustar `rate` o `pitch` en iOS/Mac; usar default `1.0`. |
| **No hay voces Custom** | El wrapper usa voces nativas, no SSML o AI. | Limitar uso a confirmaciones cortas del sistema ("Mesa 4 lista"). |

---

## 5. Mejores Prácticas

1. **Esperar `init()`**: Nunca usar `speak()` antes de que `init()` resuelva.
2. **Manejar expeciones de `speak()`**: En móviles, suele fallar la primera vez si el usuario no interactuó. Atrápalo con `catch()` silencioso.
3. **Limpieza**: Usar `EasySpeech.cancel()` si el usuario navega a otra pantalla mientras habla.

---
**Nota IA**: EasySpeech es superior a instanciar `SpeechSynthesisUtterance` manualmente, por su manejo asíncrono y resolución de promesas. Usar en vez de la API nativa cruda.
