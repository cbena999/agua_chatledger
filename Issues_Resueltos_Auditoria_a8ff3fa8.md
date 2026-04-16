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

## Runbook — Cambios en `.agents/`
No hubo necesidad de reescribir reglas, simplemente se siguió lo anotado en `Plan de Pruebas — Sprint Post-Correcciones.md` y se corrigió una directriz de ese documento que pedía consultar erróneamente un campo excluido en una vista. (La prueba S9).

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `includes/negocio/cargos.php`               | `agua` | Módulo de registro en `cambios`: Adición Folios/IDs |
| `Plan de Pruebas — Sprint Post...`          | `agua` | Documentación: Corrección de consulta (no hay id en_all) |
| `admin/reportes/auditoria_integridad...`    | `agua` | Require_once a User class antes del session_start |
| `ruteador.php`                              | `agua` | Require_once preventivo de PHP Fatal Error   |
| `asamblea/index.php`                        | `agua` | Require_once preventivo de PHP Fatal Error   |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Auditoría en Cancelación registra ID | OK |
| Auditoría en Cancelación registra Operador | OK |
| Auditoría en Reasignación registra ID/Folio | OK |
| Ausencia de Fatal Error en Session Resume | OK |
| Verificación Cero fallbacks por "Unknown column id" | OK |

### Pruebas manuales pendientes
- Ejecutar Saneamiento S1–S9 de SQLs pendientes según el Plan de Pruebas (El usuario lo hará manualmente). 

---
*Generado por Antigravity — 2026-04-15*
