# Issues Resueltos — Sesión 2026-06-24
**Conversación:** `a49787d4-8120-4c9b-b54f-74e42f167a61`
**Rama:** `main`

---

## Issue 1 — Saneamiento y Condonación de Deuda Histórica (GAPs 1-6)

### Scope Funcional
- **Saneamiento Tipográfico e Higiene del Ledger (GAP-01 a GAP-03)**: Se sanitizaron y unificaron tipográficamente las leyendas de anualidades manuales ("MENSUALIDAD", "UN MES", etc.) forzando `automatico = 0` para evitar que heredaran propiedades JIT automáticas. Se normalizaron a mayúsculas y sin espacios las multas por inasistencia a asamblea (Categoría 6) en los catálogos y ledgers activo e histórico de más de 20 años de historia.
- **Remediación de Falsos Positivos (GAP-04 y GAP-05)**: Se identificaron y reclasificaron cargos históricos de "REHABILITACION DE LA RED" que estaban asignados erróneamente a la categoría 2 (Agua), reubicándolos a la categoría 5 (Servicios Especiales/Rehabilitación). Esto previene que se contaminen los reportes históricos de recaudación de agua base.
- **Paridad UI Acordeón de Asambleas (GAP-06)**: Se ajustó el agrupamiento en la UI de deudas (`adeudo_tabla.php`) para enviar las asambleas del año en curso (ejercicio actual) al acordeón de la anualidad vigente, previniendo que se mezclen con el acordeón de histórico.
- **Blindaje de Condonación y Reconciliación**: Se validó el script `/admin/operaciones/soporte_reconciliados.php` como el mecanismo seguro para que tesorería y el comité reconcilien adeudos pasados contra comprobantes físicos o autoricen condonaciones de mutuo acuerdo, con un guard que elimina recargos pendientes del año afectado y evita registrar pagos en el ejercicio fiscal vigente (previniendo descuadres de caja).

### Scope Técnico
- **Base de Datos (SQL Patches)**:
  - `01_normalizar_catalogo.sql`: Remediación de anualidades manuales.
  - `02_normalizacion_estructural_v2.sql`: Corrección de categorías de asambleas históricas (6) y rehabilitaciones (5).
  - `03_normalizar_cuentas_usuarios.sql`: Script de limpieza masiva de adeudos en ledger activo e histórico (2006-2026).
  - `05_validation_20_anios.sql`: Suite de auditoría forense que comprueba con cero falsos positivos (0 count) la integridad y consistencia del catálogo, las clasificaciones y la ausencia de moras pre-2017.
- **Frontend / Backend (PHP)**:
  - `/views/contratos/adeudo_tabla.php`: Refactorización de `renderGrupoJS()` y `obtenerTotalesGrupo()` para distinguir asambleas activas de históricas.
  - `/admin/operaciones/soporte_reconciliados.php`: Poka-yokes de fechas límite y purga JIT de cargos moratorios categoría 16/17 del año saldado.

---

## Runbook — Cambios en `.agents/`
- Se actualizó el archivo de backlog en `.agents/pending.md` marcando como completadas las tareas correspondientes a la sanitización y normalización de la mora y asambleas históricas (P-06, P-08, P-09, P-10).

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/01_normalizar_catalogo.sql` | `agua` | Modificado (normalización de mensualidades manuales) |
| `/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/02_normalizacion_estructural_v2.sql` | `agua` | Modificado (reclasificación y unificación de asambleas) |
| `/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/05_validation_20_anios.sql` | `agua` | Modificado (añadidos los 7 asserts de auditoría) |
| `/views/contratos/adeudo_tabla.php` | `agua` | Modificado (agrupamiento de asambleas activas) |
| `/admin/operaciones/soporte_reconciliados.php` | `agua` | Revisado y verificado (integración y poka-yokes) |
| `/.agents/pending.md` | `agua_chatledger` | Modificado (limpieza de backlog) |

---

## Verificación

Se ejecutó la suite de validación forense `05_validation_20_anios.sql` directamente sobre el servidor de Host C, arrojando el siguiente estado de consistencia impecable:

| Check / Assert | Resultado | Estado |
|:---|:---:|:---:|
| **Q1 (Filtro Recargos Pre-2017)**: Recargos huérfanos pendientes pre-2017 | `0` | ✅ PASADO |
| **Q2 (Falsos Positivos Catálogo)**: Categorías erróneas en catálogo de cargos | `0` | ✅ PASADO |
| **Q3 (Invalidas Catálogo)**: Leyendas de asamblea en minúsculas en catálogo | `0` | ✅ PASADO |
| **Q4 (Invalidas Activa)**: Leyendas de asamblea inconsistentes en ledger activo | `0` | ✅ PASADO |
| **Q5 (Invalidas Histórico)**: Leyendas de asamblea inconsistentes en ledger histórico | `0` | ✅ PASADO |
| **Q6 (Asambleas Cat 1)**: Asambleas mal catalogadas como categoría 1 (General) | `0` | ✅ PASADO |
| **Q7 (Rehab Cat 2)**: Rehabilitaciones de red mal categorizadas como 2 (Agua base) | `0` | ✅ PASADO |

---

## Issue 2 — Centralización de Herramientas de Condonación y Reconciliación

### Scope Funcional
- **Unificación de la Interfaz Administrativa**: Se eliminó el archivo legacy independiente `soporte_reconciliados.php` y toda su lógica (buscadores, tablas y disparadores de POST) fue integrada de forma nativa directamente en la sección "Saneamiento y Condonación de Deuda" del panel de `configuracion.php`.
- **Integridad y Experiencia de Usuario**: El acceso a la funcionalidad ahora es directo en la columna izquierda del panel. El botón "Condonación Histórica" en la página principal de "Configuración y Saneamiento" se actualizó para apuntar directamente al ancla `#seccion-reconciliacion` del nuevo módulo integrado.
- **Flujos Modales Preservados**: Las confirmaciones y captura de folios físicos (Opción A) y condonaciones del comité (Opción B) operan a través de modales autocontenidos sin recargar ni alterar el resto de los controles globales de configuración.
- **Remoción de Enlace Redundante**: Se eliminó el botón de acceso redundante "Configuración del Sistema" del dashboard `views/sistema/configuracion.php` para simplificar la interfaz.

### Scope Técnico
- **Frontend / Backend (PHP)**:
  - `/admin/operaciones/configuracion.php`: Integración del POST controller para reconciliación de folios históricos e inserción de logs en `sys_log_reconciliacion`, validación de fecha de pago Poka-Yoke (bloqueo del año en curso), inyección de estilos para los cuadros modales `#rec-overlay` / `.rec-modal-box`, renderizado de la tabla de deudas pendientes y script de búsqueda JS.
  - `/views/sistema/configuracion.php`: Redirección del botón del dashboard hacia `admin/operaciones/configuracion.php#seccion-reconciliacion`.
- **Limpieza de Código**:
  - Eliminación física de `/admin/operaciones/soporte_reconciliados.php`.

---

## Archivos Modificados Adicionales

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `/admin/operaciones/configuracion.php` | `agua` | Modificado (integración del módulo de reconciliación y modales) |
| `/views/sistema/configuracion.php` | `agua` | Modificado (redirección del botón de condonación a la sección de ancla) |
| `/admin/operaciones/soporte_reconciliados.php` | `agua` | Borrado (eliminación física del archivo legacy) |

---
*Generado por Antigravity — 2026-06-24*
