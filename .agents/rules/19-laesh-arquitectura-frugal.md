# Regla 19: Arquitectura Frugal y Bootstrap Global (Proyecto LAESH)

## 1. Principios de Arquitectura Frugal
El ecosistema LAESH (Bloc Digital y Sitio Web) se rige bajo el principio de **Frugalidad del Stack**, optimizando recursos de memoria y disco en el servidor local.

## 2. Cargador de Dependencias Compartido (Frugal Autoloader)
- **Ubicación:** `laesh-swbldi/commons/autoload.php`
- **Regla Estricta:** Queda prohibida la instalación duplication de carpetas `vendor` en la raíz de LAESH. El autoloader PSR-4 debe mapear las bibliotecas de terceros pesadas (`Flight PHP`, `Delight Auth`, `League Plates`) directamente a la ubicación compartida de la red Docker:
  `../../restaurant/commons/libs/`
- **Mapeo Local:** El espacio de nombres `Common\` debe resolverse de manera aislada apuntando al directorio local `laesh-swbldi/commons/`.

## 3. Bootstrap Global del Sistema (commons.php)
- **Ubicación:** `laesh-swbldi/commons/commons.php`
- **Zona Horaria y Seguridad:** Define la zona horaria `America/Mexico_City` e inyecta las cabeceras HTTP de seguridad (`nosniff`, `SAMEORIGIN`, `XSS-Protection`).
- **Ciclo de Vida de Sesiones:** Fuerza cookies seguras (`session.cookie_httponly = 1`, `session.use_only_cookies = 1`) y extiende el tiempo de vida de sesión y recolección de basura a 24 horas (`86400s`).
- **Manejo de Errores PSR-3:** Intercepta errores y excepciones globales de PHP redirigiéndolos a `\Common\Logger`, mostrando respuestas amigables HTTP 500 en producción sin exponer trazas del servidor.
- **Inyección de Dependencias en Flight:** Registra como singletons en el contenedor de Flight PHP:
  - `Flight::auth()` -> Instancia de `Delight\Auth\Auth`
  - `Flight::rbac()` -> Instancia de `\Common\RbacManager`
  - `Flight::view()` -> Engine de plantillas `League\Plates\Engine` (vistas en `laesh-swbldi/`)
  - `Flight::db()` -> Instancia PDO singleton desde `\Common\DB::connect()`
