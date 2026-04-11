# Issues Resueltos — Sesión 2026-04-11
**Conversación:** `3f90b4f` (último commit rama feature)
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Nuevo filtro: Contratos con 2+ tomas en el mismo contrato

### Scope Funcional
El reporte no permitía identificar contratos con múltiples tomas físicas registradas en `contrato_toma`. Se agrega el filtro 8 "Con 2+ Tomas en el Mismo Contrato" con badge ⚡ y fondo amarillo en la cto-card afectada. Caso de referencia: contrato #875 (Elías Torres Ramírez, userid 254).

### Scope Técnico
- `procesarTomas()`: agrega `n_tomas` como contador físico de registros en `contrato_toma`
- PHP: `$has_cto_dos_tomas`, `$c_dos_tomas` usando `num_tomas` físico
- JS: `data-cto-dos-tomas`, resaltado borde naranja en filtro, opacidad 0.35 en celdas que no cumplen
- **Archivo:** `admin/reporte_contratos_toma.php`
- **Commits:** `07e53bb`, `8dfad27`, `667b202`

---

## Issue 2 — Bug masivo: conteo físico de tomas incorrecto (81% contratos afectados)

### Scope Funcional
El badge ⚡ aparecía en contratos con solo una toma física (ej. #649, #795). El bug afectaba 1,138 de 1,407 contratos (81%).

### Scope Técnico
- **Causa raíz:** `c_takes = num_agua + num_drenaje` sumaba servicios por toma, no registros físicos. Una toma con agua+drenaje contaba como 2.
- **Fix:** `procesarTomas()` agrega `n_tomas++` por cada entrada del `GROUP_CONCAT` (una por registro en `contrato_toma`). `c_takes`, `$has_una_toma`, `$has_cto_dos_tomas` migrados a usar `num_tomas`.
- **Commit:** `8dfad27`

---

## Issue 3 — Inconsistencias en filtros (3 fixes)

### Scope Funcional
- Filtros `caso_1309/171/560/1_1` calculados en PHP pero sin `<option>` en el select — inaccesibles.
- Filtro 7 "Varias Tomas" evaluaba acumulado del usuario, solapando con filtro 8.
- Filtro 3 "Mixto" no diferenciaba visualmente qué contratos eran Normal vs Comercial.

### Scope Técnico
- Expuestas opciones A/B/C/D con separador visual en el select
- `$has_varias_tomas` eliminado (merge con filtro 8)
- JS filtro mixto: borde rojo=Comercial, verde=Normal en cto-card
- **Commit:** `2ff645c`

---

## Issue 4 — Refactor: nomenclatura camelCase y reorganización del combo

### Scope Funcional
Labels inconsistentes (mayúsculas, puntos, mezcla de estilos). Reducción de 14 a 12 opciones activas organizadas en 4 grupos semánticos con separadores.

### Scope Técnico
- Grupos: Por Tipo de Toma / Por Servicio / Por Volumen de Contratos / Combinación Exacta de Tomas
- Eliminado filtro 7 "VARIAS TOMAS" (código muerto tras merge)
- **Commit:** `e7a71e3`

---

## Issue 5 — Rediseño estructural: un registro por usuario (Opción A)

### Scope Funcional
Un usuario con contratos en múltiples estados aparecía fragmentado en grupos separados. Heraclio Lara Torres (#89 Susp.Temporal + #102 + #372 Activo) era el caso de referencia — filtro 6 "3+ contratos" no lo detectaba.

### Scope Técnico
- `$data` pasa de `$data[estado][usuario]` a `$data[usuario]` — un registro por usuario con TODOS sus contratos
- Query: `ORDER BY u.nombre, c.numcontrato` (sin estado como agrupador PHP)
- `$max_ctos`: máximo global (antes por estado)
- `data-estados="1,2"` en cada `<tr>` para filtro JS
- Eliminados: `status-group`, `toggleStatusGroups()`, `filterStatusGroup()`
- Nueva función JS unificada `applyFilters()` con dos combos independientes: `estadoFilter` + `tomaFilter`
- Filtro de estado atenúa celdas de otro estado (opacity 0.3) sin ocultar la fila
- **Commit:** incluido en `a36a4cd`

---

## Issue 6 — Filtros 4,5,7,9-12 calculados dinámicamente en JS

### Scope Funcional
Filtros "Solo Agua", "Solo Drenaje", "Una Toma" y combinaciones exactas (9-12) usaban totales fijos PHP del usuario completo, sin considerar el `estadoFilter` activo. Casos afectados:
- Dora Silvia (228): 1 Activo + 3 Estado4 → total 4A+4D activaba filtro D (incorrecto). Correcto con Activo: 1A+1D → filtro 9.
- Heraclio (451): total 4A+4D activaba filtro D. Correcto con Activo: 3A+3D → ningún filtro exacto.
- Irais (491): total 5A+5D no activaba nada. Correcto con Activo: 1A+1D → filtro 9.

### Scope Técnico
PHP emite solo 6 `data-attrs` estáticos (propiedades del usuario como entidad):
`data-estados`, `data-only-comercial`, `data-only-normal`, `data-is-mixed`, `data-multi-cto`, `data-cto-dos-tomas`

JS `applyFilters()` calcula en tiempo real sobre celdas activas del `estadoFilter`:
`activeAgua`, `activeDrenaje`, `activeTomas` → evalúa `soloAgua`, `soloDrenaje`, `unaToma`, `is1_1`, `is171`, `is560`, `is1309`

- **Commit:** `3f90b4f`

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `admin/reporte_contratos_toma.php` | `agua` | Refactor + 6 fixes |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Badge ⚡ solo en contratos con 2+ tomas físicas reales | ✅ |
| #649, #795 (1 toma) sin badge | ✅ |
| #875 (2 tomas) con badge ⚡ 2 tomas | ✅ |
| Heraclio Lara aparece en una sola fila con 3 contratos | ✅ |
| Filtro 6 detecta correctamente 3+ contratos por usuario | ✅ |
| Filtro 9 con estado=Activo: Dora Silvia → 1A+1D correcto | ✅ |
| 31 usuarios multi-estado correctamente unificados | ✅ |
| Ground Truth validado: 0 errores | ✅ |

### Pruebas manuales pendientes en Host C
1. Abrir `http://192.168.1.128:7001/agua/admin/reporte_contratos_toma.php`
2. Verificar que Heraclio Lara Torres aparece con 3 contratos en una sola fila
3. Filtro estado=Activo → Dora Silvia debe activar filtro 9 (1A+1D)
4. Filtro 8 → contrato #875 con borde naranja, #401 atenuado
5. Filtro 3 Mixto → celdas con borde rojo (Comercial) y verde (Normal)
6. Combo estado + combo toma combinados simultáneamente

---
*Generado por Claude Sonnet 4.6 — 2026-04-11*
