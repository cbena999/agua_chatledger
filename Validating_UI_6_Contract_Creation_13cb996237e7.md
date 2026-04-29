# Validating UI-6 Contract Creation

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `6e8e7f3f-9995-4088-ad45-30ea12ba4c5f` |
| **Cascade ID** | `fc33595d-88d5-49e8-aa4f-13cb996237e7` |
| **Type** | Agent Conversation |
| **Total Steps** | 56 |
| **Started** | 28 Apr 2026, 9:12 pm |
| **Completed** | 28 Apr 2026, 9:21 pm |

---

## User Request

Lee el archivo docs-dev/doc-estabilizacion/pruebas_opcionales_analisis.md para retomar el grupo UI-6. El motor financiero ya es forense y el Host C está listo para pruebas de alta de usuarios.

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 714f6cf7-4cdb-45d5-946c-515124112e13: Validating Full-Pipeline-Sync Integrity
- Created: 2026-04-28T21:48:13Z
- Last modified: 2026-04-29T02:48:48Z

### USER Objective:
Stabilizing Agua V2 Financial Engine

Objective: Finalize the stabilization and forensic audit-readiness of the Agua V2 financial engine.
Goals:
1. Validate and enforce "data-first" integrity for SDF destructible state transitions using immutable forensic logs.
2. Implement automated temporal grouping and subtotaling in financial audit reports to ensure precise debt reconciliation.
3. Retroactively secure historical financial data by upgrading schema temporal types (DATE to DATETIME) and standardizing audit traceability in infrastructure scripts.
4. Execute the UI-6 contract creation suite while maintaining parity with production business rules and automated data sanitation protocols.

## Conversation 0128cbb2-ed95-429a-bbbd-c9d33455174c: Validating Full-Pipeline-Sync Execution
- Created: 2026-04-28T20:24:02Z
- Last modified: 2026-04-28T21:42:03Z

### USER Objective:
Refining Reversal Threshold Logic

Objective: Complete the transition of the Agua V2 financial engine to a decoupled state-reversal and debt-capping architecture.

Goals:
1. Decouple the UI button visibility logic from the financial `reversal_threshold`, ensuring the "Revert Transition" button is always available for valid snapshots.
2. Repurpose the `reversal_threshold` parameter as an active debt-capping mechanism ("Bomb Limit") to halt automatic surcharge generation when a contract's total debt exceeds the defined monetary limit.
3. Verify the integration of the debt-cap in `cargos.php` to prevent the "snowball effect" of recursive surcharge generation.
4. Update system documentation and PMU runbooks to accurately reflect the new business rule governing debt accumulation and forensic audit accessibility.

## Conversation 4261727a-9250-4b18-a666-5b474f1c4a4c: Identifying Broken Ubuntu Packages
- Created: 2026-04-28T18:06:17Z
- Last modified: 2026-04-28T19:26:15Z

### USER Objective:
Identifying Broken Ubuntu Packages

Objective: Diagnose and resolve system inconsistencies by identifying installed programs that are in a corrupted or non-functional state.

Goals:
1. Identify packages marked with error or removal-pending states (`rc`, `iF`, `iU`) using `dpkg` and `apt`.
2. Audit the system for broken dependencies that prevent standard software execution.
3. Clean up residue from partially removed packages to restore system stability and diagnostic clarity.

## Conversation 15a0d6b2-867b-4def-b663-82227bcf6ec6: Validating UI-9 Tariff Recalculation
- Created: 2026-04-26T02:27:42Z
- Last modified: 2026-04-26T06:02:33Z

## Conversation 56dc8f40-c378-4477-8cb6-fb1541288a38: Stabilizing Agua V2 Financial Engine
- Created: 2026-04-24T16:42:58Z
- Last modified: 2026-04-26T00:39:24Z

## Conversation 79a8e9a2-6401-44f1-a5db-8896eda906a6: Validating Pipeline Synchronization Logs
- Created: 2026-04-24T06:44:25Z
- Last modified: 2026-04-24T08:24:54Z

### USER Objective:
Stabilizing Financial Data Integrity

Objective: Finalize the stabilization and audit-readiness of the Agua V2 financial engine by enforcing strict data validation and architectural integrity.

Goals:
1. Implement Poka-Yoke sanitization protocols across core PHP modules (cargos, contratos) to prevent malicious or malformed data entry.
2. Enforce database-level uniqueness constraints (UNIQUE KEYs) in the schema to permanently eliminate operational data duplication.
3. Validate the hybrid surcharge logic and F05 compliance through the established automated SQL audit pipeline.
4. Prepare the system for final production deployment by securing input sanitation and validating historical data parity.

## Conversation 7b4df0fd-8f9f-4e1c-9691-7e0bbc280aa5: Validating Contract Exemption Logic
- Created: 2026-04-23T16:57:43Z
- Last modified: 2026-04-24T06:42:03Z

### USER Objective:
Stabilizing Agua V2 Surcharge Architecture

Main Objective: Finalize the stabilization of the Agua V2 financial engine by enforcing robust debt reconciliation and audit traceability.

Goals:
1. Reconcile historical surcharge logic by aligning the V2 parametric engine with the legacy data structure, abandoning hardcoded fallbacks.
2. Sanitize the `cargos` catalog to correctly flag historical surcharge eligibility without corrupting financial data.
3. Validate the `Contrato 500` UI-9 transition to confirm the system correctly triggers multi-year surcharge calculations.
4. Eliminate reliance on "soft" flags by utilizing the `es_recargo_moratorio` alias in views for financial auditing and reporting.
5. Execute a surgical data fix in the `cargos` catalog to ensure the surcharge motor remains "obedient" and accurate, guaranteeing audit-ready data integrity for 2024–2025.

## Conversation 6d27cf24-4496-444d-913c-de2298a07da5: UI Optimization for Suspended Contracts
- Created: 2026-04-23T03:17:22Z
- Last modified: 2026-04-23T05:53:51Z

### USER Objective:
Stabilizing Agua V2 State Transitions

Objective: Finalize the stabilization of Agua V2 state transition protocols by addressing financial data integrity and enhancing administrative diagnostics.

