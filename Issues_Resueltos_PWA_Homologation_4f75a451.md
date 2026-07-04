# Issues Resueltos — Sesión 2026-07-04
**Conversación:** `4f75a451-b8cc-4d33-84c9-10163ce71a32`
**Rama:** `main` (restaurantb) / `master` (agua_chatledger)

---

## Issue 1 — Homologación de Layouts (PWA vs Webapp Desktop)

### Scope Funcional
Antes, las interfaces del Cocinero (KDS) y de Reloj Checador no estaban homologadas correctamente bajo los estándares de diseño móvil/escritorio correspondientes. Por otro lado, la interfaz de administración (NLP/Dataset) se había configurado erróneamente para extender el layout PWA móvil. 

Ahora, se establece la distinción estricta de layouts definida en la arquitectura:
1.  **Layout PWA Móvil/Hamburguesa (`layout-pwa.php`):** Utilizado por las vistas de **Mesero**, **Cocinero (KDS)** y **Reloj Checador** (`sistema/views/reloj.php`), adaptándose a dispositivos táctiles con barra lateral integrada y cabecera de diadema.
2.  **Layout Webapp Escritorio (`layout.php`):** Utilizado por **Caja/Corte** (`caja/views/index.php`) y **Configuración NLP/VOSK** (`admin/views/catalogo.php`), proporcionando una cabecera de escritorio clásica para su uso en computadoras fijas y pantallas anchas.

Se resolvió además el SyntaxError al importar la biblioteca Dexie en el hilo principal de la PWA con un wrapper ESM nativo y se encapsuló la inicialización del micrófono en bloques `try...catch` independientes, garantizando que el badge de carga siempre se desactive a "Micrófono Apagado" ante fallos de permisos o de red, previniendo el congelamiento visual de la app.

### Scope Técnico
*   **Wrapper ESM Dexie:** Creado `/web-assets/libs/dexie.esm.js` para importar correctamente Dexie en el hilo principal sin SyntaxErrors de UMD.
*   **Aislamiento de Errores VOSK:** Modificado `/web-assets/libs/models/app-voice.js` para aislar la inicialización asíncrona dentro de capturas de error independientes.
*   **Layout PWA Dinámico:** Refactorizado `/restaurant/commons/views/layout-pwa.php` para soportar clases de contenedor adaptativas (`wide-container`) y ocultar de forma opcional el badge de VOSK en pantallas de administración.
*   **Layout Webapp Escritorio:** Actualizado `/restaurant/commons/views/layout.php` para incluir el enlace a "Configuración NLP/VOSK" en la barra de navegación superior únicamente para el rol de administrador.
*   **Homologación de Vistas:**
    *   `/restaurant/cocina/views/index.php`: Extiende `layout-pwa` con `showVoskStatus => true` y `wide-container`. Se asocia con `cocina-voice.js` usando el elemento unificado `pwa-vosk-status`.
    *   `/restaurant/sistema/views/reloj.php`: Cambiado para extender `layout-pwa` con `showVoskStatus => false` (formato PWA hamburguesa).
    *   `/restaurant/admin/views/catalogo.php`: Cambiado para extender `layout` (webapp escritorio) con título adaptado.
*   **Caché Offline:** Agregadas las rutas `/restaurant/cocina`, `/restaurant/admin/catalogo`, sus estilos `/web-assets/css/catalogo.css`, scripts `/web-assets/js/catalogo.js`, y el controlador `/web-assets/libs/models/cocina-voice.js` al precaché del Service Worker (`sw.js`).
*   **Políticas de Despliegue:** Actualizado `/docs/Instrucciones_Despliegue_Comandas_VOSK.html` y `.agents/rules/14-restaurant-arquitectura-pwa.md` para documentar la arquitectura de la PWA como un único asset unificado multi-rol.

---

## Runbook — Cambios en `.agents/`
*   **Modificación**: [`.agents/rules/14-restaurant-arquitectura-pwa.md`](file:///.agents/rules/14-restaurant-arquitectura-pwa.md) - Se actualizó la sección *3. Estrategia PWA Offline-First* para declarar explícitamente el alcance unificado de la PWA que maneja múltiples roles (Mesero, Cocinero y Administrador) y se comporta como un solo asset local de distribución.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `/www/web-assets/libs/dexie.esm.js` | `restaurantb` | Creación (Wrapper ESM para Dexie.js) |
| `/www/web-assets/pwa/db.js` | `restaurantb` | Modificación (Uso del import nativo dexie.esm.js) |
| `/www/web-assets/pwa/sw.js` | `restaurantb` | Modificación (Adición de archivos KDS/Admin a la caché) |
| `/www/web-assets/libs/models/app-voice.js` | `restaurantb` | Modificación (Encapsulamiento robusto del DOMContentLoaded) |
| `/www/restaurant/commons/views/layout-pwa.php` | `restaurantb` | Modificación (Visualización opcional del badge y menú admin) |
| `/www/web-assets/css/main.css` | `restaurantb` | Modificación (Definición de `.wide-container` para desktop/tablet) |
| `/www/restaurant/cocina/views/index.php` | `restaurantb` | Modificación (Homologación a layout-pwa con KDS) |
| `/www/web-assets/libs/models/cocina-voice.js` | `restaurantb` | Modificación (Actualización de elementos ID a pwa-vosk-status) |
| `/www/web-assets/css/catalogo.css` | `restaurantb` | Modificación (Eliminación de resets que chocaban con el body) |
| `/www/restaurant/admin/views/catalogo.php` | `restaurantb` | Modificación (Homologación a layout-pwa con catálogo) |
| `/docs/Instrucciones_Despliegue_Comandas_VOSK.html` | `restaurantb` | Modificación (Adición de nota del alcance PWA unificado) |
| `.agents/rules/14-restaurant-arquitectura-pwa.md` | `agua_chatledger` | Modificación (Inclusión de la regla del asset unificado PWA) |
| `.agents/pending.md` | `agua_chatledger` | Modificación (Marcación de tarea PWA homologación como resuelta) |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Pruebas CLI (`tests/run_functional_tests.php`) | **Exitoso (24/24 aprobadas)** |
| Validación de Sintaxis PHP | **Exitoso (Sin errores de parsing)** |
| Integridad de Enlaces Chatledger (`chatledger_validate.sh`) | **Pendiente de ejecución** |

### Pruebas manuales pendientes
1. **Prueba de Rol Cocinero:**
   * Iniciar sesión en la PWA utilizando el PIN `3001`.
   * Verificar que se redirija a `/restaurant/cocina` y cargue el layout con menú lateral e indicador de diadema en "Micrófono Apagado".
   * Pulsar en "Conectar Diadema", habilitar el micrófono y comprobar que cambie a "Diadema Activa - Escuchando" y el badge superior muestre el estado correcto.
2. **Prueba de Rol Administrador:**
   * Iniciar sesión utilizando el PIN `1234`.
   * Verificar que se redirija a `/restaurant/admin/catalogo` y muestre el panel del catálogo.
   * Confirmar que el badge de voz superior no sea visible en esta pantalla de administración.
   * Pulsar en el menú lateral y verificar que aparezca la opción "Configuración NLP/VOSK" y permita navegar.

---
*Generado por Antigravity — 2026-07-04*
