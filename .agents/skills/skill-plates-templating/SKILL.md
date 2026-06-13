# SKILL: Plates Template Refactoring (PHP/Views)
---
name: Plates Templating Patterns
description: Patrones avanzados y estándares de uso del motor Plates v3.3 para las vistas en Agua.
---

## 🏛️ Estándar de Plantillas (Views)
El directorio `views/` es el hogar de toda la interfaz de usuario en Agua. Para mantener una base de código limpia, modular y segura, el motor **Plates v3.3** debe utilizarse a su máxima capacidad, evitando la reinvención de lógica de presentación.

---

### 1. Inicialización y Organización por Carpetas (Namespaces)
Para evitar rutas relativas complejas como `../../views/cargos/tabla.php` y organizar el código por módulos, se deben registrar las subcarpetas del proyecto como carpetas con nombre (folders/namespaces) en la inicialización del motor:

```php
// En ruteador.php o index.php
$templates = new League\Plates\Engine(__DIR__ . '/views');

// Registrar folders de vistas comunes
$templates->addFolder('usuarios', __DIR__ . '/views/usuarios');
$templates->addFolder('contratos', __DIR__ . '/views/contratos');
$templates->addFolder('cargos', __DIR__ . '/views/cargos');
$templates->addFolder('sistema', __DIR__ . '/views/sistema');
$templates->addFolder('comun', __DIR__ . '/views/comun'); // Layouts y parciales globales
```

**Uso en controladores/lógica:**
```php
// En vez de usar subdirectorios relativos, usar la sintaxis de folder:
return $templates->render('usuarios::ficha', ['usuario' => $usuario]);
```

---

### 2. Herencia de Layouts y Secciones Dinámicas
Plates permite definir layouts bases reutilizables. Esto asegura la consistencia de estilos sin duplicar estructuras HTML.

#### El Layout Base (`views/comun/layout.php`)
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title><?= $this->e($titulo) ?></title>
    <link rel="stylesheet" href="/web-assets/css/paxstyle2.css">
    <!-- Carga de CSS específica de la vista -->
    <?= $this->section('extra_css') ?>
</head>
<body>
    <header>...</header>
    <main>
        <!-- Inyección del contenido principal -->
        <?= $this->section('content') ?>
    </main>
    <footer>...</footer>

    <!-- Scripts globales -->
    <script src="/web-assets/js/jquery-3.7.1.min.js"></script>
    <!-- Inyección de JavaScript específica de la vista -->
    <?= $this->section('extra_js') ?>
</body>
</html>
```

#### Uso en Vistas Secundarias (Ej. `views/usuarios/nuevo.php`)
```php
<?php $this->layout('comun::layout', ['titulo' => 'Nuevo Ciudadano']) ?>

<h1>Registrar Ciudadano</h1>
<form>...</form>

<!-- Inyectar estilos específicos para esta pantalla -->
<?php $this->start('extra_css') ?>
<style>
    .obligatorio { color: red; }
</style>
<?php $this->stop() ?>

<!-- Inyectar comportamiento específico para esta pantalla -->
<?php $this->start('extra_js') ?>
<script>
    $('#nombre').focus();
</script>
<?php $this->stop() ?>
```

> [!TIP]
> **Diferencia entre `start/stop` y `push/stop`:** 
> - Usa `start('nombre')` para **sobreescribir** o definir una sección única.
> - Usa `push('nombre')` si deseas **agregar** elementos a una sección que se acumula (ej. cargar múltiples scripts JS dinámicamente).

---

### 3. Parciales (Componentes Reutilizables)
Los bloques HTML repetitivos (como tablas de adeudos, historiales o cabeceras de usuario) deben modularse en parciales independientes para facilitar su mantenimiento.

* **Inclusión de parcial:** `$this->insert('carpeta::nombre-parcial', ['datos' => $datos])`
* **Ejemplo:**
```php
<!-- Dentro de la ficha del contrato, renderizar el estado de cuenta mediante un parcial -->
<div class="seccion-deuda">
    <?= $this->insert('cargos::adeudo_tabla', [
        'cargos' => $cargosPendientes,
        'soloLectura' => false
    ]) ?>
</div>
```

---

### 4. Funciones Personalizadas (Helpers)
No dupliques ni reinventes lógica de formateo dentro de las plantillas. Se deben registrar funciones helper personalizadas en el motor de Plates para unificar criterios.

#### Registro de Helpers (en la inicialización del Engine):
```php
// 1. Formateo de moneda unificado
$templates->registerFunction('moneda', function ($monto) {
    return '$' . number_format(floatval($monto), 2, '.', ',');
});

// 2. Badge de estado de contrato con clases CSS unificadas
$templates->registerFunction('badgeEstadoContrato', function ($estadoId) {
    $estados = [
        1 => '<span class="badge badge-activo">🟢 Activo</span>',
        2 => '<span class="badge badge-sus-temp">🟡 Suspensión Temporal</span>',
        3 => '<span class="badge badge-sus-adm">🔴 Suspensión Adm.</span>',
        4 => '<span class="badge badge-baja">🚫 Baja Definitiva</span>'
    ];
    return isset($estados[$estadoId]) ? $estados[$estadoId] : '<span class="badge">Desconocido</span>';
});
```

#### Uso dentro de una Plantilla:
```php
<td><?= $this->e($row['nombre']) ?></td>
<!-- El helper formatea el número automáticamente -->
<td><?= $this->moneda($row['monto']) ?></td>
<!-- Imprime el HTML directamente ya que el helper genera elementos seguros -->
<td><?= $this->badgeEstadoContrato($row['estado']) ?></td>
```

---

### 5. Datos Compartidos (Globales)
Para no pasar el objeto de sesión o variables globales en cada llamada a `render()`, usa `$templates->share()` en la inicialización:

```php
// Compartir el usuario actual y la configuración del sistema con todas las plantillas
$templates->share([
    'usuarioSesion' => $_SESSION['usuario'],
    'configuracion' => $config_sistema
]);
```
Dentro de cualquier vista, estas variables están disponibles directamente como variables locales:
```php
<p>Bienvenido, <?= $this->e($usuarioSesion->getNombre()) ?></p>
```

---

### 6. Seguridad y Escapado Poka-Yoke
Plates cuenta con un método robusto para sanitizar datos contra ataques **XSS (Cross-Site Scripting)**.

* **Regla de Oro:** Todo dato que provenga de la base de datos o entrada del usuario **DEBE** imprimirse usando `$this->e()`.
```php
<!-- Correcto e Inmune a XSS -->
<input type="text" value="<?= $this->e($usuario['domicilio']) ?>">

<!-- INCORRECTO (Vulnerable) -->
<input type="text" value="<?= $usuario['domicilio'] ?>">
```

* **Escape con Callbacks:** Si deseas aplicar filtros adicionales mientras escapas, puedes pasarlos como segundo argumento:
```php
<!-- Escapa y aplica nl2br para formatear saltos de línea -->
<p><?= $this->e($usuario['notas'], 'nl2br') ?></p>

<!-- Múltiples filtros (ej. pasar a mayúsculas y escapar) -->
<h2><?= $this->e($usuario['nombre'], 'strtoupper') ?></h2>
```

---
**Nota para Asistentes de IA (Gemini / Claude)**: Al crear o refactorizar archivos de la interfaz gráfica, es obligatorio verificar primero la arquitectura de carpetas y helpers disponibles. Nunca implementes funciones locales de formateo (como `number_format` o concatenaciones manuales de badges) si se pueden resolver con Helpers de Plates.