Goals:
1. Complete manual test case execution for state transitions (D → G) and resolve discrepancies in financial reporting.
2. Validate and patch root causes for incorrect charge generation during contract reactivations (e.g., Cto #1006).
3. Ensure financial consistency in reporting modules (contratoinfo2.php) and verify forensic reflection of contract states.
4. Finalize the integration of administrative reporting for "Suspensión Definitiva" contracts to ensure full audit readiness.

## Conversation 2c24dbf0-a237-4a36-8172-98282de6cf2d: Troubleshooting Amnistía UI Logic
- Created: 2026-04-22T21:09:14Z
- Last modified: 2026-04-23T02:52:01Z

### USER Objective:
Auditing Financial State Transitions

Objective: Finalize the implementation of a rigorous, self-auditing financial transaction layer across all Agua V2 modules.

Goals:
1. Standardize a universal "PRE/POST Financial Snapshot" pattern across all transaction functions (State Changes, Payments, Cancellations, Reassignments, and Manual Applications).
2. Automate the generation of audit logs in the `cambios` table to capture the precise impact on debt totals and adeudo counts per operation.
3. Enhance the `historial_mov_cto.php` report to visualize these financial snapshots with color-coded event classification.
4. Ensure full consistency in financial reporting, even for legacy charges and state-based recalibrations (paridad), to guarantee complete forensic traceability for every administrative action.

## Conversation 772b23ae-0897-4270-9446-4689fdf95548: Executing UI Test Suite
- Created: 2026-04-20T04:38:49Z
- Last modified: 2026-04-20T05:36:46Z

### USER Objective:
Stabilizing Agua UI Tests

USER Objective: Complete the validation of the Agua V2 testing suite (Section 1 / Group A) to ensure the system's operational readiness.
Goals:
1. Systematically execute UI test cases for contract management, state transitions, and infrastructure configuration based on the stabilized test plan.
2. Refine automation protocols by documenting specific UI interactions, such as using TAB for field auto-completion and handling browser confirmation dialogues.
3. Validate system behavior against business rules, specifically addressing contract creation constraints, parity synchronization, and administrative blocking mechanisms.
4. Update the formal test documentation to reflect empirical findings and UI-specific interaction patterns discovered during manual and automated execution.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 28 Apr 2026, 9:12 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `pruebas_opcionales_analisis.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# 🧪 Análisis de Pruebas Opcionales — Agua V2
> Actualizado: 2026-04-28 | Basado en cobertura acumulada de sesiones de estabilización y prueba

---

## ✅ EJECUTADAS HOY — Cobertura total demostrada

| Prueba | Cto usado | Evidencia |
|---|---|---|
| **UI-1** Amnistía 2→1 | 9002 QA | Verificado en BD: `hist_ids_amnist:[196606,196607]`, amnistía C06 aplicada |
| **UI-2** Sin amnistía 3→1 | 405 real | Verificado: `amnistia_aplicada=0`, deuda conservada íntegra |
| **UI-3** Bloqueo saltos 2↔3 | 1006 / 405 | **EJECUTADO**: Bloqueo visual `disabled` confirmado en UI + lógica en `ficha.php` ✅ |
| **UI-4** Bloqueos en Estado 4 | 1028 | **EJECUTADO**: Ficha protegida, botones disabled y warning SDF confirmado ✅ |
| **UI-5 sub-A** 1→2 (cto 200) | 200 | **EJECUTADO**: Transición exitosa tras setup de mes. Reversión confirmada ✅ |
| **UI-5 sub-B** 1→3 (cto 500) | 500 | **EJECUTADO**: Transición exitosa a SPA. Deuda conservada íntegra ✅ |
| **UI-5 sub-C** 1→4 (QA 9001) | 9001 | **EJECUTADO**: Baja definitiva. Depuración total de deuda ($3,498 → $0) confirmada ✅ |
| **UI-5 sub-G** 3→4 (cto 405) | 405 | **EJECUTADO**: Baja definitiva REAL. Saneamiento total de deuda ($7,830 → $0) confirmado ✅ |
| **UI-5R sub-A** `reversal_threshold` en config | — | Verificado en pantalla configuración.php + BD |
| **UI-5R sub-B** Botón revert visible + confirm() | 405 | Botón apareció, confirm() mostró datos correctos |
| **UI-5R sub-C** Ejecutar revert y verificar | 405 | Revert ejecutado: 8 cargos cancelados, $8,896 → $7,830, estado 1→3 ✅ |
| **UI-5R sub-E** Desglose F05 cargos/recargos 405 | 405 | Análisis forense exhaustivo: cat6 ≠ recargo, cat16/17 = recargo ✅ |

---

## ✅ EJECUTADAS EN SESIONES ANTERIORES — Cobertura demostrada

| Prueba | Estatus | Evidencia / Notas |
|---|---|---|
| **UI-5 sub-D** 2→1 (cto 1006) | ✅ OK | Cubierta implícitamente por UI-1 (QA 9002) y pruebas de revert. |
| **UI-24** Trazabilidad visual en historial | ✅ OK | Cubierta implícitamente por inspección forense en cada operación. |

---

## 🟢 GRUPO UI-5: CICLO DE VIDA Y TRANSICIONES (FINALIZADO)
*Estado: 100% Validado en Host C (2026-04-28)*

| Caso | Sub-caso | Contrato | Resultado | Nota |
| :--- | :--- | :--- | :--- | :--- |
| **UI-5A** | 1 → 2 (Mes permit.) | #405 | ✅ OK | Bloqueo dinámico por mes OK. |
| **UI-5B** | 1 → 2 (Snapshot) | #405 | ✅ OK | Snapshot generado con deuda pre-transición. |
| **UI-5C** | Reversa (2 → 1) | #405 | ✅ OK | Reversible y deuda íntegra. |
| **UI-5D** | 1 → 3 (Admin) | #405 | ✅ OK | Transición directa funcional. |
| **UI-5E** | 2 → 4 (SDF) | #405 | ✅ OK | Depuración total a $0.00 (Regla C05). |
| **UI-5F** | Reversa (3 → 1) | #405 | ✅ OK | Reversión exitosa desde snapshot. |
| **UI-5G** | SDF Destructivo | #405 | ✅ OK | Contrato 405 saneado para auditoría. |

---

## 🛠️ HITOS DE INFRAESTRUCTURA Y AUDITORÍA (POST-SDF)
*Mejoras derivadas de la estabilización financiera:*

1.  **Reporte Forense SDF:** `reportes/cargos_cancelados_sdf.php` avanzado (Accordion/Snapshots).
2.  **Precisión Temporal:** `fcobro` ascendido a `DATETIME` (Precisión al segundo).
3.  **Poka-Yoke Configuración:** UI dinámica de meses (Configuración.php).

---

## 🟡 SIGUIENTE OBJETIVO: GRUPO UI-6 (CREACIÓN DE CONTRATOS)
*Misión: Validar la generación limpia de anualidades y constancias para nuevos usuarios.*

- [ ] **UI-6A**: Nuevo Contrato (Usuario Existente)
- [ ] **UI-6B**: Nuevo Contrato (Usuario Nuevo)
- [ ] **UI-6C**: Validación de Exención Primer Año (Regla C02)
- [ ] **UI-6D**: Generación automática de Anualidades Vigentes
- [ ] **UI-6E**: Carga de Constancias (Contrato/Toma)
- [ ] **UI-6F**: Paridad Financiera Inicial (Saldo $0.00 al alta)

---

## 🔴 PENDIENTES — Grupos Posteriores y Re-validaciones
- [ ] **UI-9**: Recálculo tarifa Normal↔Comercial (Re-probar en Host C)
- [ ] **UI-10/UI-11**: Paridad al desconectar / cambio conexión (Re-probar en Host C)
- [ ] **UI-13**: Flujo completo de cobro y recibo (Re-probar en Host C)
- [ ] **RC-1**: Empate detalle vs resumen de caja (Re-probar en Host C)
- [ ] **UI-7/8**: Restricciones de Tomas e Infraestructura
- [ ] **UI-14**: Sincronización Asamblea al Pagar (Crítica)
- [ ] **UI-16 a 20**: Catálogo de Cargos y Tarifas
- [ ] **RC-2 a 5**: Reportes de Cartera y Consolidación

```

</details>

---

## Agent Response

### Thinking

**Defining Next Goal**

I've determined that the focus shifts to **GRUPO UI-6 (CREACIÓN DE CONTRATOS)**, as indicated by `docs-dev/doc-estabilizacion/pruebas_opcionales_analisis.md`. Specifically, the first sub-test, **UI-6A**, concerns creating a new contract for an existing user.




### Actions

**Tool:** `view_file`
**File:** `01-infra-hosts.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.636174172s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 01: Infraestructura y Hosts (A, B, C)

Esta regla define los entornos operativos de **Agua** y el acceso mandatorio por Host.

## 🏢 Definición de Hosts

| Host | OS | Propósito | Rama Git | MCP Access | Mandatorio |
|:---:|---|---|---|---|:---:|
| **A** | Ubuntu 22 / XAMPP Linux | TRANSICIÓN (V1+) — Bridge MySQL | `main` | `bdawahost-a` | **Estructura** |
| **B** | Windows 7 / MySQL legado | Espejo Producción — Datos Frescos | N/A | `bdawahost-b` | **Datos** |
| **C** | Windows 10 / XAMPP 7.4.33 Portable | Target V2 FINAL — MariaDB (Split Tablas) | `feature/upgrade-v2-win-xampp` | `bdawahost-c` | N/A |

### Stack Host C (detalle)
| Componente | Versión |
| :--- | :--- |
| Paquete | `xampp-portable-windows-x64-7.4.33-0` |
| Apache | 2.4.54 |
| MariaDB | 10.4.27 |
| PHP | 7.4.33 |
| phpMyAdmin | 5.2.0 |
| Directorio XAMPP | `F:\xampp` |
| Webapp | `F:\xampp\htdocs\agua` |

## 📐 Jerarquía y Mandatos:
1.  **Host A de Transición**: Es la **Guía Estructural Oficial (MySQL)**. Actúa como puente para transformar datos de B hacia el modelo V2. Mantiene esquema de tabla única para compatibilidad bridge.
2.  **Host B de Datos**: Únicamente se utiliza como fuente de "Datos Frescos de Negocio" para alimentar A. Solo lectura — prohibido cambios estructurales.
3.  **Host C Target**: Entorno para la optimización definitiva de `ligacargos` (split histórico) y uso del stack MariaDB V2. Todo cambio vía scripts versionados + rollback.

---
**Acceso Técnico**:
- MCP `bdawahost-a` para consultas y ejecuciones en el ambiente de desarrollo.
- MCP `bdawahost-b` exclusivamente para extracción de datos operativos (pagos, cargos).
- MCP `bdawahost-c` para deploy y validación de scripts en Host C (Windows 10).

### 📂 Rutas de Logs Host C
| Archivo | Ruta | Propósito |
|:---|:---|:---|
| Slow Query Log | `F:/aguav2/logs/mysql-slow.log` | Queries > 1s + queries sin índice + SPs |
| Error Log | `F:/aguav2/logs/mysql_error.log` | Errores y warnings de MariaDB |
| General Log | `F:/aguav2/logs/mysql-general.log` | Todas las queries (OFF por defecto) |
| PHP Error Log | `F:/aguav2/logs/php_error.log` | Errores PHP de la webapp |
| PID File | `F:/aguav2/logs/mysql.pid` | PID del proceso MariaDB |

- **Config MariaDB**: [optimizacion/my.ini](file:///opt/lampp/htdocs/agua/docs-dev/migration-aguav2/host-c-setup/optimizacion/my.ini)
- **Config PHP**: [optimizacion/php.ini](file:///opt/lampp/htdocs/agua/docs-dev/migration-aguav2/host-c-setup/optimizacion/php.ini)
- **Config Apache**: [optimizacion/httpd.conf](file:///opt/lampp/htdocs/agua/docs-dev/migration-aguav2/host-c-setup/optimizacion/httpd.conf)

---

## 🔌 Herramienta Preferida por Tipo de Operación (Agentes IA)

| Operación | Herramienta | Razón |
|:---|:---:|:---|
| Diagnóstico, validación, queries ad-hoc, comparación de datos | **MCP** (`bdawahost-c`) | Resultados en contexto, paralelo, sin parseo de terminal |
| Scripts `.sql` masivos, dumps, carga de migraciones grandes | **CLI MySQL** | Más eficiente para operaciones de volumen |

**Regla**: Usar MCP para todo trabajo de diagnóstico e inspección en Host C. Recurrir a CLI MySQL solo para scripts masivos o cuando el MCP no esté disponible.


```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `06-accesos-rutas.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 06: Accesos, Rutas y Herramientas (A/B/C)

Esta regla consolida los accesos a los tres ambientes de **Agua** y define cuándo usar MCP vs CLI MySQL.

---

## Host A — Linux XAMPP (Desarrollo / Próximo Producción)

| Recurso | Ruta / Credencial |
|---------|-------------------|
| **XAMPP Home** | `/opt/lampp` |
| **PHP Bin** | `/opt/lampp/bin/php` |
| **MySQL Bin** | `/opt/lampp/bin/mysql` |
| **Source Code** | `/opt/lampp/htdocs/agua` |
| **Web URL** | `http://localhost/agua/login/index2.php` |
| **Web User / Pass** | `nancy` / `260180` |
| **MySQL** | `127.0.0.1:3306` · user `root` · pass `comite_2026` · db `awa` |
| **MCP** | `bdawahost-a` |

## Host B — Windows 7 MySQL legado (Solo lectura — datos frescos)

| Recurso | Valor |
|---------|-------|
| **MySQL** | `192.168.1.120:3306` · user `root` · pass `sdrastbuy` · db `awa` |
| **MCP** | `bdawahost-b` |

## Host C — Windows 10 XAMPP Portable 7.4.33 (V2 MariaDB)

| Recurso | Valor |
|---------|-------|
| **Web URL** | `http://192.168.1.128:7001/agua` |
| **Apache** | puerto `7001` |
| **MariaDB** | `192.168.1.128:7002` · user `root` · pass `comite_2026` · db `awa` |
| **MCP** | `bdawahost-c` |
| **XAMPP dir** | `F:\xampp` · Webapp: `F:\xampp\htdocs\agua` |

> **Puerto no estándar (7002):** El MCP de Host C requiere el patch de `entrypoint-patch.sh`
> aplicado al contenedor Docker `context7-mcp-mysql`. Sin el patch, `@f4ww4z/mcp-mysql-server`
> ignora el puerto de la URL y falla con ETIMEDOUT.
> Ver: `docs-dev/ga-cl-ia/issue-mcp-mysql-port-no-estandar.md`

---

## Arquitectura MCP — Docker context7-mcp-mysql

Los tres MCPs comparten **un solo contenedor Docker** con patches aplicados al arrancar:

```bash
# Estructura de cada MCP en .mcp.json
docker exec -i context7-mcp-mysql npx -y @f4ww4z/mcp-mysql-server mysql://user:pass@host:PORT/db
```

- Contenedor: `context7-mcp-mysql` (imagen `mcp/context7:latest`)
- Compose: `docs-dev/ga-cl-ia/docker-compose.yml`
- Patch: `docs-dev/ga-cl-ia/entrypoint-patch.sh` (soporte puerto no estándar — idempotente)
- Config activa: `.mcp.json` (symlink → `.chatledger/.mcp.json`)

> **NUNCA eliminar `.mcp.json`** ni reemplazar `docker exec` por `npx` directo.
> `mcp_config.json` en `.agents/` es la fuente de verdad de referencia — `.mcp.json` debe ser idéntico.

---

## Regla: MCP vs CLI MySQL

| Operación | Herramienta | Razón |
|:---|:---:|:---|
| Diagnóstico, validación, queries ad-hoc, comparación entre hosts | **MCP** | Resultados en contexto, ejecutable en paralelo, sin parseo de terminal |
| Scripts con `DELIMITER`, stored procedures, triggers | **CLI MySQL** | MCP no soporta `DELIMITER` |
| Dumps, cargas masivas, migraciones de volumen | **CLI MySQL** | Más eficiente para operaciones de volumen |
| MCP no disponible o contenedor Docker caído | **CLI MySQL** | Fallback |

**Regla general**: Usar MCP para todo trabajo de diagnóstico e inspección. Recurrir a CLI solo cuando la operación lo requiera explícitamente.

CLI Host A: `/opt/lampp/bin/mysql -u root -pcomite_2026 awa`
CLI Host C (desde Host A): `/opt/lampp/bin/mysql -h 192.168.1.128 -P 7002 -u root -pcomite_2026 awa`

---
**Nota**: Cualquier script de automatización que requiera ejecución directa de PHP o MySQL debe referenciar los binarios en `/opt/lampp/bin/` para compatibilidad con el stack legado.

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `02-reglas-negocio.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 02: Diccionario de Reglas de Negocio por Módulo

Este documento es una entidad viva para registrar el descubrimiento y clasificación de todas las reglas de negocio contenidas en la base de datos `awa` y la webapp **Agua**.

---

## 📋 Clasificación por Módulos Funcionales

### 📂 Módulo 01: Gestión de Contratos (Core)
| ID | Regla | Estado |
|:---:|---|:---:|
| **C01** | Límite de **2 tomas (contratos)** activas por usuario en el mismo domicilio físico. | Implementada |
| **C02** | Prohibida la modificación de estado de contratos en `4 (SUSPENSIÓN DEFINITIVA)`. | Implementada |
| **C03** | Registro obligatorio de folios únicos por cada nuevo contrato. | Validada |
| **C04** | **Motor de Paridad Universal**: Sincronización obligatoria; si una toma se activa/reconecta, su cargo anual debe restaurarse automáticamente. | Implementada |
| **C05** | **Limpieza por Suspensión Definitiva**: Al pasar a Estado 4, se debe forzar la desconexión física y la cancelación de deuda anual actual. | Implementada |
| **C06** | **Amnistía de Recargos en Reactivación**: Al pasar un contrato de `2 (SUSPENSIÓN TEMPORAL)` a `1 (ACTIVO)`, los recargos de años anteriores al año en curso se cancelan automáticamente (`estado=-1`). Solo permanece vigente la deuda del año actual. **NO aplica si el origen es estado `3 (SUSPENSIÓN ADMINISTRATIVA)`**: el adeudo íntegro se conserva (incluyendo anualidad del año en curso y todos los recargos históricos). Implementado en `_amnistiaRecargosHistoricos()` (contratos.php) + `_sincronizaParidadFinanciera()`. El registro en `cambios` indica explícitamente si se aplicó o no la amnistía. | Implementada |
| **C07** | **Restricción de Transiciones de Suspensión**: Prohibido el salto directo entre estados de suspensión (`2` y `3`). El contrato debe ser regularizado a `1 (ACTIVO)` primero para asegurar que los disparadores de paridad y amnistía se ejecuten según el origen correcto. Enforzado en UI (`ficha.php`) y Servidor (`contratos.php`). | Implementada |
| **C08** | **Límite de Tomas Físicas**: Restricción operativa de un máximo de **2 tomas físicas** registrables por cada contrato/domicilio. Enforzado en la UI de gestión de tomas. | Implementada |

### 📂 Módulo 02: Facturación, Cargos y Recargos
| ID | Regla | Estado |
|:---:|---|:---:|
| **F01** | Solo contratos en estado `1 (ACTIVO)` y `3 (SUSPENSIÓN ADMINISTRATIVA)` generan recargos automáticos. Estado `2 (SUSPENSIÓN TEMPORAL)` está **excluido** — la anualidad ya está cancelada (`estado=-1`) y no procede recargo sobre ella. Estado `4` también excluido. Implementado en `calcula_recargos()` (`cargos.php`). **Guard G01 (2026-04-26)**: `calcula_recargos()` retorna inmediatamente si `recargo=0` en el cargo (ruta aplicación manual). La ruta de paridad automática (`_sincronizaDeudaPendienteContrato()`) usa `categoria IN (2,3)` por diseño y no pasa por este guard. | Implementada |
| **F02** | Cargos manuales a contratos en `4 (SUSPENSIÓN DEFINITIVA)` están prohibidos. | Crítica |
| **F03** | **Auditoría de Reasignación de Cargos**: `regresarCargoCancelado()` valida estado del contrato (bloquea en estado 4) y registra la identidad del operador (`$_SESSION['usuario']`) en la tabla `cambios`. Requiere confirmación de usuario en la UI. | Implementada |
| **F04** | El cálculo de la deuda debe ser atómico (Cargos + Recargos = Deuda Total). | Validada |
| **F05** | **Semántica dual del campo `recargo` — NUNCA contabilizar como monto financiero ni usar como filtro de tipo en `ligacargos`** — El campo `recargo` existe con dos semánticas incompatibles según la tabla: (1) En `cargos` (catálogo): es un **flag entero `INT(0/1)`** que indica si el tipo de cargo puede generar recargo moratorio — uso correcto en UI y filtros sobre la tabla `cargos`. (2) En `ligacargos` / `ligacargos_historico`: es un **monto decimal heredado** del catálogo al momento del INSERT — en Host C vale `0.00` para casi todos los registros; en datos migrados de Host A/B puede valer `1.00` (artefacto histórico de cuando el flag se copió como float). **Reglas críticas**: (a) Nunca sumar `ligacargos.recargo` como parte de la deuda o ingreso. (b) Nunca usar `AND ligacargos.recargo = 1` como filtro de tipo de cargo — siempre falla en Host C produciendo falsos negativos silenciosos. (c) El discriminador canónico para identificar recargos moratorios es `categoria IN (16, 17)` (configurables en `config_sistema`: `recargo_categoria_agua`, `recargo_categoria_drenaje`) o el alias `es_recargo_moratorio` de las vistas. (d) Para reclasificaciones de leyendas especiales usar `leyenda LIKE + categoria` como fuente de verdad, sin `recargo`. **Archivos corregidos** (2026-04-15): `admin/reportes/auditoria_integridad_bd.php` líneas 69 y 136 (recargos huérfanos), `docs-dev/migration-aguav2/host-c-setup/07_patch_categorias_v2.sql` (reclasificación cat 19-22). **Usos válidos de `recargo` que NO deben tocarse**: filtros sobre tabla `cargos` (`AND recargo=0` en contratos.php:55/399), coloreado UI en `views/cargos/` y `views/contratos/ficha.php` — todos operan sobre el catálogo donde `recargo` sí es flag INT. | Implementada |

| **F06** | **Cobertura dual obligatoria en operaciones sobre ligacargos (Host C split-schema)** — En Host C, los cargos de `anio<=2025` viven en `ligacargos_historico` y los de `anio>=2026` en `ligacargos` activa. Cualquier operación PHP que lea, modifique o cancele cargos **debe cubrir ambas tablas**. Reglas concretas: **(a) SELECTs de cargos cancelados/pendientes**: usar siempre `vw_ligacargos_all` o `vw_ligacargos_pendientes` (las vistas hacen UNION automáticamente) — nunca `FROM ligacargos` directo en queries de ficha/cartera. **(b) Subqueries de id_cargo**: usar `COALESCE((SELECT id FROM ligacargos WHERE ...), (SELECT id FROM ligacargos_historico WHERE ...))` para obtener el PK correcto sin importar en qué tabla vive el registro. **(c) UPDATEs de estado**: cuando se opera por `id_cargo` conocido, ejecutar UPDATE en ambas tablas siempre — la que no contiene el registro simplemente afecta 0 filas, sin daño. `UPDATE ligacargos SET estado=X WHERE id=$id AND numcontrato='$c'` + `UPDATE ligacargos_historico SET estado=X WHERE id=$id AND numcontrato='$c'`. Es más robusto que pasar un flag `en_historico` que puede llegar incorrecto. **(d) Fallback por leyenda**: también cubrir ambas tablas. **Por qué se repite el bug**: cada sesión tiende a escribir solo `FROM ligacargos` olvidando el histórico. Si el fix solo opera en una tabla, el cargo del año equivocado no se modifica y el INSERT de auditoría en `cambios` puede ejecutarse pero sin efecto real en BD. **Archivos críticos**: `includes/negocio/cargos.php` (`regresarCargoCancelado`, `pagacancelacargos`), `includes/negocio/contratos.php` (SELECT cancelados para ficha), `_amnistiaRecargosHistoricos` (ya correcto: opera en ambas tablas). | Implementada |
| **F07** | **Exención de Recargos 1er Año**: Los contratos nuevos están exentos de recargos moratorios durante su primer año calendario de vida (año de alta). Enforzado por el flag `contrato.exento_recargo_primer_anio=1` y saneamiento D1. | Implementada |
| **F08** | **Coherencia de Infraestructura**: Prohibido el cobro de servicios (ej. drenaje) en contratos que no cuenten con la infraestructura instalada (`contrato.drenaje=0`). La UI debe bloquear la asignación manual de estos cargos. | Implementada |
| **F09** | **Guard de Categoría para flag `recargo` (G02, 2026-04-26)**: `creaCargo()` y `modificaCargo()` fuerzan `recargo=0` en server-side para cualquier categoría distinta a `2 (AGUA)` y `3 (DRENAJE)`, independientemente de lo que envíe el formulario. Esto cierra la vía UI donde el checkbox "Es una multa" podía activar `recargo=1` en categorías incorrectas. Implementado en `includes/negocio/cargos.php` líneas 584 y 635. | Implementada |

### 📂 Módulo 03: Usuarios y Segmentación
| ID | Regla | Estado |
|:---:|---|:---:|
| **U01** | Usuario estado `2` = **No Localizado**. Excluido de búsquedas estándar. | Implementada |
| **U02** | Clasificación de "Usuarios Especiales": Aquellos sin contratos vinculados o con todos en suspensión definitiva. | Reporte V2 |
| **U03** | **Tratamiento de No Localizados**: Usuarios con `estado=2` disparan la suspensión definitiva de sus contratos vinculados. Su deuda **no segmenta ni contabiliza** en los reportes financieros operativos (cortes de caja, cartera vencida) — ver R06. | Implementada |
| **U04** | **Purga de Usuarios Placeholder**: Usuarios sin nombre (NULL o vacío) se eliminan automáticamente del padrón **solo si no tienen contratos vinculados** (para evitar huérfanos). Saneamiento D10. | Implementada |

### 📂 Módulo 06: Asambleas y Participación
| ID | Regla | Estado |
|:---:|---|:---:|
| **A01** | **Consolidación de Asambleas**: Máximo de **3 asambleas permitidas por fecha** calendario. Enforzado por el trigger `tr_asamblea_limit_3` en Host C. El saneamiento D9 consolida asambleas duplicadas históricas (B→A) eligiendo como "ganadora" la de mayor asistencia y reasignando asistentes automáticamente. | Implementada |

### 📂 Módulo 04: Pagos, Caja y Folios
| ID | Regla | Estado |
|:---:|---|:---:|
| **P01** | Cada pago debe generar un folio único e incremental que vincule a `ligacargos`. | Validada |
| **P02** | Los folios de pago manuales no deben solaparse con folios de contratos nuevos. | En Revisión |

### 📂 Módulo 05: Reportes y Validación de Datos
| ID | Regla | Estado |
|:---:|---|:---:|
| **R01** | Sincronización estricta entre sumatoria de listas y totales de encabezado en todos los reportes operativos. | Validada |
| **R02** | **Filtros Canónicos de Cartera y Deuda** — Todos los reportes financieros deben aplicar los mismos filtros para consistencia entre sí. `excluir_cartera = [6, 19, 20, 21, 22]`: categorías excluidas de cartera vencida y deuda total (cat 6=multas asamblea, 19-22=conceptos únicos CB/PROP, MLT/DESP, CNT/NADO, CNC/FUGA). Cat 16/17 (REC/AGUA, REC/DREN) **SÍ se incluyen** en cartera desde v2 — sus rezagos (anio < anio_ref) van a R.CART. `sin_anio = [6]`: solo FALTAS DE ASAMBLEA es sin filtro de año (acumulativa por diseño); cats 16/17 usan `anio = anio_ref`. Cat 11 (recargos normales) SÍ se incluye en cartera. Siempre añadir `AND c.estado != 4` y `AND u.estado != 2` explícito en reportes de cartera. Implementado en `concentradocortecaja.php`, `concentradocortecajaresumen.php`, `carteravencida.php`, `listadeudores.php`. | Implementada |
| **R03** | **Semántica canónica de estados en `ligacargos` / `ligacargos_historico`** — `estado=0`: pendiente de cobro. `estado=1`: pagado (por `sp_pagar_cargo` o caja.php). `estado=-1`: cancelado canónico (por `sp_cancelar_cargo`, D7, Paso 8-B, saneamiento 10c). **`estado=2` NO EXISTE** como valor válido en ligacargos — era un bug en scripts previos; todos corregidos. `estado=-2`: legacy pre-2018 (≈68 registros históricos, solo lectura). `estado=-3`: legacy pre-2018 (≈166 registros históricos, solo lectura). Para cartera y deuda solo consultar `estado=0`. Toda cancelación produce `estado=-1` con `fpago=NOW()`. Documentado en `docs-dev/doc-estabilizacion/MIGRATION_PROTOCOL.md`. | Implementada |
| **R04** | **SQL dinámico desde catálogo** — `concentradocortecaja.php` y `concentradocortecajaresumen.php` construyen sus CASE/COUNT dinámicamente desde `SELECT id, nombre, nombrecorto FROM categorias ORDER BY id`. Esto asegura que las categorías 19–22 (V2) estén incluidas automáticamente sin hardcoding. Nunca hardcodear IDs de categoría en los reportes de caja; leer siempre desde el catálogo. | Implementada |
| **R05** | **Conteo de folios en caja** — Un folio puede cubrir múltiples contratos del mismo usuario. El contador por columna en `concentradocortecaja.php` usa `$folios_c[$cid][$folio] = true` (array-set) para contar folios únicos, no filas del GROUP BY. El total al pie usa `COUNT(DISTINCT folio)`. Ambos deben coincidir con los `(n=X)` de `concentradocortecajaresumen.php`. Verificado $0 diferencia en 5 períodos 2024-2026. | Implementada |
| **R06** | **C.N.L. (Cartera No Localizada, `u.estado=2`) excluida de reportes financieros** — Usuarios con `estado=2` (NO LOCALIZADO) y sus cargos de cartera se excluyen de todos los reportes: `concentradocortecaja.php` (columna eliminada, `u.estado != 2` en R.CART), `concentradocortecajaresumen.php` (línea eliminada, `u.estado != 2` en cartera), `carteravencida.php` (segmentación eliminada, tabla unificada). En `concentradocortecaja.php` queda solo la definición en el Glosario de Conceptos como referencia informativa. En Host C actualmente no existen usuarios con `estado=2`, por lo que el impacto numérico es $0. | Implementada |
| **R07** | **Parámetros URL de reportes de caja** — `concentradocortecaja.php`: `inicio` (DD/MM/AAAA), `fin` (DD/MM/AAAA), `anio_corte` (opcional, override de año de ciclo). `concentradocortecajaresumen.php`: ídem + `existencia_anterior` (requerido). `anio_corte` solo es necesario cuando `inicio` y `fin` son de años distintos (período que cruza cambio de año); sin él el PHP usa `anio_i` como default (correcto para todos los períodos reales del sistema). El modal HTML en `listados.php` / `paxscript.js` muestra el campo `anio_corte` condicionalmente y con nota explicativa. `carteravencida.php`: solo `anio` (default = año actual). | Implementada |

---

## 🔍 Bitácora de Descubrimiento (Pendientes de Validar)
Espacio para anotar comportamientos detectados en el código legado o procedimientos manuales que deben formalizarse como reglas:
1.  **[D001]**: Investigar el trigger exacto de `calcula_recargos.php` para definir la fecha de corte mensual.
2.  **[D002]**: Validar la lógica de "Metros Lineales" y su impacto en la deuda histórica.
3.  **[D003]**: Determinar si existen descuentos automáticos por "Pronto Pago" no documentados.

---

---

**Nota para todos los agentes IA (Claude Code y Antigravity/Gemini)**: Al explorar el código, si descubres una nueva restricción o lógica condicional, agrégala aquí con un ID incremental y su módulo correspondiente.

```

</details>

---

## Agent Response

### Thinking

**Defining Contract Rules**

I've been solidifying the core ruleset for UI-6 contract creation. Currently, I'm defining the key constraints: two active takes per user address, a first-year surcharge exemption, and mandatory registration. I'm focusing on ensuring these rules are clear and easily implemented.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.863999857s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 28 Apr 2026, 9:12 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_list_tables`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 28 Apr 2026, 9:12 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 28 Apr 2026, 9:12 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_describe_table`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 28 Apr 2026, 9:12 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 28 Apr 2026, 9:12 pm

---

## Agent Response

### Thinking

**Testing Contract Creation**

I'm now focusing on user `noconsecutivo: 6`, Abraham Herrera Márquez. My immediate task is to use the browser to log in using credentials `nancy` and `260180` and try creating a new contract. I'll be using `http://` as the host C URL.




### Actions

**Tool:** `browser_subagent`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.932963801s
- **Model:** Gemini 3 Flash
</details>

---

### Browser Automation

**Status:** Cancelled
**Created:** 28 Apr 2026, 9:12 pm

---

## User Request

no noooo, no hagas pruebas de UI

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<browser_subagent_reminder>
IMPORTANT: You are shown COMPLETE details of every action the browser subagent performed:
- The subagent's final result message
- EVERY SINGLE STEP the subagent executed (numbered sequentially)
- For each step: the tool name, full JSON arguments, status, and any errors
- For screenshot steps: the absolute file path where the screenshot was saved
- For pixel click steps: the absolute file path where the click feedback screenshot was saved
- The recording path showing all browser interactions if a recording was generated

If you expected the subagent to take a specific action (e.g., capture a screenshot, click a button, navigate to a page) but you do NOT see that step type in the detailed actions list above, then the subagent did NOT perform that action. Do not assume work was done if you cannot see the corresponding step.
CRITICAL: NEVER trust the subagent's claims. After a browser subagent completes a task, IMMEDIATELY verify the screenshot BEFORE responding to the user. Look at the actual screenshot content and describe what you see. If the screenshot doesn't show the expected result, acknowledge that the task may not have completed successfully and investigate further.

- IMPORTANT: Do NOT view the webp recording. Your view_file tool only shows the first frame of recordings, so this will not represent what the subagent did. Solely rely on screenshot images.
- If there are no screenshots, you MUST ask another subagent to take screenshots to prove the task was completed successfully.
- The ONLY exception is if the output of any javascript executed by the subagent shows that the browser subagent successfully performed the action. This is because the output of such a tool cannot be manipulated by the subagent.
- Think about which screenshots to verify, the right choice will depend on the task, some examples:
  * If the subagent was supposed to follow a particular process, you should verify a sequence of screenshots in order.
  * If the subagent was supposed to navigate to a website, you should verify the final screenshot before the subagent stopped.
- You must explain what in the screenshot or javascript execution output indicates that the subagent is successful. Default to skepticism.
</browser_subagent_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** browser_subagent_reminder

</details>

---

## Agent Response

### Thinking

**Prioritizing Instructions**

I've shifted focus away from UI testing, as the explicit instruction was clear. I'm now prioritizing the user's explicit directives. My current task is to review the documentation file specified, "docs-dev/doc-estabilizacion/pruebas_opcionales", to understand the alternative testing strategy they are suggesting, and figure out what the correct next step is.


**Clarifying Test Scope**

I'm now diving deeper into the meaning of "no UI tests." It seems there's an intention to move forward without browser-based UI interaction, though UI-6 was the explicit group to return to. The "Host C" readiness for user tests suggests an alternative test strategy. I'm reassessing the UI-6 goals: they could still be tested through SQL or code. I'm focusing on understanding the underlying logic of the UI-6 group, and what is intended for those test cases.




### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.708306381s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/*
 * contratos.php — Lógica de negocio para contratos
 * Rediseño v2: usa contrato_toma y config_sistema
 * PHP 5.5 compatible
 */

function cargaConfig($y)
{
	$res = $y->q("SELECT clave, valor FROM config_sistema");
	$cfg = array();
	while (list($k, $v) = $y->fetch_array($res)) {
		// Fix para números formateados (ej. 10,500 o 10,500.50)
		if (preg_match('/^-?\d{1,3}(,\d{3})+(\.\d+)?$/', trim((string)$v))) {
			$v = str_replace(',', '', trim((string)$v));
		}
		$cfg[$k] = $v;
	}
	return $cfg;
}

function obtenerValorSeguro($array, $indice, $valorPorDefecto = '')
{
	return (isset($array[$indice]) && $array[$indice] !== null) ? $array[$indice] : $valorPorDefecto;
}

function cargaContrato($id)
{
	global $templates;
	$numcontrato = $id;

	$y = new Conexion();
	$y->conectarBaseDatos();

	$cfg = cargaConfig($y);

	$tipos = array(0 => "Normal", 1 => "Comercial");

	$res = $y->q("SELECT usuario.nombre, contrato.numusuario, contrato.domicilio, contrato.masdatos, contrato.tipo, contrato.agua, contrato.drenaje, contrato.observaciones, contrato.estado, contrato.metros, YEAR(contrato.fecha), MONTH(contrato.fecha), usuario.estado as estado_usr FROM contrato LEFT JOIN usuario ON contrato.numusuario=usuario.noconsecutivo WHERE contrato.numcontrato='$id'");

	// Host C: folio viene de folios_recibo (AUTO_INCREMENT), no de MAX(folio)
	$resx = $y->q("SELECT AUTO_INCREMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='folios_recibo'");
	list($foliotope) = $y->fetch_array($resx);

	list($nombre, $numusuario, $domicilio, $masdatos, $tipo, $agua, $drenaje, $observaciones, $estado, $metros, $aniocontrato, $mescontrato, $estado_usr) = $y->fetch_array($res);

	// --- TOMAS desde contrato_toma ---
	$res_tomas = $y->q("SELECT id, num_toma, tipo, tiene_agua, tiene_drenaje, estado_agua, estado_drenaje, observaciones FROM contrato_toma WHERE numcontrato='$id' ORDER BY num_toma ASC");
	$tomas = array();
	while ($t = $y->fetch_array($res_tomas)) {
		$tomas[intval($t['num_toma'])] = $t;
	}
	$num_tomas = count($tomas);
	if ($num_tomas == 0) $num_tomas = 1;
	$max_tomas = intval(obtenerValorSeguro($cfg, 'max_tomas_por_contrato', 2));

	// --- TARIFAS DE REFERENCIA del año en curso (para mostrar en UI) ---
	$anio_actual = date('Y');
	$res_tarifas = $y->q("SELECT nombre, monto, monto_comercial, categoria FROM cargos WHERE automatico=1 AND estado=1 AND anio=$anio_actual AND categoria IN (2,3) ORDER BY categoria, numconsec");
	$tarifas_referencia = array();
	while ($tf = $y->fetch_array($res_tarifas)) {
		$clave = ($tf['categoria'] == 2) ? 'agua' : 'drenaje';
		if (!isset($tarifas_referencia[$clave])) {
			$mon_com = (floatval($tf['monto_comercial']) > 0) ? floatval($tf['monto_comercial']) : floatval($tf['monto']) * 2;
			$tarifas_referencia[$clave] = array(
				'leyenda'   => $tf['nombre'],
				'normal'    => floatval($tf['monto']),
				'comercial' => $mon_com
			);
		}
	}

	// --- CARGOS AUTOMÁTICOS al cargar el contrato ---
	if ($estado == 1) {
		generaCargosAutomaticos($id, $y);
	}

	// --- Otros contratos del mismo usuario ---
	$res2 = $y->q("SELECT numcontrato, domicilio, estado FROM contrato WHERE numusuario=$numusuario AND numcontrato != '$id'");
	$otros_contratos = array();
	while (list($contrato_o, $domicilio_o, $estado_o) = $y->fetch_array($res2)) {
		$otros_contratos[] = array('contrato' => $contrato_o, 'domicilio' => $domicilio_o, 'estado' => $estado_o);
	}

	// --- Adeudos ---
	// Categorías de recargo según config_sistema (16=agua, 17=drenaje).
	// El campo ligacargos.recargo contiene el monto del recargo (float), NO es bandera booleana.
	// La clasificación cargo/recargo se determina por categoria, no por el campo recargo.
	$cat_recargo_agua   = intval(obtenerValorSeguro($cfg, 'recargo_categoria_agua',   16));
	$cat_recargo_drenaje = intval(obtenerValorSeguro($cfg, 'recargo_categoria_drenaje', 17));
	$res = $y->q("SELECT id_cargo, leyenda, monto, recargo, repetido, categoria FROM vw_ligacargos_pendientes WHERE numcontrato='$id' ORDER BY anio");
	$npagos = $y->num_rows($res);
	$adeudos = array();
	$total = 0;
	$recargos = 0;
	while ($resulta = $y->fetch_array($res)) {
		$es_recargo = ($resulta['categoria'] == $cat_recargo_agua || $resulta['categoria'] == $cat_recargo_drenaje);
		$resulta['recargo'] = $es_recargo ? 1 : 0; // normalizar flag para la vista (coloreado rojo)
		$adeudos[] = $resulta;
		$total    += $es_recargo ? 0 : $resulta['monto'];
		$recargos += $es_recargo ? $resulta['monto'] : 0;
	}

	// --- Cargos fuente ---
	$res = $y->q("SELECT numconsec, nombre, monto, monto_comercial, recargo, observaciones, mensualidades, anio, categoria, repetir, metros FROM cargos WHERE estado=1 ORDER BY nombre");
	$cargos_fuente = array();
	while ($cf = $y->fetch_array($res)) {
		$cargos_fuente[] = array(
			'numconsec'    => $cf[0],
			'nombrec'      => $cf[1],
			'monto'        => $cf[2],
			'monto_com'    => $cf[3],
			'recargo'      => $cf[4],
			'observaciones'=> $cf[5],
			'mensualidades'=> $cf[6],
			'anio'         => $cf[7],
			'categoria'    => $cf[8],
			'repetir'      => $cf[9],
			'metros2'      => $cf[10]
		);
	}

	// --- Notas ---
	$q1 = "SELECT id, SUBSTRING(fecha,1,10) AS fecha, texto, estado FROM notas WHERE contrato='$id' AND estado <> -1 ORDER BY estado DESC, fecha DESC";
	$res_notas = $y->q($q1);
	$notas = array();
	while ($n = $y->fetch_array($res_notas)) {
		$notas[] = $n;
	}

	// --- Cargos cancelados ---
	// Host C: ligacargos tiene PK id AUTO_INCREMENT — se pasa a regresarCargoCancelado como discriminador
	// id_cargo: COALESCE activa→historico (Regla F06 — split anio<=2025 en ligacargos_historico)
	$resc = $y->q("SELECT leyenda, monto, recargo, repetido, categoria, es_recargo_moratorio, fcobro,
	               COALESCE(
	                   (SELECT id FROM ligacargos          WHERE numcontrato='$id' AND leyenda=v.leyenda AND repetido=v.repetido AND estado=-1 LIMIT 1),
	                   (SELECT id FROM ligacargos_historico WHERE numcontrato='$id' AND leyenda=v.leyenda AND repetido=v.repetido AND estado=-1 LIMIT 1)
	               ) AS id_cargo
	               FROM vw_ligacargos_all v WHERE numcontrato='$id' AND estado=-1 ORDER BY fcobro");
	$npagosc = $y->num_rows($resc);
	$cancelados = array();
	while ($cc = $y->fetch_array($resc)) {
		// Normalizar bandera para ficha.php (rojo cursiva en cargos cancelados)
		$cc['recargo'] = $cc['es_recargo_moratorio'] ? 1 : 0;
		$cancelados[] = $cc;
	}

	// --- Histórico cancelaciones ---
	$resnc = $y->q("SELECT antes, despues FROM cambios WHERE numcontrato='$id' AND descripcion='cancelacion' ORDER BY fecha DESC");
	$nnotas = $y->num_rows($resnc);
	$notas_cancelacion = array();
	while ($nc = $y->fetch_array($resnc)) {
		$notas_cancelacion[] = $nc;
	}

	$tiposdeestado = array("1" => "Activo", "2" => "Suspensi&oacute;n Temporal", "3" => "Suspensi&oacute;n Administrativa", "4" => "Suspensi&oacute;n Definitiva");

	$letras = $y->q("SELECT numcontratoletras FROM contrato WHERE numcontrato='$id' ORDER BY numcontrato");
	list($numcontratoletras) = $y->fetch_array($letras);

	return $templates->render('contratos/ficha', array(
		'id'                  => $id,
		'nombre'              => $nombre,
		'numusuario'          => $numusuario,
		'domicilio'           => $domicilio,
		'masdatos'            => $masdatos,
		'tipo'                => $tipo,
		'agua'                => $agua,
		'drenaje'             => $drenaje,
		'observaciones'       => $observaciones,
		'estado'              => $estado,
		'metros'              => $metros,
		'numcontratoletras'   => $numcontratoletras,
		'tipos'               => $tipos,
		'tiposdeestado'       => $tiposdeestado,
		'estado_usr'          => $estado_usr,
		'foliotope'           => $foliotope,
		'npagos'              => $npagos,
		'adeudos'             => $adeudos,
		'total'               => $total,
		'recargos'            => $recargos,
		'notas'               => $notas,
		'salidanotas'         => !empty($notas),
		'cargos_fuente'       => $cargos_fuente,
		'npagosc'             => $npagosc,
		'cancelados'          => $cancelados,
		'nnotas'              => $nnotas,
		'notas_cancelacion'   => $notas_cancelacion,
		'otros_contratos'     => $otros_contratos,
		'tomas'               => $tomas,
		'num_tomas'           => $num_tomas,
		'max_tomas'           => $max_tomas,
		'tarifas_referencia'  => $tarifas_referencia,
		'cfg'                 => $cfg,
		'faltan_cargos'       => _verificaAnualidades($y),
		'reversal_info'       => _getReversal($id, ($total + $recargos), $y)
	));
}

function cambiaestado($contrato, $rp, $rt, $texto, $estado)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$cfg = cargaConfig($y);
	$min_car = intval(obtenerValorSeguro($cfg, 'cancelacion_min_caracteres', 20));
	$mes_st  = intval(obtenerValorSeguro($cfg, 'susptemp_mes_permitido', 12));

	$res_actual = $y->q("SELECT estado FROM contrato WHERE numcontrato='$contrato'");
	list($estado_actual) = $y->fetch_array($res_actual);

	if ($estado_actual == 4) {
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Acción No Permitida',
			'mensaje' => 'No es posible cambiar el estado de un contrato que se encuentra en <b>Suspensión Definitiva</b>.'
		));
	}

	// Bloqueo de cambio al mismo estado (UI Fix)
	if (intval($estado_actual) === intval($estado)) {
		$nombres_map = array(1 => 'ACTIVO', 2 => 'SUSPENSIÓN TEMPORAL', 3 => 'SUSPENSIÓN ADMINISTRATIVA', 4 => 'SUSPENSIÓN DEFINITIVA');
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Sin cambios',
			'mensaje' => 'El contrato ya se encuentra en estado <b>' . $nombres_map[intval($estado)] . '</b>. No se realizó ninguna acción.'
		));
	}

	// Bloqueo de transiciones ilógicas (2 <-> 3) según análisis de Runbook
	if ((intval($estado_actual) === 2 && intval($estado) === 3) || (intval($estado_actual) === 3 && intval($estado) === 2)) {
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Transición No Permitida',
			'mensaje' => 'No se permite saltar entre diferentes tipos de suspensión directamente. El contrato debe ser <b>Regularizado a Activo</b> antes de cambiar el tipo de suspensión.'
		));
	}

	$res1 = $y->q("SELECT contrasena FROM contrasenas WHERE rol='presidente'");
	$res2 = $y->q("SELECT contrasena FROM contrasenas WHERE rol='tesorero'");
	list($contrasena_presidente) = $y->fetch_array($res1);
	list($contrasena_tesorero)   = $y->fetch_array($res2);

	// Validar mes para suspensión temporal
	if ($estado == 2 && intval(date('m')) != $mes_st) {
		$nom_meses = array("","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'No permitido',
			'mensaje' => 'La Suspensi&oacute;n Temporal solo puede solicitarse en <b>' . $nom_meses[$mes_st] . '</b>.'
		));
	}

	if (strlen($texto) > $min_car) {

		// ═══ Snapshot financiero PRE-cambio (antes de cualquier modificación) ═══
		$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$contrato'");
		$pre = $y->fetch_array($res_pre);
		$n_pre   = intval($pre['n']);
		$tot_pre = number_format(floatval($pre['total']), 2);

		// ═══ Captura de IDs para reversión (antes de cualquier modificación) ═══
		// lc_ids   : IDs pendientes en ligacargos activa — los nuevos generados se detectan por diferencia
		// hist_cxld: IDs cancelados en ligacargos_historico — los nuevamente amnistiados se detectan por diferencia
		$res_lc_pre = $y->q("SELECT id FROM ligacargos WHERE numcontrato='$contrato' AND estado=0");
		$lc_ids_pre = array();
		while ($r = $y->fetch_array($res_lc_pre)) { $lc_ids_pre[] = intval($r['id']); }

		$res_hist_pre = $y->q("SELECT id FROM ligacargos_historico WHERE numcontrato='$contrato' AND estado=-1");
		$hist_cxld_pre = array();
		while ($r = $y->fetch_array($res_hist_pre)) { $hist_cxld_pre[] = intval($r['id']); }

		// hist_pend_pre: IDs pendientes en historico — calcula_recargos() inserta recargos anio<=2025
		// con estado=0 directamente aquí; la diferencia pre/post detecta los nuevos para revertirlos
		$res_hist_pend_pre = $y->q("SELECT id FROM ligacargos_historico WHERE numcontrato='$contrato' AND estado=0");
		$hist_pend_pre = array();
		while ($r = $y->fetch_array($res_hist_pend_pre)) { $hist_pend_pre[] = intval($r['id']); }

		// ═══ Captura de estado de tomas para reversión integral ═══
		$res_tomas_pre = $y->q("SELECT id, estado_agua, estado_drenaje FROM contrato_toma WHERE numcontrato='$contrato'");
		$tomas_pre = array();
		while ($rt = $y->fetch_array($res_tomas_pre)) {
			$tomas_pre[] = array(
				'id' => intval($rt['id']),
				'ea' => intval($rt['estado_agua']),
				'ed' => intval($rt['estado_drenaje'])
			);
		}

		$res_serv_pre = $y->q("SELECT agua, drenaje FROM contrato WHERE numcontrato='$contrato'");
		list($agua_pre, $drenaje_pre) = $y->fetch_array($res_serv_pre);

		$q = "UPDATE contrato SET estado=$estado WHERE numcontrato='$contrato'";
		$y->q($q);

		$nombres_estado = array(
			1 => 'ACTIVO',
			2 => 'SUSPENSIÓN TEMPORAL',
			3 => 'SUSPENSIÓN ADMINISTRATIVA',
			4 => 'SUSPENSIÓN DEFINITIVA'
		);
		$nombre_origen  = isset($nombres_estado[intval($estado_actual)]) ? $nombres_estado[intval($estado_actual)] : "ESTADO $estado_actual";
		$nombre_destino = isset($nombres_estado[intval($estado)])        ? $nombres_estado[intval($estado)]        : "ESTADO $estado";

		if (intval($estado) === 4) {
			$y->q("UPDATE contrato_toma SET estado_agua=0, estado_drenaje=0 WHERE numcontrato='$contrato'");
			$y->q("UPDATE contrato SET agua=0, drenaje=0 WHERE numcontrato='$contrato'");
			
			// Forzar paridad financiera (cancelar cargos anuales)
			_sincronizaParidadFinanciera($contrato, $y);

			$nota_especifica = "Eliminación física de tomas y depuración total de deuda (Regla C05).";
		} else if (intval($estado) === 1) {
			// Restaurar paridad del año actual PRIMERO — genera/restaura anualidades y recargos del año en curso
			_sincronizaParidadFinanciera($contrato, $y);

			if (intval($estado_actual) === 2) {
				// Regla C06: Amnistía DESPUÉS de paridad — cancela recargos históricos sin que paridad los regenere
				_amnistiaRecargosHistoricos($contrato, $y);
				$nota_especifica = "Amnistía C06 aplicada: recargos históricos cancelados. Facturación reactivada.";
			} else {
				// Estado 3 → 1: NO aplica amnistía — adeudo íntegro conservado
				$nota_especifica = "Sin amnistía C06: adeudo íntegro conservado (viene de Suspensión Administrativa).";
			}
		} else {
			// Transiciones a estado 2 (SUSP. TEMPORAL) o 3 (SUSP. ADMINISTRATIVA)
			$nota_especifica = (intval($estado) === 2)
				? "Facturación congelada. Anualidad vigente cancelada (Regla C06)."
				: "Suspensión sancionatoria. Adeudo íntegro conservado. Sin amnistía al reactivar.";
		}

		// ═══ Opción A: Facturador eager al reactivar ═══
		if (intval($estado) === 1) {
			generaCargosAutomaticos($contrato, $y);
		}

		// ═══ Captura de IDs POST para calcular delta de reversión ═══
		$res_lc_post = $y->q("SELECT id FROM ligacargos WHERE numcontrato='$contrato' AND estado=0");
		$lc_ids_post = array();
		while ($r = $y->fetch_array($res_lc_post)) { $lc_ids_post[] = intval($r['id']); }

		$res_hist_post = $y->q("SELECT id FROM ligacargos_historico WHERE numcontrato='$contrato' AND estado=-1");
		$hist_cxld_post = array();
		while ($r = $y->fetch_array($res_hist_post)) { $hist_cxld_post[] = intval($r['id']); }

		$res_hist_pend_post = $y->q("SELECT id FROM ligacargos_historico WHERE numcontrato='$contrato' AND estado=0");
		$hist_pend_post = array();
		while ($r = $y->fetch_array($res_hist_pend_post)) { $hist_pend_post[] = intval($r['id']); }

		// IDs creados por este cambio de estado (nuevos en activa con estado=0)
		$lc_ids_nuevos    = array_values(array_diff($lc_ids_post, $lc_ids_pre));
		// IDs amnistiados por este cambio (pasaron a -1 en histórico)
		$hist_ids_amnist  = array_values(array_diff($hist_cxld_post, $hist_cxld_pre));
		// IDs nuevos insertados en historico con estado=0 por calcula_recargos() (recargos anio<=2025)
		$hist_ids_nuevos_hist = array_values(array_diff($hist_pend_post, $hist_pend_pre));
		// IDs preexistentes en activa que paridad canceló (estado=0 → -1 en ligacargos)
		// Necesarios para reversión exacta — sin esto quedarían pendientes incorrectamente.
		$lc_ids_cancelados = array_values(array_diff($lc_ids_pre, $lc_ids_post));

		// ═══ Snapshot financiero POST-cambio ═══
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$contrato'");
		$post = $y->fetch_array($res_post);
		$n_post  = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);

		// ═══ Calcular delta y detalle de recalibración ═══
		$delta_n    = $n_post - $n_pre;
		$delta_m    = floatval($post['total']) - floatval($pre['total']);
		$delta_str  = '';
		if ($delta_n > 0) {
			$delta_str = " | Recalibración: +$delta_n cargos/recargos generados (\$" . number_format($delta_m, 2) . ")";
		} elseif ($delta_n < 0) {
			$delta_abs = abs($delta_n);
			$delta_str = " | Depuración: -$delta_abs cargos depurados (-\$" . number_format(abs($delta_m), 2) . ")";
		}

		// ═══ Detectar cargos legados ═══
		$nota_legados = '';
		if (intval($estado) === 1) {
			$res_leg = $y->q("SELECT l.leyenda, l.anio, l.monto
				FROM vw_ligacargos_pendientes l
				WHERE l.numcontrato = '$contrato'
				  AND l.categoria IN (2,3)
				  AND NOT EXISTS (
				      SELECT 1 FROM cargos c
				      WHERE c.nombre = l.leyenda AND c.estado = 1 AND c.automatico = 1
				  )
				ORDER BY l.anio ASC");
			$legados = array();
			while ($lg = $y->fetch_array($res_leg)) {
				$legados[] = $lg['leyenda'] . ' ($' . number_format(floatval($lg['monto']), 2) . ')';
			}
			if (count($legados) > 0) {
				$nota_legados = " | Cargos legados conservados sin recalcular recargos (catalogo inactivo): " . implode(', ', $legados);
			}
		}

		$resumen_financiero = "Adeudos: $n_post | Deuda: \$$tot_post" . $delta_str . $nota_legados;

		$nombre_origen_esc      = $y->real_escape_string($nombre_origen);
		$nombre_destino_esc     = $y->real_escape_string($nombre_destino);
		$texto_esc              = $y->real_escape_string($texto);
		$nota_especifica_esc    = $y->real_escape_string($nota_especifica);
		$resumen_financiero_esc = $y->real_escape_string($resumen_financiero);
		$resumen_pre_esc        = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");

		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 
		              'Cambio de estado: $nombre_origen_esc → $nombre_destino_esc', 
		              'Estado [$estado_actual] $nombre_origen_esc. $resumen_pre_esc. Motivo: $texto_esc', 
		              'Estado [$estado] $nombre_destino_esc. $nota_especifica_esc | $resumen_financiero_esc', 
		              '$contrato')");

		// ═══ REVERSAL_SNAPSHOT — graba IDs exactos para reversión completa ═══
		// Se graba SIEMPRE en toda transición válida.
		// El umbral reversal_threshold solo controla si el botón Revertir es visible en UI (_getReversal).
		$rev_data = json_encode(array(
			'estado_origen'      => intval($estado_actual),
			'estado_destino'     => intval($estado),
			'lc_ids_nuevos'      => $lc_ids_nuevos,
			'lc_ids_cancelados'  => $lc_ids_cancelados,
			'hist_ids_amnist'    => $hist_ids_amnist,
			'hist_ids_nuevos_hist' => $hist_ids_nuevos_hist,
			'deuda_pre'          => floatval($pre['total']),
			'deuda_post'         => floatval($post['total']),
			'tomas_pre'          => $tomas_pre,
			'serv_pre'           => array('a' => intval($agua_pre), 'd' => intval($drenaje_pre))
		));
		$rev_data_esc = $y->real_escape_string($rev_data);
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
		       VALUES(NOW(), 'REVERSAL_SNAPSHOT', '$rev_data_esc', 'PENDIENTE', '$contrato')");

		$salida = "<script>cargaDatosContrato('$contrato');</script>";
	} else {
		$salida = $templates->render('sistema/mensaje', array(
			'titulo'  => 'Error',
			'mensaje' => 'Debe escribir a detalle el porqu&eacute; de la cancelaci&oacute;n de estos cargos (m&iacute;nimo ' . $min_car . ' caracteres).'
		));
	}
	return $salida;
}

