# Regla 16: Alineación con Especificación Técnica (Scaffolding y Offline LAN)

Cualquier plan de estructuración, scaffolding de código y desarrollo de módulos en el proyecto **Comandas VOSK** debe respetar obligatoriamente las especificaciones técnicas acordadas y detalladas en el directorio `restaurantb/docs/`.

---

## 📋 Directrices Clave de Alineación

### 1. Estructura de Directorios Modular
Se prohíbe el uso de estructuras de carpetas genéricas (como `app/`) para la lógica de negocio. Debe respetarse al 100% la jerarquía modular definida en la **Sección 2.3** de la `Especificacion_Tecnica_Comandas_VOSK.html`:
*   `www/restaurant/index.php`: Front Controller principal.
*   `www/restaurant/commons/`: Librerías compartidas (`DB.php`, `Logger.php`) y dependencias manuales.
*   `www/restaurant/mesero/`: Lógica y API del comandero móvil.
*   `www/restaurant/cocina/`: KDS de cocina (Views y Negocio).
*   `www/restaurant/caja/`: Módulo de cobros y arqueos.
*   `www/restaurant/reportes/`: Dashboard analítico de ventas.
*   `www/restaurant/sistema/`: Configuraciones generales.
*   `www/web-assets/`: Activos estáticos compartidos (CSS, JS, PWA manifests).

### 2. Funcionamiento 100% Offline (LAN Aislada)
Para asegurar que el restaurante opere sin conexión a Internet (solo red local LAN):
*   Se prohíbe la inclusión de librerías CSS o JS a través de CDNs externas (como cdnjs o unpkg).
*   Los activos cliente clave (`htmx.min.js`, `dexie.min.js`, `chart.umd.js`) deben descargarse y servirse localmente desde `www/web-assets/libs/`.
*   El archivo acústico de voz `vosk-model-small-es-0.42.tar.gz` debe persistir localmente y estar registrado en el Service Worker (`sw.js`).

### 3. Inclusión Frugal de Librerías (Backend)
*   Se evitará el uso de Composer para la gestión de dependencias en producción en el servidor local.
*   Frameworks y librerías de backend (como Flight PHP y Plates) deben descargarse e incluirse manualmente en `www/restaurant/commons/libs/` en sus versiones de distribución limpias.

### 4. Estándares del Núcleo Backend (Core Commons)
Cualquier archivo de lógica o controlador en el backend debe apoyarse en la infraestructura común ya implementada:
*   **Autocargador PSR-4 Frugal (`commons/autoload.php`):** Registra namespaces del proyecto (`App\`) y carga de forma dinámica dependencias externas sin Composer. No duplicar autoloaders.
*   **Gestión Centralizada de Base de Datos (`commons/DB.php`):** Inicialización Singleton perezosa de PDO. Siempre se debe utilizar `Flight::db()` (registrado en el Service Container de Flight).
*   **Registrador de Logs Redundante (`commons/Logger.php`):** Emplea escritura dual (consola/archivo físico + tabla `sys_logs` de MariaDB). Los errores se guardan bajo estándares PSR-3 de gravedad (DEBUG, INFO, WARNING, ERROR).
*   **Contenedor de Dependencias (`commons/commons.php`):** Centraliza la inicialización de sesión, Delight Auth (`Flight::auth()`), Plates (`Flight::view()`) y el manejo global de excepciones. No reinicializar sesiones ni crear nuevas conexiones PDO directas.

