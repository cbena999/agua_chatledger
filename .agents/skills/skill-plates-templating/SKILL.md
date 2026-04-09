# SKILL: Plates Template Refactoring (PHP/Vviews)
---
name: Plates Templating Patterns
description: Patrones de uso del motor Plates v3.3 para las vistas en Agua.
---

## 🏛️ Estándar de Plantillas (Views)
El directorio `views/` es el hogar de toda la interfaz de usuario. Las vistas deben ser limpias y evitar lógica pesada (la cual debe estar en `includes/negocio/`).

### 1. Inserción de Layouts
- El layout base (`layout.php`) debe invocarse siempre al inicio de las vistas secundarias via `$this->layout('layout')`.
- Las secciones (titulos de página, scripts específicos de vista) se deben definir usando `$this->section()`.

### 2. Parciales (Insert)
- Los componentes reutilizables (ej. una tabla de cargos, encabezado de contrato) se deben colocar en archivos pequeños y llamarse mediante `$this->insert('partials/nombre-parcial', ['data' => $data])`.
- Esto permite la reutilización entre `admin/` y reportes generales.

### 3. Seguridad de Datos (Escapado)
- **Regla de Oro**: Siempre usar `$this->e($variable)` para imprimir datos que provengan del usuario o la base de datos, evitando ataques XSS.
- No utilizar `echo` o `print` de forma directa sin escape a menos que el contenido sea explícitamente HTML seguro generado por el propio sistema.

### 4. Ciclos y Condicionales
- Usar sintaxis alternativa de PHP para mayor legibilidad en las vistas: `<?php foreach($data as $row): ?> ... <?php endforeach; ?>` y `<?php if($condicion): ?> ... <?php endif; ?>`.

---
**Nota para Gemini**: Cualquier nueva vista o refactorización de los antiguos archivos PHP debe seguir este patrón de templating para el Host A y Host C.
