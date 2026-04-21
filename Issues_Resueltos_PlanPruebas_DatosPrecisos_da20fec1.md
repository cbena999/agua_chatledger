# Issues Resueltos — Sesión 2026-04-20
**Conversación:** `da20fec1-d4c5-4761-9bed-6d1ab3f2e017`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Datos de prueba ambiguos e inválidos en documentos QA

### Scope Funcional

Los dos documentos de QA (`Plan de Pruebas — Sprint Post-Correcciones.md` y `Guia de Pruebas — Tester Humano (V1.0).md`) contenían referencias de prueba que bloquearían tanto a un tester humano como a una herramienta de automatización:

- **Campo usuario** referenciado como `usuario=1` o `usuario=706` — inválido porque el formulario busca por **nombre de persona**, no por ID numérico. Un tester escribiría `"1"` y no encontraría nada.
- **Cargos** referenciados como "un cargo pendiente", "cualquier cargo disponible", "un cargo cancelado" — sin nombre exacto, imposible localizar.
- **Usuarios destino** de "Cambio de propietario" descritos como "cualquier usuario diferente al 361 / 34" — sin dato accionable.
- **Categoría de egreso** descrita como "seleccionar cualquier categoría del dropdown" — sin nombre exacto.

Después de esta sesión, **todos** los datos de prueba son valores verificados en BD Host C, que un tester puede usar directamente sin interpretación.

### Scope Técnico

**Consultas MCP realizadas para verificar datos reales en Host C (`bdawahost-c`):**

| Dato | Valor verificado |
|:---|:---|
| Usuario 1 | `ABAD CRUZ BLANCO` → búsqueda: `"ABAD"` |
| Usuario 706 | `IBÁÑEZ` → búsqueda: `"IBÁÑEZ"` |
| Usuario 361 | `FORTUNATO FLORENTINO LÓPEZ HDEZ` → búsqueda: `"FLORENTINO"` |
| Usuario 34 | `ALEJANDRO VELASCO BONILLA` → búsqueda: `"VELASCO"` |
| Usuario 15 | `adrián urbano mendoza` → primera coincidencia de `"mendoza"` |
| Usuario 8 | `adán melchor gonzález` → primera coincidencia de `"gonzalez"` |
| Cargo único contrato 200 | `"TOMA CLANDESTINA"` ($2,500.00) |
| Cargo mensualidades contrato 200 | `"MENSUALIDAD 2006 AGUA"` ($30.00/mes) |
| Cargo pendiente contrato 100 | `"RECARGO ENE 2026 - ANUALIDAD DEL AGUA 2026"` |
| Cargo cancelado activa contrato 100 | `"FALTA ASAMBLEA 29 MAR 2026"` |
| Cargo cancelado histórico contrato 100 | `"FALTA ASAMBLEA 29 JUN 2025"` (anio=2025, en `ligacargos_historico`) |
| Categoría egreso ID 1 | `"PAGO DE ENERGIA ELECTRICA"` |

**Correcciones aplicadas por documento:**

#### `Plan de Pruebas — Sprint Post-Correcciones.md`