function creaNota($contrato, $texto)
{
	$y = new Conexion();
	$y->conectarBaseDatos();
	$salida = "";

	// M1-fix: leer numcontratoresp real del contrato para insertarlo correctamente en notas
	$res_resp = $y->q("SELECT numcontratoresp FROM contrato WHERE numcontrato='$contrato'");
	list($numcontratoresp_real) = $y->fetch_array($res_resp);
	// Fallback: si el contrato no tiene responsable diferente, usar el mismo numcontrato
	if (empty($numcontratoresp_real)) {
		$numcontratoresp_real = $contrato;
	}

	if ($y->q("INSERT INTO notas VALUES(null, NOW(), '$contrato', \"$texto\", 0, '$contrato', '$numcontratoresp_real')")) {
		$texto_esc = $y->real_escape_string($texto);
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Nota de Contrato', 'NUEVA', 'Texto: $texto_esc', '$contrato')");
		$salida .= "<script>cargaDatosContrato('$contrato');</script>";
	}
	return $salida;
}


function eliminaNota($id)
{
	$y = new Conexion();
	$y->conectarBaseDatos();
	list($contrato, $texto_nota) = $y->fetch_array($y->q("SELECT contrato, texto FROM notas WHERE id='$id'"));
	$y->q("UPDATE notas SET estado=-1 WHERE id='$id'");
	
	$texto_esc = $y->real_escape_string($texto_nota);
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
	       VALUES(NOW(), 'Eliminación de Nota', 'Activa: $texto_esc', 'ELIMINADA', '$contrato')");

	return "<script>cargaDatosContrato('$contrato');</script>";
}

