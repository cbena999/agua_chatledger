# Issues Resueltos — Sesión 2026-06-22
**Conversación:** `95cd3afb-e633-4867-ab82-e080dc81ed68`
**Rama:** `main`

---

## Issue 1 — Refactorización de Acordeón de Mora UI

### Scope Funcional
El sistema anteriormente mostraba una lista plana de hasta ~1,369 cargos y recargos por contrato, sobrecargando la vista del operador y haciendo confuso el desglose de deudas y la selección selectiva. 
Con la refactorización implementada:
- Los cargos y recargos se dividen en 4 acordeones colapsables lógicos y dinámicos (Año en curso, Cargos especiales, Historial reciente e Historial antiguo).
- Cada cabecera de acordeón calcula y presenta en tiempo real estadísticas de cobro de ese grupo: número de adeudos, sumatoria de cargos base, sumatoria de recargos moratorios y subtotal.
- Se implementó interactividad para que un checkbox en la cabecera del acordeón marque o desmarque masivamente solo los adeudos de ese acordeón.
- Los conceptos de "FALTA ASAMBLEA" se muestran en el acordeón del año que les corresponda.
- El acordeón de Cargos Especiales y Cooperaciones muestra dinámicamente el rango de años que incluye (ej. `2014 - 2026`).
- El término "RECARGO" en cargos especiales no moratorios (como compras de bomba, etc.) se resalta en color rojo, negrita y subrayado para diferenciarse visualmente del recargo moratorio oficial generado por el motor de recargos.

### Scope Técnico
- **Modificación en `includes/negocio/contratos.php`**:
  Se incluyó el campo `anio` en la consulta SELECT a `vw_ligacargos_pendientes` dentro de `cargaContrato($id)`. Esto permite una clasificación 100% fiable en la vista y evita tener que parsear el año desde el string de leyenda con expresiones regulares.
- **Rediseño en `views/contratos/adeudo_tabla.php`**:
  - Reemplazo de la tabla de adeudos tradicional por una estructura de 4 contenedores de acordeón estilizados mediante CSS inline moderno (Flexbox, hover transition, badge rounded, bordes curvos).
  - Implementación de la función `toggleAccordion(contentId, iconId)` para abrir/cerrar acordeones actualizando los iconos de flecha (`▲` / `▼`).
  - Implementación de la función `toggleGroupCheckboxes(groupCheckbox, contentId)` para selección masiva de checkboxes dentro del acordeón, con recálculo dinámico de la suma de montos utilizando jQuery.
  - Implementación de expresión regular `preg_replace` con la clase `.rojo-subrayado` para el término "RECARGO" en cargos de categorías no moratorias (`categoria != 16, 17` y `recargo == 0`).
  - Clasificación de adeudos mediante lógica temporal dinámica basada en el año de ejercicio actual (`intval(date('Y'))`):
    - **Curso**: `$categoria` en `[2, 3, 16, 17]` o `$categoria == 6` y `$anio == $anio_actual`.
    - **Especiales**: `$categoria` no es `[2, 3, 16, 17]` ni `6`.
    - **Reciente**: `$categoria` en `[2, 3, 16, 17, 6]` y `$anio` entre `$anio_actual - 5` y `$anio_actual - 1`.
    - **Antiguo**: `$categoria` en `[2, 3, 16, 17, 6]` y `$anio` menor a `$anio_actual - 5`.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `includes/negocio/contratos.php` | `agua` | Selección de columna `anio` de la base de datos |
| `views/contratos/adeudo_tabla.php` | `agua` | Estructuración, interactividad CSS/JS y lógica de acordeones |
| `.agents/pending.md` | `agua_chatledger` | Registro de hito completado |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Validación de sintaxis PHP en CLI (`trigger_jit.php`) | ✅ EXIT 0 (compila y ejecuta sin errores) |
| Integridad de symlinks y mapa de assets (`chatledger_validate.sh`) | ✅ OK (0 errores) |

---
*Generado por Antigravity — 2026-06-22*