| Sección | Antes | Después |
|:---|:---|:---|
| UI-6-A/B/C/D Pasos + `[AUTO] accion` | `buscar usuario=\`1\`` | `escribir "ABAD CRUZ BLANCO" → TAB → seleccionar 1 - ABAD CRUZ BLANCO` |
| UI-6-E Pasos + `[AUTO] accion` | `buscar usuario=\`706\`` | `escribir "IBÁÑEZ" → TAB → seleccionar 706` |
| UI-6-F Pasos + `[AUTO] accion` | `buscar usuario → TAB → seleccionar` | `escribir "ABAD CRUZ BLANCO" → TAB → seleccionar 1 - ABAD CRUZ BLANCO` |
| UI-7-A `[AUTO] accion` | `campo usuario=\`706\`` | `campo usuario="IBÁÑEZ" → TAB → seleccionar 706` |
| UI-13 dato real | "Usar cualquier cargo pendiente" | `"RECARGO ENE 2026 - ANUALIDAD DEL AGUA 2026"` |
| UI-16 sub-caso A Pasos | "cargo único sin duplicar" | `"TOMA CLANDESTINA"` ($2,500.00) |
| UI-16 sub-caso B Pasos | "cargo mensual" | `"MENSUALIDAD 2006 AGUA"` ($30.00/mes) |
| UI-17 Pasos A+B | "seleccionar cargo" | `"RECARGO ENE 2026 - ANUALIDAD DEL AGUA 2026"` |
| UI-18 Pasos | "cargo cancelado en activa" / "cargo en histórico" | `"FALTA ASAMBLEA 29 MAR 2026"` / `"FALTA ASAMBLEA 29 JUN 2025"` |
| UI-21 Pasos | "buscar por apellido un usuario diferente" | `"mendoza"` → usuario **15 - adrián urbano mendoza** |
| UI-21 `[AUTO] accion` | "seleccionar un usuario ≠ 361" | "seleccionar usuario **15 - adrián urbano mendoza**" |
| UI-21 `revert_sql` | "asignar de vuelta al usuario `361`" | `"FLORENTINO"` → TAB → usuario **361** |
| UI-26 `[AUTO] accion` | "seleccionar cualquier categoría del dropdown" | `"PAGO DE ENERGIA ELECTRICA"` (ID 1) |
| UI-27 `revert_sql` | "reasignar al usuario `34`" | `"VELASCO"` → TAB → usuario **34** |

#### `Guia de Pruebas — Tester Humano (V1.0).md` (versión V1.1)

Mismas correcciones aplicadas al documento orientado al tester humano:

- UI-6-A/B/C/D/E/F: flujo completo TAB con nombre verificado
- UI-7-A: pasos propios con `"IBÁÑEZ"`
- UI-13: cargo `"RECARGO ENE 2026 - ANUALIDAD DEL AGUA 2026"`
- UI-16: cargos `"TOMA CLANDESTINA"` y `"MENSUALIDAD 2006 AGUA"` con montos
- UI-17: cargo con nombre explícito en ambos sub-casos
- UI-18: cargo activa `"FALTA ASAMBLEA 29 MAR 2026"` / histórico `"FALTA ASAMBLEA 29 JUN 2025"`
- UI-21 paso 3: "seleccionar cualquier usuario ≠ 361" → usuario **15 - adrián urbano mendoza**
- UI-26: categoría `"PAGO DE ENERGIA ELECTRICA"` (ID 1)
- UI-27 paso 3: "seleccionar cualquier usuario diferente al 34" → usuario **8 - adán melchor gonzález**
- UI-21 revert + UI-27 revert: términos de búsqueda explícitos

---

## Runbook — Cambios en `.agents/`

Ninguno en esta sesión — solo correcciones en documentos QA de `docs-dev/doc-estabilizacion/`.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `docs-dev/doc-estabilizacion/Plan de Pruebas — Sprint Post-Correcciones.md` | `agua` | Datos de prueba precisados (BD-verified) |
| `docs-dev/doc-estabilizacion/Guia de Pruebas — Tester Humano (V1.0).md` | `agua` | Nuevo archivo — guía completa V1.1 para tester humano |
| `views/sistema/configuracion.php` | `agua` | Fix previo pendiente: quitar ítem "Panel de Saneamiento" de la sección Gestión |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Todos los `usuario=\`N\`` reemplazados por nombre de persona verificado en BD | ✅ |
| Todos los cargos de prueba nombrados con leyenda exacta verificada en BD | ✅ |
| Usuarios destino de "Cambio de propietario" especificados con ID + nombre | ✅ |
| Categoría de egreso especificada con nombre y ID | ✅ |
| Grep final sin referencias ambiguas en ambos documentos | ✅ |

### Pruebas manuales pendientes

- Ejecutar el plan de pruebas completo en Host C usando los datos verificados.
- Verificar que el flujo TAB (escribir nombre → TAB → lista → seleccionar) funciona en los formularios de Nuevo Contrato y Cambio de Propietario.

---

*Generado por Claude Code (Sonnet 4.6) — 2026-04-20*
