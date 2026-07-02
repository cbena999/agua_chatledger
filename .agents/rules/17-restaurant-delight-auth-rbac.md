# Regla 17: Autenticación, Sesiones y Seguridad RBAC (Comandas VOSK)

Cualquier desarrollo, middleware o lógica de control que implemente seguridad de acceso o autenticación en el proyecto **Comandas VOSK** debe regirse por los siguientes estándares:

---

## 📋 Directrices de Seguridad y RBAC

### 1. Integración con el Contenedor de Servicios (Flight PHP)
*   **Acceso Único:** Se prohíbe inicializar múltiples instancias de `Delight\Auth\Auth`. Se debe utilizar exclusivamente `Flight::auth()`, el cual ya está configurado con la instancia de base de datos activa.
*   **Manejo de Sesión:** La sesión de PHP debe ser inicializada únicamente en `commons/commons.php`. No invocar `session_start()` en rutas o controladores individuales.

### 2. Mapeo de Roles de Usuario
El sistema mapea los roles nativos de `Delight\Auth\Role` a los perfiles de la base de datos `vcd01` de la siguiente forma:
*   **Mesero:** Rol `\Delight\Auth\Role::CONSUMER` o asignación personalizada a través de la tabla `users` vinculada a la tabla `empleados` por medio del campo `email`.
*   **Cocinero:** Rol `\Delight\Auth\Role::COLLABORATOR` o asignación personalizada.
*   **Cajero / Administrador:** Rol `\Delight\Auth\Role::ADMIN` o `\Delight\Auth\Role::DIRECTOR`.

### 3. Middleware de Seguridad en Flight PHP
Para proteger las rutas del sistema, se debe implementar una validación en cadena (Middleware o mapa global):
*   **Rutas de API (`/api/*`):** Si no hay sesión válida o si el usuario no tiene los privilegios adecuados, el servidor debe retornar una respuesta JSON con código `401 Unauthorized` o `403 Forbidden` (`['status' => 'error', 'mensaje' => 'No autorizado']`).
*   **Rutas de Vista (HTML):** Si la sesión no es válida, se debe forzar una redirección limpia a `/login` usando `Flight::redirect('/login')`.
*   **Respuestas HTMX:** Si la petición es AJAX (solicitada por HTMX) y falla la sesión, el servidor debe responder con el encabezado `HX-Redirect: /restaurant/login` para forzar al navegador a redigir la App Shell sin anidar la vista de login dentro de un fragmento.

### 4. Seguridad de Contraseñas y Hash
*   La inserción de usuarios debe realizarse utilizando hash Bcrypt nativo a través de Delight-Auth para garantizar la resiliencia criptográfica.
*   Queda estrictamente prohibido guardar o contrastar contraseñas en texto plano.