function cambiapropietario($contrato, $usuario, $nuevousuario)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$res = $y->q("UPDATE contrato SET numusuario='$nuevousuario' WHERE numcontrato='$contrato'");
	if ($res) {
		// ═══ Snapshot financiero del contrato transferido ═══
		$res_snap = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$contrato'");
		$snap = $y->fetch_array($res_snap);
		$n_adeudos = intval($snap['n']);
		$tot_deuda = number_format(floatval($snap['total']), 2);
		// Obtener nombres de usuario para auditoría legible
		$res_nom_ant = $y->q("SELECT nombre FROM usuario WHERE noconsecutivo='$usuario'");
		$nom_ant = $y->fetch_array($res_nom_ant);
		$nombre_anterior = $nom_ant ? $y->real_escape_string($nom_ant['nombre']) : $usuario;
		$res_nom_new = $y->q("SELECT nombre FROM usuario WHERE noconsecutivo='$nuevousuario'");
		$nom_new = $y->fetch_array($res_nom_new);
		$nombre_nuevo = $nom_new ? $y->real_escape_string($nom_new['nombre']) : $nuevousuario;

		$usuario_esc      = $y->real_escape_string($usuario);
		$nuevousuario_esc = $y->real_escape_string($nuevousuario);
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Cambio de propietario del contrato $contrato', 'Usuario #$usuario_esc ($nombre_anterior). Adeudos: $n_adeudos | Deuda: \$$tot_deuda', 'Usuario #$nuevousuario_esc ($nombre_nuevo). Deuda transferida integramente.', '$contrato')");
		return "<script>cargaDatosContrato(\"$contrato\");</script>";
	}
	return $templates->render('sistema/mensaje', array(
		'titulo'  => 'Error',
		'mensaje' => 'Hubo un error en la asignaci&oacute;n del propietario.'
	));
}

