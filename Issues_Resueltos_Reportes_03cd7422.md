# Issues Resueltos — Sesión 2026-06-26
**Conversación:** `03cd7422-1442-4d78-a978-010ca624cac1`
**Rama:** `main` (repo `agua`) / `master` (repo `agua_chatledger`)

---

## Issue 1 — Auditoría Forense de Reportes Financieros Core (Host C)

### Scope Funcional
Para garantizar la precisión de los reportes tras la separación de la base de datos en activa e histórica (split), se realizó una auditoría completa de los reportes financieros. Se validó que las sumas coincidan, que no exista duplicación o dobles conteos y que no aparezcan conceptos espurios (deuda fantasma) de contratos inactivos o suspendidos en los cortes de caja y balances de cartera.

### Scope Técnico
1.  **Paridad Estructural**: Todos los reportes financieros core (`concentradocortecaja.php`, `concentradocortecajaresumen.php`, `contratoinfo2.php`, `listadeudores.php`, `listadeudoresxc.php`, y `cargos_cancelados_sdf.php`) utilizan las vistas unificadoras `vw_ligacargos_all` (historial transaccional) y `vw_ligacargos_pendientes` (deuda activa), evitando pérdidas de información por consultar la tabla `ligacargos` directa.
2.  **Alineación del Criterio de Cartera Vencida (Regla R02)**:
    -   Exclusión de categorías no periódicas (`6, 19, 20, 21, 22`).
    -   Exclusión de contratos en Suspensión Definitiva (`c.estado != 4`).
    -   Exclusión de usuarios No Localizados (`u.estado != 2`).
    -   Inclusión de recargos históricos (`11, 16, 17`) cuando su año origen es menor al año de corte (`anio < anio_ref`), agrupándose bajo la columna **R.CART** para lograr cuadre perfecto a $0.
3.  **Reporte Completo**: Documentado en `/home/carlos/.gemini/antigravity/brain/03cd7422-1442-4d78-a978-010ca624cac1/reportes_analisis_forense.md`.

---

## Issue 2 — Estabilización de Tomas Adicionales e Historial (Peticiones Previas)

### Scope Funcional
-   Clasificación robusta de eventos de tomas en el historial de movimientos del contrato.
-   Sincronización Poka-Yoke de montos y recargos pendientes de cobro cuando se modifican las tomas del contrato para evitar descuadres de deuda activa.

### Scope Técnico
1.  **Clasificación de Historial**: En `reportes/historial_mov_cto.php` se corrigieron las leyendas de modificación de tomas para ser clasificadas bajo la categoría `tipo-conexion` y etiqueta `"Se agregó Toma $n"`, permitiendo que el filtro "Tomas" de la UI los liste correctamente.
2.  **Sincronización Transaccional**: En `includes/negocio/contratos.php` se implementó la sincronización atómica en cascada: al cambiar tomas, el sistema no solo recalcula el cargo base anual pendiente sino que actualiza todos los recargos mensuales pendientes del año actual/futuro con el nuevo porcentaje moratorio correspondiente.

---

## Runbook — Cambios en `.agents/`
-   **`pending.md`**: Actualizado; movida la tarea de Reportes Financieros e Historial de Tomas a la sección de resueltos recientemente.
-   **`GEMINI.md`**: Se añadió la bitácora de la sesión actual detallando el análisis forense de reportes y las resoluciones de tomas.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `GEMINI.md` | `agua` / `agua_chatledger` | Modificación (Bitácora de sesión) |
| `.agents/pending.md` | `agua` / `agua_chatledger` | Modificación (Control de pendientes) |
| `reportes/historial_mov_cto.php` | `agua` | Modificación (Clasificación de tomas) |
| `includes/negocio/contratos.php` | `agua` | Modificación (Sync de recargos por tomas) |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Uso de vistas unificadoras en reportes | ✅ PASADO |
| Reglas de exclusión de categorías en reportes | ✅ PASADO |
| Clasificación de tomas en historial | ✅ PASADO |
| Sincronización Poka-Yoke de recargos por tomas | ✅ PASADO |

---
*Generado por Antigravity — 2026-06-26*
