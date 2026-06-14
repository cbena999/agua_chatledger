# SKILL: Delight-IM Auth — Autenticación Vanilla PHP
---
name: Delight PHP Auth
description: Uso seguro de delight-im/auth en entornos sin framework, mejores prácticas, issues de sesión y migraciones.
---

## 🔐 Contexto
El proyecto **Restaurant** y posiblemente migraciones del legado de Agua pueden utilizar `delight-im/auth` para proveer manejo de sesiones, contraseñas seguras (Bcrypt/Argon2) y control de acceso (roles) en un stack PHP "vanilla" o con micro-frameworks (Flight).

---

## 1. Inicialización Segura

Requiere un conector PDO robusto.

```php
require __DIR__ . '/vendor/autoload.php';

// Conector DB PDO (nunca usar mysqli)
$pdo = new \PDO(
    'mysql:host=localhost;dbname=my_db;charset=utf8mb4',
    'user',
    'password',
    [
        \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
        \PDO::ATTR_EMULATE_PREPARES => false,
        \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
    ]
);

// Inicializar Auth
$auth = new \Delight\Auth\Auth($pdo);
```

---

## 2. Flujo de Autenticación

### 2.1 Registro (Signup)
```php
try {
    $userId = $auth->register('user@mail.com', 'mypassword', 'Username', function ($selector, $token) {
        // Enviar email de confirmación (si se requiere)
        enviarEmailConfirmacion('user@mail.com', $selector, $token);
    });
    echo 'ID registrado: ' . $userId;
} catch (\Delight\Auth\InvalidEmailException $e) { /* ... */ }
  catch (\Delight\Auth\InvalidPasswordException $e) { /* ... */ }
  catch (\Delight\Auth\UserAlreadyExistsException $e) { /* ... */ }
  catch (\Delight\Auth\TooManyRequestsException $e) { /* rate limit */ }
```

### 2.2 Login y Sesión
```php
try {
    // Recordar sesión: 1 hora a 1 año
    $rememberDuration = (int) (60 * 60 * 24 * 365.25);
    
    $auth->login('user@mail.com', 'mypassword', $rememberDuration);
    echo 'Login exitoso';
} catch (\Delight\Auth\InvalidEmailException $e) { /* ... */ }
  catch (\Delight\Auth\InvalidPasswordException $e) { /* ... */ }
  catch (\Delight\Auth\EmailNotVerifiedException $e) { /* ... */ }
  catch (\Delight\Auth\TooManyRequestsException $e) { /* ... */ }
```

### 2.3 Roles y Autorización
```php
if ($auth->isLoggedIn()) {
    // Roles estáticos: ADMIN, COLLABORATOR, MANAGER, etc.
    if ($auth->hasRole(\Delight\Auth\Role::ADMIN)) {
        // Mostrar panel admin
    } else {
        // Acceso denegado
    }
}
```

---

## 3. Issues Conocidos y Limitaciones

| Issue | Descripción | Workaround |
|---|---|---|
| **Rate Limit** | Si bloquea usuarios legítimos | Ajustar throttling en base a IP, o resetear base `auth_throttling` manual. |
| **Mantenimiento** | Librería "completa" pero con escasas updates recientes | Funciona perfecto, pero no esperar soporte SAML/OIDC. Usar para auth simple. |
| **Deprecation PHP 8.2+** | Warnings por conversion dynamic properties | Silenciar notice o hacer PR; parchear local con Rector si es crítico. |
| **MFA/2FA** | No incluye 2FA nativo complejo (solo OTP) | Usar librería externa `RobThree/TwoFactorAuth` integrando el secreto a mano. |
| **Sesiones Zombi** | Cierres abruptos | Invocar periódicamente limpieza de tokens expirados de la BD. |

---

## 4. Mejores Prácticas Arquitectónicas

1. **Throttling habilitado**: Atrapar siempre `TooManyRequestsException` para prevenir ataques de fuerza bruta.
2. **Sin cookies planas**: La librería usa DB tokens para "Remember Me"; no implementar esquemas propios inseguros de cookies.
3. **Validación de Input Externa**: Aunque la librería valide email y password, sanitizar (ej. `trim()`) la entrada *antes* de enviarla.
4. **Seguridad de Conexión**: Solo usar en servidores HTTPS; marcar configuración de sesión para cookies seguras en `php.ini` (`session.cookie_secure = 1`).

---
**Nota IA**: `delight-im/auth` es un excelente drop-in para micro-frameworks (Flight). Delegar toda lógica de validación de contraseñas, hashing, sesiones y "Remember Me" a la librería; NO reinventar la rueda con variables `$_SESSION` manuales.