function nuevoContrato()
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg = cargaConfig($y);
	$max_tomas = intval(obtenerValorSeguro($cfg, 'max_tomas_por_contrato', 2));
	$res = $y->q("SELECT (MAX(CAST(numcontrato AS UNSIGNED)) + 1) FROM contrato c LIMIT 0,1");
	list($ultimoID) = $y->fetch_array($res);

	$anio_actual = date('Y');
	$res_tarifas = $y->q("SELECT nombre, monto, monto_comercial, categoria FROM cargos WHERE automatico=1 AND estado=1 AND anio=$anio_actual AND categoria IN (2,3) ORDER BY categoria, numconsec");
	$tarifas_referencia = array();
	while ($tf = $y->fetch_array($res_tarifas)) {
		$clave = ($tf['categoria'] == 2) ? 'agua' : 'drenaje';
		if (!isset($tarifas_referencia[$clave])) {
			$mon_com = (floatval($tf['monto_comercial']) > 0) ? floatval($tf['monto_comercial']) : floatval($tf['monto']) * 2;
			$tarifas_referencia[$clave] = array(
				'leyenda'   => $tf['nombre'],
				'normal'    => floatval($tf['monto']),
				'comercial' => $mon_com
			);
		}
	}

	return $templates->render('contratos/nuevo', array(
		'ultimoID'           => $ultimoID,
		'tipos'              => array(0 => "Normal", 1 => "Comercial"),
		'max_tomas'          => $max_tomas,
		'tarifas_referencia' => $tarifas_referencia,
		'faltan_cargos'      => _verificaAnualidades($y)
	));
}

