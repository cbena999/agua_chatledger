# SKILL: PHP 8.3 — Migración y Mejores Prácticas
---
name: PHP 8.3 Migration
description: Guía de migración PHP 7.4 → 8.3, features modernos, breaking changes, issues y workarounds para los proyectos Agua y Restaurant.
---

## 🚀 Contexto del Proyecto
El stack actual opera en PHP 7.4 (Host C / XAMPP) y PHP 8.1 (Host A / LAMPP). La migración a PHP 8.3 aplica principalmente al entorno Docker del proyecto **Restaurant** (caelitandem) y como target futuro del Host C.

---

## 1. Features Clave de PHP 8.3

### 1.1 Constantes de Clase Tipadas
```php
class Config {
    public const string APP_NAME = 'Agua V2';
    public const int    MAX_RECARGOS = 5;
    public const float  IVA_RATE = 0.16;
}
```

### 1.2 Atributo `#[Override]`
Marca explícitamente métodos que sobrescriben al padre. Útil para detectar errores durante refactorizaciones:
```php
class BaseController {
    public function render(): string { /* ... */ }
}

class UserController extends BaseController {
    #[Override]
    public function render(): string { /* ... */ }
}
```

### 1.3 `json_validate()` — Validación sin Decodificación
```php
// Antes (ineficiente):
$data = json_decode($input);
if (json_last_error() !== JSON_ERROR_NONE) { /* error */ }

// PHP 8.3 (eficiente):
if (!json_validate($input)) { /* error */ }
```

### 1.4 Clonación Profunda de Propiedades Readonly
```php
class Order {
    public function __construct(
        public readonly array $items
    ) {}

    public function __clone() {
        // Ahora permitido en 8.3
        $this->items = array_map(fn($i) => clone $i, $this->items);
    }
}
```

### 1.5 Acceso Dinámico a Constantes de Clase
```php
$estado = 'ACTIVO';
$clase  = EstadoContrato::class;
echo $clase::{$estado}; // Acceso dinámico
```

---

## 2. Breaking Changes Críticos (7.4 → 8.3)

> [!CAUTION]
> Al saltar de 7.4 a 8.3 se cruzan **4 versiones mayores** (8.0, 8.1, 8.2, 8.3). Cada una introduce cambios incompatibles.

### 2.1 Comparación String ↔ Número (PHP 8.0)
```php
// PHP 7.4: 0 == "texto" → true  (PELIGROSO)
// PHP 8.3: 0 == "texto" → false (CORRECTO)
```
**Impacto**: Cualquier lógica que dependa de comparaciones `==` laxas con strings y números puede romperse.

### 2.2 Funciones Removidas/Depreciadas
| Función Antigua | Reemplazo PHP 8.x |
|---|---|
| `each()` | `foreach` |
| `create_function()` | `fn()` (arrow functions) |
| `get_magic_quotes_gpc()` | Eliminada (siempre `false`) |
| `utf8_encode/decode()` | `mb_convert_encoding()` |
| `${var}` en strings | `{$var}` obligatorio en 8.2+ |

### 2.3 Tipado Estricto de Parámetros Internos
Las funciones internas de PHP (ej. `strlen()`, `array_push()`) ahora lanzan `TypeError` si reciben un tipo incorrecto en vez de emitir un Warning silencioso.

### 2.4 Propiedades de Clase Readonly (8.1+)
```php
class Usuario {
    public function __construct(
        public readonly int $id,
        public readonly string $nombre
    ) {}
}
```

### 2.5 Enum Nativos (8.1+)
```php
enum EstadoContrato: int {
    case ACTIVO = 1;
    case SUSPENSION_TEMPORAL = 2;
    case SUSPENSION_ADMIN = 3;
    case BAJA_DEFINITIVA = 4;
}
```

---

## 3. Estrategia de Migración

### 3.1 Pre-Migración (Auditoría)
1. **Actualizar dependencias**: `composer update` + verificar compatibilidad en `composer.json`.
2. **Análisis estático**: Ejecutar PHPStan nivel 5+ para detectar incompatibilidades.
3. **Herramienta Rector**: Automatiza refactorizaciones (`composer require --dev rector/rector`).
4. **Revisar guías oficiales**: `php.net/manual/en/migration80.php` hasta `migration83.php`.

### 3.2 Patrones de Refactorización
```php
// ANTES (7.4): Switch verbose
switch ($estado) {
    case 1: $txt = 'Activo'; break;
    case 2: $txt = 'Suspendido'; break;
    default: $txt = 'Desconocido';
}

// DESPUÉS (8.0+): Match expression
$txt = match($estado) {
    1 => 'Activo',
    2 => 'Suspendido',
    default => 'Desconocido'
};
```

```php
// Constructor Property Promotion (8.0+)
// ANTES:
class Cargo {
    private float $monto;
    public function __construct(float $monto) {
        $this->monto = $monto;
    }
}
// DESPUÉS:
class Cargo {
    public function __construct(
        private float $monto
    ) {}
}
```

### 3.3 Testing y Rollout
- **Entorno staging obligatorio** antes de producción.
- Monitorear `error_log` por Deprecation Notices.
- Verificar extensiones: `pdo_mysql`, `mbstring`, `curl`, `gd`, `intl`.

---

## 4. Issues Conocidos y Workarounds

| Issue | Descripción | Workaround |
|---|---|---|
| **Null aritmético** | `null + 1` genera Warning en 8.1+ | Usar `intval($var) + 1` o null coalescing `($var ?? 0) + 1` |
| **Readonly re-init** | Properties readonly no se pueden reasignar | Usar `__clone()` (disponible desde 8.3) |
| **Deprecation `${var}`** | Interpolación `"${var}"` deprecated en 8.2 | Usar `"{$var}"` |
| **XAMPP Windows** | XAMPP no siempre empaqueta PHP 8.3 | Usar Docker (recomendado para Restaurant) |
| **mysqli warnings** | `mysqli_query()` más estricto con tipos | Asegurar que `$link` no sea `null` antes de queries |

---

## 5. Mejores Prácticas Post-Migración

1. **`declare(strict_types=1);`** en todos los archivos nuevos.
2. **Named arguments** para mejorar legibilidad: `htmlspecialchars(string: $val, flags: ENT_QUOTES)`.
3. **Fiber** para operaciones asíncronas ligeras (lectura de streams).
4. **Atributos** (`#[Route('/api/v1')]`) en vez de comentarios/docblocks para metadata.
5. **CI/CD**: Integrar PHPStan + PHPUnit en pipeline de commits.

---
**Nota para Agentes IA**: Al generar código PHP para el proyecto Restaurant (Docker PHP 8.3), usar siempre sintaxis moderna (match, named args, constructor promotion, enums). Para el proyecto Agua (Host C, PHP 7.4), mantener compatibilidad descendente según `skill-migration-php74`.
