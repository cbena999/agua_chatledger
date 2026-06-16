# Issues Resueltos — Sesión 2026-06-15 (Sincronización 64 Contratos y Poka-Yoke)
**Conversación:** `c3d1ede4-c440-4d00-b82c-427014028cf3`
**Rama:** `master` (en agua_chatledger) / `main` (en agua)

---

## Issue 1 — Sincronización Exacta de 64 Contratos Morosos (Gap de Migración)

### Scope Funcional
Resolver la discrepancia de cartera vencida en 64 contratos históricos que no estaban empatando entre Host B y Host C. En lugar de forzar reglas de negocio anacrónicas (topes de 12 meses) en el nuevo motor, se optó por una migración directa y quirúrgica (ETL) para calcarlos exactamente como existían en el sistema legacy.

### Scope Técnico
- **Reescritura de `catchup_64.php`**: Se transformó de un script que simulaba facturación a un script de sincronización nativa (MySQL a MySQL).
- **Proceso ETL**: El script se conecta simultáneamente a Host B y Host C, extrae los adeudos pendientes del contrato y los inserta en Host C (respetando la separación entre `ligacargos` activa y partición histórica).
- **Resultado de Empate**: Se sincronizaron un total de **5,051 adeudos** con éxito. Validaciones específicas en el Contrato 317 (149 adeudos) y Contrato 998 (78 adeudos) arrojaron un **empate del 100%** contra Host B.

---

## Issue 2 — Poka-Yoke de Facturación Retroactiva (Bug de Regex Histórico)

### Scope Funcional
Asegurar que la facturación retroactiva (el motor "llenando huecos") no le cobre anualidades pasadas a contratos que estuvieron explícitamente en "Suspensión Temporal" durante dichos años, blindando la integridad financiera a futuro.

### Scope Técnico
- **Inyección de Guard en `cargos.php` / `contratos.php`**: Se creó la función `_esContratoFacturableEnAnio` que escanea retrospectivamente la tabla de auditoría `cambios`.
- **Bug Fix (Caza de Logs Legacy)**: Se descubrió que el sistema antiguo guardaba las suspensiones con el texto `Cambio de estado de contrato` y `...estado del contrato a [2]`.
- **Regex Definitivo**: Se corrigió el SQL y la expresión regular a `preg_match('/estado.*?\[(-?1|[2-4])\]/i', ...)` para atrapar todas las variantes históricas (incluyendo el estado legacy `[-1]`).
- **Pruebas Identificadas**: Se registraron en `pending.md` los contratos 1362, 1363, 142, 1284 y 1021 como candidatos oficiales para probar esta reactivación.

---

## Archivos Modificados

| Archivo | Repo | Detalle del cambio |
|:---|:---:|:---|
| `admin/fixes/catchup_64.php` | `agua` | Reescritura total a script ETL (Sync directo de Host B a Host C) |
| `includes/negocio/contratos.php` | `agua` | Inyección de `_esContratoFacturableEnAnio` con Regex corregido |
| `docs-dev/.../transiciones_estado_contratos.md` | `agua` | Apéndice D documentando los 4 usos exclusivos de Regex en el sistema |
| `.agents/pending.md` | `agua_chatledger` | Alta de tarea P-04 (Prueba de Estrés del Poka-Yoke) |
| `admin/fixes/test_998.php` | `agua` | Eliminado permanentemente (limpieza de archivos basura) |

---

## Verificación Final

| Check | Resultado |
|:---|:---:|
| Creación de Snapshot Host C Pre-Catchup | ✅ PASADO (`/tmp/awa_host_c_pre_catchup.sql`, 29 MB) |
| Ejecución `catchup_64.php` | ✅ PASADO (5,051 cargos insertados) |
| Validación Contrato 317 (Host B vs C) | ✅ PASADO (149 == 149) |
| Validación Contrato 998 (Host B vs C) | ✅ PASADO (78 == 78) |
| Verificación de sintaxis PHP y SQL | ✅ PASADO |

---
*Generado por Antigravity — 2026-06-15*