function _verificaAnualidades($y) {
	$anio_actual = date('Y');
	$res_anualidades = $y->q("SELECT nombre FROM cargos WHERE estado=1 AND nombre IN ('ANUALIDAD DEL AGUA $anio_actual', 'ANUALIDAD DEL DRENAJE $anio_actual')");
	$anualidades_existentes = array();
	while($a = $y->fetch_array($res_anualidades)) { $anualidades_existentes[] = $a['nombre']; }
	$faltan_cargos = array();
	if(!in_array("ANUALIDAD DEL AGUA $anio_actual", $anualidades_existentes)) $faltan_cargos[] = "ANUALIDAD DEL AGUA $anio_actual";
	if(!in_array("ANUALIDAD DEL DRENAJE $anio_actual", $anualidades_existentes)) $faltan_cargos[] = "ANUALIDAD DEL DRENAJE $anio_actual";
	return $faltan_cargos;
}

function busquedaContrato($query)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$coincidencias = explode(' ', $query);
	$descripciones = "";
	foreach ($coincidencias as $r) {
		$descripciones .= (($descripciones == "") ? "" : " AND ") . "contrato.numcontrato LIKE '$r'";
	}
	$res = $y->q("SELECT contrato.numcontrato, usuario.nombre, contrato.domicilio, contrato.estado FROM contrato LEFT JOIN usuario ON contrato.numusuario=usuario.noconsecutivo WHERE $descripciones ORDER BY contrato.numcontratoletras+0 ASC");
	$n = $y->num_rows($res);
	if ($n == 1) {
		list($contrato, $nombre, $direccion, $edo) = $y->fetch_array($res);
		return "<script>cargaDatosContrato('$contrato');</script>";
	}
	$contratos = array();
	while (list($contrato, $nombre, $direccion, $edo) = $y->fetch_array($res)) {
		$contratos[] = array('contrato' => $contrato, 'nombre' => $nombre, 'direccion' => $direccion, 'estado' => $edo);
	}
	return $templates->render('contratos/busqueda_resultados', array('n' => $n, 'query' => $query, 'contratos' => $contratos));
}

