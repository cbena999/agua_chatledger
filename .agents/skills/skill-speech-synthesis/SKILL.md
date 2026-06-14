# SKILL: SpeechSynthesis Web API — TTS Nativo
---
name: Web Speech API (TTS)
description: Uso de SpeechSynthesis nativo del browser, issues (limite 15s), compatibilidad multiplataforma y workarounds (2024+).
---

## 🗣️ Contexto
El API nativo `window.speechSynthesis` se utiliza para reproducir comandos o confirmaciones de voz generadas localmente (Text-To-Speech) en el proyecto **Restaurant** (ej. "Orden lista, mesa 5").

---

## 1. Inicialización y Selección de Voz

> [!CAUTION]
> La lista de voces se carga asíncronamente. Depende 100% de las voces instaladas en el sistema operativo del usuario.

```javascript
let voices = [];

function cargarVoces() {
    voices = window.speechSynthesis.getVoices();
    // Priorizar voces en español de calidad (Google, Microsoft)
    const voice = voices.find(v => v.lang.startsWith('es') && v.name.includes('Google'))
               || voices.find(v => v.lang.startsWith('es'));
    return voice;
}

// Escuchar evento de carga asíncrona
window.speechSynthesis.onvoiceschanged = () => {
    cargarVoces();
};
```

---

## 2. Reproducción (Speak)

```javascript
function hablar(texto) {
    if (!('speechSynthesis' in window)) return;
    
    window.speechSynthesis.cancel(); // Detener si algo está sonando
    
    const utterance = new SpeechSynthesisUtterance(texto);
    const vozEspanol = cargarVoces();
    
    if (vozEspanol) {
        utterance.voice = vozEspanol;
        utterance.lang = vozEspanol.lang;
    } else {
        utterance.lang = 'es-MX'; // Fallback
    }

    utterance.rate = 1.0; // Velocidad (0.1 - 10)
    utterance.pitch = 1.0; // Tono (0 - 2)
    utterance.volume = 1.0;

    utterance.onerror = (e) => console.error('TTS Error:', e);
    
    window.speechSynthesis.speak(utterance);
}
```

---

## 3. The 15-Second Bug (Chromium)

> [!WARNING]
> En Chrome/Chromium, si un audio dura más de 15 segundos continuos, la síntesis se "congela" o se silencia.

### Workaround: Chuncking o Keep-Alive

**Opción A: Keep-Alive (Pulse)**
```javascript
let timer;
utterance.onstart = () => {
    // Pausar y reanudar cada 14s previene el bug
    timer = setInterval(() => {
        window.speechSynthesis.pause();
        window.speechSynthesis.resume();
    }, 14000);
};

utterance.onend = () => clearInterval(timer);
utterance.onerror = () => clearInterval(timer);
```

**Opción B: Fragmentación**
Dividir el texto largo por oraciones y llamar `speak()` en cola para fragmentos cortos.

---

## 4. Issues Conocidos y Workarounds

| Issue | Plataforma | Workaround |
|---|---|---|
| **Interacción requerida** | Safari / iOS / Mobile | `speak()` debe invocarse *directamente* dentro de un evento de click de usuario la primera vez. |
| **Voces robóticas** | Mac/Linux default | Filtrar y forzar voces Premium/Google si existen en `getVoices()`. |
| **Cuelgues aleatorios** | Chrome | Invocar `window.speechSynthesis.cancel()` antes de cada `speak()`. |
| **Silencio sin errores** | Android WebView | Verificar permisos; a veces el motor TTS de Google debe ser actualizado en la PlayStore. |

---

## 5. Mejores Prácticas (2024+)

1. **Feature check**: Siempre usar `if ('speechSynthesis' in window)`.
2. **Fallback**: La calidad varía drásticamente (Mac vs Windows vs Android). Úsalo para confirmaciones cortas, NO para audiolibros o branding.
3. **Cancelar en cola**: En notificaciones repetitivas (restaurante ocupado), cancela la anterior para evitar lag o usa una cola de reproducción controlada manualmente.
4. **Librerías wrapper**: Si el workaround manual del límite de 15s se vuelve insostenible, usar wrappers como **EasySpeech**.

---
**Nota IA**: SpeechSynthesis es "experimental" en consistencia. No asumir que la voz "es-MX" sonará igual en dos dispositivos distintos. Siempre iniciar reproducción en respuesta a interacción del DOM.
