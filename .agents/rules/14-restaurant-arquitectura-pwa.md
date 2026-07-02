# 14. Arquitectura y PWA (Proyecto Restaurant Comandas)

Esta regla define la estructura formal de directorios y los estándares de activos offline exclusivos para el sistema **Restaurant Comandas VOSK**.

## 1. Estructura Estricta de Directorios

Se establece una separación absoluta entre el backend (lógica de servidor) y el frontend (PWA).

### Backend (PHP/Flight)
Los controladores y vistas del servidor deben residir en:
- `restaurant/mesero/` — Micro-aplicación para la atención a mesas.
- `restaurant/cocina/` — Micro-aplicación KDS (Kitchen Display System).

### Frontend Estático (web-assets)
Todos los recursos accesibles públicamente y gestionados por el Service Worker deben residir bajo el árbol `web-assets/`.
- `web-assets/pwa/` — **Raíz estricta de la PWA**. Contiene el Service Worker (`sw.js`), el manifiesto (`manifest.json`), y librerías locales que habilitan la funcionalidad offline, como Dexie (`web-assets/pwa/dexie/`).
- `web-assets/libs/models/` — Motor VOSK en cliente, AudioWorklets, y la capa lógica offline (`app-voice.js`, `app-main.js`).
- `web-assets/css/` y `web-assets/img/` — UI estática global.

## 2. Control de Versiones y Modelos IA (Offline SSOT)

A diferencia de las políticas globales estándar que excluyen binarios pesados o comprimidos del versionado (como `.tar.gz`), para este proyecto **aplica una regla de excepción forzosa**:

> **Excepción Git**: El modelo acústico `vosk-model-small-es-0.42.tar.gz` (~39MB) **DEBE** permanecer en el repositorio y trackearse.

**Razón**: El objetivo del sistema es operar en LAN 100% offline. El despliegue inicial no debe depender de CDN externas ni requerir descargas adicionales al servidor host para funcionar inmediatamente tras el clonado.

## 3. Estrategia PWA Offline-First
La PWA funciona bajo un esquema IT1/IT2 utilizando la API nativa y WebWorkers.
*   **Background Sync**: Toda petición fallida por caída de Wi-Fi se encola en IndexedDB (vía `Dexie.js`) dentro de la tabla `outbox_comandas`.
*   La librería Dexie y el Service Worker interactúan independientemente; no se deben mezclar lógicas asíncronas de VOSK en el Service Worker global.

## 4. Pipeline de Procesamiento de Voz en el Cliente (VOSK JS + AudioWorklet)
Para garantizar la precisión de dictado en redes LAN inestables y con ruido ambiental:
*   **Muestreo a 16 kHz:** La captura del micrófono mediante `getUserMedia` debe configurarse a una tasa de muestreo de 16000 Hz, PCM mono de 16 bits, delegando el procesamiento del búfer al `AudioWorkletNode` del navegador.
*   **Corte de Grafo por Gramática Restringida:** Al inicializar el `KaldiRecognizer` en el Web Worker, es obligatorio pasar el vocabulario cerrado de productos y comandos de control formateado en JSON (`grammar`). Esto reduce drásticamente el consumo de RAM/CPU en dispositivos móviles y evita la alucinación de términos externos al negocio.
*   **Capa de Corrección Fonética (Distancia Levenshtein):** El texto crudo transcribido por VOSK debe filtrarse localmente en Javascript mediante una función de Levenshtein contra el catálogo de productos local. Se tolera un umbral máximo de distancia de **3 caracteres** para emparejar la palabra dictada con el ID del producto o comando exacto.
*   **Cola de Telemetría y Logs:** Cualquier error crítico del micrófono o del worker se registra localmente en Dexie.js (`offline_logs`) y se sincroniza en batch con el servidor (`POST /api/telemetria/ingesta.php`) aplicando un TTL estricto de 3 días para su autolimpieza.

