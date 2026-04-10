# Issues Resueltos — Sesión 2026-04-10 (UX Tweaks Formulario Edición)
**Conversación:** `a966039d-cd86-440d-b61b-0788fab82e28`
**Rama:** `feature/upgrade-v2-win-xampp`
**Commit:** `fb40ae7`

---

## Issue 1 — Reposicionamiento del Botón "Guardar Cambios"

### Scope Funcional
El botón "Guardar Cambios" estaba al extremo derecho de un flex row compartido con el panel de tomas, generando una distribución desequilibrada. El cajero tenía que ir al extremo inferior derecho para guardar, sin relación visual clara con los campos que estaba editando.

**Antes:** Botón a la derecha del panel de tomas, en el área inferior del formulario.  
**Después:** Botón debajo del campo "Metros lineales" en la columna izquierda (`colspan=2`, `width: 100%`), logicamente agrupado con los campos editables. El panel de tomas queda solo en la parte inferior, como referencia independiente.

### Scope Técnico
- **Archivo:** `views/contratos/ficha.php`
- Nueva fila `<tr>` con `<td colspan='2'>` insertada después del input `metros` en la `<table>` de la columna izquierda.
- Botón removido del `div` flex inferior (que ahora solo contiene el panel de tomas).
- Estilos del botón idénticos a los anteriores (verde `#28a745`, hover `#218838`, `width: 100%` para alinearse con inputs).

---

## Issue 2 — Limpieza de Label del Panel de Tomas

### Scope Funcional
El título del panel de referencia de tomas incluía el texto `(referencia — sólo lectura)` que era redundante: el diseño visual ya comunica que es de lectura (sin inputs ni controles). El texto extra añadía ruido visual.

**Antes:** `📊 Estado actual de tomas (referencia — sólo lectura)`  
**Después:** `📊 Estado actual de tomas`

### Scope Técnico
- **Archivo:** `views/contratos/ficha.php` — línea del `<b>` del panel `#panel_tomas_ref`.
- Cambio de 1 línea: eliminación del substring `(referencia — sólo lectura)`.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `views/contratos/ficha.php` | `agua` | UX: reposición botón + limpieza label |

## Verificación

| Check | Resultado |
|:---|:---:|
| `php -l ficha.php` | ✅ Sin errores |
| Verificación visual por usuario | ✅ Confirmado |

---
*Generado por Antigravity (Google Gemini) — 2026-04-10 · Protocolo Regla 09*
