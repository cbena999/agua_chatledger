# SKILL: HTMX — Interactividad Hipermedia
---
name: HTMX Patterns
description: Patrones de uso de HTMX para interactividad server-driven, integración con PHP/Flight, issues conocidos y workarounds.
---

## 🔄 Contexto
HTMX reemplaza la necesidad de frameworks JS pesados (React/Vue) para la interactividad del UI. El servidor devuelve **fragmentos HTML**, no JSON. Aplica a ambos proyectos: Agua (futuro) y Restaurant (PWA activa).

---

## 1. Filosofía Core

> **Regla de Oro**: El servidor es la fuente de verdad del estado de la UI. HTMX extiende HTML con atributos para hacer peticiones AJAX y actualizar fragmentos del DOM sin JavaScript explícito.

```html
<!-- Ejemplo básico: cargar contenido dinámico -->
<button hx-get="/api/mesas"
        hx-target="#lista-mesas"
        hx-swap="innerHTML"
        hx-indicator="#spinner">
    Actualizar Mesas
</button>
<div id="lista-mesas"><!-- Se reemplaza aquí --></div>
<span id="spinner" class="htmx-indicator">⏳</span>
```

---

## 2. Atributos Esenciales

| Atributo | Uso | Ejemplo |
|---|---|---|
| `hx-get` | GET request | `hx-get="/ordenes"` |
| `hx-post` | POST request | `hx-post="/orden/crear"` |
| `hx-put` | PUT request | `hx-put="/orden/42"` |
| `hx-delete` | DELETE request | `hx-delete="/orden/42"` |
| `hx-target` | Elemento destino | `hx-target="#contenido"` |
| `hx-swap` | Modo de inserción | `innerHTML`, `outerHTML`, `beforeend`, `afterbegin` |
| `hx-trigger` | Evento disparador | `click`, `change`, `revealed`, `every 5s` |
| `hx-indicator` | Spinner de carga | `hx-indicator="#loading"` |
| `hx-confirm` | Confirmación | `hx-confirm="¿Seguro?"` |
| `hx-push-url` | Actualizar URL | `hx-push-url="true"` |
| `hx-vals` | Valores adicionales | `hx-vals='{"mesa": 5}'` |
| `hx-headers` | Headers custom | `hx-headers='{"X-CSRF": "token"}'` |

---

## 3. Patrones Recomendados

### 3.1 Detección de Petición HTMX en PHP
```php
// Middleware o helper global
function esHtmx(): bool {
    return isset($_SERVER['HTTP_HX_REQUEST']) 
        && $_SERVER['HTTP_HX_REQUEST'] === 'true';
}

// En controlador
if (esHtmx()) {
    echo $templates->render('mesero/partials/tabla-ordenes', $data);
} else {
    echo $templates->render('mesero/dashboard', $data);
}
```

### 3.2 Formularios con Validación Server-Side
```html
<form hx-post="/orden/crear"
      hx-target="#resultado"
      hx-swap="innerHTML">
    <input name="mesa" type="number" required>
    <textarea name="notas"></textarea>
    <button type="submit">Enviar Orden</button>
</form>
<div id="resultado"></div>
```

```php
// Controlador: retorna HTML de éxito o error
if ($valido) {
    echo '<div class="alert-success">✅ Orden creada: Mesa ' . $mesa . '</div>';
} else {
    echo '<div class="alert-error">❌ Mesa inválida</div>';
}
```

### 3.3 Lazy Loading (Carga Diferida)
```html
<!-- Se carga cuando el elemento entra en viewport -->
<div hx-get="/api/estadisticas"
     hx-trigger="revealed"
     hx-swap="innerHTML">
    <span class="htmx-indicator">Cargando estadísticas...</span>
</div>
```

### 3.4 Polling (Actualización Periódica)
```html
<!-- Actualizar cada 10 segundos (panel de cocina) -->
<div hx-get="/cocina/ordenes-pendientes"
     hx-trigger="every 10s"
     hx-swap="innerHTML"
     id="panel-ordenes">
</div>
```