function guardaContrato($id, $domicilio, $tipo, $agua, $drenaje, $masdatos, $observaciones, $numcontratoletras, $metros, $tomas_data, $num_tomas = null)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg = cargaConfig($y);

	// Sanitización estricta Poka-yoke para inputs de texto
	$id = trim(strip_tags((string)$id));
	$domicilio = strtoupper(trim(strip_tags((string)$domicilio)));
	$masdatos = trim(strip_tags((string)$masdatos));
	$observaciones = trim(strip_tags((string)$observaciones));
	$numcontratoletras = strtoupper(trim(strip_tags((string)$numcontratoletras)));
	$metros = intval($metros);

	// Obtener estado actual
	$res_edo = $y->q("SELECT numusuario, estado FROM contrato WHERE numcontrato='$id'");
	list($usr, $c_estado) = $y->fetch_array($res_edo);
	
	// Regla C02: Prohibida la modificación de estado de contratos en 4 (SUSPENSIÓN DEFINITIVA)
	if ($c_estado == 4) {
		return "<script>alert('Error: Este contrato se encuentra en SUSPENSIÓN DEFINITIVA y no permite modificaciones.'); cargaDatosContrato('$id');</script>";
	}

	$res_tomas_actuales_count = $y->q("SELECT COUNT(id) FROM contrato_toma WHERE numcontrato='$id'");
	list($tomas_actuales_n) = $y->fetch_array($res_tomas_actuales_count);
	$tomas_req = ($num_tomas !== null) ? intval($num_tomas) : (is_array($tomas_data) ? count($tomas_data) : 1);
	
	if ($tomas_req > $tomas_actuales_n && !in_array($c_estado, [1, 2])) {
		return "<script>alert('Restriccion: Solo se permite agregar nuevas tomas a contratos en estado Activo o Suspension Temporal.');</script>";
	}

	// Validar restricción: máx 2 tomas por usuario mismo domicilio
	$dom_clean_sql_c = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER(c.domicilio), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$dom_clean_sql_v = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER('$domicilio'), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_clean_sql_c = $dom_clean_sql_v AND c.estado != 4 AND c.numcontrato != '$id'");
	list($tomas_otras) = $y->fetch_array($res_count);

	if ($tomas_otras + $tomas_req > 2) {
		return "<script>alert('Restriccion de Tomas: El usuario ya cuenta con $tomas_otras toma(s) en otros contratos para este domicilio. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio.');</script>";
	}

	// Leer estado actual de tomas para detectar desconexiones y cambios de infraestructura
	$tomas_actuales = array();
	$res_ta = $y->q("SELECT num_toma, tiene_agua, tiene_drenaje, estado_agua, estado_drenaje, tipo FROM contrato_toma WHERE numcontrato='$id'");
	while ($ta = $y->fetch_array($res_ta)) {
		$tomas_actuales[intval($ta['num_toma'])] = $ta;
	}

	// Actualizar cada toma en contrato_toma
	if (is_array($tomas_data) && count($tomas_data) > 0) {
		foreach ($tomas_data as $num_t => $td) {
			$n          = intval($num_t);
			
			if ($num_tomas !== null && $n > $num_tomas) {
			    // Check bounds before deletion to log it properly
			    $rcheck = $y->q("SELECT id FROM contrato_toma WHERE numcontrato='$id' AND num_toma=$n");
			    if ($y->num_rows($rcheck) > 0) {
			        $y->q("DELETE FROM contrato_toma WHERE numcontrato='$id' AND num_toma=$n");
			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Eliminaci&oacute;n toma $n', 'existente', 'eliminada por reduccion', '$id')");
			    }
			} else {
    			$tipo_t     = intval(obtenerValorSeguro($td, 'tipo', 0));
    			$t_agua     = intval(obtenerValorSeguro($td, 'tiene_agua', 0));
    			$t_drenaje  = intval(obtenerValorSeguro($td, 'tiene_drenaje', 0));
    			$e_agua     = intval(obtenerValorSeguro($td, 'estado_agua', 1));
    			$e_drenaje  = intval(obtenerValorSeguro($td, 'estado_drenaje', 1));
    			
    			// Verificar si existe la toma
    			$rcheck = $y->q("SELECT id FROM contrato_toma WHERE numcontrato='$id' AND num_toma=$n");
    			if ($y->num_rows($rcheck) > 0) {
    				$y->q("UPDATE contrato_toma SET tipo=$tipo_t, tiene_agua=$t_agua, tiene_drenaje=$t_drenaje, estado_agua=$e_agua, estado_drenaje=$e_drenaje WHERE numcontrato='$id' AND num_toma=$n");
    			} else {
    				$y->q("INSERT INTO contrato_toma (numcontrato,num_toma,tipo,tiene_agua,tiene_drenaje,estado_agua,estado_drenaje,fecha_alta) VALUES('$id',$n,$tipo_t,$t_agua,$t_drenaje,$e_agua,$e_drenaje,NOW())");
    			}
    			
    			// Tracking de infraestructura física y tarifa
    			if (isset($tomas_actuales[$n])) {
    			    $ant_t_agua    = intval($tomas_actuales[$n]['tiene_agua']);
    			    $ant_t_drenaje = intval($tomas_actuales[$n]['tiene_drenaje']);
    			    $ant_tipo      = intval($tomas_actuales[$n]['tipo']);
    			    
    			    // Snapshot financiero para contexto de infraestructura
    			    $res_inf = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
    			    $inf = $y->fetch_array($res_inf);
    			    $ctx_fin = "Adeudos: " . intval($inf['n']) . " | Deuda: \$" . number_format(floatval($inf['total']), 2);
    			    $ctx_esc = $y->real_escape_string($ctx_fin);
    			    
    			    if ($ant_t_agua != $t_agua) {
    			        $str_a = $ant_t_agua ? 'Existente' : 'Inexistente';
    			        $str_n = $t_agua ? 'Existente' : 'Inexistente';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Infrastructura Agua Toma $n','$str_a. $ctx_esc','$str_n (paridad pendiente de recalcular)','$id')");
    			    }
    			    if ($ant_t_drenaje != $t_drenaje) {
    			        $str_a = $ant_t_drenaje ? 'Existente' : 'Inexistente';
    			        $str_n = $t_drenaje ? 'Existente' : 'Inexistente';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Infrastructura Drenaje Toma $n','$str_a. $ctx_esc','$str_n (paridad pendiente de recalcular)','$id')");
    			    }
    			    if ($ant_tipo != $tipo_t) {
    			        $str_a = $ant_tipo == 1 ? 'Comercial' : 'Normal';
    			        $str_n = $tipo_t == 1 ? 'Comercial' : 'Normal';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Cambio de Tarifa Toma $n','$str_a. $ctx_esc','$str_n (paridad pendiente de recalcular)','$id')");
    			    }
    			}
    
    			// Si se desconectó agua — quitar cargo anual sin pagar
    			$ant_agua = isset($tomas_actuales[$n]) ? intval($tomas_actuales[$n]['estado_agua']) : 1;
    			if ($ant_agua == 1 && $e_agua == 0) {
    				_quitaCargoAnual($id, 'AGUA', $y);
    				$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Desconexion agua toma $n','conectado','desconectado','$id')");
    			}
    
    			// Si se desconectó drenaje — quitar cargo anual sin pagar
    			$ant_drenaje = isset($tomas_actuales[$n]) ? intval($tomas_actuales[$n]['estado_drenaje']) : 1;
    			if ($ant_drenaje == 1 && $e_drenaje == 0) {
    				_quitaCargoAnual($id, 'DRENAJE', $y);
    				$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Desconexion drenaje toma $n','conectado','desconectado','$id')");
    			}
			}
		}
	}

	// Sincronizar campos legacy contrato.agua, contrato.drenaje, contrato.tipo
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1 AND estado_agua=1");
	list($tot_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($tot_drenaje) = $y->fetch_array($r_d);
	$r_t = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$id'");
	list($tipo_max) = $y->fetch_array($r_t);
	$tipo_max = intval($tipo_max);

	// Actualizar contrato
	$vars = array("domicilio", "masdatos", "observaciones", "numcontratoletras", "metros");
	$res = $y->q("SELECT domicilio, masdatos, observaciones, numcontratoletras, metros FROM contrato WHERE numcontrato='$id'");
	if ($y->num_rows($res) != 0) {
		list($domicilioo, $masdatoso, $observacioneso, $numcontratoletraso, $metroso) = $y->fetch_array($res);
		$actualiza  = "";
		$regAntes   = "";
		$regDespues = "";
		foreach ($vars as $vals) {
			$orig = $vals . "o";
			if ($$vals != $$orig) {
				$actualiza  .= (($actualiza == "")  ? "" : ", ") . "$vals=\"" . $$vals . "\"";
				$regAntes   .= (($regAntes == "")   ? "" : ", ") . "$vals='" . $$orig . "'";
				$regDespues .= (($regDespues == "")  ? "" : ", ") . "$vals='" . $$vals . "'";
			}
		}
		// Siempre sincronizar agua, drenaje y tipo desde contrato_toma
		$actualiza_sync = "agua=$tot_agua, drenaje=$tot_drenaje, tipo=$tipo_max";
		$full_update    = $actualiza != "" ? "$actualiza, $actualiza_sync" : $actualiza_sync;

		if ($actualiza != "") {
			$regAntes_esc   = $y->real_escape_string($regAntes);
			$regDespues_esc = $y->real_escape_string($regDespues);
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Actualizaci&oacute;n del contrato $id', '$regAntes_esc', '$regDespues_esc', '$id')");
		}

		// ═══ Snapshot financiero PRE-paridad ═══
		$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
		$pre = $y->fetch_array($res_pre);
		$n_pre   = intval($pre['n']);
		$tot_pre = number_format(floatval($pre['total']), 2);

		$y->q("UPDATE contrato SET $full_update WHERE numcontrato='$id'");
		
		// Sincronización de Paridad Físico-Financiera
		_sincronizaParidadFinanciera($id, $y);

		// ═══ Snapshot financiero POST-paridad + delta ═══
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
		$post = $y->fetch_array($res_post);
		$n_post  = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);
		$delta_n  = $n_post - $n_pre;
		$delta_m  = floatval($post['total']) - floatval($pre['total']);
		if ($delta_n != 0) {
			$delta_label = ($delta_n > 0) ? "Recalibración: +$delta_n cargos" : "Depuración: " . $delta_n . " cargos";
			$delta_monto = ($delta_m >= 0) ? '($' . number_format($delta_m, 2) . ')' : '(-$' . number_format(abs($delta_m), 2) . ')';
			$paridad_desc = $y->real_escape_string("$delta_label $delta_monto");
			$pre_esc  = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");
			$post_esc = $y->real_escape_string("Adeudos: $n_post | Deuda: \$$tot_post");
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Paridad Financiera (Actualización contrato)', '$pre_esc', '$post_esc | $paridad_desc', '$id')");
		}
		
		$salida = "<script>cargaDatosContrato('$id')</script>";
	} else {
		$salida = $templates->render('sistema/mensaje', array(
			'titulo'  => 'Cambios sin efecto',
			'mensaje' => "Ning&uacute;n cambio ha sido enviado para el contrato $id."
		));
	}
	return $salida;
}

