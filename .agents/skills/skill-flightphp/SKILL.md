# SKILL: Flight PHP — Micro-Framework MVC
---
name: Flight PHP Framework
description: Patrones arquitectónicos, routing, middleware, DI Container y mejores prácticas para Flight PHP v3+ en los proyectos Agua/Restaurant.
---

## ✈️ Contexto
Flight PHP es el micro-framework elegido para el backend del proyecto **Restaurant** (caelitandem). Su filosofía es: mínima huella, máximo control. No reemplaza la arquitectura existente de Agua (MVC legado), sino que sirve como backbone HTTP del nuevo proyecto.

---

## 1. Estructura de Proyecto Recomendada

```
restaurant/
├── public/               # ← DocumentRoot de Apache
│   ├── index.php          # Front Controller (punto de entrada único)
│   └── .htaccess          # Rewrite rules
├── app/
│   ├── controllers/       # Controladores por módulo
│   │   ├── MeseroController.php
│   │   ├── CocinaController.php
│   │   └── CajaController.php
│   ├── middleware/         # Middleware (auth, CORS, logging)
│   │   ├── AuthMiddleware.php
│   │   └── CorsMiddleware.php
│   ├── models/            # Modelos / repositorios
│   ├── views/             # Templates Plates
│   └── config/
│       └── routes.php     # Definición de rutas
├── vendor/                # Composer autoload
└── composer.json
```

> [!IMPORTANT]
> **Regla de Oro**: El directorio `public/` es el **único** directorio expuesto al servidor web. Nunca colocar `vendor/`, `app/` o archivos de configuración en la raíz web.

---

## 2. Front Controller (`public/index.php`)

```php
<?php
declare(strict_types=1);

require __DIR__ . '/../vendor/autoload.php';

// ── Inicializar Flight ──
$app = Flight::app();

// ── Registrar Dependencias (DIC) ──
$app->register('db', PDO::class, [
    'mysql:host=mariadb;dbname=restaurantb;charset=utf8mb4',
    'usuario',
    'password',
    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
]);

// ── Registrar Plates ──
$app->register('view', League\Plates\Engine::class, [
    __DIR__ . '/../app/views'
]);

// ── Cargar rutas ──
require __DIR__ . '/../app/config/routes.php';

// ── Iniciar ──
$app->start();
```

---

## 3. Routing

### 3.1 Agrupamiento por Módulo
```php
// app/config/routes.php

// ── API del Mesero ──
Flight::group('/mesero', function () {
    Flight::route('GET /', [MeseroController::class, 'dashboard']);
    Flight::route('POST /orden', [MeseroController::class, 'crearOrden']);
    Flight::route('GET /mesas', [MeseroController::class, 'listaMesas']);
}, [new AuthMiddleware('mesero')]);

// ── API de Cocina ──
Flight::group('/cocina', function () {
    Flight::route('GET /', [CocinaController::class, 'panelOrdenes']);
    Flight::route('POST /tomar/@id', [CocinaController::class, 'tomarOrden']);
    Flight::route('POST /listo/@id', [CocinaController::class, 'ordenLista']);
}, [new AuthMiddleware('cocinero')]);

// ── API de Caja ──
Flight::group('/caja', function () {
    Flight::route('GET /corte', [CajaController::class, 'corteCaja']);
    Flight::route('POST /cobrar/@id', [CajaController::class, 'cobrar']);
}, [new AuthMiddleware('cajero')]);
```

### 3.2 Parámetros Nombrados
```php
// Parámetro obligatorio
Flight::route('GET /orden/@id', function (string $id) {
    $orden = Flight::db()->query("SELECT * FROM ordenes WHERE id = ?", [$id]);
    Flight::json($orden);
});

// Parámetro con regex
Flight::route('GET /mesa/@num:[0-9]+', function (string $num) {
    // Solo acepta números
});

// Parámetro opcional
Flight::route('GET /reportes(/@fecha)', function (?string $fecha = null) {
    $fecha = $fecha ?? date('Y-m-d');
});
```

