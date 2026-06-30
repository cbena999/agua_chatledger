# Issues Resueltos — Sesión 2026-06-30
**Conversación:** `0bcb657b-49b3-4e9c-994a-8e5bd805534b`
**Rama:** `main`

---

## Issue 1 — Saneamiento y Estabilización de Recargos Huérfanos (Contrato #502)

### Scope Funcional
Antes, el motor JIT generaba o mantenía recargos moratorios pendientes (`estado = 0`) para periodos anuales cuyos cargos base habían sido depurados lógicamente (`estado = -1`). Esto causaba que contratos como el **Contrato #502** presentaran adeudos fantasmas (como los recargos del Drenaje de 2012) sin tener la anualidad base pendiente, lo que además impedía que se pudieran regularizar o condonar por las vías normales de la UI de Amnistías. 

Ahora, el sistema:
1. No calcula ni genera recargos para anualidades base que no existen o están en `estado = -1`.
2. Sanea automáticamente (auto-heal) en tiempo real cualquier recargo pendiente huérfano asociado a una anualidad depurada cada vez que se sincroniza la deuda del contrato.
3. Se aplicó una depuración masiva y global en Host C para limpiar todos los recargos huérfanos históricos heredados.

### Scope Técnico
- **Archivo Modificado:** `includes/negocio/cargos.php`
  * Función: `calcula_recargos()`
  * Cambio: Se añadió un guard para verificar el estado del cargo base original. Si no existe o tiene `estado = -1` (depurado), retorna inmediatamente sin generar mora.
- **Archivo Modificado:** `includes/negocio/contratos.php`
  * Función: `_sincronizaDeudaPendienteContrato()`
  * Cambio: Se agregaron dos sentencias `UPDATE` (una para `ligacargos` y otra para `ligacargos_historico`) que se ejecutan al final del ciclo de sincronización. Buscan y marcan con `estado = -1` todos los recargos pendientes del contrato cuyos cargos base tengan `estado = -1`.
- **Nuevo Parche SQL:** `docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/07_saneamiento_recargos_huerfanos.sql`
  * Ejecuta la cancelación lógica de todos los recargos moratorios huérfanos pendientes del universo de datos de forma permanente.
- **Archivos de Orquestación Modificados:**
  * `docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/run_patch_host_c.sh`
  * `docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/run_patch_host_c.ps1`
  * `docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/06_validation_legacy.sql` (Se agregó la VALIDACION 7 para reportar recargos huérfanos).

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| [cargos.php](file:///opt/lampp/htdocs/agua/includes/negocio/cargos.php) | `agua` | Guard en `calcula_recargos` para evitar mora en cargos base depurados |
| [contratos.php](file:///opt/lampp/htdocs/agua/includes/negocio/contratos.php) | `agua` | Lógica de Auto-Heal de recargos huérfanos en `_sincronizaDeudaPendienteContrato` |
| [07_saneamiento_recargos_huerfanos.sql](file:///opt/lampp/htdocs/agua/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/07_saneamiento_recargos_huerfanos.sql) | `agua` | Script de saneamiento masivo de base de datos para Host C |
| [run_patch_host_c.sh](file:///opt/lampp/htdocs/agua/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/run_patch_host_c.sh) | `agua` | Inclusión del parche 07 en el flujo de Linux |
| [run_patch_host_c.ps1](file:///opt/lampp/htdocs/agua/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/run_patch_host_c.ps1) | `agua` | Inclusión del parche 07 en el flujo de Windows |
| [06_validation_legacy.sql](file:///opt/lampp/htdocs/agua/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/06_validation_legacy.sql) | `agua` | Agregada la validación para recargos huérfanos |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Ejecución del Auto-Heal en Contrato 502 | ✅ Exitoso (36 recargos moratorios huérfanos históricos de 2012 depurados a `estado = -1`) |
| Aplicación Masiva de Parches en Host C | ✅ Exitoso (142 recargos históricos huérfanos depurados en todo el sistema) |
| Ejecución de Validaciones Finales | ✅ Exitoso (Check de recargos huérfanos reporta `0` pendientes) |

### Pruebas manuales pendientes
1. Cargar la ficha del Contrato #502 en el navegador (Host C) y verificar que los cargos moratorios de 2012 ya no aparecen en el adeudo pendiente del contrato y que el saldo se encuentra completamente en orden.
2. Comprobar que al depurar cualquier cargo base en el futuro (cambiando su estado a `-1`), sus recargos moratorios asociados pendientes cambian a `-1` tras recargar/sincronizar el contrato.

---
*Generado por Antigravity — 2026-06-30*