function _quitaCargoAnual($numcontrato, $servicio, $y)
{
	$anio_actual = date('Y');
	$servicio    = strtoupper($servicio);
	$y->q("CALL sp_cancelar_cargo('$numcontrato', CONCAT('ANUALIDAD DEL ', '$servicio', ' ', '$anio_actual'), 0, @filas, 0)");
}

/**
 * Motor de Paridad: Asegura que la existencia de cargos coincida con el estado físico de las tomas.
 */
function _sincronizaParidadFinanciera($id, $y) {
    $anio = date('Y');
    
    // 0. Verificar estado del contrato para el Standard SDF
    $res_edo = $y->q("SELECT estado FROM contrato WHERE numcontrato = '$id'");
    list($estado_cto) = $y->fetch_array($res_edo);

    if (intval($estado_cto) === 4) {
        // --- LÓGICA STANDARD SDF: Depuración Total ---
        
        // 1. Contar afectados para auditoría (ambas tablas)
        $res_cnt = $y->q("SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
        list($afectados) = $y->fetch_array($res_cnt);

        if (intval($afectados) > 0) {
            // 2. Registrar en cambios antes de limpiar
            $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
                   VALUES(NOW(), 'Depuración SDF Automática (Motor Paridad)', 
                   'Cargos pendientes: $afectados', 'Estado: -1 (Depurado Total)', '$id')");

```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `INSERT INTO contrato`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 28 Apr 2026, 9:14 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `INSERT INTO contrato`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 28 Apr 2026, 9:14 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L979-1099)</summary>

**Path:** `Unknown file`

```
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($tot_d) = $y->fetch_array($r_d);
	$y->q("UPDATE contrato SET agua=$tot_a, drenaje=$tot_d WHERE numcontrato='$numcontrato'");
	
	_sincronizaParidadFinanciera($numcontrato, $y);

	// ═══ Snapshot financiero POST-paridad + delta ═══
	$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
	$post = $y->fetch_array($res_post);
	$n_post  = intval($post['n']);
	$tot_post = number_format(floatval($post['total']), 2);
	$delta_n  = $n_post - $n_pre;
	$delta_m  = floatval($post['total']) - floatval($pre['total']);
	$delta_str = '';
	if ($delta_n > 0) {
		$delta_str = " | Recalibración: +$delta_n cargos (\$" . number_format($delta_m, 2) . ")";
	} elseif ($delta_n < 0) {
		$delta_str = " | Depuración: " . $delta_n . " cargos (-\$" . number_format(abs($delta_m), 2) . ")";
	}
	$resumen_pre_esc  = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");
	$resumen_post_esc = $y->real_escape_string("Adeudos: $n_post | Deuda: \$$tot_post" . $delta_str);
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Cambio Rapido de Conexion $servicio_esc toma $num_toma','$antes_ev_esc. $resumen_pre_esc','$desc_ev_esc. $resumen_post_esc','$numcontrato')");

	return "<script>cargaDatosContrato('$numcontrato');</script>";
}

function guardaNuevoContrato($id, $usr, $domicilio, $tipo, $agua, $drenaje, $masdatos, $observaciones, $metros, $tomas_data, $num_tomas)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg    = cargaConfig($y);
	$exento = intval(obtenerValorSeguro($cfg, 'nuevo_contrato_exento_default', 1));

	// Sanitización estricta Poka-yoke para inputs de texto
	$id = trim(strip_tags((string)$id));
	$usr = trim(strip_tags((string)$usr));
	$domicilio = strtoupper(trim(strip_tags((string)$domicilio)));
	$masdatos = trim(strip_tags((string)$masdatos));
	$observaciones = trim(strip_tags((string)$observaciones));
	$metros = intval($metros);

	// Validar restricción: máx 2 tomas por usuario mismo domicilio
	$dom_clean_sql_c = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER(c.domicilio), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$dom_clean_sql_v = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER('$domicilio'), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_clean_sql_c = $dom_clean_sql_v AND c.estado != 4");
	list($tomas_existentes) = $y->fetch_array($res_count);
	
	$num_t = intval($num_tomas);
	if ($num_t < 1) $num_t = 1;
	
	if ($tomas_existentes + $num_t > 2) {
		return "<script>alert('Restriccion de Tomas: El usuario ya cuenta con $tomas_existentes toma(s) en el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio.');</script>";
	}

	$q = "INSERT INTO contrato (numcontrato, numusuario, numtoma, domicilio, masdatos, tipo, agua, drenaje, observaciones, estado, numcontratoresp, numcontratoletras, fecha, metros, exento_recargo_primer_anio) VALUES('$id', '$usr', 0, \"$domicilio\", \"$masdatos\", $tipo, $agua, $drenaje, \"$observaciones\", 1, '', '', NOW(), $metros, $exento)";

	if ($y->q($q)) {
		// Crear tomas en contrato_toma
		$num_t = intval($num_tomas);
		if ($num_t < 1) $num_t = 1;
		$max_t = intval(obtenerValorSeguro($cfg, 'max_tomas_por_contrato', 2));
		if ($num_t > $max_t) $num_t = $max_t;

		// Tracking de tomas para auditoría
		$tomas_desc = array();
		for ($n = 1; $n <= $num_t; $n++) {
			$td        = isset($tomas_data[$n]) ? $tomas_data[$n] : array();
			$tipo_t    = intval(obtenerValorSeguro($td, 'tipo', 0));
			$t_agua    = intval(obtenerValorSeguro($td, 'tiene_agua', 0));
			$t_drenaje = intval(obtenerValorSeguro($td, 'tiene_drenaje', 0));
			$e_agua    = ($t_agua    ? 1 : 0);
			$e_drenaje = ($t_drenaje ? 1 : 0);
			$y->q("INSERT INTO contrato_toma (numcontrato,num_toma,tipo,tiene_agua,tiene_drenaje,estado_agua,estado_drenaje,fecha_alta) VALUES('$id',$n,$tipo_t,$t_agua,$t_drenaje,$e_agua,$e_drenaje,NOW())");
			
			$tomas_desc[] = "T$n: [" . ($tipo_t == 1 ? 'COM' : 'NOR') . "] " . ($t_agua ? 'AGUA' : '') . ($t_agua && $t_drenaje ? '+' : '') . ($t_drenaje ? 'DRE' : '');
		}

		// Sincronizar agua/drenaje/tipo en contrato (basado en tomas creadas)
		$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1");
		list($ta) = $y->fetch_array($r_a);
		$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1");
		list($td2) = $y->fetch_array($r_d);
		$r_t = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$id'");
		list($tp) = $y->fetch_array($r_t);
		$y->q("UPDATE contrato SET agua=$ta, drenaje=$td2, tipo=" . intval($tp) . " WHERE numcontrato='$id'");

        // Establecer paridad inicial (Generar cargos según tomas dadas de alta)
        generaCargosAutomaticos($id, $y);
        _sincronizaParidadFinanciera($id, $y);

		// ═══ Snapshot financiero POST-creación ═══
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
		$post = $y->fetch_array($res_post);
		$n_post  = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);

		// Auditoría de Creación Detallada
		$tomas_str = implode(' | ', $tomas_desc);
		$resumen_fin = "Adeudos: $n_post | Deuda: \$$tot_post";
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Registro de Nuevo Contrato', 'NUEVO', 'Usuario: $usr | Domicilio: $domicilio | $tomas_str | $resumen_fin', '$id')");

		$salida = "<script>cargaDatosContrato('$id');</script>";
	} else {
		$salida = $templates->render('sistema/mensaje', array(
			'titulo'  => 'Cambios sin efecto',
			'mensaje' => 'No ha sido posible agregar este contrato a la base de datos.'
		));
	}
	return $salida;
}

function validaTomasSync($usr, $domicilio, $num_tomas, $id = null) {
	$y = new Conexion();
	$y->conectarBaseDatos();

	if ($id !== null && $id != '') {
		// Validar estado del contrato
		$res_edo = $y->q("SELECT estado FROM contrato WHERE numcontrato='$id'");
		if ($y->num_rows($res_edo) > 0) {
```

</details>

---

## Agent Response

### Thinking

**Analyzing Contract Creation**

I've been examining the `guardaNuevoContrato` function, specifically focusing on the creation process. I'm currently looking at how the `nuevo_contrato_exento_default` setting is handled, specifically line 1012, to see how it satisfies Rule C02. I need to understand this implementation in order to verify compliance with this rule.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.576555999s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 28 Apr 2026, 9:14 pm

---

## User Request

tampoco, las pruebas son manuales, yo las hago y tu me assiste, guias, hacer correciones , etc. LEE la conversacion anterior usa todo el contexto GEMINI.md ,etc

---

## Agent Response

### Thinking

**Focusing on manual tests**

I'm now zeroing in on the user's preference for manual testing. My focus is on providing guidance and making the required corrections and adjustments during the manual process. I'll be drawing on the context from `GEMINI.md` and our past discussions, with the goal of guiding them through Grupo UI-6 (Creación de Contratos).




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.616777017s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

mal, Candidato ideal: Abraham Herrera Márquez  ya en el documento de pruebas esta inidcado que usar, mejor te dejos descansar hoy y mañana retomamos.

---

## Agent Response

### Thinking

**Acknowledging Oversight**

I realize now I was incorrect. I should have thoroughly reviewed the provided test document for the correct "Contrato usado" or notes specific to UI-6, as the user, Abraham Herrera Márquez, and what to use are already indicated there. My apologies for the oversight; I will strive for greater attentiveness.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.355146019s
- **Model:** Gemini 3 Flash
</details>

---

---

*Generated by Chatledger for Antigravity*