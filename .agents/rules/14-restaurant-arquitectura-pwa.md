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
- `web-assets/pwa/` — **Raíz estricta de la PWA**. Contiene el Service Worker (`sw.js`), el manifiesto (`manifest.json`), y los scripts de base de datos (`db.js`). Las librerías locales que habilitan la funcionalidad offline (como Dexie) se centralizan en `web-assets/libs/dexie.min.js`.
- `web-assets/libs/models/` — Motor VOSK en cliente, AudioWorklets, y la capa lógica offline (`app-voice.js`, `app-main.js`).
- `web-assets/css/` y `web-assets/img/` — UI estática global.

> [!IMPORTANT]
> **Estándar de Rutas Absolutas de Activos:**
> Todas las llamadas a recursos bajo `web-assets` en plantillas, vistas o scripts PHP **DEBEN** usar la ruta absoluta raíz `/web-assets/` (ej. `/web-assets/css/style.css`, `/web-assets/libs/htmx.min.js`), **omitiendo por completo** cualquier prefijo como `/restaurant/`. Esto garantiza:
> 1. Paridad directa con las rutas cacheadas por el Service Worker en `sw.js` (evitando fallos de caché offline).
> 2. Eliminación de dependencias de enlaces simbólicos (`symlinks`) a nivel de sistema de archivos en el despliegue.

## 2. Control de Versiones y Modelos IA (Offline SSOT)

A diferencia de las políticas globales estándar que excluyen binarios pesados o comprimidos del versionado (como `.tar.gz`), para este proyecto **aplica una regla de excepción forzosa**:

> **Excepción Git**: El modelo acústico `vosk-model-small-es-0.42.tar.gz` (~39MB) **DEBE** permanecer en el repositorio y trackearse.

**Razón**: El objetivo del sistema es operar en LAN 100% offline. El despliegue inicial no debe depender de CDN externas ni requerir descargas adicionales al servidor host para funcionar inmediatamente tras el clonado.

## 3. Estrategia PWA Offline-First
La PWA funciona bajo un esquema IT1/IT2 utilizando la API nativa, AudioWorklet y Window.Vosk en el hilo principal.
*   **Alcance del Asset PWA**: Es una sola PWA que puede usar roles diferentes. Es correcto, es una única PWA unificada. El Service Worker y el almacenamiento IndexedDB se comparten a nivel global, y la redirección al rol correspondiente (Mesero, Cocinero o Administrador) se gestiona de forma transparente tras la autenticación por NIP.
*   **Política de Carga y Pre-caché de Rutas Autenticadas (CRÍTICO)**: 
    *   **Prohibición de Pre-caché de Rutas Dinámicas**: Queda prohibido añadir rutas que requieran autenticación previa (como `/restaurant/mesero` o `/restaurant/cocina`) en el array de instalación estática del Service Worker (`ASSETS_TO_CACHE`). 
    *   *Razón*: Cuando la PWA se instala (usualmente en la pantalla de login), el usuario no está logueado. Al intentar cachear estas rutas, las llamadas rebotan en el guard de autenticación del servidor y este devuelve la redirección del login, lo que causa que el Service Worker almacene el HTML de la página de login bajo el nombre de la página protegida. Esto rompe la navegación y causa pantallas desestructuradas.
    *   **Solución**: El Service Worker debe usar una estrategia **Network First** para las vistas. Las vistas del Mesero y Cocina solo deben cachearse de forma dinámica tras un fetch exitoso con código 200 (no redireccionado), o depender de una estructura de App Shell puramente estática.
*   **Estrategia Cache-First para Recursos del Motor**: Se impone una política **Cache-First** estricta en `sw.js` para los archivos del modelo acústico (`vosk-model-small-es-0.42.tar.gz`, ~38MB) y la librería WASM (`vosk.js`, ~5.5MB), sirviéndolos de manera instantánea tras la primera carga y garantizando la resiliencia en redes inestables.
*   **Storage Persistente**: Para evitar que el recolector de basura de Android borre las bases de datos de Dexie en situaciones de bajo espacio, la PWA invoca `navigator.storage.persist()`.
*   **Indicador de Estado de Voz**: Toda vista PWA que requiera interactuar con VOSK debe pasar explícitamente el parámetro `'showVoskStatus' => true` en su llamada al layout (`layout-pwa`), asegurando la visualización correcta de la badge de estado del micrófono.
*   **Background Sync**: Toda petición fallida por caída de Wi-Fi se encola en IndexedDB (vía `Dexie.js`) dentro de la tabla `outbox_comandas`.
*   La librería Dexie y el Service Worker interactúan independientemente; no se deben mezclar lógicas asíncronas de VOSK en el Service Worker global.

## 4. Pipeline de Procesamiento de Voz en el Cliente (VOSK JS + AudioWorklet)
Para garantizar la precisión de dictado en redes LAN inestables y con ruido ambiental:
*   **Muestreo a 16 kHz y Captura Nativa:** La captura del micrófono mediante `getUserMedia` debe configurarse a una tasa de muestreo de 16000 Hz, PCM mono de 16 bits, delegando el procesamiento del búfer al `AudioWorkletNode` del navegador.
*   **Detección de Actividad de Voz (VAD por Filtro RMS):** El procesador `pcm-processor.js` calcula el volumen Root Mean Square (RMS) de cada búfer y descarta automáticamente los fragmentos correspondientes a silencio, reduciendo en más del 40% la carga de CPU e IPC al procesar el audio.
*   **Corte de Grafo por Gramática Restringida:** Al inicializar el `KaldiRecognizer` en el hilo principal, es obligatorio pasar el vocabulario cerrado de productos y comandos de control formateado en JSON (`grammar`). Esto reduce drásticamente el consumo de RAM/CPU en dispositivos móviles y evita la alucinación de términos externos al negocio.
*   **Capa de Corrección Fonética (Distancia Levenshtein):** El texto crudo transcribido por VOSK debe filtrarse localmente en Javascript mediante una función de Levenshtein contra el catálogo de productos local. Se tolera un umbral máximo de distancia de **3 caracteres** para emparejar la palabra dictada con el ID del producto o comando exacto.
*   **Resiliencia de Memoria WASM (Kill-and-Respawn Watchdog):** Ante fugas de memoria o límites de heap lineal en WebAssembly, se implementa un temporizador/watchdog que purga (`recognizer.remove()`) y reinicia la instancia del reconocedor de voz en periodos de inactividad durante sesiones prolongadas (especialmente para KDS de cocina).
*   **Cola de Telemetría y Logs:** Cualquier error crítico del micrófono o del reconocedor se registra localmente en Dexie.js (`offline_logs`) y se sincroniza en batch con el servidor (`POST /api/telemetria/ingesta.php`) aplicando un TTL estricto de 3 días para su autolimpieza.