### 3.5 Active Search (Búsqueda en Tiempo Real)
```html
<input type="search" name="q"
       hx-get="/api/buscar-usuario"
       hx-trigger="input changed delay:300ms"
       hx-target="#resultados"
       placeholder="Buscar ciudadano...">
<div id="resultados"></div>
```

### 3.6 WebSocket con SSE (Server-Sent Events)
```html
<!-- Escuchar eventos del servidor (notificaciones de cocina) -->
<div hx-ext="sse"
     sse-connect="/api/eventos"
     sse-swap="ordenLista">
    <!-- Se actualiza cuando llega el evento "ordenLista" -->
</div>
```

---

## 4. CSRF Protection

```html
<!-- Inyectar token globalmente -->
<meta name="csrf-token" content="<?= $_SESSION['csrf_token'] ?>">

<script>
document.body.addEventListener('htmx:configRequest', function(e) {
    e.detail.headers['X-CSRF-Token'] = 
        document.querySelector('meta[name="csrf-token"]').content;
});
</script>
```

---

## 5. Integración con CSS (Indicadores)

```css
/* Estilo del indicador de carga */
.htmx-indicator {
    display: none;
    opacity: 0;
    transition: opacity 200ms ease-in;
}

.htmx-request .htmx-indicator,
.htmx-request.htmx-indicator {
    display: inline-block;
    opacity: 1;
}

/* Skeleton loading para contenido */
.htmx-settling .skeleton {
    animation: pulse 1.5s infinite;
}
```

---

## 6. Issues Conocidos y Workarounds

| Issue | Descripción | Workaround |
|---|---|---|
| **History cache** | Back-button duplica contenido con Alpine.js | `<meta name="htmx-config" content='{"historyCacheSize": 0}'>` |
| **hx-boost + scripts** | Scripts en `<head>` no se re-ejecutan con boost | Usar `hx-swap="innerHTML"` manual en vez de boost |
| **Estado local** | HTMX no maneja dark mode, drafts, etc. | Complementar con Alpine.js o vanilla JS para UI local |
| **Grandes datasets** | Renderizar miles de rows en servidor = memoria | Paginación + `hx-trigger="revealed"` para infinite scroll |
| **CORS** | Peticiones cross-origin bloqueadas | Configurar headers CORS en Apache/middleware |
| **Doble-click** | Submit duplicado en formularios | `hx-disable-elt="this"` para deshabilitar botón |

---

## 7. Mejores Prácticas

1. **Parciales reutilizables**: Organizar views PHP en `partials/` para HTMX.
2. **No duplicar lógica**: Un parcial sirve tanto para la carga inicial como para HTMX.
3. **`hx-swap="outerHTML"`** para reemplazar el elemento completo (incluyendo el trigger).
4. **`hx-trigger="load"`** para cargar contenido al montar un elemento.
5. **Combinar con Alpine.js** para lógica local que HTMX no cubre.
6. **Mantener accesibilidad**: Todos los `hx-*` deben funcionar también sin JS (progressive enhancement).

---

## 8. CDN e Inclusión

```html
<!-- Producción (CDN) -->
<script src="https://unpkg.com/htmx.org@2.0.4"
        integrity="sha384-HGfztofotfshcF7+8n44JQL2oJmowVChPTg48S+jvZoztPfvwD79OC/LTtG6dMp+"
        crossorigin="anonymous"></script>

<!-- O local (offline-first) -->
<script src="/web-assets/js/htmx.min.js"></script>
```

---
**Nota para Agentes IA**: Al crear interfaces interactivas, preferir HTMX sobre JavaScript manual o jQuery AJAX. Cada endpoint que sirve a HTMX debe verificar el header `HX-Request` para decidir si retornar un parcial o la página completa. Nunca retornar JSON a HTMX; siempre HTML.