---

## 4. Middleware

### 4.1 Clase de Middleware
```php
// app/middleware/AuthMiddleware.php
class AuthMiddleware implements \flight\core\MiddlewareInterface {
    private string $rol;

    public function __construct(string $rol) {
        $this->rol = $rol;
    }

    public function before(array $params): void {
        $session = Flight::session();
        if (!$session || $session['rol'] !== $this->rol) {
            Flight::halt(403, 'Acceso denegado');
        }
    }

    public function after(array $params): void {
        // Log de acceso, headers adicionales, etc.
    }
}
```

### 4.2 CORS Middleware (para PWA)
```php
class CorsMiddleware implements \flight\core\MiddlewareInterface {
    public function before(array $params): void {
        $response = Flight::response();
        $response->header('Access-Control-Allow-Origin', '*');
        $response->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        $response->header('Access-Control-Allow-Headers', 'Content-Type, HX-Request, HX-Target');
        
        if (Flight::request()->method === 'OPTIONS') {
            Flight::halt(200);
        }
    }
    
    public function after(array $params): void {}
}
```

---

## 5. Integración con Plates (Views)

```php
// En un controlador
class MeseroController {
    public function dashboard(): void {
        $mesas = Flight::db()->query("SELECT * FROM mesas")->fetchAll();
        echo Flight::view()->render('mesero/dashboard', [
            'mesas' => $mesas,
            'titulo' => 'Panel del Mesero'
        ]);
    }
}
```

---

## 6. Responses para HTMX

```php
// Detectar petición HTMX
$isHtmx = Flight::request()->getHeader('HX-Request') === 'true';

if ($isHtmx) {
    // Retornar solo el fragmento HTML
    echo Flight::view()->render('mesero/partials/lista-mesas', ['mesas' => $mesas]);
} else {
    // Retornar página completa
    echo Flight::view()->render('mesero/dashboard', ['mesas' => $mesas]);
}
```

### 6.1 Headers especiales para HTMX
```php
// Redirigir desde HTMX (sin recargar la página completa)
Flight::response()->header('HX-Redirect', '/mesero/dashboard');

// Reemplazar la URL del navegador
Flight::response()->header('HX-Push-Url', '/mesero/orden/42');

// Trigger de evento JS
Flight::response()->header('HX-Trigger', 'ordenCreada');
```

---

## 7. Issues Conocidos y Workarounds

| Issue | Descripción | Workaround |
|---|---|---|
| **mod_rewrite** | `.htaccess` no funciona si `AllowOverride` no es `All` | Configurar en vhost: `AllowOverride All` |
| **404 en sub-rutas** | Multi-path routing falla en algunos Apache | Verificar `RewriteBase` correcto |
| **Estado global** | `Flight::` es estático por diseño | Usar DIC para inyectar dependencias |
| **No hot-reload** | No tiene watcher nativo | Usar `nodemon` o `entr` para reiniciar en dev |
| **Sesiones** | No gestiona sesiones por defecto | Implementar manualmente o usar `flight/session` |

---

## 8. Mejores Prácticas

1. **No mezclar lógica en `index.php`**: Separar rutas, controladores y config.
2. **Usar DIC**: Registrar PDO, Plates, Auth vía `Flight::register()`.
3. **PSR-4 Autoloading**: Definir namespaces en `composer.json`.
4. **Validación**: Sanitizar inputs en controladores antes de pasar a modelos.
5. **JSON API**: Usar `Flight::json($data)` para respuestas API (auto-set Content-Type).
6. **Error Handling**: Registrar handler global con `Flight::map('error', function($e) {...})`.

---
**Nota para Agentes IA**: Al crear rutas o controladores, siempre usar la sintaxis de clase-método (`[Controller::class, 'method']`) y middleware por grupo. Nunca definir lógica de negocio directamente en las callbacks de rutas; delegarla siempre a controladores.
