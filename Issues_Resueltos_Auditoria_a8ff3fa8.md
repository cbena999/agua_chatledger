# Issues Resueltos — Sesión 2026-04-15
**Conversación:** `a8ff3fa8-c23a-4949-b8a9-21d726b91352`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Trazabilidad en Auditoría de Cancelación y Reasignación de Cargos

### Scope Funcional
Antes, cuando un operador cancelaba o regresaba un cargo (reasignación), el `historial_auditoria.php` mostraba la leyenda y el monto, pero no proporcionaba identificadores técnicos unívocos, dificultando la detección de eventuales duplicados. Además, en la cancelación masiva/múltiple, tampoco se registraba automáticamente el operador que originaba el cambio.
Ahora, la funcionalidad extrae, concatena y guarda automáticamente en el la bitácora el **ID físico de la BD** (la Primary Key `id_cargo`) y el **Folio impreso de pago** (si existiere/fuera mayor a 0). Además, captura de manera robusta el token de operador. 

### Scope Técnico
- Modificación en `includes/negocio/cargos.php`
- En **Regresar Cargo Cancelado** (`regresarCargoCancelado`): Se actualizó la consulta `SELECT monto` de ambas tablas `ligacargos` y `ligacargos_historico` para extraer también `folio`. Si hay `$id_cargo` se concatena el texto `[ID: xxx | Folio: yyy]` antes del INSERT. 
- En **Cancelación** (`cancelarCargo`): Se incorporó una consulta previa específica a las tablas derivadas (no a la vista `vw_ligacargos_all` por falta inherente de `id`) para obtener el ID real y el Folio. Se inyectó, al igual que en la reasignación, el escudo para resolución del objeto dinámico/imcompleto para asignar el `Operador` correctamente a la bitácora de la tabla `cambios`.

---

## Issue 2 — Saneamiento Masivo S1-S11 (Sprints Finales)

### Scope Funcional
Se validaron los 11 puntos de saneamiento automático y manual definidos en el plan de pruebas. Destacan la exención de recargos en contratos nuevos (S1), la reparación de folios mixtos (S2/S3), la sincronización cruzada de multas de asamblea (S4) y la reclasificación técnica de Egresos (S11).

### Resultados BD (Host C)
- **S10 (Monto Comercial)**: Automatizado el cálculo x2 para cargos anuales en catálogo.
- **S11 (Egresos)**: Reclasificados egresos "NINGUNA" a "SIN CATEGORÍA" (ID 10).
- **Integridad General**: 0 folios mixtos residuales y 0 cargos pendientes en contratos SDF.

---

## Issue 3 — Mejoras Visuales en Corte de Caja (`concentradocortecaja.php`)

### Scope Funcional
Se mejoró la legibilidad del reporte operativo más crítico del sistema mediante la agrupación visual de columnas y la adición de herramientas de interpretación.

### Scope Técnico
- **Agrupación Visual**: Inyección de bordes negros de 2px (`group-start`) al inicio de cada bloque (Cuotas, Servicios, Sanciones, Recargos, Cartera).
- **Glosario Dinámico**: Tabla al pie del reporte que mapea `Nombre Corto` -> `Nombre Completo` desde el catálogo de la BD.
- **Claridad Conceptual**: Explicación de **C.N.L.** como Cartera No Localizada (Estado 2).

---

## Runbook — Cambios en `.agents/`
No hubo necesidad de reescribir reglas, simplemente se siguió lo anotado en `Plan de Pruebas — Sprint Post-Correcciones.md` y se corrigió una directriz de ese documento que pedía consultar erróneamente un campo excluido en una vista. (La prueba S9).

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `asamblea/index.php`                        | `agua` | Require_once preventivo de PHP Fatal Error   |
| `reportes/concentradocortecaja.php`        | `agua` | UI: Agrupación visual, Glosario y explicaciones |
| `03_sync_host_a.sql`                       | `agua` | Saneamiento: D2 (monto_comercial) y D7 (SDF) |
| `10_pipeline_saneamiento.sql`              | `agua` | Saneamiento: Reclasificación Egresos V2 |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Auditoría en Cancelación registra ID | OK |
| Auditoría en Cancelación registra Operador | OK |
| Auditoría en Reasignación registra ID/Folio | OK |
| Saneamiento S1-S11 Validado en C           | OK |
| Reporte Corte de Caja (Grupos/Bordes)      | OK |
| Glosario de Conceptos implementado         | OK |
| Ausencia de Fatal Error en Session Resume  | OK |
| Verificación Cero fallbacks por "Unknown column id" | OK |

### Pruebas manuales pendientes
- Validación visual de la **Amnistía de Recargos** en el contrato **1007** (Host C). 

---
*Generado por Antigravity — 2026-04-15*
