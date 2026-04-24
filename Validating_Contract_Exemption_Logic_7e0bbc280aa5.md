# Validating Contract Exemption Logic

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `88e3181a-9cbf-4ff8-bef0-13591cfa5570` |
| **Cascade ID** | `7b4df0fd-8f9f-4e1c-9691-7e0bbc280aa5` |
| **Type** | Agent Conversation |
| **Total Steps** | 232 |
| **Started** | 23 Apr 2026, 10:57 am |
| **Completed** | 23 Apr 2026, 12:44 pm |

---

## User Request

COntinuando con  UI-6 · Creación de Nuevo Contrato — 6 sub-casos (A a F).
Sub A. Se realizo  correcto PARa nuevo cto:  9905. 
Duda: exento_recargo_primer_anio em tabla contrato, solo aplica para nuevos contratos ?

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
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

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

## Conversation 2d2217ca-2154-4c88-b506-587e879d4278: Validating Agua Test Plan
- Created: 2026-04-18T20:32:04Z
- Last modified: 2026-04-18T23:01:21Z

### USER Objective:
Stabilizing Agua Testing Suite

Main Objective: Complete the formalization and stabilization of the Agua V2 testing suite to ensure autonomous, production-ready execution.

Goals:
1. Finalize the "Plan de Pruebas" documentation with high-precision CSS selectors and updated Host C paths.
2. Refactor attendance module interoperability between the Assembly generator and Agua processor, including MD5 validation and cross-table database consistency (active vs. historical).
3. Synchronize the deployment pipeline (B→A→C) to maintain environment integrity.
4. Establish clear operational separation for concurrent manual and automated testing across dual monitors.
5. Secure version control integrity for all finalized protocols in remote repositories.

## Conversation 857c34d0-7f04-45a0-98d9-f2c3598f2011: Investigating Host Synchronization Anomalies
- Created: 2026-04-18T05:16:57Z
- Last modified: 2026-04-18T06:38:48Z

### USER Objective:
Stabilizing Agua Audit Archiving

Objective: Finalize the migration of the audit logging system to a partitioned architecture (active vs. historical) and ensure full operational continuity of the Agua V2 administrative dashboard.

Goals:
1. Implement and validate the archival split between `cambios` and `cambios_historico` tables to ensure data integrity and performance.
2. Integrate the `sp_archivar_bitacora` procedure into the standard deployment pipeline (`Full-Pipeline-Sync.sh`) to prevent configuration drift on Host C.
3. Consolidate UI access by linking the `monitor_fallbacks.php` utility into the "Operaciones y Reportes" panel.
4. Refine system-wide SELECT queries to correctly handle temporal data distribution between the active and historical audit tables.

## Conversation 4e4d201a-ecea-40ab-b382-a9c52c17a702: Reorganizing Agua Configuration Dashboard
- Created: 2026-04-18T04:23:21Z
- Last modified: 2026-04-18T04:52:46Z

### USER Objective:
Refining Agua System UI
The user's primary objective is to finalize the administrative and diagnostic polish of the Agua V2 system. Key goals include:
1. Standardizing application labels and menu terminology for consistency across the platform.
2. Enhancing navigation and filter functionality for reporting modules, specifically in the Cartera Vencida and Saneamiento views.
3. Troubleshooting and patching the Bitácora de Saneamiento to ensure accurate audit trail visualization post-migration.
4. Managing version control and documentation integrity by excluding specific development notes from the deployment pipeline.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 23 Apr 2026, 10:57 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** bash_command_reminder

</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 23 Apr 2026, 10:57 am

---

## User Request

COntinua.

---

## Agent Response

### Thinking

**Addressing the new contract**

Okay, I've got a handle on UI-6 and its sub-cases. Sub-case A is done, PAR 9905 looks good for the new contract. Currently, I'm stuck on a question regarding "exento_recargo_primer_anio em" and need to clarify this.




### Actions

**Tool:** `mcp_bdawahost-c_describe_table`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.338302116s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 23 Apr 2026, 10:57 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 23 Apr 2026, 10:58 am

---

## User Request

Continua

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `exento_recargo_primer_anio`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 Apr 2026, 10:58 am

---

## Agent Response

### Thinking

**Understanding the Flag's Purpose**

I've clarified the primary function of `exento_recargo_primer_anio`. It acts as a shield, inhibiting the application of late fees, specifically those categorized as 16/17, during the contract's inaugural year. My current focus is on how this flag influences related processes.




### Actions

**Tool:** `view_file`
**File:** `Plan de Pruebas — Sprint Post-Correcciones.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.748745672s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L30-829)</summary>

**Path:** `Unknown file`

```
> ### ⚠️ Protocolo obligatorio para pruebas de UI con browser
>
> **Leer y analizar todos los mensajes de respuesta de la pantalla** — alerts nativos del browser (`window.alert`, `window.confirm`, `window.prompt`), mensajes renderizados en el DOM (divs de error/éxito, modales jQuery, texto inyectado vía AJAX) — **antes de continuar al siguiente paso o caso**.
>
> **Propósito**: Muchas acciones de la webapp retornan el resultado exclusivamente vía alert o texto AJAX. Ignorarlos impide saber si la operación fue exitosa, generó un error de negocio (ej. "No se permite saltar entre suspensiones") o fue bloqueada por una validación (ej. "mínimo 20 caracteres"). Sin leer el mensaje, el agente avanza sobre un estado de BD incorrecto y contamina los casos siguientes.
>
> **Regla de impedimento**: Si el mensaje indica que la operación fue **rechazada o bloqueada** (texto que contenga: `"Error"`, `"No se permite"`, `"no aplica"`, `"no pudieron"`, `"mínimo"`, o cualquier condición negativa), el caso se marca como **IMPEDIDO** y se avanza al siguiente sin ejecutar el `assert_sql` ni el `revert_sql`. Registrar el texto exacto del mensaje en el reporte.
>
> **Cómo capturar alerts nativos**: Interceptar con `page.on('dialog', ...)` (Playwright) o `driver.switch_to.alert` (Selenium) antes de ejecutar la acción que los dispara. Aceptar el diálogo y guardar su texto para el reporte.
>
> Este protocolo está alineado con la Regla 10 del Ground Truth (Claude) / Runbook (Gemini): *"Ante un bloqueo de la herramienta, leer el mensaje resultante e identificar si es un impedimento para avanzar al siguiente caso."*

> **Configuración de entorno** (definir antes de ejecutar la suite):
> - `BASE_URL` = `http://192.168.1.128:7001/agua` (Host C — único ambiente Webapp)
> - La BD de verificación (`precond_sql`, `assert_sql`, `revert_sql`) es Host C vía MCP `bdawahost-c` o cli `mysql -h 192.168.1.128 -P 7002 -u root awa`.
> - **Ruta de assets de prueba**: `docs-dev/doc-estabilizacion/`

> **Orden de ejecución recomendado**: Grupo A → B → C → D → E → F.
> Los casos destructivos (UI-5 sub-casos C/E/G, UI-19) deben ejecutarse al final o con datos QA.
> Si un caso modifica datos, ejecutar `revert_sql` antes del siguiente caso que use el mismo contrato.

> ### 🔴 Issues de Ejecutabilidad Automatizada — Secciones 1 y 2
>
> Tabla de bloqueos identificados que impiden la ejecución no-atascada de una herramienta de browser automation (Google Antigravity / Enable Browser Tools / Playwright).
>
> | ID | Caso | Tipo | Descripción del Issue | Corrección Aplicada |
> |:---:|:---:|:---:|---|:---:|
> | ISS-01 | UI-3 (A y B) | **Atasco** | El `accion` no incluye `textarea[name=texto]` con motivo ≥20 chars. El backend rechaza el cambio de estado por motivo vacío ANTES de validar la transición C07 — el test nunca llega al assert correcto. | ✅ Sección accion corregida |
> | ISS-02 | UI-5-A | **Atasco** | Sub-caso 1→2 bloqueado fuera de diciembre: el backend retorna "Solo puede solicitarse en Diciembre" y la herramienta lo lee como error de negocio, no como bloqueo esperado. No hay protocolo de qué hacer si se ejecuta en otro mes. | ✅ precond_sql + manejo IMPEDIDO |
> | ISS-03 | UI-5-D | **Datos** | Sub-caso 2→1 usa contrato `1006`. Si UI-1 ya lo reactivó (estado=1 en lugar de 2), el precond falla silenciosamente y la herramienta intenta cambiar de 1→1 sin error explícito, corrompiendo la secuencia. | ✅ precond IMPEDIDO explícito |
> | ISS-04 | UI-5-G | **Ambigüedad** | El contrato a usar es `"9002 o 405 post-revert"` — la herramienta no puede resolver esta condición sin saber el estado actual. Sin variable resuelta, el accion queda incompleto. | ✅ Prioridad resuelta: QA `9002` si estado=3, sino IMPEDIDO |
> | ISS-05 | UI-6 (B,C,D) | **Datos** | Los sub-casos B, C y D asumen `COUNT(*) FROM contrato WHERE numusuario=1 = 0`, pero si el sub-caso A falló a mitad y dejó un contrato huérfano, los sub-casos siguientes fallan por el mismo usuario. | ✅ precond_sql reforzado con DELETE previo |
> | ISS-06 | UI-6-E | **Selector** | El `accion` no especifica el domicilio exacto del contrato `100` — solo dice "mismo domicilio". La herramienta necesita el string exacto para ingresar el domicilio en el campo de texto. | ✅ precond_sql recupera domicilio real |
> | ISS-07 | UI-7 | **Duplicado** | UI-7 y UI-6-E son el mismo caso (bloqueo de 3ra toma via Nuevo Contrato). UI-7 dice "también vía guardaContrato()" pero no tiene sub-caso para edición de contrato existente. | ✅ Sub-caso B añadido: bloqueo vía edición de contrato existente |
> | ISS-08 | UI-9 | **Revert incompleto** | El `revert_sql` describe una acción UI ("Editar contrato 500 → tipo=Normal → Guardar") pero no incluye SQL directo. Si la UI falla en el revert, queda contrato 500 en tipo Comercial, rompiendo UI-10 y UI-11. | ✅ revert_sql SQL directo añadido como fallback |
> | ISS-09 | UI-10 | **Contaminación** | UI-9, UI-10 y UI-11 usan el mismo contrato `500`. Si UI-9 no revirtió el tipo a Normal, UI-10 opera sobre contrato Comercial y el monto esperado de la ANUALIDAD cambia. El precond de UI-10 no verifica el tipo de toma. | ✅ precond_sql verifica `tipo=0` |
> | ISS-10 | UI-11 | **Selector faltante** | El `accion` dice "localizar botón de cambio rápido de conexión agua" sin dar selector CSS ni ID del botón. La herramienta no puede encontrarlo. | ✅ Selector `button[data-servicio="agua"]` o AJAX endpoint documentado |
> | ISS-11 | UI-11 | **Revert UI** | El `revert_sql` es una acción UI ("Clic en botón de reconexión"). Si la herramienta no puede hacer clic, no hay SQL fallback. | ✅ revert_sql SQL directo añadido |
> | ISS-12 | UI-13 | **Revert incorrecto** | El `revert_sql` usa `ORDER BY id DESC LIMIT 1` sin folio como filtro. Si se cobró más de un cargo, solo revierte 1 y quedan los otros en estado=1 contaminando UI-14 y posteriores. | ✅ revert_sql usa folio capturado |
> | ISS-13 | UI-14 | **Flujo ambiguo** | El paso 1 dice "si ya está pagada, inyectar un cargo pendiente nuevo" — instrucción manual imposible para la herramienta. El precond_sql ya cubre esto con IMPEDIDO, pero el cuerpo del caso no está alineado. | ✅ Paso 1 simplificado — solo IMPEDIDO si precond falla |
> | ISS-14 | UI-16 | **Revert SQL peligroso** | El `revert_sql` usa subconsulta anidada con `SELECT id FROM ligacargos` en el WHERE de un UPDATE — MariaDB no permite actualizar y leer la misma tabla en subconsulta. Error de SQL garantizado. | ✅ revert_sql reescrito con DELETE seguro |
> | ISS-15 | UI-17 | **Flujo cancelación** | El `accion` de sub-caso A dice "clicar link `#botoncancelar` de nuevo o confirmar según flujo JS" — ambigüedad total. La herramienta necesita el flujo exacto: qué selector activa la cancelación. | ✅ Flujo de cancelación documentado paso a paso |
> | ISS-16 | UI-18 | **precond incorrecto** | `SELECT ... FROM vw_ligacargos_pendientes WHERE estado=-1` es incorrecto: `vw_ligacargos_pendientes` solo retorna `estado=0`. Los cancelados están en `vw_ligacargos_all`. | ✅ precond_sql corregido a `vw_ligacargos_all` |
> | ISS-17 | UI-19 | **Sin aislamiento** | Modificar la tarifa de "ANUALIDAD DEL AGUA 2026" afecta todos los contratos reales con ese cargo pendiente. Si el revert falla (error de red, timeout), todos los contratos quedan con monto=601. Sin dato QA alternativo. | ✅ Cargo de prueba aislado añadido como alternativa |
> | ISS-18 | UI-21 | **Selector faltante** | El `accion` dice "buscar por apellido un usuario diferente" sin especificar selector del campo de búsqueda de propietario. La herramienta no sabe cómo disparar la búsqueda dentro del panel de cambio de propietario. | ✅ Selector `#busqueda_usuario_cambio` documentado |
> | ISS-19 | UI-23 | **Dependencia implícita** | `precond_sql` dice "ninguno — depende de UI-17" pero no hay guard: si UI-17 no se ejecutó, el assert siempre falla (no hay registro de cancelación). | ✅ precond_sql con guard explícito |
> | ISS-20 | UI-24 | **Dependencia implícita** | Depende de UI-17 y UI-18 pero no tiene precond_sql para verificar que existen los registros previos. Si no existen, el `accion` navega al historial y no hay nada que verificar — fallo silencioso. | ✅ precond_sql con guard |
> | ISS-21 | UI-25 | **URL faltante** | La URL de `reporte_morosos.php` no existe como ruta absoluta confirmada — solo dice "equivalente". Si la ruta no existe en Host C, la herramienta obtiene 404 y no puede continuar. | ✅ URL canónica verificada |
> | ISS-22 | UI-27 | **Selector faltante** | Mismo issue que UI-21: el panel "Cambio de propietario" no tiene selector documentado para la búsqueda de usuario. | ✅ Idéntico a ISS-18, mismo fix |
> | ISS-23 | UI-28 | **Estado inicial incierto** | Sub-caso A asume que el filtro de estado 1 está seleccionado por defecto. No hay reset de la pantalla de búsqueda antes del sub-caso. El estado previo de los checkboxes contamina los resultados. | ✅ accion incluye reset explícito de filtros |
> | ISS-24 | UI-30 | **Sin URL de login** | La mini-webapp `/asamblea/` dice `login: skip` pero no documenta si tiene alguna validación de sesión. Si tiene, la herramienta queda bloqueada en una pantalla de login desconocida. | ✅ Nota de autenticación clarificada |
> | ISS-25 | UI-32 | **Paso manual imposible** | La copia del archivo `cone.txt` como `lastassambly` es una instrucción de shell — la herramienta de browser no puede ejecutarla. Necesita un endpoint HTTP o un accion alternativo. | ✅ Alternativa: endpoint de upload documentado o precond_manual explícito |
> | ISS-26 | UI-33 | **Datos fantasma** | `assert_sql` menciona contrato `'10','100','1001'` pero los datos del `cone.txt` de referencia nunca se especifican. La herramienta no sabe qué contratos estarán en el archivo procesado en UI-32. | ✅ assert_sql vinculado al resultado de UI-32, no a lista hardcodeada |
> | ISS-27 | RC-1 | **Selector frágil** | `accion` dice anotar `h3:has-text("TOTAL:") b` — si el reporte usa otro formato de encabezado, el selector falla. Además no dice cómo seleccionar el período del reporte antes de generarlo. | ✅ Flujo de selección de período documentado |
> | ISS-28 | RC-2 | **assert_ui vago** | "Total cartera visible en pie de página" sin selector CSS. La herramienta no puede extraer el número para compararlo. | ✅ assert_sql complementario que no depende de UI parsing |
> | ISS-29 | RC-3 | **Dependencia encadenada** | Depende de UI-26 completado, pero no hay guard si UI-26 fue revertido con `DELETE`. | ✅ precond_sql verifica existencia del egreso |
> | ISS-30 | RC-5 | **Dependencia encadenada** | Depende de "cualquier operación reciente" — no hay precond concreto. Si la sesión de prueba empieza por RC-5, el assert falla. | ✅ precond_sql con operación propia autónoma |

> **Comandos Canónicos de Sincronización (BE-1)**:
> | Comando | Propósito |
> | :--- | :--- |
> | `Full-Pipeline-Sync.sh` | Producción: B→A→C (datos vienen de Host B) |
> | `Full-Pipeline-Sync.sh --skip-b` | Offline: salta volcado de B, usa A tal como está → C |
> | `Full-Pipeline-Sync.sh --with-qa` | Testing: B→A→C + inyecta datos sintéticos en A→C |
> | `Full-Pipeline-Sync.sh --with-qa --skip-b` | Testing offline: sin conectar a Host B |

---

## 📑 ÍNDICE DE CASOS DE PRUEBA

### [SECCIÓN 1: PRUEBAS DE INTERFAZ DE USUARIO (UI)](#seccion-1)

#### Grupo A — Gestión de Contratos y Transiciones de Estado
- **1.1 UI-1**: [Amnistía Histórica al Reactivar desde Susp. Temporal (Regla C06)](#ui-1)
- **1.2 UI-2**: [Sin Amnistía al Reactivar desde Susp. Administrativa (Regla C06)](#ui-2)
- **1.3 UI-3**: [Prevención de Saltos de Estado directos 2↔3 (Regla C07)](#ui-3)
- **1.4 UI-4**: [Bloqueos Estrictos en Suspensión Definitiva (Reglas C02/F02)](#ui-4)
- **1.5 UI-5**: [Transiciones de Estado — Cobertura Completa (7 flujos)](#ui-5)
- **1.6 UI-6**: [Creación de Nuevo Contrato — Cobertura Completa (6 sub-casos: A=base, B=sin drenaje, C=comercial, D=2 tomas, E=bloqueo 3ra toma, F=ID duplicado)](#ui-6)

#### Grupo B — Tomas Físicas y Paridad Financiera
- **1.7 UI-7**: [Restricción de 2 Tomas por Domicilio (Regla C08)](#ui-7)
- **1.8 UI-8**: [Bloqueo de Cargos de Drenaje Sin Infraestructura (Regla F08)](#ui-8)
- **1.9 UI-9**: [Recálculo Dinámico de Tarifa al Cambiar Tipo Normal↔Comercial](#ui-9)
- **1.10 UI-10**: [Paridad Físico-Financiera al Desconectar Infraestructura (Motor C04)](#ui-10)
- **1.11 UI-11**: [Cambio Rápido de Conexión y Paridad](#ui-11)
- **1.12 UI-12**: [Contratos Multi-toma en Reporte de Tomas](#ui-12)

#### Grupo C — Pagos, Recibos y Folios
- **1.13 UI-13**: [Flujo Completo de Cobro — Folio Atómico y Recibo](#ui-13)
- **1.14 UI-14**: [Sincronización de Asamblea al Pagar (sp_sinc_asamblea_puntual)](#ui-14)
- **1.15 UI-15**: [Prevención de Cargos Duplicados por Refresh (Refresh-bomb)](#ui-15)

#### Grupo D — Cargos, Tarifas y Cancelaciones
- **1.16 UI-16**: [Agregar Cargos — Normal y Mensualidades](#ui-16)
- **1.17 UI-17**: [Cancelación de Cargos con Nota de Auditoría (mín. 20 chars)](#ui-17)
- **1.18 UI-18**: [Restauración de Cargos Cancelados (Activa + Histórico)](#ui-18)
- **1.19 UI-19**: [Modificación de Tarifa en Catálogo con Propagación Masiva](#ui-19)
- **1.20 UI-20**: [Cruce de Años en Historial de Cargos (Activa + Histórico)](#ui-20)

#### Grupo E — Usuarios, Auditoría y Operaciones Generales
- **1.21 UI-21**: [Cambio de Propietario con Registro de Auditoría](#ui-21)
- **1.22 UI-22**: [Acción 'Hacer Anotación' y Soft-delete](#ui-22)
- **1.23 UI-23**: [Auditoría y Trazabilidad de Operador en Cancelaciones](#ui-23)
- **1.24 UI-24**: [Trazabilidad Visual en Historial (Colores y Segundos)](#ui-24)
- **1.25 UI-25**: [Visibilidad de Usuarios No Localizados (Reglas U01/U03)](#ui-25)
- **1.26 UI-26**: [Categorización de Egresos por ID](#ui-26)
- **1.27 UI-27**: [Fusión Visual de Usuarios — Reasignación de Contrato](#ui-27)
- **1.28 UI-28**: [Búsqueda de Contratos — Filtros Combinados](#ui-28)
- **1.29 UI-29**: [Disposición Visual de Ficha (UX — Layout y Campos)](#ui-29)

#### Grupo F — Módulo Asistencias (Mini-webapp Asamblea ↔ Agua)
- **1.30 UI-30**: [Registro de Asistencia en Mini-webapp Asamblea](#ui-30)
- **1.31 UI-31**: [Descarga de cone.txt / TXT con Firma MD5](#ui-31)
- **1.32 UI-32**: [Procesamiento de Asistencias en Agua (Botón Verde "Asistencias")](#ui-32)
- **1.33 UI-33**: [Verificación de Cargos Cancelados Post-procesamiento](#ui-33)

### [SECCIÓN 2: REPORTES Y CONGRUENCIA FINANCIERA](#seccion-2)
- **2.1 RC-1**: [Empate Detalle vs Resumen de Caja al Centavo](#rc-1)
- **2.2 RC-2**: [Exclusiones Canónicas en Cartera Vencida (categorías 6, 16/17, 19–22)](#rc-2)
- **2.3 RC-3**: [Sincronización de Egresos por ID de Categoría](#rc-3)
- **2.4 RC-4**: [Segmentación de Cartera — Sub-total Deuda Incobrable](#rc-4)
- **2.5 RC-5**: [Trazabilidad de Segundos en Auditoría (HH:MM:SS)](#rc-5)

### [SECCIÓN 3: PRUEBAS DE BACKEND (EJECUCIÓN POR IA)](#seccion-3)

#### Grupo I — Integridad de Schema y Vistas
- **3.1 BE-1**: [Health Check Post-Pipeline (12_validate_pipeline.sql)](#be-1)
- **3.2 BE-2**: [Integridad de Vista Maestra — Empate de Conteos](#be-2)
- **3.3 BE-3**: [Discriminador Canónico de Recargos Moratorios en Vista](#be-3)

#### Grupo II — Saneamiento y Limpieza de Datos
- **3.4 BE-4**: [Limpieza de Deuda en SDF — Depuración Total (Regla C05)](#be-4)
- **3.5 BE-5**: [Reparación de Folios Mixtos (Estado Inconsistente)](#be-5)
- **3.6 BE-6**: [Saneamiento de Usuarios Duplicados — Fusión Automática](#be-6)
- **3.7 BE-7**: [Exención de Recargos en Primer Año de Contrato (Regla F07)](#be-7)
- **3.8 BE-8**: [Normalización de Folios NULL → 0 (Saneamiento D-folio)](#be-8)
- **3.9 BE-9**: [Conservación de Categorías V2 (IDs 19–22) Post-Sync](#be-9)

#### Grupo III — Sincronización de Asambleas
- **3.10 BE-10**: [Sincronización Bulk de Multas de Asamblea (sp_sinc_asamblea_bulk)](#be-10)

#### Grupo IV — Validación Financiera
- **3.11 BE-11**: [Empate Financiero Detalle vs Resumen por Folio](#be-11)
- **3.12 BE-12**: [Consistencia de Exclusiones de Cartera (Regla R02)](#be-12)

---

<a name="seccion-1"></a>
## 🖥️ SECCIÓN 1: PRUEBAS DE INTERFAZ DE USUARIO (UI)

---

### GRUPO A — Gestión de Contratos y Transiciones de Estado

---

<a name="ui-1"></a>
### 1.1 UI-1: Amnistía Histórica al Reactivar desde Susp. Temporal (Regla C06)

**Qué valida**: Que `cambiaestado()` ejecute `_amnistiaRecargosHistoricos()` al transitar `2→1`, cancelando recargos moratorios (cat 16/17) de años `< 2026`. Capital (cat 2/3) y recargos del año actual permanecen.

**Precondición crítica**: Requiere un contrato en Estado 2 **con recargos cat 16/17 pendientes (estado=0) de años < 2026** en `ligacargos_historico`.

**Dato Real**: Contrato `1006` (Estado 2 ✅). ⚠️ Verificado en Host C: **no tiene recargos cat 16/17 pendientes en histórico** — todos ya fueron cancelados (estado=-1) en syncs anteriores. El dato real **no satisface la precondición** para este caso.

**Dato QA** (`--with-qa`, **preferido**): Contrato `9002` (Estado 2, con RECARGO 2024 cat 16 y RECARGO 2025 cat 17 inyectados en `ligacargos_historico`, más ANUALIDAD AGUA 2026 cat 2 en activa que debe conservarse).

**Pasos** (usar contrato `9002` con `--with-qa`):
1. Navegar a `BASE_URL` → buscar contrato `9002` → abrir ficha.
2. Anotar cuántos recargos (cat 16/17 de años < 2026) hay en la tabla de adeudos pendientes (esperado: 2 filas).
3. Clic "Modificar información" → cambiar Estado a `1 (Activo)` → escribir motivo de ≥20 caracteres → clic "Guardar".

**Resultado Esperado**:
- Los recargos de años anteriores (cat 16/17, anio < 2026) desaparecen de la tabla de adeudos.
- La ANUALIDAD AGUA 2026 (cat 2) permanece en `estado=0`.
- En BD: `SELECT descripcion, antes, despues FROM cambios WHERE numcontrato='9002' ORDER BY id DESC LIMIT 3` → debe existir registro `descripcion='Amnistia de Recargos en Reactivacion (C06)'`.

> **[AUTO]**
> `url`: `BASE_URL/` | `login`: `#usuariologin=nancy` → `#passwordlogin=260180` → `button[name=opc]` submit | `datos_qa`: `si`
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='9002'` → `estado=2`. Luego: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='9002' AND categoria IN (16,17) AND estado=0 AND anio < 2026` → debe retornar `2`. Si 0, marcar IMPEDIDO — el script QA no inyectó correctamente.
> `accion`: Buscar contrato `9002` → clic `a:has-text("Modificar información")` → `select[name=estado]` = `1` → `textarea[name=texto]` = `"Reactivacion de contrato prueba QA - amnistia C06"` → clic `input[value="Cambiar estado"]`
> `assert_ui`: Tabla de adeudos no contiene filas RECARGO de años < 2026; ANUALIDAD AGUA 2026 sigue visible
> `assert_sql`:
> - Recargos históricos cancelados: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='9002' AND categoria IN (16,17) AND estado=0 AND anio < 2026` → `0`
> - Recargos en activa también cancelados (por si acaso existe alguno ahí): `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9002' AND categoria IN (16,17) AND estado=0 AND anio < 2026` → `0`
> - ANUALIDAD AGUA 2026 conservada (no cancelada por amnistía): `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9002' AND categoria=2 AND anio=2026 AND estado=0` → `≥ 1`
> - Estado del contrato actualizado: `SELECT estado FROM contrato WHERE numcontrato='9002'` → `1`
> `revert_sql`: `UPDATE contrato SET estado=2 WHERE numcontrato='9002'; UPDATE ligacargos_historico SET estado=0 WHERE numcontrato='9002' AND categoria IN (16,17) AND anio < 2026;`

---

<a name="ui-2"></a>
### 1.2 UI-2: Sin Amnistía al Reactivar desde Susp. Administrativa (Regla C06)

**Qué valida**: Que transitar `3→1` **NO** aplique amnistía. El adeudo íntegro (capital + recargos históricos) se conserva. El registro en `cambios` debe indicar explícitamente la ausencia de amnistía.

**Dato Real**: Contrato `405` (Estado 3, usuario 392). ~~Contrato `310` — verificado en Host C: está en Estado 1, no sirve como dato real para este caso.~~

**Precondición**: El contrato debe estar en Estado `3`. Verificar con `precond_sql` antes de ejecutar.

> **⚠️ Nota de implementación (3→1 y Motor de Paridad C04)**: Al reactivar desde Estado 3, `cambiaestado()` SÍ llama a `_sincronizaParidadFinanciera()` (línea 319 de `contratos.php`) — igual que en 2→1. Esto significa que si el contrato `405` tiene tomas con `estado_agua=1` y `estado_drenaje=1`, la paridad restaurará o confirmará los cargos anuales (no los cancela). **No confundir con amnistía**: la paridad actúa sobre el estado de la toma, no sobre los recargos moratorios. La amnistía C06 NO se ejecuta en 3→1.

**Pasos**:
1. Ficha del contrato `405` → anotar total de adeudos pendientes (número de filas y suma).
2. Clic "Modificar información" → cambiar Estado a `1 (Activo)` → motivo ≥20 chars → Guardar.
3. Verificar que recargos históricos y capital NO fueron cancelados.

**Resultado Esperado**:
- Los recargos moratorios (cat 16/17) siguen en `estado=0` — no se cancelaron.
- El capital (cat 2/3) también conserva `estado=0`.
- BD `cambios`: el campo `despues` del registro de cambio de estado contiene `'Sin amnistía C06: adeudo íntegro conservado (viene de Suspensión Administrativa).'` y **no** hay registro de tipo `'Amnistia de Recargos en Reactivacion (C06)'`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='405'` → debe retornar `3`. Si retorna `1` (viene de limpieza de UI-3-B, UI-5-F u otro caso anterior): ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='405'` y reintentar. Si retorna `4` → marcar caso como **IMPEDIDO** (dato real destruido, no recuperable).
> `accion`: Buscar contrato `405` → clic `a:has-text("Modificar información")` → select Estado=`1` → textarea motivo=`"Reactivacion desde susp. administrativa prueba QA"` → clic `input[value="Cambiar estado"]`
> `assert_ui`: Tabla de adeudos muestra las mismas filas y montos que antes del cambio de estado
> `assert_sql`:
> - Sin amnistía aplicada: `SELECT COUNT(*) FROM cambios WHERE numcontrato='405' AND descripcion='Amnistia de Recargos en Reactivacion (C06)' ORDER BY id DESC LIMIT 1` → `0`
> - Recargos moratorios aún pendientes: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0` → igual o mayor que antes de ejecutar (no disminuyó)
> - Estado actualizado: `SELECT estado FROM contrato WHERE numcontrato='405'` → `1`
> `revert_sql`: `UPDATE contrato SET estado=3 WHERE numcontrato='405'`

---

<a name="ui-3"></a>
### 1.3 UI-3: Prevención de Saltos de Estado 2↔3 (Regla C07)

**Qué valida**: Que `cambiaestado()` (`contratos.php:275`) bloquee saltos directos entre tipos de suspensión sin pasar por Estado 1.

**Dato Real**: Contrato `1006` (Estado 2) para sub-caso A / Contrato `405` (Estado 3) para sub-caso B. ~~Contrato `310` descartado — verificado en Host C: está en Estado 1, no en Estado 3.~~

**Pasos** (sub-caso A — intento 2→3):
1. Ficha contrato `1006` (Estado 2) → "Modificar información" → seleccionar Estado `3` → Guardar.
2. **Verificar**: Mensaje de error `'No se permite saltar entre diferentes tipos de suspensión directamente. El contrato debe ser Regularizado a Activo primero...'`
3. Confirmar en BD que `estado` sigue siendo `2`.

**Pasos** (sub-caso B — intento 3→2):
1. Ficha contrato `405` (Estado 3) → "Modificar información" → seleccionar Estado `2` → Guardar.
2. **Verificar**: Mismo mensaje de error. Estado sigue siendo `3` en BD.

**Resultado Esperado**: Ambos intentos retornan error de servidor. El estado no cambia en BD en ningún sub-caso.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('1006','405')` → esperado `1006=2`, `405=3`. Si difieren: si `1006≠2` → ejecutar `UPDATE contrato SET estado=2 WHERE numcontrato='1006'`; si `405=1` (viene de limpieza de UI-2, UI-5-F u otro caso anterior) → ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='405'`; si `405=4` → sub-caso B: marcar **IMPEDIDO** (dato real destruido, no recuperable).
> `accion` (sub-caso A): Buscar contrato `1006` → clic `a:has-text("Modificar información")` → select Estado=`3` → `textarea[name=texto]` = `"Prueba bloqueo salto suspension directa C07"` → clic `input[value="Cambiar estado"]`
> `accion` (sub-caso B): Buscar contrato `405` → clic `a:has-text("Modificar información")` → select Estado=`2` → `textarea[name=texto]` = `"Prueba bloqueo salto suspension directa C07"` → clic `input[value="Cambiar estado"]`
> `assert_ui`: Mensaje de error visible que incluye `"No se permite saltar entre diferentes tipos de suspensión"`
> `assert_sql`: `SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('1006','405')` → `1006=2`, `405=3` (sin cambio)
> `revert_sql`: *(ninguno — estados no deben cambiar)*

---

<a name="ui-4"></a>
### 1.4 UI-4: Bloqueos Estrictos en Suspensión Definitiva (Reglas C02/F02)

**Qué valida**: Que la ficha de un contrato en Estado `4` sea inmutable: sin edición de datos, sin agregar cargos, sin cambiar estado.

**Dato Real**: Contrato `1028` (Estado 4, usuario 722).
**Dato QA** (`--with-qa`): Contrato `9003`.

**Pasos**:
1. Ficha del contrato `1028` → verificar que no aparece botón "Modificar información".
2. Intentar agregar un cargo (si la UI lo permitiera) o forzar vía llamada AJAX a `ruteador.php?opc=contrato&accion=guardaContrato`.
3. Intentar cambiar de estado.

**Resultado Esperado**:
- UI: botones de edición y cobro ocultos/deshabilitados para Estado 4.
- Backend: `guardaContrato()` retorna `'Error: Este contrato se encuentra en SUSPENSIÓN DEFINITIVA...'`
- Backend: `aplicacargos()` retorna alerta de SDF.
- Backend: `cambiaestado()` retorna `'No es posible cambiar el estado...'`

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='1028'` → `estado=4`
> `accion`: Buscar contrato `1028` → verificar ausencia del enlace `a:has-text("Modificar información")` en la ficha
> `assert_ui`: Enlace "Modificar información" no visible; sección de cobro (botones `#botonpagar`, `#botoncancelar`) ausente o deshabilitada
> `assert_sql`: `SELECT estado FROM contrato WHERE numcontrato='1028'` → `4` (sin cambio)
> `revert_sql`: *(ninguno — solo lectura)*

---

<a name="ui-5"></a>
### 1.5 UI-5: Transiciones de Estado — Cobertura Completa (7 Flujos)

**Qué valida**: Los 7 flujos válidos del ciclo de vida del contrato con sus efectos financieros correspondientes.

> **Precaución sub-casos C, E, G**: Son operaciones destructivas (depuración total). Revertir via BD después o usar datos QA.

| Sub-caso | Transición | Contrato de Prueba | Estado Verificado Host C | Efecto Esperado |
|:---:|---|---|---|---|
| **A** | `1→2` Susp. Temporal | `200` | Estado 1 ✅ | Solo permitido en mes `config_sistema.susptemp_mes_permitido` (dic). **`_sincronizaParidadFinanciera()` NO se llama** en esta transición — la anualidad permanece como está en BD. Solo se registra nota "Facturación congelada." en `cambios`. |
| **B** | `1→3` Susp. Administrativa | `500` | Estado 1 ✅ | **`_sincronizaParidadFinanciera()` NO se llama** en esta transición. Conserva deuda íntegra sin modificación. Nota: "Suspensión sancionatoria. Adeudo íntegro conservado." |
| **C** | `1→4` Susp. Definitiva | Usar QA `9001` | QA — requiere `--with-qa` | Depuración total (C05): `_sincronizaParidadFinanciera()` cancela todos los cargos pendientes → `estado=-1`. Además: `contrato.agua=0`, `contrato.drenaje=0`, `contrato_toma.estado_agua=0`, `contrato_toma.estado_drenaje=0`. |
| **D** | `2→1` Reactivar | `1006` | Estado 2 ✅ | Orden de ejecución: ① `_sincronizaParidadFinanciera()` restaura/confirma cargos anuales según tomas activas; ② `_amnistiaRecargosHistoricos()` cancela cat 16/17 de anio < año actual. Nota indica amnistía C06. |
| **E** | `2→4` Baja definitiva | Usar QA `9002` | QA — requiere `--with-qa` | Depuración total (C05): todos los cargos pendientes → `estado=-1`. `contrato.agua=0`, `contrato.drenaje=0`, `contrato_toma.estado_agua=0`, `contrato_toma.estado_drenaje=0`. |
| **F** | `3→1` Reactivar | `405` | Estado 3 ✅ | Orden: ① `_sincronizaParidadFinanciera()` restaura/confirma cargos anuales según tomas activas; ② **`_amnistiaRecargosHistoricos()` NO se ejecuta** — adeudo íntegro conservado. Nota indica ausencia de amnistía. ~~`310` descartado — está en Estado 1 en Host C.~~ |
| **G** | `3→4` Baja definitiva | Usar QA `9002` o `405` post-revert | Verificar estado antes | Depuración total (C05). Preferir dato QA para evitar destruir datos reales. |

**Verificaciones transversales** (para todos los sub-casos):
- Intentos `2↔3` bloqueados (ver UI-3).
- Intento de modificar Estado 4 bloqueado (ver UI-4).
- Todos los cambios generan registro en `cambios` con snapshot financiero (`'Adeudos: N | Deuda: $X.XX'`).
- El motivo del cambio debe ser ≥20 caracteres; sin eso el backend rechaza la operación.
- ⚠️ **Paridad y amnistía solo se ejecutan en transiciones hacia Estado 1 o Estado 4.** Transiciones a Estado 2 o 3 NO modifican cargos en `ligacargos`.
- ⚠️ **Secuencia crítica**: ejecutar A y B en ese orden, revertir A antes de B si usan el mismo contrato. Usar contratos distintos para sub-casos con mismo estado origen.

**Detalle por sub-caso — qué verificar en BD:**

**Sub-caso A (1→2, contrato `200`)**:
> `precond_sql`: `SELECT MONTH(NOW())` → si resultado ≠ `12` (diciembre), marcar sub-caso A como **IMPEDIDO** (bloqueo esperado por regla de negocio, no es fallo de código). No continuar con `accion`. Si es diciembre: `SELECT estado FROM contrato WHERE numcontrato='200'` → `1`. Anotar cargos pendientes: `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='200' AND estado=0`.
> `assert_sql`: `SELECT estado FROM contrato WHERE numcontrato='200'` → `2`. Cargos sin cambio: `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='200' AND estado=0` → mismo valor que precond (paridad NO corrió).
> `revert_sql`: `UPDATE contrato SET estado=1 WHERE numcontrato='200'`

**Sub-caso B (1→3, contrato `500`)**:
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='500'` → `1`.
> `assert_sql`: `SELECT estado FROM contrato WHERE numcontrato='500'` → `3`. Cargos sin cambio: `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='500'` → igual que antes.
> `revert_sql`: `UPDATE contrato SET estado=1 WHERE numcontrato='500'`

**Sub-caso C (1→4, QA contrato `9001`)**:
> `precond_sql`: `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='9001'` → `estado=1`. `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='9001'` → ≥ 1 cargo pendiente.
> `assert_sql`:
> - `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='9001'` → `estado=4, agua=0, drenaje=0`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='9001' AND (estado_agua != 0 OR estado_drenaje != 0)` → `0` (todas las tomas desconectadas)
> - `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='9001'` → `0` (todos cancelados)
> - `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9001' AND estado=-1` → ≥ 1 (registros cancelados en activa)
> *(No revertir — dato QA destructivo. Re-inyectar con `--with-qa` para siguiente run.)*

**Sub-caso D (2→1, contrato `1006`)**:
> *Nota: Para probar amnistía completa usar UI-1 con QA contrato `9002`. Sub-caso D con `1006` valida el flujo general: paridad + intento de amnistía (puede resultar en 0 recargos cancelados si `1006` no tiene recargos históricos pendientes).*
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='1006'` → si resultado ≠ `2` (p.ej. `1` porque UI-1 o sub-caso D anterior ya lo reactivó), marcar sub-caso D como **IMPEDIDO**. Ejecutar `revert_sql` de UI-1 antes de reintentar: `UPDATE contrato SET estado=2 WHERE numcontrato='1006'`. Si es `2`: Anotar: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='1006' AND categoria IN (16,17) AND estado=0`.
> `assert_sql`: `SELECT estado FROM contrato WHERE numcontrato='1006'` → `1`. `SELECT descripcion FROM cambios WHERE numcontrato='1006' ORDER BY id DESC LIMIT 3` → debe existir registro con `descripcion` referenciando paridad (`'Calibracion automatica de Deudas'` o `'Amnistia de Recargos en Reactivacion (C06)'` si había recargos).
> `revert_sql`: `UPDATE contrato SET estado=2 WHERE numcontrato='1006'`

**Sub-caso E (2→4, QA contrato `9002`)**:
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='9002'` → `2`.
> `assert_sql`:
> - `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='9002'` → `estado=4, agua=0, drenaje=0`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='9002' AND (estado_agua != 0 OR estado_drenaje != 0)` → `0`
> - `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='9002'` → `0`
> *(No revertir — dato QA destructivo.)*

**Sub-caso F (3→1, contrato `405`)**:
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='405'` → debe retornar `3`. Si retorna `1` (viene de limpieza de UI-2, UI-3-B u otro caso anterior): ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='405'` y reintentar. Si retorna `4` → marcar sub-caso F como **IMPEDIDO** (dato real destruido, no recuperable). Anotar recargos pendientes: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0`.
> `assert_sql`:
> - `SELECT estado FROM contrato WHERE numcontrato='405'` → `1`
> - Sin amnistía: `SELECT COUNT(*) FROM cambios WHERE numcontrato='405' AND descripcion='Amnistia de Recargos en Reactivacion (C06)' ORDER BY id DESC LIMIT 1` → `0`
> - Recargos conservados: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0` → igual o mayor que precond
> `revert_sql`: `UPDATE contrato SET estado=3 WHERE numcontrato='405'`

**Sub-caso G (3→4, QA contrato `9002` — preferido — o `405` como fallback)**:
> `precond_sql`: Resolver contrato a usar:
> 1. `SELECT estado FROM contrato WHERE numcontrato='9002'` → si resultado = `3`, usar `9002` (QA, preferido).
> 2. Si resultado = `1` o `2` (viene de UI-1 u otro caso que lo reactivó o dejó en estado inicial): ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='9002'` → usar `9002`.
> 3. Si resultado = `4` (destruido en UI-5-E): pasar a verificar `405`.
> 4. `SELECT estado FROM contrato WHERE numcontrato='405'` → si = `3`, usar `405` (dato real — operación irreversible, confirmar antes).
> 5. Si `405=1` (viene de limpieza de UI-2, UI-3-B o UI-5-F): ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='405'` → usar `405`.
> 6. Si `405=4` → marcar sub-caso G como **IMPEDIDO** (ambos contratos destruidos, no recuperables).
> `assert_sql` (reemplazar `<cto>` con el contrato resuelto en precond):
> - `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='<cto>'` → `estado=4, agua=0, drenaje=0`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='<cto>' AND (estado_agua != 0 OR estado_drenaje != 0)` → `0`
> - `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='<cto>'` → `0`
> *(Si se usó `405` sobre dato real, operación irreversible — documentar en reporte.)*

> **[AUTO] — precond global**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no` (sub-casos A,B,D,F) / `si` (sub-casos C,E,G)
> `precond_sql` (verificar estados antes de iniciar): `SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('200','500','1006','405')` → esperado: `200=1`, `500=1`, `1006=2`, `405=3`. Si alguno difiere y el estado es recuperable: `UPDATE contrato SET estado=1 WHERE numcontrato IN ('200','500')` si están en ≠1; `UPDATE contrato SET estado=2 WHERE numcontrato='1006'` si ≠2; `UPDATE contrato SET estado=3 WHERE numcontrato='405'` si = 1 (viene de limpieza anterior). Si `405=4` → sub-casos F y G: marcar **IMPEDIDO** (dato real destruido). Ver instrucciones de restore detalladas en cada sub-caso.
> `accion` (patrón): Para cada sub-caso: buscar contrato → clic `a:has-text("Modificar información")` → seleccionar estado destino → motivo=`"Cambio de estado prueba cobertura QA - [Subcaso X]"` (≥20 chars) → clic `input[value="Cambiar estado"]`
> `assert_ui`: Mensaje de confirmación visible; ficha recarga con el nuevo estado en el badge
> Ver assert_sql detallado por sub-caso arriba.

---

<a name="ui-6"></a>
### 1.6 UI-6: Creación de Nuevo Contrato — Cobertura Completa (6 sub-casos)

**Qué valida**: El ciclo completo de `guardaNuevoContrato()` (`contratos.php:817`): validaciones previas, creación de tomas, sincronización de campos legacy, paridad inicial, exención F07, bloqueos de infraestructura y restricción de límite de tomas.

**Reglas cubiertas**: M2-R01 (ID autoincremento), M2-R02 (F07 exento), M2-R03 (límite tomas), M2-R04 (tomas con estado inicial), M2-R05 (campos legacy), M2-R06 (paridad inicial), M2-R07 (auditoría), M2-R08 (tarifas referencia), M2-R09 (tipo comercial en Toma 2), M2-R10 (siempre Estado 1), M2-R11 (fecha NOW()).

> **⚠️ Nota F07 — `exento_recargo_primer_anio`**: Este flag NO cancela anualidades. Actúa **solo en `calcula_recargos()`**: si el contrato se creó en el año actual y `exento=1`, no se generan recargos moratorios (cat 16/17) en ese año. Las anualidades las genera `_sincronizaParidadFinanciera()` independientemente del flag.

> **⚠️ Nota sobre anualidades faltantes**: Si `ANUALIDAD DEL AGUA 2026` o `ANUALIDAD DEL DRENAJE 2026` no existen en el catálogo con `estado=1`, la UI mostrará advertencia `faltan_cargos` y `_sincronizaParidadFinanciera()` no insertará cargos. Verificar con precond antes de ejecutar.

**Usuario base para sub-casos**: `1` (ABAD CRUZ BLANCO — verificado Host C: sin contratos activos).

---

**Sub-caso A — 1 Toma Normal: agua + drenaje (caso base)**

**Qué valida**: Creación exitosa con 1 toma Normal, agua y drenaje. Cargos automáticos generados. Exención F07.

**Pasos**:
1. Verificar que `ANUALIDAD DEL AGUA 2026` y `ANUALIDAD DEL DRENAJE 2026` existen en catálogo.
2. Ir a "Nuevo Contrato" → en el campo de usuario escribir `"ABAD"` o `"ABAD CRUZ BLANCO"` → presionar **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** de la lista → clic en label **"Nueva dirección..."** → ingresar domicilio=`"CALLE PRUEBA AUTO 6A"` → tipo Normal → Toma 1: agua=sí, drenaje=sí → Clic "Guardar" → **Confirmar popup** (Aceptar/Ok).
3. Anotar el número de contrato creado (`nuevo_id`).
4. Abrir ficha del nuevo contrato.

**Resultado Esperado**:
- Contrato creado en BD con `estado=1`, `agua=1`, `drenaje=1`, `tipo=0` (Normal), `exento_recargo_primer_anio=1`.
- `contrato_toma`: 1 fila con `num_toma=1`, `tipo=0`, `tiene_agua=1`, `tiene_drenaje=1`, `estado_agua=1`, `estado_drenaje=1`.
- `ligacargos`: 2 registros pendientes `"ANUALIDAD DEL AGUA 2026"` (cat 2, estado=0) y `"ANUALIDAD DEL DRENAJE 2026"` (cat 3, estado=0). Monto según tarifa Normal del catálogo.
- `cambios`: registro `'Registro de Nuevo Contrato'` con `antes='NUEVO'`, `despues='Usuario: 1 | Domicilio: CALLE PRUEBA AUTO 6A'`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM cargos WHERE nombre IN ('ANUALIDAD DEL AGUA 2026','ANUALIDAD DEL DRENAJE 2026') AND estado=1` → `2`. Si retorna < 2, marcar IMPEDIDO. También: `SELECT COUNT(*) FROM contrato WHERE numusuario=1` → `0`.
> `accion`: Menú "Nuevo Contrato" → en campo usuario escribir `"ABAD CRUZ BLANCO"` → presionar **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** de la lista → clic en label **"Nueva dirección..."** → ingresar domicilio=`"CALLE PRUEBA AUTO 6A"` → tipo=`Normal` → Toma 1: marcar agua y drenaje → clic `input[value="Guardar Contrato"]` → **Confirmar popup** (Aceptar/Ok)
> `assert_ui`: Ficha del nuevo contrato visible con estado `Activo`; adeudos muestran ANUALIDAD AGUA y DRENAJE 2026 en estado pendiente
> `assert_sql`:
> - `SELECT estado, agua, drenaje, tipo, exento_recargo_primer_anio FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1` → `1, 1, 1, 0, 1`
> - `SELECT num_toma, tipo, tiene_agua, tiene_drenaje, estado_agua, estado_drenaje FROM contrato_toma WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1)` → `1, 0, 1, 1, 1, 1`
> - `SELECT COUNT(*) FROM ligacargos WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) AND categoria IN (2,3) AND estado=0` → `2`
> - `SELECT descripcion FROM cambios WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) ORDER BY id DESC LIMIT 1` → `'Registro de Nuevo Contrato'`
> `revert_sql`: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6A' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@nid; DELETE FROM contrato_toma WHERE numcontrato=@nid; DELETE FROM contrato WHERE numcontrato=@nid;`

---

**Sub-caso B — 1 Toma Normal: solo agua, sin drenaje**

**Qué valida**: Que la paridad inicial genere solo ANUALIDAD AGUA, no ANUALIDAD DRENAJE. Regla M2-R06 + F08.

**Pasos**:
1. "Nuevo Contrato" → en campo usuario escribir `"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → clic label **"Nueva dirección..."** → domicilio=`"CALLE PRUEBA AUTO 6B"` → Toma 1: agua=sí, **drenaje=NO** → Guardar → **Confirmar popup**.

**Resultado Esperado**:
- `contrato.drenaje=0`, `contrato_toma.tiene_drenaje=0`, `contrato_toma.estado_drenaje=0`.
- `ligacargos`: solo 1 cargo pendiente — ANUALIDAD AGUA. Sin ANUALIDAD DRENAJE.

> **[AUTO]**
> `precond_sql`: Limpiar huérfano de runs anteriores: `SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6B' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@h; DELETE FROM contrato_toma WHERE numcontrato=@h; DELETE FROM contrato WHERE numcontrato=@h;` — Luego verificar: `SELECT COUNT(*) FROM contrato WHERE numusuario=1` → `0`.
> `accion`: Igual que A pero desmarcando drenaje en Toma 1.
> `assert_sql`: `SELECT agua, drenaje FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1` → `1, 0`. `SELECT COUNT(*) FROM ligacargos WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) AND categoria IN (2,3) AND estado=0` → `1` (solo agua).
> `revert_sql`: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6B' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@nid; DELETE FROM contrato_toma WHERE numcontrato=@nid; DELETE FROM contrato WHERE numcontrato=@nid;`

---

**Sub-caso C — 1 Toma Comercial: recálculo de tarifa (monto_comercial)**

**Qué valida**: Que al seleccionar tipo Comercial en Toma 1, el monto de la ANUALIDAD AGUA sea `monto_comercial` (no `monto × 2`). Regla M2-R09 + `_sincronizaDeudaPendienteContrato()`.

**Pasos**:
1. Verificar `monto_comercial` del catálogo: `SELECT monto, monto_comercial FROM cargos WHERE nombre='ANUALIDAD DEL AGUA 2026' LIMIT 1`.
2. "Nuevo Contrato" → en campo usuario escribir `"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → clic label **"Nueva dirección..."** → domicilio=`"CALLE PRUEBA AUTO 6C"` → Toma 1: tipo=**Comercial**, agua=sí, drenaje=sí → Guardar → **Confirmar popup**.

**Resultado Esperado**:
- `contrato.tipo=1` (Comercial, = MAX(tipo) de tomas).
- ANUALIDAD AGUA 2026 en `ligacargos` con `monto = monto_comercial` del catálogo (si > 0), o `monto × 2` si `monto_comercial=0`.
- `cambios`: incluye `'Calibracion automatica de Deudas'` si el monto fue ajustado por tipo.

> **[AUTO]**
> `precond_sql`: Limpiar huérfano de runs anteriores: `SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6C' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@h; DELETE FROM contrato_toma WHERE numcontrato=@h; DELETE FROM contrato WHERE numcontrato=@h;` — Luego: `SELECT monto, monto_comercial FROM cargos WHERE nombre='ANUALIDAD DEL AGUA 2026' AND estado=1 LIMIT 1` → anotar valores para comparación.
> `accion`: Igual que A pero seleccionando tipo=`Comercial` en Toma 1.
> `assert_sql`: `SELECT tipo FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1` → `1`. `SELECT monto FROM ligacargos WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 LIMIT 1` → debe coincidir con `monto_comercial` del catálogo (o `monto*2` si `monto_comercial=0`).
> `revert_sql`: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6C' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@nid; DELETE FROM contrato_toma WHERE numcontrato=@nid; DELETE FROM contrato WHERE numcontrato=@nid;`

---

**Sub-caso D — 2 Tomas: Normal + Comercial (máximo permitido)**

**Qué valida**: Que el sistema acepte 2 tomas y que el monto de ANUALIDAD AGUA sea la suma de ambas tarifas (o el `MAX(tipo)` determine el tipo de tarifa). Regla M2-R04 + M2-R09 + C08.

**Pasos**:
1. "Nuevo Contrato" → en campo usuario escribir `"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → clic label **"Nueva dirección..."** → domicilio=`"CALLE PRUEBA AUTO 6D"` → Toma 1: tipo=Normal, agua=sí, drenaje=sí → **activar Toma 2**: tipo=Comercial, agua=sí, drenaje=no → Guardar → **Confirmar popup**.

**Resultado Esperado**:
- `contrato_toma`: 2 filas. Toma 1: `tipo=0`, `tiene_agua=1, tiene_drenaje=1`. Toma 2: `tipo=1`, `tiene_agua=1, tiene_drenaje=0`.
- `contrato.agua=2` (COUNT de tomas con agua=1), `contrato.drenaje=1`, `contrato.tipo=1` (MAX tipo = Comercial).
- ANUALIDAD AGUA 2026: monto = `(monto_comercial_o_2x) * 2 tomas` = tarifa Comercial × 2.
- ANUALIDAD DRENAJE 2026: monto = tarifa Comercial × 1 toma (solo Toma 1 tiene drenaje).
- `cambios`: `'Registro de Nuevo Contrato'` + posiblemente `'Calibracion automatica de Deudas'`.

> **[AUTO]**
> `precond_sql`: Limpiar huérfano de runs anteriores: `SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6D' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@h; DELETE FROM contrato_toma WHERE numcontrato=@h; DELETE FROM contrato WHERE numcontrato=@h;` — Luego: `SELECT monto, monto_comercial FROM cargos WHERE nombre IN ('ANUALIDAD DEL AGUA 2026','ANUALIDAD DEL DRENAJE 2026') AND estado=1` → anotar tarifas.
> `accion`: "Nuevo Contrato" → campo usuario=`"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → domicilio=`"CALLE PRUEBA AUTO 6D"` → activar 2 tomas → Toma 1: Normal, agua+drenaje → Toma 2: Comercial, solo agua → Guardar.
> `assert_sql`:
> - `SELECT agua, drenaje, tipo FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1` → `2, 1, 1`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1)` → `2`
> - `SELECT monto FROM ligacargos WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0` → valor = tarifa Comercial × 2
> `revert_sql`: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6D' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@nid; DELETE FROM contrato_toma WHERE numcontrato=@nid; DELETE FROM contrato WHERE numcontrato=@nid;`

---

**Sub-caso E — Bloqueo: 3ra toma en domicilio con 2 existentes**

**Qué valida**: Que `guardaNuevoContrato()` rechace crear un contrato si el usuario ya tiene 2 tomas en el mismo domicilio (en otros contratos). Regla M2-R03 / C08.

**Pasos**:
1. Verificar que usuario `706` tiene 2 tomas en el domicilio de contrato `100`.
2. Intentar crear nuevo contrato → en campo usuario escribir `"IBÁÑEZ"` (apellido del usuario 706) → **TAB** → seleccionar usuario **706** de la lista → clic label **"Nueva dirección..."** → ingresar el domicilio capturado del precond → 1 toma → Guardar → **Confirmar popup**.

**Resultado Esperado**: Alert de rechazo. No se crea ningún contrato. Mensaje incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT domicilio FROM contrato WHERE numcontrato='100' LIMIT 1` → capturar el valor exacto del domicilio (ej. `"INDEPENDENCIA 100"`) — este string es el que debe ingresarse en el campo domicilio del formulario. Luego: `SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato=ct.numcontrato WHERE c.numusuario=706 AND c.estado!=4` → debe retornar `2`. Si retorna ≠ 2, marcar IMPEDIDO.
> `accion`: "Nuevo Contrato" → campo usuario=`"IBÁÑEZ"` → **TAB** → seleccionar usuario **706** de la lista → domicilio=valor capturado en precond (domicilio exacto de contrato `100`) → Toma 1 → clic Guardar.
> `assert_ui`: Alert con texto que incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`.
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE numusuario=706` → mismo valor que antes (no creó contrato nuevo).
> `revert_sql`: *(ninguno)*

---

**Sub-caso F — Bloqueo: ID de contrato ya existe**

**Qué valida**: Que el sistema rechace un contrato si el ID sugerido ya fue tomado por otro operador concurrentemente (o si el operador fuerza un ID duplicado). Regla M2-R01.

**Pasos**:
1. En la pantalla de "Nuevo Contrato", modificar manualmente el campo `numcontrato` a un valor ya existente (ej. `100`).
2. Completar el resto del formulario: en campo usuario escribir `"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → clic label **"Nueva dirección..."** → domicilio=`"CALLE PRUEBA AUTO 6F"` → Toma 1 → Guardar → **Confirmar popup**.

**Resultado Esperado**: Mensaje `"No ha sido posible agregar este contrato a la base de datos."` (INSERT falla por PK duplicada). No se crean tomas ni cargos.

> **[AUTO]**
> `precond_sql`: `SELECT numcontrato FROM contrato WHERE numcontrato='100'` → debe existir.
> `accion`: "Nuevo Contrato" → editar campo `numcontrato` → ingresar `100` → campo usuario=`"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → domicilio=`"CALLE PRUEBA AUTO 6F"` → Toma 1 → Guardar.
> `assert_ui`: Mensaje de error visible: `"No ha sido posible agregar este contrato"`.
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE domicilio='CALLE PRUEBA AUTO 6F'` → `0` (no se creó).
> `revert_sql`: *(ninguno)*

---

**Verificaciones transversales UI-6** (aplican a todos los sub-casos exitosos):
- `contrato.fecha` = fecha de hoy (`CURDATE()`): `SELECT DATE(fecha)=CURDATE() FROM contrato WHERE numcontrato=<nuevo>` → `1`.
- No se generan recargos cat 16/17 al crear (exento F07): `SELECT COUNT(*) FROM ligacargos WHERE numcontrato=<nuevo> AND categoria IN (16,17)` → `0`.
- `contrato.numtoma=0` (campo legacy, siempre 0 en V2): `SELECT numtoma FROM contrato WHERE numcontrato=<nuevo>` → `0`.
- La UI muestra tarifas de referencia (Normal/Comercial) antes de guardar — verificar que los montos coinciden con `cargos WHERE automatico=1 AND categoria IN (2,3) AND anio=2026`.
- Si `_verificaAnualidades()` detecta que faltan anualidades del año, la UI muestra advertencia. Validar que la advertencia desaparece cuando las anualidades existen.

---

### GRUPO B — Tomas Físicas y Paridad Financiera

---

<a name="ui-7"></a>
### 1.7 UI-7: Restricción de 2 Tomas por Domicilio (Regla C08)

**Qué valida**: Que `guardaContrato()` y `guardaNuevoContrato()` bloqueen agregar toma cuando el usuario ya tiene 2 en ese domicilio.

**Dato Real**: Usuario `706` ya tiene contratos `100` y `160` en el mismo domicilio.
**Dato QA** (`--with-qa`): Contrato `9001`.

**Sub-caso A — vía `guardaNuevoContrato()` (formulario Nuevo Contrato)**

**Pasos**:
1. Ir a "Nuevo Contrato" → asignar usuario `706` → ingresar el mismo domicilio que contrato `100` → 1 toma → Guardar.

**Resultado Esperado**: Alerta: *"El usuario ya cuenta con 2 toma(s) en otros contratos para el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio, previendo asignar 1 extra."* No se crea el contrato en BD.

> **[AUTO] sub-caso A**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT domicilio FROM contrato WHERE numcontrato='100' LIMIT 1` → capturar domicilio exacto. Luego: `SELECT COUNT(*) FROM contrato WHERE numusuario=706` → debe retornar ≥ 2.
> `accion`: Ir a "Nuevo Contrato" → campo usuario=`"IBÁÑEZ"` → **TAB** → seleccionar usuario **706** de la lista → ingresar domicilio capturado en precond → 1 toma → clic "Guardar"
> `assert_ui`: Mensaje de error visible que incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE numusuario=706` → mismo número que precond (no creó nuevo contrato)
> `revert_sql`: *(ninguno — no se crea contrato)*

---

**Sub-caso B — vía `guardaContrato()` (edición de contrato existente con 1 toma, intentar agregar 2da)**

**Qué valida**: Que la restricción C08 también se aplique al intentar agregar una 3ra toma desde la ficha de edición de un contrato existente del mismo domicilio.

**Pasos**:
1. Ficha del contrato `100` (usuario 706, ya tiene 2 tomas en su domicilio entre contratos 100 y 160) → clic "Modificar información".
2. Intentar agregar una 3ra toma en el formulario de edición → Guardar.

**Resultado Esperado**: `guardaContrato()` rechaza la operación con el mismo mensaje de límite de tomas. El contrato `100` mantiene su número de tomas original.

> **[AUTO] sub-caso B**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM contrato_toma ct JOIN contrato c ON ct.numcontrato=c.numcontrato WHERE c.numusuario=706 AND c.estado!=4` → debe retornar `2` (para que el intento de agregar una 3ra sea bloqueado).
> `accion`: Buscar contrato `100` → clic `a:has-text("Modificar información")` → activar campo "Toma 3" o ajustar `n_tomas` a 3 → motivo=`"Prueba bloqueo 3ra toma via edicion C08"` → clic `input[value="Guardar Cambios"]`
> `assert_ui`: Mensaje de error con texto que incluye `"Solo se permiten hasta 2 tomas"`
> `assert_sql`: `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='100'` → mismo valor que antes de la acción (sin toma nueva)
> `revert_sql`: *(ninguno)*

---

<a name="ui-8"></a>
### 1.8 UI-8: Bloqueo de Cargos de Drenaje Sin Infraestructura (Regla F08)

**Qué valida**: Que `aplicacargos()` rechace un cargo de categoría 3 (drenaje) en contrato sin `tiene_drenaje=1`.

**Dato Real**: Contrato `1` (usuario 1536, `drenaje=0`, Estado 1).
**Dato QA** (`--with-qa`): Contrato `9006`.

**Pasos**:
1. Ficha del contrato `1` → "Agregar cargos" → buscar "ANUALIDAD DEL DRENAJE 2026" → Aplicar.

**Resultado Esperado**: Mensaje `'El cargo ANUALIDAD DEL DRENAJE 2026 no aplica porque el contrato 1 no tiene toma de drenaje conectada.'` El cargo no se inserta en `ligacargos`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT drenaje FROM contrato WHERE numcontrato='1'` → debe retornar `0`
> `accion`: Buscar contrato `1` → "Agregar cargos" → buscar `"ANUALIDAD DEL DRENAJE 2026"` → clic "Aplicar"
> `assert_ui`: Mensaje de error visible que incluye `"no tiene toma de drenaje conectada"`
> `assert_sql`: `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='1' AND leyenda='ANUALIDAD DEL DRENAJE 2026' AND estado=0` → `0`
> `revert_sql`: *(ninguno — cargo no fue insertado)*

---

<a name="ui-9"></a>
### 1.9 UI-9: Recálculo Dinámico de Tarifa al Cambiar Tipo Normal↔Comercial

**Qué valida**: Que `guardaContrato()` llame a `_sincronizaDeudaPendienteContrato()` al cambiar el tipo de toma, actualizando montos de anualidades pendientes según `monto_comercial` del catálogo.

**Dato Real**: Contrato `500` (Estado 1, agua=1, drenaje=1, toma tipo Normal). ⚠️ Contrato `100` descartado: verificado en Host C — no tiene ANUALIDAD DEL AGUA 2026 pendiente (ya pagada). Contrato `500` sí tiene ANUALIDAD DEL AGUA 2026 en `estado=0`, monto `$600.00`.

**Pasos**:
1. Ficha contrato `500` → "Modificar información" → en Toma 1 cambiar Tipo de `Normal` a `Comercial` → Guardar (motivo ≥20 chars).
2. Verificar monto de "ANUALIDAD DEL AGUA 2026" en adeudos.
3. Repetir cambiando de vuelta a `Normal` → verificar que el monto regresa.

**Nota sobre `monto_comercial`**: El script `00_inject_qa_tests.sql` (V2.13+) ya revierte `monto_comercial` a `1200.00` al final de su ejecución. Verificar con `precond_sql` antes de correr este caso.

**Resultado Esperado**:
- Normal→Comercial: monto ANUALIDAD AGUA pasa de `$600.00` a `$1,200.00` (valor de `monto_comercial` en catálogo).
- `cambios` incluye registros `'Cambio de Tarifa Toma 1'` y `'Calibracion automatica de Deudas'`.
- Comercial→Normal: monto regresa a `$600.00`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT monto_comercial FROM cargos WHERE nombre='ANUALIDAD DEL AGUA 2026' LIMIT 1` → debe ser `1200.00`. Si es `99.99`, el script QA no ejecutó la sección 5 de revert — corregir manualmente antes de continuar. Luego: `SELECT monto FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 LIMIT 1` → debe retornar `600.00`.
> `accion`: Buscar contrato `500` → clic `a:has-text("Modificar información")` → en Toma 1 cambiar radio `Normal` a `Comercial` (`#t_tipo_1_1`) → motivo=`"Cambio tipo comercial prueba QA tarifa"` → clic `input[value="Guardar Cambios"]`
> `assert_ui`: Monto de "ANUALIDAD DEL AGUA 2026" en adeudos muestra `$1,200.00`
> `assert_sql`: `SELECT monto FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 LIMIT 1` → `1200.00`
> `revert_sql` (UI primero): Buscar contrato `500` → clic "Modificar información" → Toma 1 tipo=`Normal` (`#t_tipo_1_0`) → motivo=`"Revert cambio tipo Normal prueba QA"` → Guardar. `revert_sql` (fallback SQL directo si UI falla): `UPDATE contrato_toma SET tipo=0 WHERE numcontrato='500' AND num_toma=1; UPDATE contrato SET tipo=0 WHERE numcontrato='500'; UPDATE ligacargos SET monto=600.00 WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0;`

---

<a name="ui-10"></a>
### 1.10 UI-10: Paridad Físico-Financiera al Desconectar Infraestructura (Motor C04)

**Qué valida**: Que desmarcar la infraestructura de una toma en `guardaContrato()` llame a `_quitaCargoAnual()` + `_sincronizaParidadFinanciera()`, cancelando el cargo anual del servicio desconectado.

**Dato Real**: Contrato `500` (agua=1, drenaje=1, Estado 1). ⚠️ Contrato `100` descartado: verificado en Host C — no tiene ANUALIDAD DEL DRENAJE 2026 pendiente (ya pagada). Contrato `500` sí tiene ANUALIDAD DEL AGUA 2026 y ANUALIDAD DEL DRENAJE 2026 en `estado=0`.

**Pasos**:
1. Ficha contrato `500` → "Modificar información" → en Toma 1 desmarcar "tiene drenaje" → Guardar (motivo ≥20 chars).
2. Verificar que "ANUALIDAD DEL DRENAJE 2026" desaparece de la tabla de adeudos.
3. Revertir (marcar drenaje de nuevo) → verificar que el cargo se restaura a `estado=0`.

**Resultado Esperado**:
- Al desconectar: "ANUALIDAD DEL DRENAJE 2026" pasa a `estado=-1`.
- `cambios` registra `'Desconexion drenaje toma 1'`.
- Al reconectar: `_sincronizaParidadFinanciera()` restaura el cargo a `estado=0` (reaparece en adeudos).

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT tipo FROM contrato_toma WHERE numcontrato='500' AND num_toma=1 LIMIT 1` → debe retornar `0` (tipo Normal). Si retorna `1` (Comercial), ejecutar revert de UI-9 antes de continuar. Luego: `SELECT tiene_drenaje FROM contrato_toma WHERE numcontrato='500' LIMIT 1` → `1`. Luego: `SELECT estado FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL DRENAJE 2026' AND estado=0` → debe retornar fila.
> `accion`: Buscar contrato `500` → clic `a:has-text("Modificar información")` → en Toma 1 desmarcar checkbox `#t_drenaje_1` → motivo=`"Prueba desconexion drenaje QA toma 1"` → clic `input[value="Guardar Cambios"]`
> `assert_ui`: "ANUALIDAD DEL DRENAJE 2026" desaparece de la tabla de adeudos pendientes
> `assert_sql`: `SELECT estado FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL DRENAJE 2026' ORDER BY id DESC LIMIT 1` → `-1`
> `revert_sql`: Editar contrato `500` → Toma 1 marcar "tiene drenaje" → Guardar; luego: `SELECT estado FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL DRENAJE 2026' ORDER BY id DESC LIMIT 1` → `0`

---

<a name="ui-11"></a>
### 1.11 UI-11: Cambio Rápido de Conexión y Paridad

**Qué valida**: Que `cambiaEstadoConexion()` (`contratos.php:780`) — función separada del modo edición — actualice `estado_agua`/`estado_drenaje` en `contrato_toma` y llame a `_sincronizaParidadFinanciera()`, produciendo el mismo efecto que UI-10 pero vía el botón rápido de la ficha.

**Dato Real**: Contrato `500` (agua=1, drenaje=1, Estado 1). ⚠️ Contrato `1000` descartado: verificado en Host C — su ANUALIDAD AGUA 2026 ya está pagada (estado=1), no tiene cargo anual pendiente que desaparezca al desconectar. Contrato `500` sí tiene ANUALIDAD DEL AGUA 2026 y ANUALIDAD DEL DRENAJE 2026 pendientes (estado=0).

**Pasos**:
1. Ficha contrato `500` → localizar el control de "Cambio Rápido de Conexión" en la sección de tomas.
2. Clic en el botón para desconectar agua de la toma 1 (sin entrar al modo edición completo).
3. Verificar que "ANUALIDAD DEL AGUA 2026" desaparece de adeudos.
4. Reconectar y verificar que el cargo se restaura.

**Resultado Esperado**:
- El cargo anual del servicio desconectado pasa a `estado=-1` inmediatamente.
- `cambios` registra `'Cambio Rapido de Conexion agua toma 1'`.
- La reconexión restaura el cargo a `estado=0`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT estado_agua FROM contrato_toma WHERE numcontrato='500' LIMIT 1` → `1`. Luego: `SELECT estado FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0` → debe retornar fila. Si no, marcar IMPEDIDO.
> `accion`: Buscar contrato `500` → en sección de tomas localizar botón de cambio rápido de conexión agua (`button[data-accion="desconectar"][data-servicio="agua"][data-toma="1"]` o `a[href*="cambiaEstadoConexion"][data-servicio="agua"]` o equivalente según markup — buscar elemento en el panel de tomas con texto `"Desconectar"` o ícono de llave próximo a "AGUA Toma 1") → clic para desconectar agua de Toma 1
> `assert_ui`: "ANUALIDAD DEL AGUA 2026" desaparece de la tabla de adeudos sin necesidad de entrar al modo edición
> `assert_sql`: `SELECT estado FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' ORDER BY id DESC LIMIT 1` → `-1`
> `revert_sql` (UI): Clic en botón de reconexión agua Toma 1 (mismo selector con `data-accion="conectar"`) → verificar cargo restaurado a `estado=0`. `revert_sql` (fallback SQL directo si UI falla): `UPDATE contrato_toma SET estado_agua=1 WHERE numcontrato='500' AND num_toma=1; UPDATE ligacargos SET estado=0 WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' ORDER BY id DESC LIMIT 1;`

---

<a name="ui-12"></a>
### 1.12 UI-12: Contratos Multi-toma en Reporte de Tomas

**Qué valida**: Que el reporte de tomas físicas agrupe contratos del mismo usuario y muestre badge de número de tomas.

**Dato Real**: Usuario `706` (contratos `100` y `160`, ambos Estado 1).

**Pasos**:
1. Ir al reporte de tomas físicas → buscar por nombre "ibáñez" o número usuario `706`.

**Resultado Esperado**: Los dos contratos aparecen agrupados bajo el mismo usuario con badge "2 tomas" (o equivalente).

> **[AUTO]**
> `url`: `/agua/reportes/` (reporte de tomas físicas) | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT numcontrato, numusuario FROM contrato WHERE numusuario=706 AND estado=1` → debe retornar contratos `100` y `160`
> `accion`: Ir al reporte de tomas → campo búsqueda por nombre=`"ibáñez"` → clic "Buscar"
> `assert_ui`: Contratos `100` y `160` visibles bajo el mismo usuario `706` con indicador de 2 tomas
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE numusuario=706 AND estado=1` → `2`
> `revert_sql`: *(ninguno — solo lectura)*

---

### GRUPO C — Pagos, Recibos y Folios

---

<a name="ui-13"></a>
### 1.13 UI-13: Flujo Completo de Cobro — Folio Atómico y Recibo

**Qué valida**: Que `pagacancelacargos()` en modo `pagacargos` (`cargos.php:268`) genere un folio atómico via `folios_recibo` AUTO_INCREMENT, pague los cargos vía `sp_pagar_cargo`, registre en `cambios` y abra `recibo.php?folio=X`.

**Dato Real**: Contrato `100` con cargos pendientes. Verificado en Host C: tiene 7 cargos `estado=0` (incluyendo `"RECARGO ENE 2026 - ANUALIDAD DEL AGUA 2026"` y `"FALTA ASAMBLEA 29 MAR 2026"`). No tiene ANUALIDAD pendiente — ya está pagada. Usar `"RECARGO ENE 2026 - ANUALIDAD DEL AGUA 2026"` como cargo de prueba.

**Pasos**:
1. Ficha contrato `100` → seleccionar uno o más cargos pendientes en la tabla de adeudos → clic "Cobrar seleccionados".
2. Confirmar el cobro.
3. Verificar que se abre ventana de recibo con un folio.
4. Verificar en BD: `SELECT * FROM folios_recibo ORDER BY id DESC LIMIT 1` → debe existir el folio generado.
5. Verificar: `SELECT estado, folio FROM ligacargos WHERE numcontrato='100' AND estado=1 ORDER BY id DESC LIMIT 5` → los cargos cobrados tienen `estado=1` y el folio correcto.

**Resultado Esperado**:
- Se genera 1 folio único (AUTO_INCREMENT de `folios_recibo`).
- Todos los cargos seleccionados pasan a `estado=1` con ese folio.
- `cambios` registra `'Cobro de Cargos'` con el folio y monto total.
- La ventana de recibo se abre sin error PHP.
- La ficha se recarga sin mostrar los cargos recién cobrados.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT id_cargo, leyenda, monto FROM vw_ligacargos_pendientes WHERE numcontrato='100' LIMIT 3` → debe retornar ≥ 1 cargo pendiente
> `accion`: Buscar contrato `100` → seleccionar primer checkbox `input[id=pago]` en la tabla de adeudos → clic `#botonpagar` → confirmar cobro en el diálogo nativo `confirm()`
> `assert_ui`: Ventana de recibo se abre con número de folio visible; el cargo cobrado desaparece de la tabla de adeudos
> `assert_sql`: `SELECT estado, folio FROM ligacargos WHERE numcontrato='100' AND estado=1 ORDER BY id DESC LIMIT 1` → `estado=1`, folio ≠ 0. Capturar el folio: `SET @folio_cobrado=(SELECT folio FROM ligacargos WHERE numcontrato='100' AND estado=1 ORDER BY id DESC LIMIT 1)`.
> `revert_sql`: `SET @folio_cobrado=(SELECT folio FROM ligacargos WHERE numcontrato='100' AND estado=1 ORDER BY id DESC LIMIT 1); UPDATE ligacargos SET estado=0, fpago=NULL, folio=0 WHERE numcontrato='100' AND folio=@folio_cobrado AND estado=1;`

---

<a name="ui-14"></a>
### 1.14 UI-14: Sincronización de Asamblea al Pagar (sp_sinc_asamblea_puntual)

**Qué valida**: Que al pagar un cargo de categoría 6 (FALTA ASAMBLEA) en un contrato, `pagacancelacargos()` llame a `sp_sinc_asamblea_puntual($numusuario, ...)`, cancelando automáticamente el mismo cargo en todos los contratos hermanos del mismo usuario.

**Dato QA** (`--with-qa`, **preferido**): Contratos `9007` y `9008` (usuario 9907). Ambos con "FALTA ASAMBLEA CRUCE" — 9007 ya pagada (referencia de sync) y **9008 pendiente** (`estado=0`). Al pagar el cargo en 9007, `sp_sinc_asamblea_puntual` debe cancelar el de 9008.

**Dato Real alternativo**: Usuario `706`, contratos `100` y `160`. Verificado en Host C: ambos tienen "FALTA ASAMBLEA 29 MAR 2026" en `estado=0`. Usar solo si los datos QA no están disponibles, ya que modifica datos reales.

**Precondición** (dato QA): `SELECT leyenda, estado FROM ligacargos WHERE numcontrato IN ('9007','9008') AND categoria=6` → 9007 con `estado=1`, 9008 con `estado=0` y misma leyenda.

**Pasos** (con datos QA 9007/9008):
1. Verificar precond_sql antes de ejecutar — si `9008` ya tiene `estado=1` (ya sincronizado), marcar IMPEDIDO y avanzar al siguiente caso.
2. En ficha 9007 → seleccionar FALTA ASAMBLEA → Cobrar.
3. Ir a ficha contrato `9008` → verificar que la misma FALTA ASAMBLEA ya no aparece como pendiente.

**Resultado Esperado**:
- El cargo en contrato `9008` con la misma leyenda pasa a `estado=1` automáticamente via `sp_sinc_asamblea_puntual`.
- No se genera folio nuevo para `9008` — es sincronización, no cobro.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `si`
> `precond_sql`: `SELECT numcontrato, leyenda, estado FROM ligacargos WHERE numcontrato IN ('9007','9008') AND categoria=6` → 9008 debe tener `estado=0`. Si 9008 ya está `estado=1` (el sp_sinc_asamblea_bulk del Paso 8 lo sincronizó automáticamente durante el pipeline): ejecutar `UPDATE ligacargos SET estado=0, fpago=NULL, folio=0 WHERE numcontrato='9008' AND categoria=6 AND estado=1 ORDER BY id DESC LIMIT 1` y verificar de nuevo antes de continuar.
> `accion`: Buscar contrato `9007` → localizar cargo categoría 6 pendiente → seleccionar → clic `#botonpagar` → confirmar
> `assert_ui`: En ficha contrato `9008`, la FALTA ASAMBLEA con la misma leyenda ya no aparece como pendiente
> `assert_sql`: `SELECT estado FROM ligacargos WHERE numcontrato='9008' AND categoria=6 ORDER BY id DESC LIMIT 1` → `1`
> `revert_sql`: `UPDATE ligacargos SET estado=0, fpago=NULL, folio=0 WHERE numcontrato='9008' AND categoria=6 AND estado=1 ORDER BY id DESC LIMIT 1`

---

<a name="ui-15"></a>
### 1.15 UI-15: Prevención de Cargos Duplicados por Refresh (Refresh-bomb)

**Qué valida**: Que el mecanismo anti-duplicación en `cargaContrato()` (`contratos.php:111-128`) impida que refrescos repetidos creen múltiples instancias del mismo cargo automático.

**Dato Real**: Contrato `100` (Estado 1, anualidades 2026 ya existentes).

**Pasos**:
1. Abrir ficha contrato `100` → anotar número de filas en tabla de adeudos.
2. Recargar la ficha 5 veces consecutivas (F5 o re-clic en el contrato).
3. Contar filas nuevamente.

**Resultado Esperado**: El número de cargos pendientes es idéntico antes y después. No hay duplicados con la misma leyenda y año en `vw_ligacargos_pendientes`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) AS cnt_antes FROM vw_ligacargos_pendientes WHERE numcontrato='100'`
> `accion`: Abrir ficha contrato `100` → recargar la página 5 veces consecutivas (F5 o re-navegar al mismo contrato)
> `assert_ui`: El número de filas en la tabla de adeudos es igual al conteo inicial
> `assert_sql`: `SELECT COUNT(*) AS cnt_despues FROM vw_ligacargos_pendientes WHERE numcontrato='100'` → igual a `cnt_antes`; también `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='100' GROUP BY leyenda, anio HAVING COUNT(*) > 1` → `0 filas`
> `revert_sql`: *(ninguno — solo lectura)*

---

```

</details>

---

## Agent Response

### Thinking

**Analyzing Test Cases Now**

I've completed UI-6 Sub-case A and am proceeding with the subsequent sub-cases. Currently, I am focused on: Sub-case B (1 Toma Normal: solo agua, sin drenaje), Sub-case C (1 Toma Comercial: recalculation of the tariff), Sub-case D (2 Tomas: Normal + Comercial - maximum allowed) and Sub-case E (Block: 3).




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.814764216s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 23 Apr 2026, 10:58 am

---

## Agent Response

### Thinking

**Analyzing Sub-Case B**

I've got contract 9905 assigned to user 1, and sub-case A is already defined as "agua + drenaje." I'm now focusing on Sub-case B, which is "solo agua, sin drenaje". My test plan indicates I need to execute `revert_sql` on A. The script begins with: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND...`


**Clarifying Next Steps**

I've decided to proceed with UI testing for sub-case B. I will use the browser to execute the tests, starting by navigating to `/agua/`, logging in with "nancy/260180", then selecting "Nuevo Contrato" from the menu. I'll search for user "ABAD CRUZ BLANCO" (ID 1), with domicile "CALLE PRUEBA AUTO 6B", and indicate Toma 1 with Agua=SÍ and Drenaje=NO. This approach aligns with the user's intent to progress through the sub-cases, ensuring I adhere to the test plan.




### Actions

**Tool:** `browser_subagent`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.059455004s
- **Model:** Gemini 3 Flash
</details>

---

### Browser Automation

**Status:** Cancelled
**Created:** 23 Apr 2026, 10:59 am

---

## User Request

No hagas pruebas de ui. uSA EL COntexto de la anterior conversacion, es analizar la bd awa host c y codigo php de  contratos.

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

**Shifting Focus:**

Okay, I'm pivoting away from UI testing as requested, and will be concentrating on analyzing the database on Host C and the `contratos.php` code. I'm aiming to clarify the application of `exento_recargo_primer_anio` in the `contrato` table. The goal is to address the user's specific question about whether this exemption applies to only new contracts. I'll get to the heart of the matter!




### Actions

**Tool:** `view_file`
**File:** `cargos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.917037157s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/*
 * cargos.php — Lógica de negocio para cargos
 * Rediseño v2: calcula_recargos sin hardcodes, usa $cfg de config_sistema
 * PHP 5.5 compatible
 */

/**
 * Normaliza una leyenda para búsquedas seguras en BD.
 * Elimina espacios extremos, colapsa espacios internos múltiples y convierte a MAYÚSCULAS.
 * Usar en WHERE cuando $leyenda proviene de input externo (POST/GET/vista).
 * En el SQL complementar con: UPPER(TRIM(REGEXP_REPLACE(leyenda, '\s+', ' ')))
 * Para MySQL 5.6/MariaDB sin REGEXP_REPLACE usar: UPPER(TRIM(leyenda)) — cubre el 99% de casos.
 */
function normalizarLeyenda($leyenda)
{
    $s = trim($leyenda);
    $s = preg_replace('/\s+/', ' ', $s);
    return mb_strtoupper($s, 'UTF-8');
}

function calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg = null)
{
	// Cargar config si no viene como parámetro (compatibilidad)
	if (!is_array($cfg) || count($cfg) == 0) {
		$cfg = cargaConfig($y);
	}

	$mes_inicio = intval(isset($cfg['recargo_mes_inicio']) ? $cfg['recargo_mes_inicio'] : 4);
	$porcentaje = floatval(isset($cfg['recargo_porcentaje']) ? $cfg['recargo_porcentaje'] : 10);
	$cat_agua = intval(isset($cfg['recargo_categoria_agua']) ? $cfg['recargo_categoria_agua'] : 16);
	$cat_drenaje = intval(isset($cfg['recargo_categoria_drenaje']) ? $cfg['recargo_categoria_drenaje'] : 17);

	// EXENCIÓN RECARGOS PRIMER AÑO Y VALIDACIÓN DE ESTADO
	$res_exencion = $y->q("SELECT YEAR(fecha) as anio_creacion, exento_recargo_primer_anio, estado FROM contrato WHERE numcontrato='$numcontrato'");
	list($anio_creacion, $exento_recargo, $edo_cto) = $y->fetch_array($res_exencion);

	// REGLA F01 / SDF: No generar recargos si el contrato está en Suspensión Definitiva (estado 4)
	// Los recargos automáticos inician en Abril (mes 4) según configuración del sistema.
	if (intval($edo_cto) === 4) {
		return;
	}
	// REGLA F01 / C06: No generar recargos en Suspensión Temporal (estado 2).
	// La anualidad ya está cancelada (estado=-1); el recargo sobre ella no procede.
	if (intval($edo_cto) === 2) {
		return;
	}

	if ($exento_recargo == 1 && $anio == $anio_creacion) {
		return;
	}

	// EXENCIÓN: NO GENERAR RECARGOS PARA CATEGORÍAS QUE YA SON RECARGOS
	if ($categoria == $cat_agua || $categoria == $cat_drenaje) {
		return;
	}

	$fecha_actual = time();
	$mes_pad = str_pad($mes_inicio, 2, '0', STR_PAD_LEFT);
	$fecha_entrada = strtotime("01-$mes_pad-$anio 01:00:00");

	if ($fecha_actual > $fecha_entrada) {
		$mes_numero = intval(date('m'));
		$anio_numero = intval(date('Y'));
		$meses = (($anio_numero - $anio) * 12) + ($mes_numero - 1);

		$nom_meses = array("", "ENE", "FEB", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEPT", "OCT", "NOV", "DIC");

		$mesrecargo = 1;
		$aniorecargo = $anio;

		// Sin hardcode: porcentaje desde config
		$monto_recargo = ($monto * $porcentaje) / 100;

		// Sin hardcode: categorias desde config
		$categoria_recargo = $categoria;
		if ($categoria == 2)
			$categoria_recargo = $cat_agua;
		if ($categoria == 3)
			$categoria_recargo = $cat_drenaje;

		$respagado = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato=$numcontrato AND estado=1");
		list($pagado) = $y->fetch_array($respagado);

		if ($pagado == 0) {
			for ($i = 1; $i <= $meses; $i++) {
				$leyenda_recargo = "RECARGO $nom_meses[$mesrecargo] $aniorecargo - $leyenda";
				$tabla_dest = ($aniorecargo <= 2025) ? "ligacargos_historico" : "ligacargos";
				if ($aniorecargo == $anio) {
					// Idempotencia: no duplicar si el recargo ya existe (protege contra refresh y re-activaciones)
					$chk_rec = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda_recargo' AND numcontrato='$numcontrato' LIMIT 1");
					if ($y->num_rows($chk_rec) == 0) {
						$q = "INSERT INTO $tabla_dest (numcontrato,leyenda,monto,fcobro,fpago,estado,recargo,folio,anio,numcontratoresp,idpago_vinc,categoria,repetido) VALUES('$numcontrato','$leyenda_recargo',$monto_recargo,CURDATE(),CURDATE(),0,$recargo,'',$anio,'',NULL,$categoria_recargo,$cuenta)";
						$y->q($q);
					}
				}
				if (++$mesrecargo > 12) {
					$mesrecargo = 1;
					$aniorecargo++;
				}
			}
		}
	}
}

function eliminaEgreso($id, $motivo)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	// Obtener datos antes de eliminar para auditoría
	$res_ant = $y->q("SELECT leyenda, monto, categoria FROM egresos WHERE id='$id'");
	$ant = $y->fetch_array($res_ant);
	$leyenda_e = $ant['leyenda'];
	$monto_e   = number_format($ant['monto'], 2);
	$cat_e     = $ant['categoria'];

	$y->q("update egresos set estado=-1, motivoelimina='$motivo' where id='$id'");

	$motivo_esc = $y->real_escape_string($motivo);
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
	       VALUES(NOW(), 'Eliminación de Egreso', 'Egreso: $leyenda_e ($cat_e) por \$$monto_e', 'ELIMINADO. Motivo: $motivo_esc', '-EGRESO-')");

	$salida = "Se ha eliminado el egreso";

	return $salida;
}

function cargaCargosEsp($cadena)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	if ($cadena == "")
		$cadena = "1";

	if ($cadena != "") {
		$ocurrencias = explode(" ", $cadena);
		$cadena = "";
		foreach ($ocurrencias as $parte) {
			$cadena .= (($cadena != "") ? "AND " : "") . "nombre like (\"%$parte%\")";
		}
	}
	$q1 = "select numconsec, nombre, monto, monto_comercial, recargo, observaciones, mensualidades, anio, categoria, repetir, metros from cargos where $cadena AND estado=1 order by nombre";
	$res = $y->q($q1);

	$cargos = [];
	while ($c = $y->fetch_array($res)) {
		$cargos[] = [
			'numconsec' => $c[0],
			'nombre' => $c[1],
			'monto' => $c[2],
			'monto_com' => $c[3],
			'recargo' => $c[4],
			'observaciones' => $c[5],
			'mensualidades' => $c[6],
			'anio' => $c[7],
			'categoria' => $c[8],
			'repetir' => $c[9],
			'metros' => $c[10]
		];
	}

	return $templates->render('cargos/lista_tabla', ['cargos' => $cargos]);
}

function cargaCargos()
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$res = $y->q("select numconsec, nombre, monto, monto_comercial, recargo, observaciones, mensualidades, anio, categoria, repetir, metros from cargos where estado=1 order by nombre");
	$cargos = [];
	while ($c = $y->fetch_array($res)) {
		$cargos[] = [
			'numconsec' => $c[0],
			'nombre' => $c[1],
			'monto' => $c[2],
			'monto_com' => $c[3],
			'recargo' => $c[4],
			'observaciones' => $c[5],
			'mensualidades' => $c[6],
			'anio' => $c[7],
			'categoria' => $c[8],
			'repetir' => $c[9],
			'metros' => $c[10]
		];
	}

	$resz = $y->q("select numconsec, nombre, monto, monto_comercial, estado from cargos where estado <> 2 order by estado, nombre, anio, monto");
	$cargos_registrados = [];
	while (list($num, $nom, $monto, $mon_com, $edo) = $y->fetch_array($resz)) {
		$cargos_registrados[] = ['num' => $num, 'nom' => $nom, 'monto' => $monto, 'monto_comercial' => $mon_com, 'edo' => $edo];
	}

	$resc = $y->q("select id, nombre from categorias");
	$categorias = [];
	while ($cat = $y->fetch_array($resc)) {
		$categorias[] = ['id' => $cat[0], 'descripcion' => $cat[1]];
	}

	return $templates->render('cargos/catalogo', [
		'cargos' => $cargos,
		'cargos_registrados' => $cargos_registrados,
		'categorias' => $categorias
	]);
}

function cargaresultados($query, $usuario, $agua, $dren, $marca, $estado1, $estado2, $estado3, $estado4)
{
	global $templates;
	$query = trim($query);
	$q1 = explode(' ', $query);
	$r = "";
	foreach ($q1 as $var) {
		if ($usuario == 'usr') {
			$r .= (($r == "") ? "" : " and ") . "usuario.nombre like '%$var%'";
		} else {
			$r .= (($r == "") ? "" : " and ") . "(contrato.domicilio like '%$var%' OR contrato.numcontrato like '%$var%')";
		}
	}

	$estados_array = array();
	if ($estado1 == 1)
		array_push($estados_array, 1);
	if ($estado2 == 1)
		array_push($estados_array, 2);
	if ($estado3 == 1)
		array_push($estados_array, 3);
	if ($estado4 == 1 || is_numeric($query))
		array_push($estados_array, 4);

	$estados = join(",", $estados_array);
	if (empty($estados)) $estados = "0"; // Fallback to avoid empty IN clause
	$query_sql = "select contrato.numcontrato, usuario.nombre, contrato.domicilio, contrato.agua, contrato.drenaje, if(isnull(total),0,total) as adeudo, contrato.tipo from (contrato left join usuario on contrato.numusuario=usuario.noconsecutivo) left join (select sum(monto) as total, numcontrato from vw_ligacargos_pendientes group by numcontrato) lc on contrato.numcontrato=lc.numcontrato where contrato.estado IN ($estados) and $r" . (($agua == 'x') ? "" : (($agua == '1') ? " and contrato.agua=1" : " and contrato.agua=0")) . (($dren == 'x') ? "" : (($dren == '1') ? " and contrato.drenaje=1" : " and contrato.drenaje=0"));

	$y = new Conexion();
	$y->conectarBaseDatos();
	$res = $y->q($query_sql);
	$n = $y->num_rows($res);

	if ($n > 0) {
		$resultados = [];
		while (list($numcontrato, $nombre, $domicilio, $agua, $drenaje, $adeudo, $tipo) = $y->fetch_array($res)) {
			$resultados[] = [
				'numcontrato' => $numcontrato,
				'nombre' => $nombre,
				'domicilio' => $domicilio,
				'agua' => $agua,
				'drenaje' => $drenaje,
				'adeudo' => $adeudo,
				'tipo' => $tipo
			];
		}
		return $templates->render('cargos/busqueda_resultados', [
			'n' => $n,
			'resultados' => $resultados,
			'marca' => $marca
		]);
	}
	return "";
}

function pagacancelacargos($opc, $idc, $pago, $rp, $rt, $texto, $totalmarcado, $recibo)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	if ($opc == 'pagacargos') { // Pago de cargos.
		// Host C: reservar folio atómico en folios_recibo; si viene $recibo del form lo usamos como referencia
		$y->q("INSERT INTO folios_recibo (dummy) VALUES (1)");
		$folio_sig = $y->insert_id();

		// ═══ Snapshot financiero PRE-cobro ═══
		$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$idc'");
		$pre = $y->fetch_array($res_pre);
		$n_pre = intval($pre['n']); $tot_pre = number_format(floatval($pre['total']), 2);

		foreach ($pago as $ref => $val) {
			$lm = explode('|', $val);
			$id_cargoval = intval($lm[0]);
			$leyendaval  = $lm[1];
			$monto_val   = floatval($lm[2]);
			$repetidoval = intval($lm[3]);
			$categoriaval = isset($lm[4]) ? intval($lm[4]) : 0;

			if ($categoriaval == 6 || strpos(strtoupper($leyendaval), 'FALTA ASAMBLEA') !== false) {
				// Asamblea: sp_sinc_asamblea_puntual sincroniza todos los contratos del usuario
				$res_u = $y->q("select numusuario from contrato where numcontrato = '$idc'");
				list($numusuario) = $y->fetch_array($res_u);
				// Primero pagar el cargo del contrato principal (usando ID atómico)
				$y->q("CALL sp_pagar_cargo($id_cargoval, '$idc', \"$leyendaval\", $repetidoval, $folio_sig, '$idc', $monto_val, @filas)");
				// Sincronizar el resto de contratos del mismo usuario
				$y->q("CALL sp_sinc_asamblea_puntual($numusuario, \"$leyendaval\", 0, @filas_sinc)");
			} else {
				$y->q("CALL sp_pagar_cargo($id_cargoval, '$idc', \"$leyendaval\", $repetidoval, $folio_sig, '', $monto_val, @filas)");
			}
		}

		// ═══ Snapshot financiero POST-cobro ═══
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$idc'");
		$post = $y->fetch_array($res_post);
		$n_post = intval($post['n']); $tot_post = number_format(floatval($post['total']), 2);
		$cargos_liq = $n_pre - $n_post;
		$pre_esc  = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");
		$post_esc = $y->real_escape_string("Adeudos: $n_post | Deuda: \$$tot_post | Cargos liquidados: $cargos_liq");

		// Auditoría de Pago
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Cobro de Cargos', 'Folio: $folio_sig. $pre_esc', 'Cobrado: \$$totalmarcado. $post_esc', '$idc')");

		return "<script>cargaDatosContrato('$idc'); window.open('reportes/recibo.php?folio=$folio_sig', 'recibo', 'width=640,height=450,scrollbars=yes');</script>";

	} else { // Cancelacion de cargos.
		$res1 = $y->q("select contrasena from contrasenas where rol = 'presidente'");
		$res2 = $y->q("select contrasena from contrasenas where rol = 'tesorero'");

		list($contrasena_presidente) = $y->fetch_array($res1);
		list($contrasena_tesorero) = $y->fetch_array($res2);
		// Bloque comentarizado para pruebas auth.
		//		if (md5($rp) == $contrasena_presidente && md5($rt) == $contrasena_tesorero) {
		$cfg = cargaConfig($y);
		$min_car = intval(isset($cfg['cancelacion_min_caracteres']) ? $cfg['cancelacion_min_caracteres'] : 20);
		if (strlen($texto) > $min_car) {
			// ═══ Snapshot financiero PRE-cancelación ═══
			$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$idc'");
			$pre = $y->fetch_array($res_pre);
			$n_pre = intval($pre['n']); $tot_pre = number_format(floatval($pre['total']), 2);

			$x = "";
			foreach ($pago as $valor) {
				$lm = explode('|', $valor);
				$id_c_val    = intval($lm[0]);
				$leyenda_esc = $y->real_escape_string($lm[1]);
				$monto_c     = floatval($lm[2]);
				$rep_val     = isset($lm[3]) ? intval($lm[3]) : 0;
				
				$res_id_act = $y->q("SELECT id, folio FROM ligacargos WHERE id = $id_c_val LIMIT 1");
				$res_id_his = $y->q("SELECT id, folio FROM ligacargos_historico WHERE id = $id_c_val LIMIT 1");
				$row_id = $y->fetch_array($res_id_act) ?: $y->fetch_array($res_id_his);
				$id_str = $row_id ? " [ID: {$row_id['id']}" . ($row_id['folio'] > 0 ? " | Folio: {$row_id['folio']}" : "") . "]" : " [ID: $id_c_val]";

				$y->q("CALL sp_cancelar_cargo($id_c_val, '$idc', '$leyenda_esc', $rep_val, @filas)");
				$x .= ((strlen($x) > 0) ? ", " : "") . $lm[1] . (($lm[3] == 0) ? "" : " (r$lm[3])") . " (\$" . $lm[2] . ")" . $id_str;
			}
			// Detección robusta de operador
			$ses_usr  = isset($_SESSION['usuario']) ? $_SESSION['usuario'] : null;
			$operador = 'cajero';
			if (is_string($ses_usr) && $ses_usr !== '') {
			    $operador = $ses_usr;
			} elseif (is_object($ses_usr) && get_class($ses_usr) !== '__PHP_Incomplete_Class' && method_exists($ses_usr, 'getNombre')) {
			    $operador = $ses_usr->getNombre();
			}

			$x .= " | Operador: " . $operador;

			// ═══ Snapshot financiero POST-cancelación ═══
			$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$idc'");
			$post = $y->fetch_array($res_post);
			$n_post = intval($post['n']); $tot_post = number_format(floatval($post['total']), 2);
			$cargos_canc = $n_pre - $n_post;
			$monto_canc = number_format(floatval($pre['total']) - floatval($post['total']), 2);

			$texto_esc = $y->real_escape_string($texto);
			$x_esc = $y->real_escape_string($x);
			$pre_esc  = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");
			$post_esc = $y->real_escape_string("Adeudos: $n_post | Deuda: \$$tot_post | Cancelados: $cargos_canc (-\$$monto_canc)");
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'cancelacion', '$texto_esc. $pre_esc', '$x_esc | $post_esc', '$idc')");
			return "<script>cargaDatosContrato('$idc');</script>";
		} else {
			return $templates->render('sistema/mensaje', [
				'titulo' => 'Error',
				'mensaje' => 'Debe escribir a detalle el porqu&eacute; de la cancelaci&oacute;n de estos cargos (m&iacute;nimo ' . $min_car . ' caracteres).'
			]);
		}
		/*
		} else {
			return $templates->render('sistema/mensaje', [
				'titulo' => 'Error',
				'mensaje' => 'Las contrase&ntilde;as no son las correctas.'
			]);
		} */
	}
}

function aplicacargos($c, $cargo)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg = cargaConfig($y);

	if (!is_array($cargo) || count($cargo) == 0) {
		return $templates->render('sistema/mensaje', [
			'titulo' => 'Información',
			'mensaje' => 'No se seleccionaron cargos para aplicar.'
		]);
	}

	$n = 0;
	$m = 0;
	$alertas = array();
	foreach ($cargo as $leyenda_input) {
		$a = explode('|', $leyenda_input);
		$contratos_lista = is_array($c) ? $c : array($c);

		foreach ($contratos_lista as $numcontrato) {
			// Validar estado del contrato
			$res_edo = $y->q("SELECT estado FROM contrato WHERE numcontrato='$numcontrato'");
			list($edo_cto) = $y->fetch_array($res_edo);
			if (intval($edo_cto) === 4) {
				$alertas[] = "El contrato <b>$numcontrato</b> se encuentra en Suspensión Definitiva y no puede recibir nuevos cargos.";
				continue;
			}

			// Consultar tomas activas para este contrato
			$res_tomas = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
			list($n_tomas_agua) = $y->fetch_array($res_tomas);
			$res_tomas_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
			list($n_tomas_drenaje) = $y->fetch_array($res_tomas_d);
			$res_tipo = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
			list($es_comercial) = $y->fetch_array($res_tipo);
			$es_comercial = intval($es_comercial);

			$res2 = $y->q("select metros from contrato where numcontrato = '$numcontrato'");
			list($metros) = $y->fetch_array($res2);

			$res3 = $y->q("select metros, monto_comercial from cargos where UCASE(nombre) = UCASE('$a[0]') limit 1");
			list($aplicametros, $mon_com_db) = $y->fetch_array($res3);

			$leyenda = $a[0];
			$monto = floatval($a[1]);
			$mon_com = floatval($mon_com_db);
			$recargo = $a[2];
			$anio = $a[3];
			$categoria = $a[4];
			$repetir = $a[5];

			// Lógica de multiplicación por toma y tipo (Normal/Comercial)
			if ($categoria == 2 && $n_tomas_agua > 0) {
				$monto_base = ($es_comercial == 1 && $mon_com > 0) ? $mon_com : (($es_comercial == 1) ? $monto * 2 : $monto);
				$monto = $monto_base * $n_tomas_agua;
			}
			if ($categoria == 3 && $n_tomas_drenaje > 0) {
				$monto_base = ($es_comercial == 1 && $mon_com > 0) ? $mon_com : (($es_comercial == 1) ? $monto * 2 : $monto);
				$monto = $monto_base * $n_tomas_drenaje;
			}

			if ($aplicametros == 1)
				$monto = $monto * $metros;

			if ($anio == "0")
				$anio = date('Y');

			$aplicar_cargo = true;
			if ($n_tomas_agua == 0 && $categoria == 2) {
				$aplicar_cargo = false;
				$alertas[] = "El cargo <b>$leyenda</b> no aplica porque el contrato $numcontrato no tiene toma de agua conectada.";
			}
			if ($n_tomas_drenaje == 0 && $categoria == 3) {
				$aplicar_cargo = false;
				$alertas[] = "El cargo <b>$leyenda</b> no aplica porque el contrato $numcontrato no tiene toma de drenaje conectada.";
			}

			if ($aplicar_cargo) {
				$tabla_d = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos";
				if ($repetir == 0)
					$q = "INSERT INTO $tabla_d (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, 0)";
				else {
					$res = $y->q("SELECT COUNT(l.numcontrato) FROM vw_ligacargos_all l WHERE l.leyenda = '$leyenda' AND l.numcontrato = '$numcontrato'");
					list($cuenta) = $y->fetch_array($res);
					$q = "INSERT INTO $tabla_d (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, $cuenta)";
				}

				if ($y->q($q)) {
					$n++;
					// Calcular recargos si aplica
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, (isset($cuenta) ? $cuenta : 0), $y, 1, $cfg);
				} else
					$m++;
			}
		}
	}

	$mensaje = "Se ha" . (($n == 1) ? "" : "n") . " aplicado <b>$n</b> cargo" . (($n == 1) ? "" : "s") . "." . (($m != 0) ? "<br>$m cargo" . (($m == 1) ? "" : "s") . " no pud" . (($m == 1) ? "o" : "ieron") . " asignarse por duplicidad." : "");
	if (count($alertas) > 0) {
		$mensaje .= "<div style='color:#900; margin-top:10px; font-size:11px;'><b>RECHAZADOS POR REGLA:</b><br>" . implode("<br>", array_unique($alertas)) . "</div>";
	}

	// ═══ Snapshot financiero POST-aplicación (por cada contrato afectado) ═══
	// Auditoría de aplicación manual
	if ($n > 0) {
		$lista_labels = array();
		foreach($cargo as $l_in) { $a_l = explode('|', $l_in); $lista_labels[] = $a_l[0]; }
		$leyendas_str = implode(', ', array_unique($lista_labels));
		$contratos_lista_audit = is_array($c) ? $c : array($c);
		$ctos_str = implode(', ', $contratos_lista_audit);
		
		// Calcular snapshot post por cada contrato afectado
		$resumen_ctos = array();
		foreach ($contratos_lista_audit as $cto_a) {
			$res_p = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$cto_a'");
			$p = $y->fetch_array($res_p);
			$resumen_ctos[] = "Cto $cto_a: " . intval($p['n']) . " adeudos (\$" . number_format(floatval($p['total']), 2) . ")";
		}
		$snapshot_str = implode(' | ', $resumen_ctos);
		
		$leyendas_esc = $y->real_escape_string($leyendas_str);
		$ctos_esc = $y->real_escape_string($ctos_str);
		$snapshot_esc = $y->real_escape_string($snapshot_str);
		
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Aplicación manual de cargos', 'Cargos aplicados: $n | Formatos: $leyendas_esc', 'Contratos: $ctos_esc | $snapshot_esc', '-OPERACION-')");
	}

	return $templates->render('sistema/mensaje', [
		'titulo' => 'Aplicación de Cargos',
		'mensaje' => $mensaje . "<script>$('#cargostabla').html('')</script>"
	]);
}

function creaCargo($leyenda, $cat, $otracategoria, $monto, $mensual, $anio, $recargo, $interes, $multa, $aniocobro, $repetir, $metros, $automatico, $monto_comercial = 0)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$salida = "";

	if ($cat == -1) {
		$nombrecorto_auto = strtoupper(substr(preg_replace('/[^a-zA-Z0-9]/', '', $otracategoria), 0, 8));
		$q = "insert into categorias (nombre, nombrecorto) values(\"$otracategoria\", \"$nombrecorto_auto\")";
		if ($y->q($q))
			$salida .= "Se ha creado una categor&iacute;a nueva.<br>";
		else
			$salida .= "No se pudo agregar la categor&iacute;a nueva.<br>";
		$cat = $y->insert_id();
	}

	$multa = (!isset($multa)) ? 0 : $multa;
	$repetir = (!isset($repetir)) ? 0 : $repetir;
	$mensual = (!isset($mensual)) ? 0 : $mensual;
	$metros = (!isset($metros)) ? 0 : $metros;

	$monto_comercial = (!isset($monto_comercial) || $monto_comercial == "") ? 0 : floatval($monto_comercial);

	$q = "insert into cargos values(null, '$leyenda', $monto, $multa, '', $mensual, $cat, 1, $aniocobro, $repetir, $metros, $automatico, $monto_comercial)";

	if ($y->q($q)) {
		$salida .= "Se ha agregado al cat&aacute;logo de cargos <b>$leyenda</b>.<br>";
	} else
		$salida .= "No se pudo dar de alta el cargo.<br>";

	return $templates->render('sistema/mensaje', [
		'titulo' => 'Crear Cargo',
		'mensaje' => $salida . "<script>cargabusquedacontrato();</script>"
	]);
}

function modificaCargo($num, $leyenda, $cat, $otracategoria, $monto, $mensual, $anio, $recargo, $interes, $multa, $aniocobro, $repetir, $metros, $automatico, $monto_comercial = 0)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$salida = "";

	if ($cat == -1) {
		$nombrecorto_auto = strtoupper(substr(preg_replace('/[^a-zA-Z0-9]/', '', $otracategoria), 0, 8));
		$q = "insert into categorias (nombre, nombrecorto) values(\"$otracategoria\", \"$nombrecorto_auto\")";
		if ($y->q($q))
			$salida .= "Se ha creado una categor&iacute;a nueva.<br>";
		else
			$salida .= "No se pudo agregar la categor&iacute;a nueva.<br>";
		$cat = $y->insert_id();
	}

	$multa = (!isset($multa)) ? 0 : $multa;
	$repetir = (!isset($repetir)) ? 0 : $repetir;
	$mensual = (!isset($mensual)) ? 0 : $mensual;
	$metros = (!isset($metros)) ? 0 : $metros;

	$monto_comercial = (!isset($monto_comercial) || $monto_comercial == "") ? 0 : floatval($monto_comercial);

	$q = "update cargos set nombre='$leyenda', monto=$monto, monto_comercial=$monto_comercial, recargo=$multa, categoria=$cat, anio=$aniocobro, repetir=$repetir, metros=$metros, automatico=$automatico where numconsec=$num";

	if ($y->q($q)) {
		$salida .= "Se ha modificado el cargo $leyenda.<br>";
		
		// Sincronización de Saldo para cargos no pagados (estado = 0)
		$res_pendientes = $y->q("SELECT l.numcontrato, l.repetido, c.tipo, c.agua, c.drenaje, c.metros as metros_cto
								 FROM vw_ligacargos_pendientes l
								 JOIN contrato c ON l.numcontrato = c.numcontrato
								 WHERE l.leyenda='$leyenda'");
		
		$actualizados = 0;
		while ($p = $y->fetch_array($res_pendientes)) {
			$nc = $p['numcontrato'];
			$rep = $p['repetido'];
			$metros_cto = $p['metros_cto'];
			
			// Determinar número de tomas activas desde contrato_toma
			$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$nc' AND tiene_agua=1 AND estado_agua=1");
			list($n_agua) = $y->fetch_array($r_a);
			$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$nc' AND tiene_drenaje=1 AND estado_drenaje=1");
			list($n_drenaje) = $y->fetch_array($r_d);
			$r_t = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$nc'");
			list($es_com) = $y->fetch_array($r_t);
			
			$nuevo_monto = 0;
			
			// Recalcular basado en la nueva tarifa
			if ($cat == 2 && $n_agua > 0) {
				$m_base = ($es_com == 1 && $monto_comercial > 0) ? $monto_comercial : (($es_com == 1) ? $monto * 2 : $monto);
				$nuevo_monto = $m_base * $n_agua;
			}
			if ($cat == 3 && $n_drenaje > 0) {
				$m_base = ($es_com == 1 && $monto_comercial > 0) ? $monto_comercial : (($es_com == 1) ? $monto * 2 : $monto);
				$nuevo_monto = $m_base * $n_drenaje;
			}
			if ($metros == 1 && $nuevo_monto > 0) {
				$nuevo_monto = $nuevo_monto * $metros_cto;
			}
			
			// Si no es agua ni drenaje (ej. multas fijas), o usa configuración simple, aplicar tarifa directa
			if($cat != 2 && $cat != 3 && $nuevo_monto == 0) {
				$nuevo_monto = ($es_com == 1 && $monto_comercial > 0) ? $monto_comercial : (($es_com == 1) ? $monto * 2 : $monto);
				if ($metros == 1) $nuevo_monto = $nuevo_monto * $metros_cto;
			}

			if ($nuevo_monto > 0) {
				$y->q("UPDATE ligacargos SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
				$y->q("UPDATE ligacargos_historico SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
				$actualizados++;
			}
		}
		
		if ($actualizados > 0) {
			$salida .= "Se sincronizó el saldo retroactivamente en <b>$actualizados</b> contratos con este cargo pendiente.<br>";
			$antes_str = "Se modificaron tarifas del cargo. Tarifas aplicadas: Normal $\$$monto, Comercial: $\$$monto_comercial";
			$despues_str = "Sincronizacion de saldo aplicada a $actualizados contratos pendientes.";
			$leyenda_esc = $y->real_escape_string($leyenda);
			$antes_esc = $y->real_escape_string($antes_str);
			$despues_esc = $y->real_escape_string($despues_str);
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Sincr. masiva de Adeudos - $leyenda_esc', '$antes_esc', '$despues_esc', '-MASIVO-')");
		}

	} else

		$salida .= "No se pudo modificar el cargo.<br>";

	return $templates->render('sistema/mensaje', [
		'titulo' => 'Modificar Cargo',
		'mensaje' => $salida . "<script>cargabusquedacontrato();</script>"
	]);
}

function egresos()
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$res = $y->q("select max(id)+1 from egresos");
	list($folio) = $y->fetch_array($res);

	if ($folio == null)
		$folio = 1;

	$res = $y->q("select nombre from categorias_egresos order by id");
	$categorias_egresos = [];
	while (list($nombrecat) = $y->fetch_array($res)) {
		$categorias_egresos[] = $nombrecat;
	}

	$res = $y->q("select id, leyenda, monto, categoria, fecha, estado, motivoelimina from egresos order by fecha desc");
	$egresos = [];
	while ($row = $y->fetch_array($res)) {
		$egresos[] = [
			'id' => $row[0],
			'leyenda' => $row[1],
			'monto' => $row[2],
			'categoria' => $row[3],
			'fecha' => $row[4],
			'estado' => $row[5],
			'motivoelimina' => $row[6]
		];
	}

	return $templates->render('cargos/egresos', [
		'folio' => $folio,
		'categorias_egresos' => $categorias_egresos,
		'egresos' => $egresos
	]);
}

function registraegreso($folio, $nombre, $cat, $monto, $nombredetalle, $recibe)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$monto_val = floatval($monto);
	$nombre_esc = $y->real_escape_string($nombre);
	$cat_esc = $y->real_escape_string($cat);
	$detalle_esc = $y->real_escape_string($nombredetalle);
	$recibe_esc = $y->real_escape_string($recibe);

	// Resolver id_categoria desde categorias_egresos (mejora diseño Host C)
	$res_cat = $y->q("SELECT id FROM categorias_egresos WHERE nombre = '$cat_esc' LIMIT 1");
	$row_cat = $y->fetch_array($res_cat);
	$id_cat = $row_cat ? intval($row_cat['id']) : null;
	$id_cat_sql = ($id_cat !== null) ? $id_cat : 'NULL';

	$q = "INSERT INTO egresos (id, leyenda, monto, categoria, fecha, estado, motivoelimina, detalle, recibe, id_categoria)
	      VALUES (null, '$nombre_esc', $monto_val, '$cat_esc', now(), 0, '', '$detalle_esc', '$recibe_esc', $id_cat_sql)";

	if ($y->q($q)) {
		$titulo = 'Registrado';
		$mensaje = "Se ha registrado el egreso de \$" . number_format($monto, 2, '.', ',') . ".";
		
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Registro de Egreso', 'NUEVO', 'Folio: $folio | Leyenda: $nombre | Monto: \$$monto | Recibe: $recibe', '-EGRESO-')");
	} else {
		$titulo = 'Error';
		$mensaje = "No se ha podido registrar el egreso.";
	}

	$script = "<script>window.open('reportes/reciboegreso.php?folio=$folio', 'reciboegreso', 'width=640, height=450, scrollbars=yes');</script>";

	return $templates->render('sistema/mensaje', [
		'titulo' => $titulo,
		'mensaje' => $mensaje . $script
	]);
}

function mostrarCargo($num)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	$y->q("update cargos set estado = 1 where numconsec = $num");
}

function ocultarCargo($num)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	$y->q("update cargos set estado = 0 where numconsec = $num");
}

function modificarCargo($num)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$res1 = $y->q("select numconsec, nombre, monto, monto_comercial, recargo, categoria, estado, anio, repetir, metros, automatico from cargos where numconsec = $num");
	list($numconsec, $nombre, $monto, $monto_comercial, $recargo, $categoria, $estado, $anio, $repetir, $metros, $automatico) = $y->fetch_array($res1);

	$cargo = [
		'numconsec' => $numconsec,
		'nombre' => $nombre,
		'monto' => $monto,
		'monto_comercial' => $monto_comercial,
		'recargo' => $recargo,
		'categoria' => $categoria,
		'estado' => $estado,
		'anio' => $anio,
		'repetir' => $repetir,
		'metros' => $metros,
		'automatico' => $automatico
	];

	$resc = $y->q("select id, nombre from categorias");
	$categorias = [];
	while ($cat = $y->fetch_array($resc)) {
		$categorias[] = ['id' => $cat[0], 'descripcion' => $cat[1]];
	}

	return $templates->render('cargos/modificar', [
		'cargo' => $cargo,
		'categorias' => $categorias
	]);
}

function eliminarCargo($num)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	$y->q("update cargos set estado = 2 where numconsec = $num");
}

function regresarCargoCancelado($contrato, $leyenda, $repetido, $id_cargo = 0)
{
```

</details>

---

## Agent Response

### Thinking

**Analyzing Exemption Logic**

I've just confirmed the logic within `includes/negocio/cargos.php`. Specifically, lines 49-51 clearly show the exemption is only triggered when `$exento_recargo` is 1 and the charge's creation year aligns with the current year. This has removed an earlier ambiguity.




### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.777080030s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L301-1100)</summary>

**Path:** `Unknown file`

```

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

		// ═══ Detectar cargos legados (no recalculados por catálogo inactivo) ═══
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
	$res_tarifas = $y->q("SELECT nombre, monto, monto_comercial, categoria FROM cargos WHERE automatico=1 AND recargo=0 AND estado=1 AND anio=$anio_actual AND categoria IN (2,3) ORDER BY categoria, numconsec");
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
	$y->q("CALL sp_cancelar_cargo('$numcontrato', CONCAT('ANUALIDAD DEL ', '$servicio', ' ', '$anio_actual'), 0, @filas)");
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

            // 3. Limpiar tabla activa
            $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato = '$id' AND estado = 0");

            // 4. Limpiar tabla histórica (Esquema V2)
            $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato = '$id' AND estado = 0");
        }
        return; // Terminar aquí para SDF
    }

    // --- LÓGICA DE PARIDAD NORMAL (Estados 1, 2, 3) ---
    
    // Conteo físico activo
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1 AND estado_agua=1");
	list($n_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($n_drenaje) = $y->fetch_array($r_d);
	
	// Sincronizar AGUA (categoria=2)
	$leyenda_a = "ANUALIDAD DEL AGUA $anio";
	if ($n_agua > 0) {
	    // Si hay toma física pero el cargo está cancelado (-1), restaurarlo a pendiente (0)
	    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = -1");
	    $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = -1");
	} else {
	    // Si no hay toma física pero el cargo está pendiente (0), cancelarlo (-1)
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = 0");
	    $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = 0");
	}

	// Sincronizar DRENAJE (categoria=3)
	$leyenda_d = "ANUALIDAD DEL DRENAJE $anio";
	if ($n_drenaje > 0) {
	    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = -1");
	    $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = -1");
	} else {
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = 0");
	    $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = 0");
	}

	// Recalibrar montos de cargos PENDIENTES basados en el nuevo número de tomas y tipo
	_sincronizaDeudaPendienteContrato($id, $y);
}

function _sincronizaDeudaPendienteContrato($numcontrato, $y)
{
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($n_tomas_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($n_tomas_drenaje) = $y->fetch_array($r_d);
	$r_tc = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
	list($es_comercial) = $y->fetch_array($r_tc);

	$rescargos = $y->q("SELECT nombre, monto, monto_comercial, categoria, metros FROM cargos WHERE estado=1 AND automatico=1 AND categoria IN (2,3)");
	$tarifas_automaticas = array();
	while ($c = $y->fetch_array($rescargos)) {
		$tarifas_automaticas[$c['nombre']] = $c;
	}

	$pendientes = $y->q("SELECT leyenda, repetido, categoria, monto as monto_actual FROM vw_ligacargos_pendientes WHERE numcontrato='$numcontrato' AND categoria IN (2,3)");
	
	$rm = $y->q("SELECT metros FROM contrato WHERE numcontrato='$numcontrato'");
	list($metros_cto) = $y->fetch_array($rm);
	if (empty($metros_cto)) $metros_cto = 0;

	$actualizados = 0;
	while ($p = $y->fetch_array($pendientes)) {
		$leyenda = $p['leyenda'];
		$cat = $p['categoria'];
		$rep = $p['repetido'];
		$monto_actual = floatval($p['monto_actual']);
		
		if (isset($tarifas_automaticas[$leyenda])) {
		    $tf = $tarifas_automaticas[$leyenda];
		    $monto = floatval($tf['monto']);
		    $monto_com = floatval($tf['monto_comercial']);
		    $aplicametros = $tf['metros'];
		    
		    $nuevo_monto = 0;
		    if ($cat == 2 && $n_tomas_agua > 0) {
		        $m_base = ($es_comercial == 1 && $monto_com > 0) ? $monto_com : (($es_comercial == 1) ? $monto * 2 : $monto);
		        $nuevo_monto = $m_base * $n_tomas_agua;
		    }
		    if ($cat == 3 && $n_tomas_drenaje > 0) {
		        $m_base = ($es_comercial == 1 && $monto_com > 0) ? $monto_com : (($es_comercial == 1) ? $monto * 2 : $monto);
		        $nuevo_monto = $m_base * $n_tomas_drenaje;
		    }
		    if ($aplicametros == 1 && $nuevo_monto > 0) {
		        $nuevo_monto = $nuevo_monto * $metros_cto;
		    }
		    
		    if ($nuevo_monto > 0 && abs($nuevo_monto - $monto_actual) > 0.01) {
		        $y->q("UPDATE ligacargos SET monto=$nuevo_monto WHERE numcontrato='$numcontrato' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
		        $y->q("UPDATE ligacargos_historico SET monto=$nuevo_monto WHERE numcontrato='$numcontrato' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
		        $actualizados++;
		    }
		}
	}
	
	if ($actualizados > 0) {
	    $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Calibracion automatica de Deudas', 'Saldos desfasados por cambio de tipo', 'Se recalcularon $actualizados servicios pendientes', '$numcontrato')");
	}
}

function cambiaEstadoConexion($numcontrato, $num_toma, $servicio, $nuevo_estado)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg = cargaConfig($y);

	// Validar contrato ACTIVO
	$r = $y->q("SELECT estado FROM contrato WHERE numcontrato='$numcontrato'");
	list($est) = $y->fetch_array($r);
	$estado_activo = intval(obtenerValorSeguro($cfg, 'estado_activo', 1));
	if ($est != $estado_activo) {
		return "<b>Error:</b> Solo se puede cambiar la conexi&oacute;n en contratos ACTIVOS.";
	}

	$campo = ($servicio == 'agua') ? 'estado_agua' : 'estado_drenaje';

	// ═══ Snapshot financiero PRE-paridad ═══
	$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
	$pre = $y->fetch_array($res_pre);
	$n_pre   = intval($pre['n']);
	$tot_pre = number_format(floatval($pre['total']), 2);

	$y->q("UPDATE contrato_toma SET $campo=$nuevo_estado WHERE numcontrato='$numcontrato' AND num_toma=$num_toma");

    $desc_ev  = ($nuevo_estado == 0) ? 'desconectado' : 'conectado';
    $antes_ev = ($nuevo_estado == 0) ? 'conectado' : 'desconectado';
    $desc_ev_esc  = $y->real_escape_string($desc_ev);
    $antes_ev_esc = $y->real_escape_string($antes_ev);
    $servicio_esc = $y->real_escape_string($servicio);

	// Sincronizar campos legacy y Paridad Financiera
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($tot_a) = $y->fetch_array($r_a);
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

		for ($n = 1; $n <= $num_t; $n++) {
			$td        = isset($tomas_data[$n]) ? $tomas_data[$n] : array();
			$tipo_t    = intval(obtenerValorSeguro($td, 'tipo', 0));
			$t_agua    = intval(obtenerValorSeguro($td, 'tiene_agua', 1));
			$t_drenaje = intval(obtenerValorSeguro($td, 'tiene_drenaje', 1));
			$e_agua    = ($t_agua    ? 1 : 0);
			$e_drenaje = ($t_drenaje ? 1 : 0);
			$y->q("INSERT INTO contrato_toma (numcontrato,num_toma,tipo,tiene_agua,tiene_drenaje,estado_agua,estado_drenaje,fecha_alta) VALUES('$id',$n,$tipo_t,$t_agua,$t_drenaje,$e_agua,$e_drenaje,NOW())");
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
        _sincronizaParidadFinanciera($id, $y);

		// Auditoría de Creación
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Registro de Nuevo Contrato', 'NUEVO', 'Usuario: $usr | Domicilio: $domicilio', '$id')");

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
		    list($c_estado) = $y->fetch_array($res_edo);
		    $res_tomas_actuales = $y->q("SELECT COUNT(id) FROM contrato_toma WHERE numcontrato='$id'");
		    list($tomas_actuales) = $y->fetch_array($res_tomas_actuales);
		    
		    if ($num_tomas > $tomas_actuales && !in_array($c_estado, [1, 2])) {
			    return "Restriccion: Solo se permite agregar nuevas tomas a contratos en estado Activo o Suspension Temporal.";
		    }
		}
		$cond_id = " AND c.numcontrato != '$id' ";
	} else {
		$cond_id = "";
	}

	$dom_clean_sql_c = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER(c.domicilio), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$dom_clean_sql_v = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER('$domicilio'), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_clean_sql_c = $dom_clean_sql_v AND c.estado != 4 " . $cond_id);
	list($tomas_otras) = $y->fetch_array($res_count);

	if ($tomas_otras + intval($num_tomas) > 2) {
		return "El usuario ya cuenta con $tomas_otras toma(s) en otros contratos para el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio, previendo asignar $num_tomas extra.";
	}

	return "OK";
}

/**
 * Regla C06 — Amnistía de Recargos en Reactivación
 * Al reactivar un contrato (→ Estado 1 ACTIVO), cancela todos los recargos
 * de años anteriores al año actual que estén pendientes (estado=0).
 * Solo quedan vigentes los cargos y recargos del año en curso.
 * Se registra auditoria en tabla cambios.
 */
function _amnistiaRecargosHistoricos($contrato, $y) {
	$anio_actual = date('Y');

	// Snapshot financiero ANTES de cancelar — para auditoría con impacto real
	$res_snap = $y->q("SELECT COUNT(*) AS total_cargos,
		                      SUM(monto) AS total_monto,
		                      COUNT(CASE WHEN es_recargo_moratorio = 1 AND anio < $anio_actual THEN 1 END) AS recargos_a_cancelar,
		                      SUM(CASE WHEN es_recargo_moratorio = 1 AND anio < $anio_actual THEN monto ELSE 0 END) AS monto_a_cancelar
		               FROM vw_ligacargos_pendientes
		               WHERE numcontrato = '$contrato'");
	$snap = $y->fetch_array($res_snap);
	$cargos_antes     = intval($snap['total_cargos']);
	$monto_antes      = number_format(floatval($snap['total_monto']), 2);
	$recargos_cancelar = intval($snap['recargos_a_cancelar']);
	$monto_cancelar   = number_format(floatval($snap['monto_a_cancelar']), 2);
	$cargos_despues   = $cargos_antes - $recargos_cancelar;
	$monto_despues    = number_format(floatval($snap['total_monto']) - floatval($snap['monto_a_cancelar']), 2);

	// Cancelar recargos moratorios de años anteriores en tabla activa.
	// Usa categoria IN (16,17) — fuente de verdad canónica (regla F05).
	$y->q("UPDATE ligacargos
		    SET estado = -1
		  WHERE numcontrato = '$contrato'
		    AND categoria IN (16, 17)
		    AND anio < $anio_actual
		    AND estado = 0");

	// Sincronizar en tabla histórica (esquema V2 split)
	$y->q("UPDATE ligacargos_historico
		    SET estado = -1
		  WHERE numcontrato = '$contrato'
		    AND categoria IN (16, 17)
		    AND anio < $anio_actual
		    AND estado = 0");

	if ($recargos_cancelar > 0) {
		$antes_txt   = "Adeudos: $cargos_antes cargos | Deuda total: \$$monto_antes | Recargos moratorios hist. a cancelar: $recargos_cancelar (\$$monto_cancelar)";
		$despues_txt = "Adeudos: $cargos_despues cargos | Deuda total: \$$monto_despues | $recargos_cancelar recargos moratorios históricos cancelados (estado=-1)";
		
		$antes_esc   = $y->real_escape_string($antes_txt);
		$despues_esc = $y->real_escape_string($despues_txt);

		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
		        VALUES(NOW(),
		               'Amnistia de Recargos en Reactivacion (C06)',
		               '$antes_esc',
		               '$despues_esc',
		               '$contrato')");
	}
}
?>
```

</details>

---

## Agent Response

### Thinking

**Analyzing Contract Creation Logic**

I'm currently focused on the `guardaNuevoContrato` function, specifically lines 944-1008. I've been dissecting the logic for the "Solo agua, sin drenaje" sub-case. My analysis shows the function iterates through `tomas_data` and inserts data for each "toma" (water intake point).


**Tracing Cargo Creation Logic**

I've been drilling deeper into the function calls. I overlooked where initial cargo entries are created for each contract. I see that `_sincronizaParidadFinanciera` doesn't directly insert them. It does call `_sincronizaDeudaPendienteContrato` which might be where the cargo inserts occur. I'm now focusing on the logic within `_sincronizaDeudaPendienteContrato` to trace cargo creation.




### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.228845617s
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
	$res_tarifas = $y->q("SELECT nombre, monto, monto_comercial, categoria FROM cargos WHERE automatico=1 AND recargo=0 AND estado=1 AND anio=$anio_actual AND categoria IN (2,3) ORDER BY categoria, numconsec");
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
		// Consultar tomas activas para calcular montos correctamente
		$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
		list($n_tomas_agua) = $y->fetch_array($r_a);
		$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
		list($n_tomas_drenaje) = $y->fetch_array($r_d);
		$r_tc = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
		list($es_comercial) = $y->fetch_array($r_tc);

		// Evitar explosión de cargos y respetar amnistía de años suspendidos (Regla C06 - Hardening)
		// Solo se auto-generan cargos automáticos que sean atemporales (anio=0) o del año en curso.
		// Los cargos faltantes de años anteriores deben ser controlados por el script anual.
		$anio_actual_fact = intval(date('Y'));
		$rescargos = $y->q("SELECT nombre, monto, monto_comercial, recargo, anio, categoria, repetir, metros FROM cargos WHERE estado=1 AND automatico=1 AND (anio = 0 OR anio = $anio_actual_fact) ORDER BY nombre");

		while ($a = $y->fetch_array($rescargos)) {
			$leyenda    = $a['nombre'];
			$monto      = floatval($a['monto']);
			$mon_com    = floatval($a['monto_comercial']);
			$recargo    = $a['recargo'];
			$anio       = $a['anio'];
			$categoria  = $a['categoria'];
			$repetir    = $a['repetir'];
			$aplicametros = $a['metros'];

			// Calcular monto usando monto_comercial (sin hardcode)
			if ($categoria == 2 && $n_tomas_agua > 0) {
				$monto_base = ($es_comercial == 1 && $mon_com > 0) ? $mon_com : (($es_comercial == 1) ? $monto * 2 : $monto);
				$monto = $monto_base * $n_tomas_agua;
			}
			if ($categoria == 3 && $n_tomas_drenaje > 0) {
				$monto_base = ($es_comercial == 1 && $mon_com > 0) ? $mon_com : (($es_comercial == 1) ? $monto * 2 : $monto);
				$monto = $monto_base * $n_tomas_drenaje;
			}
			if ($aplicametros == 1)
				$monto = $monto * $metros;
			if ($anio == "0")
				$anio = $anio_actual;

			$aplicar_cargo = true;
			if ($n_tomas_agua == 0 && $categoria == 2)    $aplicar_cargo = false;
			if ($n_tomas_drenaje == 0 && $categoria == 3) $aplicar_cargo = false;

			if ($aplicar_cargo == true) {
				if ($repetir == 0) {
					$chk = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato' LIMIT 1");
					if ($y->num_rows($chk) == 0) {
						$tabla_dest = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos";
						$q = "INSERT INTO $tabla_dest (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, 0)";
						$y->q($q);
					}
					// Siempre intentar generar recargos (calcula_recargos es idempotente internamente)
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, 0, $y, $mescontrato, $cfg);
				} else {
					// Hardening: Incluso si es repetible, no auto-generar si ya existe una instancia para el mismo año
					// Esto previene la multiplicación infinita por refresco de UI (Refresh-bomb)
					$chk_rep = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato' AND anio=$anio LIMIT 1");
					if ($y->num_rows($chk_rep) == 0) {
						$resautomatico = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato'");
						list($cuenta) = $y->fetch_array($resautomatico);
						$tabla_dest = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos";
						$q = "INSERT INTO $tabla_dest (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, $cuenta)";
						$y->q($q);
						calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg);
					} else {
						// Cargo ya existe pero recargos podrían faltar (re-activación)
						$resautomatico = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato'");
						list($cuenta) = $y->fetch_array($resautomatico);
						calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg);
					}
				}
			}
		}
	}

	// --- Otros contratos del mismo usuario ---
	$res2 = $y->q("SELECT numcontrato, domicilio, estado FROM contrato WHERE numusuario=$numusuario AND numcontrato != '$id'");
	$otros_contratos = array();
	while (list($contrato_o, $domicilio_o, $estado_o) = $y->fetch_array($res2)) {
		$otros_contratos[] = array('contrato' => $contrato_o, 'domicilio' => $domicilio_o, 'estado' => $estado_o);
	}
```

</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
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

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

## Conversation 2d2217ca-2154-4c88-b506-587e879d4278: Validating Agua Test Plan
- Created: 2026-04-18T20:32:04Z
- Last modified: 2026-04-18T23:01:21Z

### USER Objective:
Stabilizing Agua Testing Suite

Main Objective: Complete the formalization and stabilization of the Agua V2 testing suite to ensure autonomous, production-ready execution.

Goals:
1. Finalize the "Plan de Pruebas" documentation with high-precision CSS selectors and updated Host C paths.
2. Refactor attendance module interoperability between the Assembly generator and Agua processor, including MD5 validation and cross-table database consistency (active vs. historical).
3. Synchronize the deployment pipeline (B→A→C) to maintain environment integrity.
4. Establish clear operational separation for concurrent manual and automated testing across dual monitors.
5. Secure version control integrity for all finalized protocols in remote repositories.

## Conversation 857c34d0-7f04-45a0-98d9-f2c3598f2011: Investigating Host Synchronization Anomalies
- Created: 2026-04-18T05:16:57Z
- Last modified: 2026-04-18T06:38:48Z

### USER Objective:
Stabilizing Agua Audit Archiving

Objective: Finalize the migration of the audit logging system to a partitioned architecture (active vs. historical) and ensure full operational continuity of the Agua V2 administrative dashboard.

Goals:
1. Implement and validate the archival split between `cambios` and `cambios_historico` tables to ensure data integrity and performance.
2. Integrate the `sp_archivar_bitacora` procedure into the standard deployment pipeline (`Full-Pipeline-Sync.sh`) to prevent configuration drift on Host C.
3. Consolidate UI access by linking the `monitor_fallbacks.php` utility into the "Operaciones y Reportes" panel.
4. Refine system-wide SELECT queries to correctly handle temporal data distribution between the active and historical audit tables.

## Conversation 4e4d201a-ecea-40ab-b382-a9c52c17a702: Reorganizing Agua Configuration Dashboard
- Created: 2026-04-18T04:23:21Z
- Last modified: 2026-04-18T04:52:46Z

### USER Objective:
Refining Agua System UI
The user's primary objective is to finalize the administrative and diagnostic polish of the Agua V2 system. Key goals include:
1. Standardizing application labels and menu terminology for consistency across the platform.
2. Enhancing navigation and filter functionality for reporting modules, specifically in the Cartera Vencida and Saneamiento views.
3. Troubleshooting and patching the Bitácora de Saneamiento to ensure accurate audit trail visualization post-migration.
4. Managing version control and documentation integrity by excluding specific development notes from the deployment pipeline.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 23 Apr 2026, 11:01 am

---

## Agent Response

### Thinking

**Analyzing Automatic Charges**

I've pinpointed the creation of automatic charges to the `cargaContrato` function, specifically within lines 69-143. This function is called whenever a contract is viewed or created. I've noted that new contracts, identified by `$estado == 1`, trigger a search for `automatico=1` charges within the catalog. Now I'm focused on what comes before and after.


**Refining Charge Calculation**

I've refined my understanding of the charge calculation. `monto` is derived from `n_tomas_agua`, `n_tomas_drenaje`, and `es_comercial`. I've confirmed that `guardaNuevoContrato` initiates the process that culminates in `cargaContrato` calling the insert function. I've focused on Sub-case B, and determined the logic successfully prevents the inclusion of drainage charges.
I'm now diving into the workings of Sub-case C.


**Confirming Expected Behavior**

I've confirmed expected behavior for Sub-cases D and E. Specifically, the logic accurately calculates `monto` based on commercial status and number of water/drainage connections, including scenarios with multiple connections. The code handles the 3rd toma block in the `guardaNuevoContrato` function by comparing with existing connections. The database's primary key constraint handles duplicate contract IDs. I'm focusing on the INSERT operations now to completely validate the process.


**Predicting System Response**

I've determined that a database interaction on line 967, inside `includes/negocio/cargos.php`, where a crucial `if` check will fail. Consequently, the system will respond with an error message indicating the contract couldn't be added, as seen on line 1004. I'm focusing on the error condition that prevents this.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 8.088403955s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

Ose ya validaste que los casos a a f de:  UI-6 · Creación de Nuevo Contrato — 6 sub-casos (A a F)  , ya estan correctos, no es necesario los pruebe ?

---

## Agent Response

### Thinking

**Clarifying UI-6 Testing**

I'm checking if I implied that sub-cases A through F of UI-6 are already fully correct. My evaluation validates the underlying *logic*, which isn't the same as confirming that the test cases execute correctly in the user interface.


**Revising Validation Steps**

I'm now separating backend logic verification from UI testing. I've confirmed the PHP and SQL are robust for all six sub-cases. The test plan should be executed to *formally* confirm UI behavior, but since the user said not to do UI tests, I won't, unless they reconsider. I will offer that it's the "correct" QA approach for full confidence. The user's question clarifies: am I comfortable the code's logic is already complete? Yes.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.574767620s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

HIce  Sub-caso B, me dio: contrato: 9907
Rastrea , algo fallo , pues  creo ANUALIDAD DEL DRENAJE 2026 y no seleccione drenaje como indica la prueba; informa causa.
ademas: historial_mov_cto.php?id=9907  no muestra el detalle de la seleccion del contrato generada/guardada, realiza los ajustes.


---

## Agent Response

### Thinking

**Analyzing Contract Errors**

I've identified contract `9907` stemming from sub-case B (water-only contract) and found two key problems. First, it erroneously created an "ANUALIDAD DEL DRENAJE 2026" entry, despite drainage not being part of the agreement. Second, I need to understand the issue with `historial_`.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.331915215s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 23 Apr 2026, 11:31 am

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
**Created:** 23 Apr 2026, 11:31 am

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
**Created:** 23 Apr 2026, 11:31 am

---

## Agent Response

### Thinking

**Analyzing Contract Parameters**

I'm now zeroing in on `guardaNuevoContrato` within `includes/negocio/contratos.php`, and how it processes form input for the new contract. I'm focusing on the logic around `contrato_toma` and verifying that the `tiene_drenaje = 1` condition is properly handled, which is critical.


**Examining Data Flow**

I'm now tracing how the `$agua` and `$drenaje` parameters are used within `guardaNuevoContrato`. The INSERT statement at line 965 uses these, and then the following lines (985-991) further refine the values via `contrato_toma` data. This suggests that the initial `$agua` and `$drenaje` might be overridden based on the `contrato_toma` records. It is a critical check to see if the parameters passed from the form match, and if not, why not.




### Actions

**Tool:** `view_file`
**File:** `nuevo.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.857394883s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<h1>Nuevo Contrato</h1>
<hr>
<?php if(isset($faltan_cargos) && count($faltan_cargos) > 0): ?>
    <div style='color: #856404; background-color: #fff3cd; padding: 10px; border: 1px solid #ffeeba; border-radius: 5px; margin-bottom: 15px;'>
        <b>Aviso:</b> Faltan por registrar en el cat&aacute;logo los siguientes cargos para poder aplicarlos correctamente: <?= implode(', ', $faltan_cargos) ?>
    </div>
<?php endif; ?>
<div id='formato' style='width: 100%; margin: 5px 0;'>
    <form id='datoscto' name='datoscto' method='post'>
        <input type='hidden' value='guardaNuevoContrato' id='opc' name='opc'>
        <div style='display: flex; gap: 40px; align-items: flex-start;'>
            <!-- Left Column: Main Form Fields -->
            <div style='flex: 0 0 500px;'>
                <table width='100%'>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' width='160px' valign='top'>Contrato:</td>
                        <td valign='top'>
                            <input type='text' id='idcontrato' class='mayusculas' size=6 name='idcontrato' autocomplete=off
                                value='<?= $ultimoID ?>' readonly='true'>
                        </td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>A nombre de:</td>
                        <td valign='top'>
                            <select name='nuevousuario' id='usuarios'>
                            </select><br>
                            <small>Buscar:</small> <input type='text' id='nuevonombre' class='mayusculas' name='nuevonombre'
                                style='width:190px'
                                onkeydown="if(event.key==='Tab') { event.preventDefault(); manejarBusquedaUsuario(this.value); }"
                                autocomplete=off><br><br>
                        </td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>Domicilio:</td>
                        <td valign='top'><input class='mayusculas' type='text' value='' name='domicilio' id='domicilio' style='width: 100%; background-color:#eee;'
                                autocomplete=off readonly='true'><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>M&aacute;s datos:<br><small style='color: grey;'>Notas sobre conflictos, quejas, etc.</small></td>
                        <td valign='top'><textarea class='mayusculas' name='masdatos' id='masdatos' style='width: 100%;' rows=3></textarea><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>Observaciones:<br><small style='color: grey;'>Ubicaci&oacute;n entre calles, medidas, etc.</small></td>
                        <td valign='top'><textarea class='mayusculas' name='observaciones' id='observaciones' style='width: 100%;' rows=3></textarea><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>Metros lineales:</td>
                        <td valign='top'>
                            <input class='mayusculas' type='text' value='0' name='metros' id='metros' style='width: 100%;' autocomplete=off><br><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='2'>
                            <div id='domicilios_container' style='background-color:#fdfdfd; border:1px solid #ddd; padding:10px; border-radius:4px; display:none; margin-bottom:15px;'>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>

            <!-- Right Column: Tomas -->
            <div style='flex: 1; overflow: hidden; padding-top: 10px;'>
                <div style='margin-bottom:10px;'>
                    Tomas:&nbsp;&nbsp;Cantidad de tomas:&nbsp;
                    <select name='num_tomas' id='num_tomas' onchange='actualizaTomas(this.value)'>
                        <?php for($i=1; $i<=$max_tomas; $i++): ?>
                            <option value='<?= $i ?>'><?= $i ?> Toma<?= ($i>1?'s':'') ?></option>
                        <?php endfor; ?>
                    </select>
                </div>
                <div id='tomas_container' style='display: flex; flex-wrap: nowrap; gap: 15px; overflow-x: auto;'>
                    <?php for($n=1; $n<=$max_tomas; $n++): ?>
                        <div id='toma_card_<?= $n ?>' class='toma-card' style='border:1px solid #ccc; padding:10px; border-radius:8px; min-width:300px; width:300px; <?= ($n>1?'display:none;':'') ?> background:#f9f9f9;'>
                            <h3 style='margin-top:0; border-bottom:1px solid #ddd; padding-bottom:5px;'><?= ($n==1?'1ra.':'2da.') ?> Toma</h3>
                            
                            <div style='margin-bottom:10px;'>
                                <b>Tipo:</b><br>
                                <input type='radio' name='tomas[<?= $n ?>][tipo]' id='t_tipo_<?= $n ?>_0' value='0' checked onchange='cambiaTipo(<?= $n ?>, 0)'> <label for='t_tipo_<?= $n ?>_0'>Normal</label>&nbsp;&nbsp;
                                <input type='radio' name='tomas[<?= $n ?>][tipo]' id='t_tipo_<?= $n ?>_1' value='1' onchange='cambiaTipo(<?= $n ?>, 1)'> <label for='t_tipo_<?= $n ?>_1'>Comercial</label>
                            </div>

                            <div style='margin-bottom:10px; border:1px dashed #bbb; padding:5px; background:#fff;'>
                                <input type='checkbox' name='tomas[<?= $n ?>][tiene_agua]' id='t_agua_<?= $n ?>' value='1'> 
                                <label for='t_agua_<?= $n ?>'><b>Tiene conexi&oacute;n de Agua</b></label>
                                <div id='ref_agua_<?= $n ?>' style='font-size:11px; color:#666; margin-left:20px;'>
                                    <?= isset($tarifas_referencia['agua']['leyenda']) ? $tarifas_referencia['agua']['leyenda'] : 'Tarifa de Agua' ?>: <b>$<?= isset($tarifas_referencia['agua']['normal']) ? number_format($tarifas_referencia['agua']['normal'], 2) : '0.00' ?></b>
                                </div>
                            </div>

                            <div style='border:1px dashed #bbb; padding:5px; background:#fff;'>
                                <input type='checkbox' name='tomas[<?= $n ?>][tiene_drenaje]' id='t_drenaje_<?= $n ?>' value='1'> 
                                <label for='t_drenaje_<?= $n ?>'><b>Tiene conexi&oacute;n (descarga) de Drenaje</b></label>
                                <div id='ref_drenaje_<?= $n ?>' style='font-size:11px; color:#666; margin-left:20px;'>
                                    <?= isset($tarifas_referencia['drenaje']['leyenda']) ? $tarifas_referencia['drenaje']['leyenda'] : 'Tarifa de Drenaje' ?>: <b>$<?= isset($tarifas_referencia['drenaje']['normal']) ? number_format($tarifas_referencia['drenaje']['normal'], 2) : '0.00' ?></b>
                                </div>
                            </div>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
        </div>
        <div style='text-align: center; padding-top: 30px; padding-bottom: 20px;'>
            <input type='submit' value='Guardar datos del Contrato' onclick="return validaNuevoContrato();">
        </div>
        <script>
            var tarifas = <?= json_encode($tarifas_referencia) ?>;
            function actualizaTomas(val) {
                $('.toma-card').hide();
                for(var i=1; i<=val; i++) {
                    $('#toma_card_'+i).show();
                }
            }
            function cambiaTipo(num, tipo) {
                var suf = (tipo == 1 ? 'comercial' : 'normal');
                var rec_agua_leyenda = tarifas.agua && tarifas.agua.leyenda ? tarifas.agua.leyenda : 'Tarifa de Agua';
                var rec_agua_monto = tarifas.agua && tarifas.agua[suf] ? parseFloat(tarifas.agua[suf]) : 0;
                
                var rec_drenaje_leyenda = tarifas.drenaje && tarifas.drenaje.leyenda ? tarifas.drenaje.leyenda : 'Tarifa de Drenaje';
                var rec_drenaje_monto = tarifas.drenaje && tarifas.drenaje[suf] ? parseFloat(tarifas.drenaje[suf]) : 0;

                $('#ref_agua_'+num).html(rec_agua_leyenda + ': <b>$' + rec_agua_monto.toLocaleString('en-US', {minimumFractionDigits: 2}) + '</b>');
                $('#ref_drenaje_'+num).html(rec_drenaje_leyenda + ': <b>$' + rec_drenaje_monto.toLocaleString('en-US', {minimumFractionDigits: 2}) + '</b>');
            }
            function manejarBusquedaUsuario(val) {
                $('#submitusuario').attr('disabled', 'disabled'); 
                buscaUsuarioCambio(val);
                var opciones = $('#usuarios option');
                if (opciones.length === 1) {
                    opciones.prop('selected', true);
                    $('#usuarios').trigger('change');
                } else if (opciones.length > 1) {
                    // Si hay varios, obligar a que un click en el 1er elemento real sí dispare el evento 'change'
                    $('#usuarios').prepend('<option value="" disabled selected>-- Elija un usuario --</option>').val('');
                    $('#domicilios_container').hide().empty();
                    $('#domicilio').prop('readonly', true).css('background-color', '#eee').val('');
                    $('#usuarios').focus();
                } else {
                    // Sin coincidencias: habilitar domicilio para captura manual
                    $('#domicilios_container').hide().empty();
                    $('#domicilio').prop('readonly', false).css('background-color', '#fff').val('').focus();
                }
            }
            function aplicaDomicilio(valor) {
                var dom_input = $('#domicilio');
                if (valor === '__NUEVO__') {
                    dom_input.prop('readonly', false).css('background-color', '#fff').val('').focus();
                } else {
                    dom_input.prop('readonly', true).css('background-color', '#eee').val(valor);
                }
            }
            function validaNuevoContrato() {
                var usr = $('#usuarios').val();
                if (!usr) { alert('Seleccione un usuario primero.'); return false; }
                
                if ($('input[name="sel_domicilio"]').length > 0 && $('input[name="sel_domicilio"]:checked').length === 0) {
                    alert('Debe seleccionar un domicilio origen de la lista o marcar la opción de Nueva Direcci\u00f3n para continuar.');
                    return false;
                }
                
                var dom_val = $('#domicilio').val().trim();
                if (dom_val === '') {
                    alert('Debe capturar o seleccionar un domicilio válido.');
                    return false;
                }
                
                var num_tomas = parseInt($('#num_tomas').val()) || 1;
                var todo_ok = true;
                for (var i = 1; i <= num_tomas; i++) {
                    if (!$('#t_agua_' + i).is(':checked') && !$('#t_drenaje_' + i).is(':checked')) {
                        todo_ok = false;
                        break;
                    }
                }
                if (!todo_ok) {
                    alert('Error: Cada toma seleccionada debe tener habilitada al menos una conexi\u00f3n (Agua o Drenaje). Revise la ' + (num_tomas > 1 ? '1ra y 2da toma.' : 'toma principal.'));
                    return false;
                }
                
                // Validacion AJAX síncrona de tomas
                var ok_tomas = true;
                $.ajax({
                    url: 'ruteador.php',
                    type: 'POST', async: false,
                    data: { opc: 'validaTomasSync', usuario: usr, domicilio: dom_val, num_tomas: num_tomas },
                    success: function(resp) {
                        if(resp.trim() !== 'OK') {
                            alert(resp);
                            ok_tomas = false;
                        }
                    }
                });
                if (!ok_tomas) return false;

                return confirm('¿Est\u00e1 seguro que desea asentar la informaci\u00f3n?');
            }
            
            $(document).ready(function(){
                $('#usuarios').on('change', function() {
                    var id_usuario = $(this).val();
                    $('#domicilio').prop('readonly', true).css('background-color', '#eee').val('');
                    $('#auto_dom_notice').remove();
                    
                    if (id_usuario) {
                        $('#domicilios_container').show().html("<i>Consultando domicilios históricos...</i>");
                        $.ajax({
                            url: 'ruteador.php',
                            type: 'POST', async: true,
                            data: { opc: 'cargaDomiciliosUsr', id_usuario: id_usuario },
                            success: function(resp) {
                                $('#domicilios_container').html(resp);
                            }
                        });
                    } else {
                        $('#domicilios_container').hide().empty();
                    }
                });

                $('#domicilio').on('blur', function(){
                    if($(this).val().length > 20) {
                        var usr = $('#usuarios').val();
                        if (usr) {
                            $.ajax({
                                url: 'ruteador.php',
                                type: 'POST', async: true,
                                data: { opc: 'validaTomasSync', usuario: usr, domicilio: $(this).val(), num_tomas: $('#num_tomas').val() || 1 },
                                success: function(resp) {
                                    if(resp.trim() !== 'OK') {
                                        alert("Aviso Domicilio: " + resp);
                                    }
                                }
                            });
                        }
                    }
                });
            });
        </script>
    </form>
    <div id='aviso'></div>
    <div id='nara'></div>
</div>
<hr>
<blockquote>
    <h2>Recomendaciones</h2>
    <ul>
        <li>No utilice comillas \" en ninguno de los datos.</li>
        <li>Una vez dado de alta este usuario, puede asignarle un contrato.</li>
    </ul>
</blockquote>
<div id='nara'></div>
<script>
    $('#nombre').focus();
    guardaContrato();
</script>

```

</details>

---

## Agent Response

### Thinking

**Analyzing the Water Input**

I'm now focused on the HTML input elements. Specifically, I see the checkboxes for 'tiene_agua' and the drainage. I'm noting the name and ID attributes, as those likely have implications for data processing. I'm starting to parse the underlying structure and consider how this data would be captured and organized.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.854266609s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 23 Apr 2026, 11:31 am

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `historial_mov_cto.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/**
 * historial_mov_cto.php — Reporte Detallado de Movimientos por Contrato
 * Muestra cronológicamente todos los cambios registrados en la tabla 'cambios'.
 */

require_once("../config/Conexion.php");
$y = new Conexion();
$y->conectarBaseDatos();

$id = isset($_GET['id']) ? $y->real_escape_string($_GET['id']) : '';

if (empty($id)) {
    die("Error: No se proporcionó un número de contrato válido.");
}

// Consultar datos básicos del contrato y usuario
$q_info = "SELECT u.nombre, c.domicilio, c.estado, c.numusuario
           FROM contrato c
           JOIN usuario u ON c.numusuario = u.noconsecutivo
           WHERE c.numcontrato = '$id'";
$res_info = $y->q($q_info);
$info = $y->fetch_array($res_info);

if (!$info) {
    die("Error: El contrato #$id no existe.");
}

// Mapeo de estados
$estados_map = array(
    1 => "ACTIVO",
    2 => "SUSPENSIÓN TEMPORAL",
    3 => "SUSPENSIÓN ADMINISTRATIVA",
    4 => "SUSPENSIÓN DEFINITIVA"
);

$meses = array("01"=>"Enero","02"=>"Febrero","03"=>"Marzo","04"=>"Abril","05"=>"Mayo","06"=>"Junio","07"=>"Julio","08"=>"Agosto","09"=>"Septiembre","10"=>"Octubre","11"=>"Noviembre","12"=>"Diciembre");

// Obtener todos los contratos del mismo usuario para incluir registros masivos
// (ej. Declaratoria No Localizado que registra numcontrato='')
$numusuario = intval($info['numusuario']);
$q_ctos_usr = "SELECT numcontrato FROM contrato WHERE numusuario = $numusuario";
$res_ctos = $y->q($q_ctos_usr);
$ctos_usuario = array();
while ($row = $y->fetch_array($res_ctos)) {
    $ctos_usuario[] = "'" . $y->real_escape_string($row['numcontrato']) . "'";
}
$ctos_usuario[] = "''"; // incluir registros masivos (numcontrato='') del usuario
$in_ctos = implode(',', $ctos_usuario);

// Consultar historial de cambios — incluye cancelaciones, reasignaciones y declaratorias
$q_cambios = "SELECT fecha, descripcion, antes, despues
              FROM cambios
              WHERE numcontrato = '$id'
              OR (numcontrato = '' AND descripcion LIKE 'Declaratoria No Localizado ID $numusuario.%')
              ORDER BY id DESC";
$res_cambios = $y->q($q_cambios);
$total_cambios = $y->num_rows($res_cambios);

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Historia de movimientos - Contrato #<?= $id ?></title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #2563eb;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text-dark: #1e293b;
            --text-muted: #64748b;
            --border: #e2e8f0;
            --accent: #f1f5f9;
        }

        body {
            font-family: 'Outfit', sans-serif;
            background-color: var(--bg);
            color: var(--text-dark);
            margin: 0;
            padding: 2rem;
            line-height: 1.5;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
        }

        header {
            margin-bottom: 2rem;
            border-bottom: 2px solid var(--border);
            padding-bottom: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header-info h1 {
            font-size: 1.8rem;
            margin: 0;
            color: var(--primary);
        }

        .contract-card {
            background: var(--card-bg);
            padding: 1.5rem;
            border-radius: 12px;
            border: 1px solid var(--border);
            box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05);
            margin-bottom: 2rem;
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 1rem;
        }

        .data-item {
            display: flex;
            flex-direction: column;
        }

        .data-item label {
            font-size: 0.75rem;
            text-transform: uppercase;
            font-weight: 700;
            color: var(--text-muted);
            letter-spacing: 0.05em;
        }

        .data-item span {
            font-size: 1.1rem;
            font-weight: 600;
        }

        .badge {
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.75rem;
            font-weight: 700;
            text-transform: uppercase;
            display: inline-block;
            margin-top: 5px;
        }

        .badge-active { background: #dcfce7; color: #166534; }
        .badge-other { background: #fee2e2; color: #991b1b; }

        .tipo-badge {
            display: inline-block;
            padding: 2px 10px;
            border-radius: 9999px;
            font-size: 0.7rem;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 6px;
        }
        .tipo-cancelacion   { background: #fee2e2; color: #991b1b; }
        .tipo-reasignacion  { background: #dcfce7; color: #166534; }
        .tipo-declaratoria  { background: #fef9c3; color: #854d0e; }
        .tipo-amnistia      { background: #ede9fe; color: #5b21b6; }
        .tipo-estado        { background: #dbeafe; color: #1e40af; }
        .tipo-cobro         { background: #d1fae5; color: #065f46; }
        .tipo-paridad       { background: #fce7f3; color: #9d174d; }
        .tipo-propietario   { background: #fff7ed; color: #9a3412; }
        .tipo-aplicacion    { background: #ecfdf5; color: #047857; }
        .tipo-conexion      { background: #f0f9ff; color: #0369a1; }
        .tipo-otro          { background: #e0e7ff; color: #3730a3; }

        .timeline {
            position: relative;
            padding-left: 20px;
        }

        .timeline::before {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            bottom: 0;
            width: 2px;
            background: var(--border);
        }

        .timeline-item {
            position: relative;
            margin-bottom: 1.5rem;
            padding-left: 20px;
        }

        .timeline-item::before {
            content: '';
            position: absolute;
            left: -26px;
            top: 4px;
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: var(--primary);
            border: 3px solid white;
            box-shadow: 0 0 0 1px var(--border);
        }

        .timeline-content {
            background: white;
            padding: 1rem;
            border-radius: 8px;
            border: 1px solid var(--border);
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }

        .timeline-date {
            font-size: 0.8rem;
            color: var(--text-muted);
            font-weight: 600;
            margin-bottom: 5px;
        }

        .timeline-desc {
            font-weight: 700;
            font-size: 0.95rem;
            margin-bottom: 10px;
            color: #1e293b;
        }

        .timeline-diff {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
            font-size: 0.85rem;
            background: #f1f5f9;
            padding: 8px;
            border-radius: 6px;
        }

        .diff-side {
            display: flex;
            flex-direction: column;
        }

        .diff-label {
            font-size: 0.65rem;
            text-transform: uppercase;
            font-weight: 700;
            color: #94a3b8;
        }

        .diff-val {
            word-break: break-all;
        }

        .empty-state {
            text-align: center;
            padding: 3rem;
            background: white;
            border-radius: 12px;
            border: 2px dashed var(--border);
            color: var(--text-muted);
        }

        @media print {
            .no-print { display: none; }
            body { padding: 0; }
            .container { max-width: 100%; }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <div class="header-info">
                <h1>Historia de movimientos</h1>
            </div>
        </header>

        <div class="contract-card">
            <div class="data-item">
                <label>Contribuyente</label>
                <span><?= htmlspecialchars(strtoupper($info['nombre'])) ?></span>
                <small style="color: var(--text-muted);"><?= htmlspecialchars($info['domicilio']) ?></small>
                <small style="color: var(--text-muted); margin-top: 4px;">Usuario #<?= $info['numusuario'] ?></small>
            </div>
            <div class="data-item" style="text-align: right;">
                <label>Número de Contrato</label>
                <span style="font-size: 1.5rem; color: var(--primary);">#<?= $id ?></span>
                <div>
                    <span class="badge <?= ($info['estado'] == 1 ? 'badge-active' : 'badge-other') ?>">
                        <?= isset($estados_map[$info['estado']]) ? $estados_map[$info['estado']] : 'Estado ' . $info['estado'] ?>
                    </span>
                </div>
                <small style="color: var(--text-muted); margin-top: 6px;"><?= $total_cambios ?> registro(s) de auditoría</small>
            </div>
        </div>

        <?php if ($total_cambios > 0): ?>
            <div class="timeline">
                <?php
                while ($c = $y->fetch_array($res_cambios)):
                    $time = strtotime($c['fecha']);
                    $fecha_larga = date('d', $time) . " de " . $meses[date('m', $time)] . " de " . date('Y', $time) . " a las " . date('H:i:s', $time) . " hrs.";

                    // Clasificar tipo de movimiento para color y etiqueta
                    $desc_lower = strtolower($c['descripcion']);
                    if ($desc_lower === 'cancelacion') {
                        $tipo_clase  = 'tipo-cancelacion';
                        $tipo_etiq   = 'Cancelación de Cargo';
                        $label_antes = 'Razón / Situación financiera antes';
                        $label_desp  = 'Cargo(s) Cancelado(s) / Impacto';
                    } elseif (strpos($desc_lower, 'cobro de cargos') !== false) {
                        $tipo_clase  = 'tipo-cobro';
                        $tipo_etiq   = 'Cobro de Cargos';
                        $label_antes = 'Folio / Situación financiera antes';
                        $label_desp  = 'Monto cobrado / Resultado';
                    } elseif (strpos($desc_lower, 'reasignacion') !== false) {
                        $tipo_clase  = 'tipo-reasignacion';
                        $tipo_etiq   = 'Reasignación de Cargo';
                        $label_antes = 'Estado Anterior';
                        $label_desp  = 'Resultado';
                    } elseif (strpos($desc_lower, 'declaratoria') !== false) {
                        $tipo_clase  = 'tipo-declaratoria';
                        $tipo_etiq   = 'Declaratoria';
                        $label_antes = 'Detalle';
                        $label_desp  = 'Resultado';
                    } elseif (strpos($desc_lower, 'amnistia') !== false) {
                        $tipo_clase  = 'tipo-amnistia';
                        $tipo_etiq   = 'Amnistía C06';
                        $label_antes = 'Situación antes de amnistía';
                        $label_desp  = 'Situación después de amnistía';
                    } elseif (strpos($desc_lower, 'cambio de estado') !== false) {
                        $tipo_clase  = 'tipo-estado';
                        $tipo_etiq   = 'Cambio de Estado';
                        $label_antes = 'Estado anterior / Situación financiera / Motivo';
                        $label_desp  = 'Estado nuevo / Impacto financiero';
                    } elseif (strpos($desc_lower, 'paridad financiera') !== false) {
                        $tipo_clase  = 'tipo-paridad';
                        $tipo_etiq   = 'Paridad Financiera';
                        $label_antes = 'Situación financiera antes';
                        $label_desp  = 'Situación financiera después / Recalibración';
                    } elseif (strpos($desc_lower, 'cambio de propietario') !== false) {
                        $tipo_clase  = 'tipo-propietario';
                        $tipo_etiq   = 'Cambio de Propietario';
                        $label_antes = 'Propietario anterior / Deuda al transferir';
                        $label_desp  = 'Nuevo propietario';
                    } elseif (strpos($desc_lower, 'aplicación manual') !== false || strpos($desc_lower, 'aplicacion manual') !== false) {
                        $tipo_clase  = 'tipo-aplicacion';
                        $tipo_etiq   = 'Aplicación de Cargos';
                        $label_antes = 'Cargos aplicados';
                        $label_desp  = 'Contratos afectados / Situación financiera';
                    } elseif (strpos($desc_lower, 'cambio rapido de conexion') !== false) {
                        $tipo_clase  = 'tipo-conexion';
                        $tipo_etiq   = 'Cambio de Conexión';
                        $label_antes = 'Estado anterior / Situación financiera';
                        $label_desp  = 'Estado nuevo / Impacto financiero';
                    } else {
                        $tipo_clase  = 'tipo-otro';
                        $tipo_etiq   = htmlspecialchars($c['descripcion']);
                        $label_antes = 'Antes';
                        $label_desp  = 'Después';
                    }
                ?>
                    <div class="timeline-item">
                        <div class="timeline-content">
                            <div class="timeline-date"><?= $fecha_larga ?></div>
                            <div>
                                <span class="tipo-badge <?= $tipo_clase ?>"><?= $tipo_etiq ?></span>
                            </div>
                            <?php if (!empty($c['antes']) || !empty($c['despues'])): ?>
                                <div class="timeline-diff">
                                    <div class="diff-side">
                                        <span class="diff-label"><?= $label_antes ?></span>
                                        <span class="diff-val"><?= htmlspecialchars($c['antes'] ?: '—') ?></span>
                                    </div>
                                    <div class="diff-side">
                                        <span class="diff-label"><?= $label_desp ?></span>
                                        <span class="diff-val" style="color: #059669; font-weight: 600;"><?= htmlspecialchars($c['despues'] ?: '—') ?></span>
                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
        <?php else: ?>
            <div class="empty-state">
                <div style="font-size: 2rem; margin-bottom: 1rem;">🔍</div>
                No se encontraron registros de cambios para este contrato.
            </div>
        <?php endif; ?>

        <footer style="margin-top: 3rem; text-align: center; color: var(--text-muted); font-size: 0.8rem; border-top: 1px solid var(--border); padding-top: 1rem;">
            Reporte generado el <?= date('d') . " de " . $meses[date('m')] . " de " . date('Y') . " " . date('H:i:s') ?> | Sistema Agua V2
        </footer>
    </div>
</body>
</html>
<?php 
$y->cerrarConexion(); 
?>

```

</details>

---

## Agent Response

### Thinking

**Refining The Bug Fix**

I'm currently focused on fixing a bug within the `guardaNuevoContrato` function. Specifically, I've updated the default values for `tiene_agua` and `tiene_drenaje` to `0` within `includes/negocio/contratos.php`. I also enhanced the audit log entry for this to include details about the number of tomas and services per toma.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 7.680396270s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 Apr 2026, 11:31 am

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 Apr 2026, 11:31 am

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `historial_mov_cto.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L149-369)</summary>

**Path:** `Unknown file`

```
        .tipo-badge {
            display: inline-block;
            padding: 2px 10px;
            border-radius: 9999px;
            font-size: 0.7rem;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 6px;
        }
        .tipo-cancelacion   { background: #fee2e2; color: #991b1b; }
        .tipo-reasignacion  { background: #dcfce7; color: #166534; }
        .tipo-declaratoria  { background: #fef9c3; color: #854d0e; }
        .tipo-amnistia      { background: #ede9fe; color: #5b21b6; }
        .tipo-estado        { background: #dbeafe; color: #1e40af; }
        .tipo-cobro         { background: #d1fae5; color: #065f46; }
        .tipo-paridad       { background: #fce7f3; color: #9d174d; }
        .tipo-propietario   { background: #fff7ed; color: #9a3412; }
        .tipo-aplicacion    { background: #ecfdf5; color: #047857; }
        .tipo-conexion      { background: #f0f9ff; color: #0369a1; }
        .tipo-otro          { background: #e0e7ff; color: #3730a3; }

        .timeline {
            position: relative;
            padding-left: 20px;
        }

        .timeline::before {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            bottom: 0;
            width: 2px;
            background: var(--border);
        }

        .timeline-item {
            position: relative;
            margin-bottom: 1.5rem;
            padding-left: 20px;
        }

        .timeline-item::before {
            content: '';
            position: absolute;
            left: -26px;
            top: 4px;
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: var(--primary);
            border: 3px solid white;
            box-shadow: 0 0 0 1px var(--border);
        }

        .timeline-content {
            background: white;
            padding: 1rem;
            border-radius: 8px;
            border: 1px solid var(--border);
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }

        .timeline-date {
            font-size: 0.8rem;
            color: var(--text-muted);
            font-weight: 600;
            margin-bottom: 5px;
        }

        .timeline-desc {
            font-weight: 700;
            font-size: 0.95rem;
            margin-bottom: 10px;
            color: #1e293b;
        }

        .timeline-diff {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
            font-size: 0.85rem;
            background: #f1f5f9;
            padding: 8px;
            border-radius: 6px;
        }

        .diff-side {
            display: flex;
            flex-direction: column;
        }

        .diff-label {
            font-size: 0.65rem;
            text-transform: uppercase;
            font-weight: 700;
            color: #94a3b8;
        }

        .diff-val {
            word-break: break-all;
        }

        .empty-state {
            text-align: center;
            padding: 3rem;
            background: white;
            border-radius: 12px;
            border: 2px dashed var(--border);
            color: var(--text-muted);
        }

        @media print {
            .no-print { display: none; }
            body { padding: 0; }
            .container { max-width: 100%; }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <div class="header-info">
                <h1>Historia de movimientos</h1>
            </div>
        </header>

        <div class="contract-card">
            <div class="data-item">
                <label>Contribuyente</label>
                <span><?= htmlspecialchars(strtoupper($info['nombre'])) ?></span>
                <small style="color: var(--text-muted);"><?= htmlspecialchars($info['domicilio']) ?></small>
                <small style="color: var(--text-muted); margin-top: 4px;">Usuario #<?= $info['numusuario'] ?></small>
            </div>
            <div class="data-item" style="text-align: right;">
                <label>Número de Contrato</label>
                <span style="font-size: 1.5rem; color: var(--primary);">#<?= $id ?></span>
                <div>
                    <span class="badge <?= ($info['estado'] == 1 ? 'badge-active' : 'badge-other') ?>">
                        <?= isset($estados_map[$info['estado']]) ? $estados_map[$info['estado']] : 'Estado ' . $info['estado'] ?>
                    </span>
                </div>
                <small style="color: var(--text-muted); margin-top: 6px;"><?= $total_cambios ?> registro(s) de auditoría</small>
            </div>
        </div>

        <?php if ($total_cambios > 0): ?>
            <div class="timeline">
                <?php
                while ($c = $y->fetch_array($res_cambios)):
                    $time = strtotime($c['fecha']);
                    $fecha_larga = date('d', $time) . " de " . $meses[date('m', $time)] . " de " . date('Y', $time) . " a las " . date('H:i:s', $time) . " hrs.";

                    // Clasificar tipo de movimiento para color y etiqueta
                    $desc_lower = strtolower($c['descripcion']);
                    if ($desc_lower === 'cancelacion') {
                        $tipo_clase  = 'tipo-cancelacion';
                        $tipo_etiq   = 'Cancelación de Cargo';
                        $label_antes = 'Razón / Situación financiera antes';
                        $label_desp  = 'Cargo(s) Cancelado(s) / Impacto';
                    } elseif (strpos($desc_lower, 'cobro de cargos') !== false) {
                        $tipo_clase  = 'tipo-cobro';
                        $tipo_etiq   = 'Cobro de Cargos';
                        $label_antes = 'Folio / Situación financiera antes';
                        $label_desp  = 'Monto cobrado / Resultado';
                    } elseif (strpos($desc_lower, 'reasignacion') !== false) {
                        $tipo_clase  = 'tipo-reasignacion';
                        $tipo_etiq   = 'Reasignación de Cargo';
                        $label_antes = 'Estado Anterior';
                        $label_desp  = 'Resultado';
                    } elseif (strpos($desc_lower, 'declaratoria') !== false) {
                        $tipo_clase  = 'tipo-declaratoria';
                        $tipo_etiq   = 'Declaratoria';
                        $label_antes = 'Detalle';
                        $label_desp  = 'Resultado';
                    } elseif (strpos($desc_lower, 'amnistia') !== false) {
                        $tipo_clase  = 'tipo-amnistia';
                        $tipo_etiq   = 'Amnistía C06';
                        $label_antes = 'Situación antes de amnistía';
                        $label_desp  = 'Situación después de amnistía';
                    } elseif (strpos($desc_lower, 'cambio de estado') !== false) {
                        $tipo_clase  = 'tipo-estado';
                        $tipo_etiq   = 'Cambio de Estado';
                        $label_antes = 'Estado anterior / Situación financiera / Motivo';
                        $label_desp  = 'Estado nuevo / Impacto financiero';
                    } elseif (strpos($desc_lower, 'paridad financiera') !== false) {
                        $tipo_clase  = 'tipo-paridad';
                        $tipo_etiq   = 'Paridad Financiera';
                        $label_antes = 'Situación financiera antes';
                        $label_desp  = 'Situación financiera después / Recalibración';
                    } elseif (strpos($desc_lower, 'cambio de propietario') !== false) {
                        $tipo_clase  = 'tipo-propietario';
                        $tipo_etiq   = 'Cambio de Propietario';
                        $label_antes = 'Propietario anterior / Deuda al transferir';
                        $label_desp  = 'Nuevo propietario';
                    } elseif (strpos($desc_lower, 'aplicación manual') !== false || strpos($desc_lower, 'aplicacion manual') !== false) {
                        $tipo_clase  = 'tipo-aplicacion';
                        $tipo_etiq   = 'Aplicación de Cargos';
                        $label_antes = 'Cargos aplicados';
                        $label_desp  = 'Contratos afectados / Situación financiera';
                    } elseif (strpos($desc_lower, 'cambio rapido de conexion') !== false) {
                        $tipo_clase  = 'tipo-conexion';
                        $tipo_etiq   = 'Cambio de Conexión';
                        $label_antes = 'Estado anterior / Situación financiera';
                        $label_desp  = 'Estado nuevo / Impacto financiero';
                    } elseif (strpos($desc_lower, 'registro de nuevo contrato') !== false) {
                        $tipo_clase  = 'tipo-nuevo';
                        $tipo_etiq   = 'Nuevo Contrato';
                        $label_antes = 'Referencia';
                        $label_desp  = 'Detalle de Alta / Tomas / Situación Financiera';
                    } else {
                        $tipo_clase  = 'tipo-otro';
                        $tipo_etiq   = htmlspecialchars($c['descripcion']);
                        $label_antes = 'Antes';
                        $label_desp  = 'Después';
                    }
                ?>
                    <div class="timeline-item">
                        <div class="timeline-content">
                            <div class="timeline-date"><?= $fecha_larga ?></div>
                            <div>
```

</details>

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 Apr 2026, 11:31 am

---

## Agent Response

### Thinking

**Refining System Enhancements**

I've just resolved the initial issues with defaulting values for `tiene_agua` and `tiene_drenaje`, fixing the drainage charge discrepancy. Additionally, I improved the audit logging for new contracts, ensuring tomas and initial debt are now captured. Finally, I’ve enhanced the `historial_mov_cto.php` component.


**Clarifying Reporting Improvements**

I need to enhance the report to clearly showcase events related to new contracts, which stemmed from resolving the default values for `tiene_agua` and `tiene_drenaje`. I'll explain the cause of the previous bug. In `guardaNuevoContrato`, the default values were set to 1, causing incorrect assumptions about service selection. The default has been changed to 0. Plus, I've improved the audit log to include toma details and initial debt. Finally, I've updated `historial_mov_cto.php` to classify "New Contract" events and display the new audit details. I'm also planning to check if the user needs to delete/fix contract 9907.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.764002300s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

hay algo que actualizar en los scripts SQL para la base de datos en host C ?

<details>
<summary>Context</summary>

**Active File:** `contratos.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

**Assessing SQL Script Impact**

I'm currently evaluating the SQL scripts for Host C, specifically in light of the recently implemented PHP changes. I've pinpointed that the `guardaNuevoContrato` function fix and the audit log improvements are the most relevant factors to consider. I need to determine if any adjustments are necessary to the database schema or stored procedures to align with these changes.




### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/migration-aguav2/host-c-setup/`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.871674845s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `host-c-setup` (9 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/migration-aguav2/host-c-setup`

| Name | Type | Size |
|------|------|------|
| `02_schema_tablas_base.sql` | File | 21681 bytes |
| `03_config_datos_catalogo.sql` | File | 2022 bytes |
| `04_views.sql` | File | 4011 bytes |
| `05_stored_procedures.sql` | File | 13863 bytes |
| `06_split_ligacargos.sql` | File | 4845 bytes |
| `07_patch_categorias_v2.sql` | File | 4853 bytes |
| `09_idx_covering_ligacargos.sql` | File | 1561 bytes |
| `manual` | Directory | - |
| `run_setup.sh` | File | 3569 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `02_schema_tablas_base.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 02_schema_tablas_base.sql — Esquema completo de tablas base de BD awa
-- Host C: MariaDB 10.4.27 / Windows 10 XAMPP 7.4.33 / 192.168.1.128
-- Fuente autoritativa: Host C real (auditado 2026-04-06)
--
-- CAMBIOS vs versión anterior (optimizaciones aplicadas por el equipo):
--   - float  → decimal(10,2/4) en cargos, asamblea, ligacargos, egresos
--   - ligacargos: PK cambiada a id AUTO_INCREMENT; idpago_vinc int; índices nuevos
--   - cambios:    PK cambiada a id AUTO_INCREMENT; timestamp automático; índices
--   - FKs nuevas: cargos→categorias, contrato_toma→contrato,
--                 ligacargos→categorias, egresos→categorias_egresos,
--                 notas→contrato (ON DELETE SET NULL)
--   - Índices de rendimiento en: contrato, cargos, usuario, notas, egresos,
--                                ligacargos (6), ligacargos_historico (5)
--
-- Ejecutar: mysql -u root -p awa < 02_schema_tablas_base.sql
-- =============================================================================

USE `awa`;

SET FOREIGN_KEY_CHECKS = 0;

-- -----------------------------------------------------------------------------
-- Tabla: usuario
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario` (
  `noconsecutivo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre`        varchar(255)     DEFAULT NULL,
  `domicilio`     mediumtext       DEFAULT NULL,
  `masdatos`      mediumtext       DEFAULT NULL,
  `telefono`      varchar(30)      DEFAULT NULL,
  `email`         varchar(45)      DEFAULT NULL,
  `estado`        int(11)          DEFAULT 1,
  `no_localizado` tinyint(1)       NOT NULL DEFAULT 0,
  PRIMARY KEY (`noconsecutivo`),
  KEY `idx_usuario_nombre`  (`nombre`),
  KEY `idx_no_localizado`   (`no_localizado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: categorias (catálogo de categorías de cargos)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `categorias` (
  `id`          int(11)     NOT NULL AUTO_INCREMENT,
  `nombre`      varchar(30) NOT NULL,
  `nombrecorto` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: categorias_egresos
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `categorias_egresos` (
  `id`     int(11)     NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: contrato
-- CAMBIO: índice duplicado eliminado (KEY `numusuario` redundante con idx_contrato_usuario)
--         índice nuevo: idx_contrato_estado
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `contrato` (
  `numcontrato`                varchar(10)      NOT NULL,
  `numusuario`                 int(10) unsigned NOT NULL,
  `numtoma`                    int(10) unsigned DEFAULT NULL,
  `domicilio`                  mediumtext       NOT NULL,
  `masdatos`                   mediumtext       DEFAULT NULL,
  `tipo`                       int(10) unsigned NOT NULL,
  `agua`                       int(10) unsigned NOT NULL,
  `drenaje`                    int(10) unsigned NOT NULL,
  `observaciones`              mediumtext       NOT NULL,
  `estado`                     int(10) unsigned NOT NULL DEFAULT 1,
  `numcontratoresp`            varchar(10)      NOT NULL,
  `numcontratoletras`          varchar(10)      NOT NULL,
  `fecha`                      date             NOT NULL,
  `metros`                     int(10)          NOT NULL,
  `exento_recargo_primer_anio` int(11)          DEFAULT 0,
  PRIMARY KEY (`numcontrato`),
  KEY `idx_contrato_usuario` (`numusuario`),
  KEY `idx_contrato_estado`  (`estado`),
  CONSTRAINT `fk_contrato_usuario` FOREIGN KEY (`numusuario`)
    REFERENCES `usuario` (`noconsecutivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: contrato_toma (estructura de tomas — Migración v2 2026-03-13)
-- CAMBIO: idx_numcontrato eliminado (cubierto por uk_cto_toma)
--         FK nueva: fk_toma_contrato
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `contrato_toma` (
  `id`             int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numcontrato`    varchar(10)      NOT NULL,
  `num_toma`       tinyint(1)       NOT NULL DEFAULT 1,
  `tipo`           tinyint(1)       NOT NULL DEFAULT 0,
  `tiene_agua`     tinyint(1)       NOT NULL DEFAULT 1,
  `tiene_drenaje`  tinyint(1)       NOT NULL DEFAULT 1,
  `estado_agua`    tinyint(1)       NOT NULL DEFAULT 1,
  `estado_drenaje` tinyint(1)       NOT NULL DEFAULT 1,
  `fecha_alta`     date             NOT NULL,
  `observaciones`  varchar(255)     DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_cto_toma` (`numcontrato`, `num_toma`),
  CONSTRAINT `fk_toma_contrato` FOREIGN KEY (`numcontrato`)
    REFERENCES `contrato` (`numcontrato`)
    ON UPDATE CASCADE ON DELETE CASCADE
    -- CASCADE: si se elimina un contrato, sus tomas se eliminan en cascada
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: cargos (catálogo de cargos periódicos)
-- CAMBIO: monto/monto_comercial float → decimal(10,2)
--         FK nueva: fk_cargo_categoria → categorias.id
--         Índices nuevos: idx_cat_anio_estado, idx_nombre
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `cargos` (
  `numconsec`       int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre`          varchar(50)      NOT NULL,
  `monto`           decimal(10,2)    NOT NULL,
  `recargo`         int(10) unsigned NOT NULL,
  `observaciones`   mediumtext       DEFAULT NULL,
  `mensualidades`   int(10) unsigned NOT NULL,
  `categoria`       int(11)          NOT NULL,
  `estado`          int(11)          NOT NULL,
  `anio`            int(11)          NOT NULL,
  `repetir`         int(1)           NOT NULL,
  `metros`          int(1)           NOT NULL,
  `automatico`      int(11)          NOT NULL,
  `monto_comercial` decimal(10,2)    NOT NULL DEFAULT 0.00
    COMMENT 'Tarifa Comercial. 0=usa monto x2 como fallback',
  PRIMARY KEY (`numconsec`),
  KEY `idx_cat_anio_estado` (`categoria`, `anio`, `estado`),
  KEY `idx_nombre`          (`nombre`),
  CONSTRAINT `fk_cargo_categoria` FOREIGN KEY (`categoria`)
    REFERENCES `categorias` (`id`)
    -- RESTRICT (default): no borrar categoría si tiene cargos activos
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: ligacargos (cargos activos — anio >= 2026)
-- CAMBIO MAYOR:
--   - PK compuesta (numcontrato,leyenda,repetido) → PK id AUTO_INCREMENT
--   - monto: float → decimal(10,2) DEFAULT 0.00
--   - fcobro: datetime NOT NULL → date DEFAULT NULL
--   - fpago:  datetime → date
--   - recargo: int DEFAULT NULL → decimal(10,2) NOT NULL DEFAULT 0.00
--   - idpago_vinc: varchar(10) → int(11) DEFAULT NULL
--   - anio: NOT NULL → DEFAULT NULL
--   - numcontratoresp: NOT NULL → DEFAULT NULL
--   - repetido: int(10) NOT NULL → int(11) DEFAULT 0
--   - estado: DEFAULT añadido 0
--   - Índices: 6 especializados (fcobro/fpago se conservan en activa — útiles
--     para queries de caja diaria y reportes de período en tabla pequeña ~2K filas)
--   - FK fk_lc_contrato: ON DELETE CASCADE (si se borra contrato, se borran sus cargos)
--   - FK fk_lc_categoria: ON DELETE SET NULL (si se borra categoría, categoria queda NULL)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `ligacargos` (
  `id`              int(11)       NOT NULL AUTO_INCREMENT,
  `numcontrato`     varchar(10)   NOT NULL,
  `leyenda`         varchar(100)  NOT NULL,
  `monto`           decimal(10,2) NOT NULL DEFAULT 0.00,
  `fcobro`          date          DEFAULT NULL,
  `fpago`           date          DEFAULT NULL,
  `estado`          int(11)       NOT NULL DEFAULT 0,
  `recargo`         decimal(10,2) NOT NULL DEFAULT 0.00,
  `folio`           int(11)       DEFAULT NULL,
  `anio`            int(11)       DEFAULT NULL,
  `numcontratoresp` varchar(10)   DEFAULT NULL,
  `idpago_vinc`     int(11)       DEFAULT NULL,
  `categoria`       int(11)       DEFAULT NULL,
  `repetido`        int(11)       DEFAULT 0,
  `f_sinc_mlt_asam` datetime      DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lc_contrato_estado` (`numcontrato`, `estado`),
  KEY `idx_lc_anio`            (`anio`),
  KEY `idx_lc_folio`           (`folio`),
  KEY `idx_lc_fcobro`          (`fcobro`),
  KEY `idx_lc_fpago`           (`fpago`),
  KEY `fk_lc_categoria`        (`categoria`),
  CONSTRAINT `fk_lc_contrato`  FOREIGN KEY (`numcontrato`)
    REFERENCES `contrato` (`numcontrato`)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `fk_lc_categoria` FOREIGN KEY (`categoria`)
    REFERENCES `categorias` (`id`)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: ligacargos_historico (cargos históricos — anio <= 2025)
-- Solo lectura — los SPs escriben en ella via sp_pagar_cargo/sp_cancelar_cargo.
-- ÍNDICES (3): solo los que cubren queries reales del código PHP vía vistas.
--   - idx_lch_contrato_estado: WHERE numcontrato=X AND estado=0 (vw_ligacargos_pendientes)
--   - idx_lch_anio:            WHERE anio=X (sincronizacion, reportes de año)
--   - idx_lch_folio:           WHERE folio=X (sp_sinc_asamblea_puntual busca pagos)
--   ELIMINADOS por no tener uso en queries reales (ratio índice/datos: 110%→49%):
--   - idx_lch_fcobro: fcobro no aparece en WHERE de ningún query sobre historico
--   - idx_lch_fpago:  fpago  no aparece en WHERE de ningún query sobre historico
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `ligacargos_historico` (
  `id`              int(11)       NOT NULL AUTO_INCREMENT,
  `numcontrato`     varchar(10)   NOT NULL,
  `leyenda`         varchar(100)  NOT NULL,
  `monto`           decimal(10,2) NOT NULL DEFAULT 0.00,
  `fcobro`          date          DEFAULT NULL,
  `fpago`           date          DEFAULT NULL,
  `estado`          int(11)       NOT NULL DEFAULT 0,
  `recargo`         decimal(10,2) NOT NULL DEFAULT 0.00,
  `folio`           int(11)       DEFAULT NULL,
  `anio`            int(11)       DEFAULT NULL,
  `numcontratoresp` varchar(10)   DEFAULT NULL,
  `idpago_vinc`     int(11)       DEFAULT NULL,
  `categoria`       int(11)       DEFAULT NULL,
  `repetido`        int(11)       DEFAULT 0,
  `f_sinc_mlt_asam` datetime      DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lch_contrato_estado` (`numcontrato`, `estado`),
  KEY `idx_lch_anio`            (`anio`),
  KEY `idx_lch_folio`           (`folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: folios_recibo (secuencia atómica de folios — reemplaza MAX(folio)+1)
-- AUTO_INCREMENT inicial calculado dinámicamente en 06_split_ligacargos.sql
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `folios_recibo` (
  `id`    int(11)    NOT NULL AUTO_INCREMENT,
  `dummy` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: asamblea
-- CAMBIO: multa float → decimal(10,2)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `asamblea` (
  `id`     int(11)       NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100)  NOT NULL,
  `fecha`  date          NOT NULL,
  `multa`  decimal(10,2) NOT NULL,
  `notas`  mediumtext    NOT NULL,
  `inicio` datetime      NOT NULL,
  `final`  datetime      NOT NULL,
  `estado` int(11)       NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: asistentes (Registro de asistencia a asamblea — Migración v2)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistentes` (
  `id_asamblea` int(11)      NOT NULL,
  `id_contrato` varchar(20)  NOT NULL,
  `entrada`     datetime     NOT NULL,
  `salida`      datetime     NOT NULL,
  `nota`        text         NOT NULL,
  `estado`      int(11)      NOT NULL,
  PRIMARY KEY (`id_asamblea`, `id_contrato`),
  CONSTRAINT `fk_asistentes_asamblea` FOREIGN KEY (`id_asamblea`)
    REFERENCES `asamblea` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: egresos
-- CAMBIO: monto double → decimal(10,2)
--         id_categoria reubicado después de categoria (orden físico real)
--         FK nueva: fk_egreso_categoria → categorias_egresos.id (ON DELETE SET NULL)
--         Índices nuevos: idx_fecha, idx_id_categoria
-- NOTA: id_categoria=NULL para registros históricos sin clasificar (Host A no tiene esta col)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `egresos` (
  `id`           int(11)       NOT NULL AUTO_INCREMENT,
  `leyenda`      mediumtext    NOT NULL,
  `monto`        decimal(10,2) NOT NULL,
  `categoria`    varchar(60)   NOT NULL,
  `id_categoria` int(11)       DEFAULT NULL
    COMMENT 'FK a categorias_egresos.id — NULL para registros históricos sin clasificar',
  `fecha`        datetime      NOT NULL,
  `estado`       int(11)       NOT NULL,
  `motivoelimina` varchar(255) NOT NULL,
  `detalle`      mediumtext    NOT NULL,
  `recibe`       varchar(255)  NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fecha`        (`fecha`),
  KEY `idx_id_categoria` (`id_categoria`),
  CONSTRAINT `fk_egreso_categoria` FOREIGN KEY (`id_categoria`)
    REFERENCES `categorias_egresos` (`id`)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: notas
-- CAMBIO: FK nueva fk_nota_contrato → contrato.numcontrato ON DELETE SET NULL
--         contrato nullable (requerido para ON DELETE SET NULL)
--         Índices nuevos: idx_notas_contrato, idx_notas_estado
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `notas` (
  `id`              int(11)     NOT NULL AUTO_INCREMENT,
  `fecha`           datetime    NOT NULL,
  `contrato`        varchar(10) DEFAULT NULL,
  `texto`           mediumtext  NOT NULL,
  `estado`          int(11)     NOT NULL,
  `numcontratosin`  varchar(10) NOT NULL DEFAULT '',
  `numcontratoresp` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_notas_contrato` (`contrato`),
  KEY `idx_notas_estado`   (`estado`),
  CONSTRAINT `fk_nota_contrato` FOREIGN KEY (`contrato`)
    REFERENCES `contrato` (`numcontrato`)
    ON UPDATE CASCADE ON DELETE SET NULL
    -- SET NULL: si se elimina el contrato, la nota queda huérfana pero no se pierde
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: firmantes
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `firmantes` (
  `id`                    int(11)      NOT NULL AUTO_INCREMENT,
  `presidente`            varchar(100) NOT NULL,
  `vicepresidente`        varchar(100) NOT NULL,
  `secretario`            varchar(100) NOT NULL,
  `tesorero`              varchar(100) NOT NULL,
  `vocal1`                varchar(100) NOT NULL,
  `vocal2`                varchar(100) NOT NULL,
  `vocal3`                varchar(100) NOT NULL,
  `vocal4`                varchar(100) NOT NULL,
  `presidente_vigilancia` varchar(100) NOT NULL,
  `secretario_vigilancia` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: contrasenas
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `contrasenas` (
  `id`         int(11)      NOT NULL AUTO_INCREMENT,
  `rol`        varchar(30)  NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: users (usuarios del sistema web — contraseñas bcrypt)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
  `id`     int(11)      NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `clave`  varchar(255) NOT NULL COMMENT 'bcrypt — migrado de md5 al primer login',
  `rol`    int(1)       NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: cambios (auditoría de cambios)
-- CAMBIO MAYOR: PK cambiada de `fecha` → `id` AUTO_INCREMENT
--               fecha: DEFAULT current_timestamp() (automático)
--               Índices nuevos: idx_fecha, idx_numcontrato, idx_descripcion
-- Razón: la PK anterior (fecha) colisionaba cuando había múltiples cambios
--        en el mismo instante; el id secuencial elimina ese problema.
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `cambios` (
  `id`          int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha`       datetime         NOT NULL DEFAULT current_timestamp(),
  `descripcion` varchar(200)     NOT NULL,
  `antes`       mediumtext       NOT NULL,
  `despues`     mediumtext       NOT NULL,
  `numcontrato` varchar(255)     DEFAULT NULL,
  `batch_id`    int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fecha`       (`fecha`),
  KEY `idx_numcontrato` (`numcontrato`),
  KEY `idx_descripcion` (`descripcion`),
  KEY `idx_batch_id`    (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: config_sistema (parámetros configurables del negocio)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `config_sistema` (
  `clave`       varchar(60)  NOT NULL,
  `valor`       varchar(200) NOT NULL DEFAULT '',
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: fallback_log (bitácora de errores y fallbacks SQL — Host C estabilización)
-- Propósito: Monitorear queries que fallan silenciosamente o activan rutas de
--            fallback en PHPs. Conexion::q() escribe aquí automáticamente.
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `fallback_log` (
  `id`          int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha`       datetime         NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nivel`       enum('ERROR','FALLBACK','WARN') NOT NULL,
  `origen`      varchar(120)     NOT NULL COMMENT 'Archivo PHP (:linea si disponible)',
  `funcion`     varchar(80)      DEFAULT NULL COMMENT 'Función o método PHP que originó el query',
  `query_type`  enum('SELECT','INSERT','UPDATE','DELETE','CALL','OTHER') NOT NULL,
  `query_hash`  char(8)          NOT NULL COMMENT 'CRC32 hex del query para agrupar repeticiones',
  `query_text`  mediumtext       NOT NULL COMMENT 'Query completo sin truncar',
  `filas_afect` smallint(6)      DEFAULT NULL COMMENT 'affected_rows para INSERT/UPDATE/DELETE',
  `error_msg`   varchar(300)     DEFAULT NULL COMMENT 'mysqli_error() al momento del fallo',
  `usuario_ses` varchar(40)      DEFAULT NULL COMMENT 'Usuario de sesión PHP ($_SESSION[usuario])',
  `numcontrato` varchar(10)      DEFAULT NULL COMMENT 'Contrato activo en contexto si disponible',
  PRIMARY KEY (`id`),
  KEY `idx_fl_fecha`  (`fecha`),
  KEY `idx_fl_nivel`  (`nivel`),
  KEY `idx_fl_origen` (`origen`(40))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Bitácora de fallbacks y errores SQL — Host C estabilización';

SET FOREIGN_KEY_CHECKS = 1;

-- Verificar tablas creadas
SELECT TABLE_NAME, ENGINE, TABLE_COLLATION
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'awa'
  AND TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

```

</details>

---

## Agent Response

### Thinking

**Revising Database Defaults**

I've hit a snag. The database schema's default values for `tiene_agua` and `tiene_drenaje` are set to `1`, which translates to "yes." This aligns with the old PHP logic, but it's directly at odds with my fresh approach to the issue. I need to rethink these defaults in light of the new, updated thinking.




### Actions

**Tool:** `view_file`
**File:** `05_stored_procedures.sql`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.569353484s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 05_stored_procedures.sql — Stored Procedures para operaciones en split ligacargos
-- Depende de: 02_schema_tablas_base.sql (ligacargos, ligacargos_historico, contrato)
-- Ejecutar: mysql -u root -p awa < 05_stored_procedures.sql
-- NOTA: MCP no soporta DELIMITER. Ejecutar con cliente mysql directamente.
-- =============================================================================

USE `awa`;

-- Limpiar SPs previos si existen
DROP PROCEDURE IF EXISTS `sp_pagar_cargo`;
DROP PROCEDURE IF EXISTS `sp_cancelar_cargo`;
DROP PROCEDURE IF EXISTS `sp_sinc_asamblea_puntual`;
DROP PROCEDURE IF EXISTS `sp_sinc_asamblea_bulk`;
DROP PROCEDURE IF EXISTS `sp_revertir_sinc_asamblea`;

DELIMITER $$

-- -----------------------------------------------------------------------------
-- sp_pagar_cargo — Pagar un cargo buscando en activa primero, luego histórico
--
-- Parámetros:
--   p_id_cargo     INT           — ID físico del cargo (0 = usar tríada)
--   p_numcontrato  VARCHAR(10)   — contrato del cargo
--   p_leyenda      VARCHAR(100)  — leyenda del cargo
--   p_repetido     INT           — valor del campo repetido
--   p_folio        INT           — folio de pago (de folios_recibo.id)
--   p_idpago_vinc  VARCHAR(10)   — contrato que origina el pago (para sinc)
--   p_monto_final  DECIMAL(10,2) — monto final cobrado (puede diferir por descuento)
--   p_filas        INT OUT       — filas afectadas (0 = no encontrado)
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_pagar_cargo`(
  IN  p_id_cargo     INT,
  IN  p_numcontrato  VARCHAR(10),
  IN  p_leyenda      VARCHAR(100),
  IN  p_repetido     INT,
  IN  p_folio        INT,
  IN  p_idpago_vinc  VARCHAR(10),
  IN  p_monto_final  DECIMAL(10,2),
  OUT p_filas        INT
)
BEGIN
  UPDATE `ligacargos`
  SET fpago       = NOW(),
      estado      = 1,
      folio       = p_folio,
      idpago_vinc = p_idpago_vinc,
      monto       = p_monto_final
  WHERE (p_id_cargo > 0 AND id = p_id_cargo)
     OR (p_id_cargo = 0 AND numcontrato = p_numcontrato AND leyenda = p_leyenda AND repetido = p_repetido)
    AND estado = 0;

  IF ROW_COUNT() > 0 THEN
    SET p_filas = 1;
  ELSE
    UPDATE `ligacargos_historico`
    SET fpago       = NOW(),
        estado      = 1,
        folio       = p_folio,
        idpago_vinc = p_idpago_vinc,
        monto       = p_monto_final
    WHERE (p_id_cargo > 0 AND id = p_id_cargo)
       OR (p_id_cargo = 0 AND numcontrato = p_numcontrato AND leyenda = p_leyenda AND repetido = p_repetido)
      AND estado = 0;
    SET p_filas = ROW_COUNT();
  END IF;
END$$

-- -----------------------------------------------------------------------------
-- sp_cancelar_cargo — Cancelar un cargo (estado=-1) en activa o histórico
--
-- Parámetros:
--   p_id_cargo     INT           — ID físico del cargo (0 = usar tríada)
--   p_numcontrato  VARCHAR(10)
--   p_leyenda      VARCHAR(100)
--   p_repetido     INT
--   p_filas        INT OUT
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_cancelar_cargo`(
  IN  p_id_cargo     INT,
  IN  p_numcontrato  VARCHAR(10),
  IN  p_leyenda      VARCHAR(100),
  IN  p_repetido     INT,
  OUT p_filas        INT
)
BEGIN
  UPDATE `ligacargos`
  SET fpago  = NOW(),
      estado = -1
  WHERE (p_id_cargo > 0 AND id = p_id_cargo)
     OR (p_id_cargo = 0 AND numcontrato = p_numcontrato AND leyenda = p_leyenda AND repetido = p_repetido)
    AND estado = 0;

  IF ROW_COUNT() > 0 THEN
    SET p_filas = 1;
  ELSE
    UPDATE `ligacargos_historico`
    SET fpago  = NOW(),
        estado = -1
    WHERE (p_id_cargo > 0 AND id = p_id_cargo)
       OR (p_id_cargo = 0 AND numcontrato = p_numcontrato AND leyenda = p_leyenda AND repetido = p_repetido)
      AND estado = 0;
    SET p_filas = ROW_COUNT();
  END IF;
END$$

-- -----------------------------------------------------------------------------
-- sp_sinc_asamblea_puntual — Sincronizar cargo de asamblea de un usuario puntual
-- Si un usuario de la misma familia pagó, marca los pendientes del resto como
-- pagados (monto=0, vinculados al folio del que pagó).
--
-- Parámetros:
--   p_numusuario   INT           — ID del usuario a sincronizar
--   p_leyenda      VARCHAR(100)  — leyenda del cargo de asamblea
--   p_anio         INT           — año (0 = todos los años)
--   p_filas        INT OUT       — filas sincronizadas
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_sinc_asamblea_puntual`(
  IN  p_numusuario INT,
  IN  p_leyenda    VARCHAR(100),
  IN  p_anio       INT,
  OUT p_filas      INT
)
BEGIN
  DECLARE v_folio   INT          DEFAULT NULL;
  DECLARE v_fpago   DATETIME     DEFAULT NULL;
  DECLARE v_cto_pag VARCHAR(10)  DEFAULT NULL;
  DECLARE v_total   INT          DEFAULT 0;

  -- Buscar el pago en ligacargos activa
  SELECT l.folio, l.fpago, l.numcontrato
  INTO   v_folio, v_fpago, v_cto_pag
  FROM   `ligacargos` l
    JOIN `contrato` c ON l.numcontrato = c.numcontrato
  WHERE  c.numusuario = p_numusuario
    AND  l.leyenda    = p_leyenda
    AND  l.categoria  = 6
    AND  l.estado     = 1
    AND  l.monto      > 0
    AND  (p_anio = 0 OR l.anio = p_anio)
  LIMIT 1;

  -- Si no, buscar en histórico
  IF v_folio IS NULL THEN
    SELECT l.folio, l.fpago, l.numcontrato
    INTO   v_folio, v_fpago, v_cto_pag
    FROM   `ligacargos_historico` l
      JOIN `contrato` c ON l.numcontrato = c.numcontrato
    WHERE  c.numusuario = p_numusuario
      AND  l.leyenda    = p_leyenda
      AND  l.categoria  = 6
      AND  l.estado     = 1
      AND  l.monto      > 0
      AND  (p_anio = 0 OR l.anio = p_anio)
    LIMIT 1;
  END IF;

  IF v_folio IS NOT NULL THEN
    -- Sincronizar pendientes en ligacargos activa
    UPDATE `ligacargos` l
      JOIN `contrato` c ON l.numcontrato = c.numcontrato
    SET l.estado          = 1,
        l.monto           = 0,
        l.folio           = v_folio,
        l.fpago           = v_fpago,
        l.idpago_vinc     = v_cto_pag,
        l.f_sinc_mlt_asam = NOW()
    WHERE c.numusuario   = p_numusuario
      AND l.leyenda      = p_leyenda
      AND l.categoria    = 6
      AND l.estado       = 0
      AND l.numcontrato != v_cto_pag
      AND (p_anio = 0 OR l.anio = p_anio);
    SET v_total = v_total + ROW_COUNT();

    -- Sincronizar pendientes en histórico
    UPDATE `ligacargos_historico` l
      JOIN `contrato` c ON l.numcontrato = c.numcontrato
    SET l.estado          = 1,
        l.monto           = 0,
        l.folio           = v_folio,
        l.fpago           = v_fpago,
        l.idpago_vinc     = v_cto_pag,
        l.f_sinc_mlt_asam = NOW()
    WHERE c.numusuario   = p_numusuario
      AND l.leyenda      = p_leyenda
      AND l.categoria    = 6
      AND l.estado       = 0
      AND l.numcontrato != v_cto_pag
      AND (p_anio = 0 OR l.anio = p_anio);
    SET v_total = v_total + ROW_COUNT();
  END IF;

  SET p_filas = v_total;
END$$

-- -----------------------------------------------------------------------------
-- sp_sinc_asamblea_bulk — Sincronizar todos los cargos de asamblea de un año
-- Para todos los usuarios: si al menos un contrato del mismo usuario pagó,
-- marca los demás contratos del usuario como pagados (monto=0, vinculados).
--
-- Parámetros:
--   p_anio   INT      — año a procesar (0 = todos)
--   p_filas  INT OUT  — total de filas sincronizadas
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_sinc_asamblea_bulk`(
  IN  p_anio  INT,
  OUT p_filas INT
)
BEGIN
  DECLARE v_total INT DEFAULT 0;

  -- Sincronizar en ligacargos activa
  UPDATE `ligacargos` l_pend
    JOIN `contrato` c_pend  ON l_pend.numcontrato = c_pend.numcontrato
    JOIN `contrato` c_pag   ON c_pend.numusuario  = c_pag.numusuario
    JOIN `ligacargos` l_pag ON c_pag.numcontrato  = l_pag.numcontrato
  SET l_pend.estado          = 1,
      l_pend.monto           = 0,
      l_pend.folio           = l_pag.folio,
      l_pend.fpago           = l_pag.fpago,
      l_pend.idpago_vinc     = l_pag.numcontrato,
      l_pend.f_sinc_mlt_asam = NOW()
  WHERE l_pag.categoria  = 6
    AND l_pag.estado     = 1
    AND l_pag.monto      > 0
    AND l_pend.categoria = 6
    AND l_pend.estado    = 0
    AND l_pag.leyenda    = l_pend.leyenda
    AND l_pag.numcontrato != l_pend.numcontrato
    AND (p_anio = 0 OR (l_pend.anio = p_anio AND l_pag.anio = p_anio));
  SET v_total = v_total + ROW_COUNT();

  -- Sincronizar en histórico (pago encontrado en ligacargos activa)
  UPDATE `ligacargos_historico` l_pend
    JOIN `contrato` c_pend  ON l_pend.numcontrato = c_pend.numcontrato
    JOIN `contrato` c_pag   ON c_pend.numusuario  = c_pag.numusuario
    JOIN `ligacargos` l_pag ON c_pag.numcontrato  = l_pag.numcontrato
  SET l_pend.estado          = 1,
      l_pend.monto           = 0,
      l_pend.folio           = l_pag.folio,
      l_pend.fpago           = l_pag.fpago,
      l_pend.idpago_vinc     = l_pag.numcontrato,
      l_pend.f_sinc_mlt_asam = NOW()
  WHERE l_pag.categoria  = 6
    AND l_pag.estado     = 1
    AND l_pag.monto      > 0
    AND l_pend.categoria = 6
    AND l_pend.estado    = 0
    AND l_pag.leyenda    = l_pend.leyenda
    AND l_pag.numcontrato != l_pend.numcontrato
    AND (p_anio = 0 OR (l_pend.anio = p_anio AND l_pag.anio = p_anio));
  SET v_total = v_total + ROW_COUNT();

  -- Sincronizar en activo (pago encontrado en ligacargos_historico)
  -- Cubre el gap: pendientes 2026+ donde el pagador maestro está en histórico (<=2025).
  UPDATE `ligacargos` l_pend
    JOIN `contrato` c_pend            ON l_pend.numcontrato = c_pend.numcontrato
    JOIN `contrato` c_pag             ON c_pend.numusuario  = c_pag.numusuario
    JOIN `ligacargos_historico` l_pag ON c_pag.numcontrato  = l_pag.numcontrato
  SET l_pend.estado          = 1,
      l_pend.monto           = 0,
      l_pend.folio           = l_pag.folio,
      l_pend.fpago           = l_pag.fpago,
      l_pend.idpago_vinc     = l_pag.numcontrato,
      l_pend.f_sinc_mlt_asam = NOW()
  WHERE l_pag.categoria  = 6
    AND l_pag.estado     = 1
    AND l_pag.monto      > 0
    AND l_pend.categoria = 6
    AND l_pend.estado    = 0
    AND l_pag.leyenda    = l_pend.leyenda
    AND l_pag.numcontrato != l_pend.numcontrato
    AND (p_anio = 0 OR (l_pend.anio = p_anio AND l_pag.anio = p_anio));
  SET v_total = v_total + ROW_COUNT();

  -- Sincronizar en histórico (pago encontrado en ligacargos_historico)
  -- Cubre el gap: multas ≤2025 donde el pagador también está en histórico.
  UPDATE `ligacargos_historico` l_pend
    JOIN `contrato` c_pend       ON l_pend.numcontrato = c_pend.numcontrato
    JOIN `contrato` c_pag        ON c_pend.numusuario  = c_pag.numusuario
    JOIN `ligacargos_historico` l_pag ON c_pag.numcontrato = l_pag.numcontrato
  SET l_pend.estado          = 1,
      l_pend.monto           = 0,
      l_pend.folio           = l_pag.folio,
      l_pend.fpago           = l_pag.fpago,
      l_pend.idpago_vinc     = l_pag.numcontrato,
      l_pend.f_sinc_mlt_asam = NOW()
  WHERE l_pag.categoria  = 6
    AND l_pag.estado     = 1
    AND l_pag.monto      > 0
    AND l_pend.categoria = 6
    AND l_pend.estado    = 0
    AND l_pag.leyenda    = l_pend.leyenda
    AND l_pag.numcontrato != l_pend.numcontrato
    AND (p_anio = 0 OR (l_pend.anio = p_anio AND l_pag.anio = p_anio));
  SET v_total = v_total + ROW_COUNT();

  SET p_filas = v_total;
END$$

-- -----------------------------------------------------------------------------
-- sp_revertir_sinc_asamblea — Revertir sincronización de asamblea
-- Deshace el efecto de sp_sinc_asamblea_puntual / sp_sinc_asamblea_bulk:
-- restaura estado=0, monto original, limpia folio/fpago/idpago_vinc.
--
-- Parámetros:
--   p_numcontrato  VARCHAR(10)  — contrato específico (NULL = todos)
--   p_leyenda      VARCHAR(100) — leyenda específica (NULL = todas)
--   p_anio         INT          — año (0 = todos)
--   p_filas        INT OUT      — filas revertidas
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_revertir_sinc_asamblea`(
  IN  p_numcontrato VARCHAR(10),
  IN  p_leyenda     VARCHAR(100),
  IN  p_anio        INT,
  OUT p_filas       INT
)
BEGIN
  DECLARE v_total      INT           DEFAULT 0;
  DECLARE v_monto_orig DECIMAL(10,2) DEFAULT 150.00;

  IF p_leyenda IS NOT NULL THEN
    SELECT monto INTO v_monto_orig
    FROM `cargos`
    WHERE nombre = p_leyenda
    LIMIT 1;
  END IF;

  UPDATE `ligacargos`
  SET estado          = 0,
      monto           = v_monto_orig,
      folio           = 0,
      fpago           = NULL,
      idpago_vinc     = '',
      f_sinc_mlt_asam = NULL
  WHERE categoria   = 6
    AND idpago_vinc != ''
    AND estado      = 1
    AND monto       = 0
    AND (p_numcontrato IS NULL OR numcontrato = p_numcontrato)
    AND (p_leyenda   IS NULL OR leyenda      = p_leyenda)
    AND (p_anio = 0 OR anio = p_anio);
  SET v_total = v_total + ROW_COUNT();

  UPDATE `ligacargos_historico`
  SET estado          = 0,
      monto           = v_monto_orig,
      folio           = 0,
      fpago           = NULL,
      idpago_vinc     = '',
      f_sinc_mlt_asam = NULL
  WHERE categoria   = 6
    AND idpago_vinc != ''
    AND estado      = 1
    AND monto       = 0
    AND (p_numcontrato IS NULL OR numcontrato = p_numcontrato)
    AND (p_leyenda   IS NULL OR leyenda      = p_leyenda)
    AND (p_anio = 0 OR anio = p_anio);
  SET v_total = v_total + ROW_COUNT();

  SET p_filas = v_total;
END$$

DELIMITER ;

-- Verificar SPs creados
SELECT ROUTINE_NAME, ROUTINE_TYPE
FROM information_schema.ROUTINES
WHERE ROUTINE_SCHEMA = 'awa' AND ROUTINE_TYPE = 'PROCEDURE'
ORDER BY ROUTINE_NAME;

```

</details>

---

## Agent Response

### Thinking

**Updating Base Script**

I've zeroed in on the `02_schema_tablas_base.sql` script as the sole potential point of impact. My current focus is implementing changes to modify the default values of `tiene_agua` and `tiene_drenaje` to `0`. This seems to be the logical step to address the data discrepancies I've observed in the system's stored procedures.




### Actions

**Tool:** `view_file`
**File:** `03_config_datos_catalogo.sql`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.373829841s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 03_config_datos_catalogo.sql — Datos de configuración y catálogos del sistema
-- Idempotente: usa INSERT ... ON DUPLICATE KEY UPDATE / INSERT IGNORE
-- Ejecutar: mysql -u root -p awa < 03_config_datos_catalogo.sql
-- =============================================================================

USE `awa`;

-- -----------------------------------------------------------------------------
-- config_sistema — Parámetros de negocio
-- -----------------------------------------------------------------------------
INSERT INTO `config_sistema` (clave, valor, descripcion) VALUES
  ('max_tomas_por_contrato',        '2',   'Maximo de tomas por contrato. BD soporta mas; UI restringe a este valor.'),
  ('recargo_mes_inicio',            '4',   'Mes (1-12) a partir del cual se generan recargos de mora. Actual: Abril.'),
  ('recargo_porcentaje',            '10',  'Porcentaje mensual de recargo sobre el saldo vencido.'),
  ('recargo_categoria_agua',        '16',  'ID de categoria en tabla categorias para recargos de AGUA.'),
  ('recargo_categoria_drenaje',     '17',  'ID de categoria en tabla categorias para recargos de DRENAJE.'),
  ('nuevo_contrato_exento_default', '1',   '1 = todo contrato nuevo se crea con exento_recargo_primer_anio=1.'),
  ('cancelacion_min_caracteres',    '20',  'Minimo de caracteres requeridos al justificar cancelacion o cambio de estado.'),
  ('susptemp_mes_permitido',        '12',  'Mes (1-12) en que se permite solicitar Suspension Temporal. Actual: Diciembre.'),
  ('estado_activo',                 '1',   'ID de estado Activo.'),
  ('estado_susp_temporal',          '2',   'ID de estado Suspension Temporal.'),
  ('estado_susp_administrativa',    '3',   'ID de estado Suspension Administrativa.'),
  ('estado_susp_definitiva',        '4',   'ID de estado Suspension Definitiva.')
ON DUPLICATE KEY UPDATE valor = VALUES(valor);

-- Verificar
SELECT clave, valor FROM config_sistema ORDER BY clave;

```

</details>

---

## Agent Response

### Thinking

**Verifying Consistency And Scope**

I've confirmed everything looks sound at the initial stage. I'm focusing on "Ground Truth" updates to `02_schema_tablas_base.sql`, adjusting default values for `tiene_agua` and `tiene_drenaje` to `0` for consistency. Also, I'm checking for additional "Sync" scripts the user might have.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.835456093s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 Apr 2026, 11:36 am

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
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

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

## Conversation 2d2217ca-2154-4c88-b506-587e879d4278: Validating Agua Test Plan
- Created: 2026-04-18T20:32:04Z
- Last modified: 2026-04-18T23:01:21Z

### USER Objective:
Stabilizing Agua Testing Suite

Main Objective: Complete the formalization and stabilization of the Agua V2 testing suite to ensure autonomous, production-ready execution.

Goals:
1. Finalize the "Plan de Pruebas" documentation with high-precision CSS selectors and updated Host C paths.
2. Refactor attendance module interoperability between the Assembly generator and Agua processor, including MD5 validation and cross-table database consistency (active vs. historical).
3. Synchronize the deployment pipeline (B→A→C) to maintain environment integrity.
4. Establish clear operational separation for concurrent manual and automated testing across dual monitors.
5. Secure version control integrity for all finalized protocols in remote repositories.

## Conversation 857c34d0-7f04-45a0-98d9-f2c3598f2011: Investigating Host Synchronization Anomalies
- Created: 2026-04-18T05:16:57Z
- Last modified: 2026-04-18T06:38:48Z

### USER Objective:
Stabilizing Agua Audit Archiving

Objective: Finalize the migration of the audit logging system to a partitioned architecture (active vs. historical) and ensure full operational continuity of the Agua V2 administrative dashboard.

Goals:
1. Implement and validate the archival split between `cambios` and `cambios_historico` tables to ensure data integrity and performance.
2. Integrate the `sp_archivar_bitacora` procedure into the standard deployment pipeline (`Full-Pipeline-Sync.sh`) to prevent configuration drift on Host C.
3. Consolidate UI access by linking the `monitor_fallbacks.php` utility into the "Operaciones y Reportes" panel.
4. Refine system-wide SELECT queries to correctly handle temporal data distribution between the active and historical audit tables.

## Conversation 4e4d201a-ecea-40ab-b382-a9c52c17a702: Reorganizing Agua Configuration Dashboard
- Created: 2026-04-18T04:23:21Z
- Last modified: 2026-04-18T04:52:46Z

### USER Objective:
Refining Agua System UI
The user's primary objective is to finalize the administrative and diagnostic polish of the Agua V2 system. Key goals include:
1. Standardizing application labels and menu terminology for consistency across the platform.
2. Enhancing navigation and filter functionality for reporting modules, specifically in the Cartera Vencida and Saneamiento views.
3. Troubleshooting and patching the Bitácora de Saneamiento to ensure accurate audit trail visualization post-migration.
4. Managing version control and documentation integrity by excluding specific development notes from the deployment pipeline.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 23 Apr 2026, 11:36 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

SOnbre tu afirmacion: Base de Datos (Host C): El contrato 9907 ya fue corregido manualmente (se quitó el drenaje y su cargo correspondiente).; en la pantalla sigue apareciendo, revisa que ocurre

<details>
<summary>Context</summary>

**Active File:** `contratos.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

**Investigating Persistence Issues**

I'm currently investigating why "Anualidad Drenaje" still appears, even after claiming to have fixed contract 9907. I'm focusing on the `ligacargos` table to verify if the charge was truly deleted/cancelled there. I will also check the contract info screen specifically to find the reference and how it is fetched.




### Actions

**Tool:** `mcp_bdawahost-c_execute`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.819167348s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 23 Apr 2026, 11:41 am

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_execute`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 23 Apr 2026, 11:41 am

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_execute`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 23 Apr 2026, 11:41 am

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_execute`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 23 Apr 2026, 11:41 am

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
**Created:** 23 Apr 2026, 11:41 am

---

## Agent Response

### Thinking

**Investigating Persistence Issues**

I'm focused on the remaining water charge issue. I'm puzzled by the user's "en la pantalla sigue apareciendo" comment. My initial thought was the view `vw_ligacargos_pendientes`, but deleting from `ligacargos` should have removed it from the view. I need to figure out what they are looking at and where it may be persisting.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.833093646s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 23 Apr 2026, 11:41 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

vOLVI A PROBAR SUB 1, medio el contrato # 9908. Ahora para la bitacora me sale esto:
Detalle de Alta / Tomas / Situación Financiera
Usuario: 1 | Domicilio: CALLE PRUEBA AUTO 6B. 3Ra pba. | T1: [NOR] AGUA | Adeudos: 0 | Deuda: $0.00
Adeudos: 0
Creo deberia aparece el cargo, de 	ANUALIDAD DEL AGUA 2026	$ 600.00	 o no ?

<details>
<summary>Context</summary>

**Active File:** `historial_mov_cto.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

**Analyzing Sub-Case UI-6**

I've been re-evaluating the user's test of Sub-case B, which they labeled "SUB 1." My analysis shows that the `T1: [NOR] AGUA` entry in the Audit Log is correct. I am now proceeding to assess the next element of the audit log, "Ade...".




### Actions

**Tool:** `view_file`
**File:** `cargos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.334599148s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L759-849)</summary>

**Path:** `Unknown file`

```
	$y->conectarBaseDatos();

	$res1 = $y->q("select numconsec, nombre, monto, monto_comercial, recargo, categoria, estado, anio, repetir, metros, automatico from cargos where numconsec = $num");
	list($numconsec, $nombre, $monto, $monto_comercial, $recargo, $categoria, $estado, $anio, $repetir, $metros, $automatico) = $y->fetch_array($res1);

	$cargo = [
		'numconsec' => $numconsec,
		'nombre' => $nombre,
		'monto' => $monto,
		'monto_comercial' => $monto_comercial,
		'recargo' => $recargo,
		'categoria' => $categoria,
		'estado' => $estado,
		'anio' => $anio,
		'repetir' => $repetir,
		'metros' => $metros,
		'automatico' => $automatico
	];

	$resc = $y->q("select id, nombre from categorias");
	$categorias = [];
	while ($cat = $y->fetch_array($resc)) {
		$categorias[] = ['id' => $cat[0], 'descripcion' => $cat[1]];
	}

	return $templates->render('cargos/modificar', [
		'cargo' => $cargo,
		'categorias' => $categorias
	]);
}

function eliminarCargo($num)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	$y->q("update cargos set estado = 2 where numconsec = $num");
}

function regresarCargoCancelado($contrato, $leyenda, $repetido, $id_cargo = 0)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	// Reglas C02/F02: Prohibido restituir cargos en contratos en Suspensión Definitiva
	$res_est = $y->q("SELECT estado FROM contrato WHERE numcontrato = '$contrato'");
	list($edo_actual) = $y->fetch_array($res_est);
	if (intval($edo_actual) === 4) {
		return; // Bloqueado silenciosamente
	}

	$id_cargo = intval($id_cargo);
	$repetido = intval($repetido);

	// ═══ Snapshot financiero PRE-reasignación ═══
	$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$contrato'");
	$pre = $y->fetch_array($res_pre);
	$n_pre = intval($pre['n']); $tot_pre = number_format(floatval($pre['total']), 2);

	// Regla F06: Determinar monto buscando en ambas tablas (activa/histórico)
	if ($id_cargo > 0) {
		$row_act = $y->fetch_array($y->q("SELECT monto, folio FROM ligacargos           WHERE id = $id_cargo AND numcontrato = '$contrato' LIMIT 1"));
		$row_his = $y->fetch_array($y->q("SELECT monto, folio FROM ligacargos_historico WHERE id = $id_cargo AND numcontrato = '$contrato' LIMIT 1"));
		$res_monto_row = $row_act ?: $row_his;
		
		$y->q("UPDATE ligacargos           SET estado = 0 WHERE id = $id_cargo AND numcontrato = '$contrato'");
		$y->q("UPDATE ligacargos_historico SET estado = 0 WHERE id = $id_cargo AND numcontrato = '$contrato'");
	} else {
		$leyenda_norm = normalizarLeyenda($leyenda);
		$row_act = $y->fetch_array($y->q("SELECT monto, folio FROM ligacargos           WHERE numcontrato = '$contrato' AND UPPER(TRIM(leyenda)) = '$leyenda_norm' AND repetido = $repetido LIMIT 1"));
		$row_his = $y->fetch_array($y->q("SELECT monto, folio FROM ligacargos_historico WHERE numcontrato = '$contrato' AND UPPER(TRIM(leyenda)) = '$leyenda_norm' AND repetido = $repetido LIMIT 1"));
		$res_monto_row = $row_act ?: $row_his;

		$y->q("UPDATE ligacargos           SET estado = 0 WHERE numcontrato = '$contrato' AND UPPER(TRIM(leyenda)) = '$leyenda_norm' AND repetido = $repetido");
		$y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato = '$contrato' AND UPPER(TRIM(leyenda)) = '$leyenda_norm' AND repetido = $repetido");
	}

	// ═══ Snapshot financiero POST-reasignación ═══
	$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$contrato'");
	$post = $y->fetch_array($res_post);
	$n_post = intval($post['n']); $tot_post = number_format(floatval($post['total']), 2);
	$delta_n = $n_post - $n_pre;
	$delta_m = floatval($post['total']) - floatval($pre['total']);

	// Construir descripción para auditoría
	$monto_val   = (is_array($res_monto_row) && isset($res_monto_row['monto'])) ? floatval($res_monto_row['monto']) : 0;
	$folio_val   = (is_array($res_monto_row) && isset($res_monto_row['folio'])) ? intval($res_monto_row['folio']) : 0;
	$monto_str   = ($monto_val > 0) ? '$' . number_format($monto_val, 2) : '';
	$texto_cargo = $leyenda . ($repetido > 0 ? " (r$repetido)" : "") . ($monto_str ? " ($monto_str)" : "");
	if ($id_cargo > 0) {
		$texto_cargo .= " [ID: $id_cargo" . ($folio_val > 0 ? " | Folio: $folio_val" : "") . "]";
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `function _sincronizaParidadFinanciera`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 Apr 2026, 11:48 am

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `function _sincronizaParidadFinanciera`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 Apr 2026, 11:48 am

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `function _sincronizaParidadFinanciera`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 Apr 2026, 11:48 am

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
<summary>File: `Unknown file` (L760-829)</summary>

**Path:** `Unknown file`

```
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

            // 3. Limpiar tabla activa
            $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato = '$id' AND estado = 0");

            // 4. Limpiar tabla histórica (Esquema V2)
            $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato = '$id' AND estado = 0");
        }
        return; // Terminar aquí para SDF
    }

    // --- LÓGICA DE PARIDAD NORMAL (Estados 1, 2, 3) ---
    
    // Conteo físico activo
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1 AND estado_agua=1");
	list($n_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($n_drenaje) = $y->fetch_array($r_d);
	
	// Sincronizar AGUA (categoria=2)
	$leyenda_a = "ANUALIDAD DEL AGUA $anio";
	if ($n_agua > 0) {
	    // Si hay toma física pero el cargo está cancelado (-1), restaurarlo a pendiente (0)
	    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = -1");
	    $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = -1");
	} else {
	    // Si no hay toma física pero el cargo está pendiente (0), cancelarlo (-1)
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = 0");
	    $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = 0");
	}

	// Sincronizar DRENAJE (categoria=3)
	$leyenda_d = "ANUALIDAD DEL DRENAJE $anio";
	if ($n_drenaje > 0) {
	    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = -1");
	    $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = -1");
	} else {
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = 0");
	    $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = 0");
	}

	// Recalibrar montos de cargos PENDIENTES basados en el nuevo número de tomas y tipo
	_sincronizaDeudaPendienteContrato($id, $y);
}

function _sincronizaDeudaPendienteContrato($numcontrato, $y)
{
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($n_tomas_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($n_tomas_drenaje) = $y->fetch_array($r_d);
	$r_tc = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
```

</details>

---

## Agent Response

### Thinking

**Clarifying Charge Processes**

I've realized `_sincronizaParidadFinanciera` just manages the status of existing charges; it doesn't create new ones. The real work of inserting new charges happens in `cargaContrato()`, specifically when a contract is viewed. I need to factor that into my mental map of how the system operates, especially as it relates to audit logs and contract creation. My focus now is how these two processes interact.


**Pinpointing Charge Generation**

I've discovered the root cause of the "0" charge count in audit logs: charges are created *after* the initial contract save, not during it. This is due to `cargaContrato`'s delayed charge generation. My focus is now on refactoring the charge generation logic within `cargaContrato` into a reusable function, such as `generaCargosAutomaticos($id, $y)`, that I can call from both the save process and the contract viewing process. The goal is to ensure charges exist before the audit log snapshot is taken. I'm investigating how to extract and modularize the charge generation code.


**Refining Code Extraction**

I'm now zeroing in on extracting the charge generation logic. My plan is to move the core loop from `cargaContrato` (lines 69-143) into a reusable function, likely named `generaCargosAutomaticos($numcontrato, $y)`. However, I need to pass `$mescontrato` and `$cfg` to this new function, too, and determine the optimal call location. I might duplicate the logic in `guardaNuevoContrato` for simplicity, though refactoring remains the best approach. I see that `calcula_recargos` is called inside the loop, so that needs to be brought along. I'm leaning toward creating it within `contratos.php`, and am rethinking `_sincronizaParidadFinanciera` after considering how it is used. It would be optimal for the audit snapshot to occur after all charges are complete.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 20.019612729s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 Apr 2026, 11:49 am

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
<summary>File: `Unknown file` (L49-149)</summary>

**Path:** `Unknown file`

```
	if ($num_tomas == 0) $num_tomas = 1;
	$max_tomas = intval(obtenerValorSeguro($cfg, 'max_tomas_por_contrato', 2));

	// --- TARIFAS DE REFERENCIA del año en curso (para mostrar en UI) ---
	$anio_actual = date('Y');
	$res_tarifas = $y->q("SELECT nombre, monto, monto_comercial, categoria FROM cargos WHERE automatico=1 AND recargo=0 AND estado=1 AND anio=$anio_actual AND categoria IN (2,3) ORDER BY categoria, numconsec");
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
		}	// --- CARGOS AUTOMÁTICOS al cargar el contrato ---
	if ($estado == 1) {
        generaCargosAutomaticos($id, $y);
	}			}
			}
		}
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
```

</details>

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 Apr 2026, 11:49 am

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
<summary>File: `Unknown file` (L1039-1042)</summary>

**Path:** `Unknown file`

```
		               '$contrato')");
	}
}
?>
```

</details>

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
<summary>File: `Unknown file` (L999-1042)</summary>

**Path:** `Unknown file`

```
		                      SUM(CASE WHEN es_recargo_moratorio = 1 AND anio < $anio_actual THEN monto ELSE 0 END) AS monto_a_cancelar
		               FROM vw_ligacargos_pendientes
		               WHERE numcontrato = '$contrato'");
	$snap = $y->fetch_array($res_snap);
	$cargos_antes     = intval($snap['total_cargos']);
	$monto_antes      = number_format(floatval($snap['total_monto']), 2);
	$recargos_cancelar = intval($snap['recargos_a_cancelar']);
	$monto_cancelar   = number_format(floatval($snap['monto_a_cancelar']), 2);
	$cargos_despues   = $cargos_antes - $recargos_cancelar;
	$monto_despues    = number_format(floatval($snap['total_monto']) - floatval($snap['monto_a_cancelar']), 2);

	// Cancelar recargos moratorios de años anteriores en tabla activa.
	// Usa categoria IN (16,17) — fuente de verdad canónica (regla F05).
	$y->q("UPDATE ligacargos
		    SET estado = -1
		  WHERE numcontrato = '$contrato'
		    AND categoria IN (16, 17)
		    AND anio < $anio_actual
		    AND estado = 0");

	// Sincronizar en tabla histórica (esquema V2 split)
	$y->q("UPDATE ligacargos_historico
		    SET estado = -1
		  WHERE numcontrato = '$contrato'
		    AND categoria IN (16, 17)
		    AND anio < $anio_actual
		    AND estado = 0");

	if ($recargos_cancelar > 0) {
		$antes_txt   = "Adeudos: $cargos_antes cargos | Deuda total: \$$monto_antes | Recargos moratorios hist. a cancelar: $recargos_cancelar (\$$monto_cancelar)";
		$despues_txt = "Adeudos: $cargos_despues cargos | Deuda total: \$$monto_despues | $recargos_cancelar recargos moratorios históricos cancelados (estado=-1)";
		
		$antes_esc   = $y->real_escape_string($antes_txt);
		$despues_esc = $y->real_escape_string($despues_txt);

		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
		        VALUES(NOW(),
		               'Amnistia de Recargos en Reactivacion (C06)',
		               '$antes_esc',
		               '$despues_esc',
		               '$contrato')");
	}
}
?>
```

</details>

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
<summary>File: `Unknown file` (L949-999)</summary>

**Path:** `Unknown file`

```
}

function validaTomasSync($usr, $domicilio, $num_tomas, $id = null) {
	$y = new Conexion();
	$y->conectarBaseDatos();

	if ($id !== null && $id != '') {
		// Validar estado del contrato
		$res_edo = $y->q("SELECT estado FROM contrato WHERE numcontrato='$id'");
		if ($y->num_rows($res_edo) > 0) {
		    list($c_estado) = $y->fetch_array($res_edo);
		    $res_tomas_actuales = $y->q("SELECT COUNT(id) FROM contrato_toma WHERE numcontrato='$id'");
		    list($tomas_actuales) = $y->fetch_array($res_tomas_actuales);
		    
		    if ($num_tomas > $tomas_actuales && !in_array($c_estado, [1, 2])) {
			    return "Restriccion: Solo se permite agregar nuevas tomas a contratos en estado Activo o Suspension Temporal.";
		    }
		}
		$cond_id = " AND c.numcontrato != '$id' ";
	} else {
		$cond_id = "";
	}

	$dom_clean_sql_c = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER(c.domicilio), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$dom_clean_sql_v = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER('$domicilio'), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_clean_sql_c = $dom_clean_sql_v AND c.estado != 4 " . $cond_id);
	list($tomas_otras) = $y->fetch_array($res_count);

	if ($tomas_otras + intval($num_tomas) > 2) {
		return "El usuario ya cuenta con $tomas_otras toma(s) en otros contratos para el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio, previendo asignar $num_tomas extra.";
	}

	return "OK";
}

/**
 * Regla C06 — Amnistía de Recargos en Reactivación
 * Al reactivar un contrato (→ Estado 1 ACTIVO), cancela todos los recargos
 * de años anteriores al año actual que estén pendientes (estado=0).
 * Solo quedan vigentes los cargos y recargos del año en curso.
 * Se registra auditoria en tabla cambios.
 */
function _amnistiaRecargosHistoricos($contrato, $y) {
	$anio_actual = date('Y');

	// Snapshot financiero ANTES de cancelar — para auditoría con impacto real
	$res_snap = $y->q("SELECT COUNT(*) AS total_cargos,
		                      SUM(monto) AS total_monto,
		                      COUNT(CASE WHEN es_recargo_moratorio = 1 AND anio < $anio_actual THEN 1 END) AS recargos_a_cancelar,
		                      SUM(CASE WHEN es_recargo_moratorio = 1 AND anio < $anio_actual THEN monto ELSE 0 END) AS monto_a_cancelar
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `function guardaNuevoContrato`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 Apr 2026, 11:50 am

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
<summary>File: `Unknown file` (L872-949)</summary>

**Path:** `Unknown file`

```
function guardaNuevoContrato($id, $usr, $domicilio, $tipo, $agua, $drenaje, $masdatos, $observaciones, $metros, $tomas_data, $num_tomas)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg    = cargaConfig($y);
	$exento = intval(obtenerValorSeguro($cfg, 'nuevo_contrato_exento_default', 1));

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
```

</details>

---

## Agent Response

### Thinking

**Verifying Contract Generation**

I've confirmed that `guardaNuevoContrato` correctly calls `generaCargosAutomaticos`. The issue likely stems from contract 9908's creation prior to, or during, the application of the relevant correction. Therefore, the "Adeudos: 0" observation is explained.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 8.023309029s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 Apr 2026, 11:50 am

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
**Created:** 23 Apr 2026, 11:50 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

Este nuevo feature para la bitacora, aplico para en las operaciones en la ficha del contrato: cambio de estado , agregar cargos, reasignar cargos cancelados ?

<details>
<summary>Context</summary>

**Active File:** `contratos.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

**Considering Feature Applicability**

I'm currently evaluating the broader applicability of the new bitácora feature. It seems logical to extend the financial snapshot (PRE/POST) and detailed descriptions to other operations within the contract view, like state changes and additions. I'm weighing the benefits of consistent financial transparency against potential implementation complexity.




### Actions

**Tool:** `grep_search`
**Query:** `Snapshot financiero PRE`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.943226325s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 Apr 2026, 11:57 am

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `function aplicaCargoManual`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 Apr 2026, 11:57 am

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `cargos.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/*
 * cargos.php — Lógica de negocio para cargos
 * Rediseño v2: calcula_recargos sin hardcodes, usa $cfg de config_sistema
 * PHP 5.5 compatible
 */

/**
 * Normaliza una leyenda para búsquedas seguras en BD.
 * Elimina espacios extremos, colapsa espacios internos múltiples y convierte a MAYÚSCULAS.
 * Usar en WHERE cuando $leyenda proviene de input externo (POST/GET/vista).
 * En el SQL complementar con: UPPER(TRIM(REGEXP_REPLACE(leyenda, '\s+', ' ')))
 * Para MySQL 5.6/MariaDB sin REGEXP_REPLACE usar: UPPER(TRIM(leyenda)) — cubre el 99% de casos.
 */
function normalizarLeyenda($leyenda)
{
    $s = trim($leyenda);
    $s = preg_replace('/\s+/', ' ', $s);
    return mb_strtoupper($s, 'UTF-8');
}

function calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg = null)
{
	// Cargar config si no viene como parámetro (compatibilidad)
	if (!is_array($cfg) || count($cfg) == 0) {
		$cfg = cargaConfig($y);
	}

	$mes_inicio = intval(isset($cfg['recargo_mes_inicio']) ? $cfg['recargo_mes_inicio'] : 4);
	$porcentaje = floatval(isset($cfg['recargo_porcentaje']) ? $cfg['recargo_porcentaje'] : 10);
	$cat_agua = intval(isset($cfg['recargo_categoria_agua']) ? $cfg['recargo_categoria_agua'] : 16);
	$cat_drenaje = intval(isset($cfg['recargo_categoria_drenaje']) ? $cfg['recargo_categoria_drenaje'] : 17);

	// EXENCIÓN RECARGOS PRIMER AÑO Y VALIDACIÓN DE ESTADO
	$res_exencion = $y->q("SELECT YEAR(fecha) as anio_creacion, exento_recargo_primer_anio, estado FROM contrato WHERE numcontrato='$numcontrato'");
	list($anio_creacion, $exento_recargo, $edo_cto) = $y->fetch_array($res_exencion);

	// REGLA F01 / SDF: No generar recargos si el contrato está en Suspensión Definitiva (estado 4)
	// Los recargos automáticos inician en Abril (mes 4) según configuración del sistema.
	if (intval($edo_cto) === 4) {
		return;
	}
	// REGLA F01 / C06: No generar recargos en Suspensión Temporal (estado 2).
	// La anualidad ya está cancelada (estado=-1); el recargo sobre ella no procede.
	if (intval($edo_cto) === 2) {
		return;
	}

	if ($exento_recargo == 1 && $anio == $anio_creacion) {
		return;
	}

	// EXENCIÓN: NO GENERAR RECARGOS PARA CATEGORÍAS QUE YA SON RECARGOS
	if ($categoria == $cat_agua || $categoria == $cat_drenaje) {
		return;
	}

	$fecha_actual = time();
	$mes_pad = str_pad($mes_inicio, 2, '0', STR_PAD_LEFT);
	$fecha_entrada = strtotime("01-$mes_pad-$anio 01:00:00");

	if ($fecha_actual > $fecha_entrada) {
		$mes_numero = intval(date('m'));
		$anio_numero = intval(date('Y'));
		$meses = (($anio_numero - $anio) * 12) + ($mes_numero - 1);

		$nom_meses = array("", "ENE", "FEB", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEPT", "OCT", "NOV", "DIC");

		$mesrecargo = 1;
		$aniorecargo = $anio;

		// Sin hardcode: porcentaje desde config
		$monto_recargo = ($monto * $porcentaje) / 100;

		// Sin hardcode: categorias desde config
		$categoria_recargo = $categoria;
		if ($categoria == 2)
			$categoria_recargo = $cat_agua;
		if ($categoria == 3)
			$categoria_recargo = $cat_drenaje;

		$respagado = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato=$numcontrato AND estado=1");
		list($pagado) = $y->fetch_array($respagado);

		if ($pagado == 0) {
			for ($i = 1; $i <= $meses; $i++) {
				$leyenda_recargo = "RECARGO $nom_meses[$mesrecargo] $aniorecargo - $leyenda";
				$tabla_dest = ($aniorecargo <= 2025) ? "ligacargos_historico" : "ligacargos";
				if ($aniorecargo == $anio) {
					// Idempotencia: no duplicar si el recargo ya existe (protege contra refresh y re-activaciones)
					$chk_rec = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda_recargo' AND numcontrato='$numcontrato' LIMIT 1");
					if ($y->num_rows($chk_rec) == 0) {
						$q = "INSERT INTO $tabla_dest (numcontrato,leyenda,monto,fcobro,fpago,estado,recargo,folio,anio,numcontratoresp,idpago_vinc,categoria,repetido) VALUES('$numcontrato','$leyenda_recargo',$monto_recargo,CURDATE(),CURDATE(),0,$recargo,'',$anio,'',NULL,$categoria_recargo,$cuenta)";
						$y->q($q);
					}
				}
				if (++$mesrecargo > 12) {
					$mesrecargo = 1;
					$aniorecargo++;
				}
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `cargos.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L99-199)</summary>

**Path:** `Unknown file`

```
				}
			}
		}
	}
}

function eliminaEgreso($id, $motivo)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	// Obtener datos antes de eliminar para auditoría
	$res_ant = $y->q("SELECT leyenda, monto, categoria FROM egresos WHERE id='$id'");
	$ant = $y->fetch_array($res_ant);
	$leyenda_e = $ant['leyenda'];
	$monto_e   = number_format($ant['monto'], 2);
	$cat_e     = $ant['categoria'];

	$y->q("update egresos set estado=-1, motivoelimina='$motivo' where id='$id'");

	$motivo_esc = $y->real_escape_string($motivo);
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
	       VALUES(NOW(), 'Eliminación de Egreso', 'Egreso: $leyenda_e ($cat_e) por \$$monto_e', 'ELIMINADO. Motivo: $motivo_esc', '-EGRESO-')");

	$salida = "Se ha eliminado el egreso";

	return $salida;
}

function cargaCargosEsp($cadena)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	if ($cadena == "")
		$cadena = "1";

	if ($cadena != "") {
		$ocurrencias = explode(" ", $cadena);
		$cadena = "";
		foreach ($ocurrencias as $parte) {
			$cadena .= (($cadena != "") ? "AND " : "") . "nombre like (\"%$parte%\")";
		}
	}
	$q1 = "select numconsec, nombre, monto, monto_comercial, recargo, observaciones, mensualidades, anio, categoria, repetir, metros from cargos where $cadena AND estado=1 order by nombre";
	$res = $y->q($q1);

	$cargos = [];
	while ($c = $y->fetch_array($res)) {
		$cargos[] = [
			'numconsec' => $c[0],
			'nombre' => $c[1],
			'monto' => $c[2],
			'monto_com' => $c[3],
			'recargo' => $c[4],
			'observaciones' => $c[5],
			'mensualidades' => $c[6],
			'anio' => $c[7],
			'categoria' => $c[8],
			'repetir' => $c[9],
			'metros' => $c[10]
		];
	}

	return $templates->render('cargos/lista_tabla', ['cargos' => $cargos]);
}

function cargaCargos()
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$res = $y->q("select numconsec, nombre, monto, monto_comercial, recargo, observaciones, mensualidades, anio, categoria, repetir, metros from cargos where estado=1 order by nombre");
	$cargos = [];
	while ($c = $y->fetch_array($res)) {
		$cargos[] = [
			'numconsec' => $c[0],
			'nombre' => $c[1],
			'monto' => $c[2],
			'monto_com' => $c[3],
			'recargo' => $c[4],
			'observaciones' => $c[5],
			'mensualidades' => $c[6],
			'anio' => $c[7],
			'categoria' => $c[8],
			'repetir' => $c[9],
			'metros' => $c[10]
		];
	}

	$resz = $y->q("select numconsec, nombre, monto, monto_comercial, estado from cargos where estado <> 2 order by estado, nombre, anio, monto");
	$cargos_registrados = [];
	while (list($num, $nom, $monto, $mon_com, $edo) = $y->fetch_array($resz)) {
		$cargos_registrados[] = ['num' => $num, 'nom' => $nom, 'monto' => $monto, 'monto_comercial' => $mon_com, 'edo' => $edo];
	}

	$resc = $y->q("select id, nombre from categorias");
	$categorias = [];
	while ($cat = $y->fetch_array($resc)) {
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `cargos.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L449-599)</summary>

**Path:** `Unknown file`

```
			}

			if ($aplicametros == 1)
				$monto = $monto * $metros;

			if ($anio == "0")
				$anio = date('Y');

			$aplicar_cargo = true;
			if ($n_tomas_agua == 0 && $categoria == 2) {
				$aplicar_cargo = false;
				$alertas[] = "El cargo <b>$leyenda</b> no aplica porque el contrato $numcontrato no tiene toma de agua conectada.";
			}
			if ($n_tomas_drenaje == 0 && $categoria == 3) {
				$aplicar_cargo = false;
				$alertas[] = "El cargo <b>$leyenda</b> no aplica porque el contrato $numcontrato no tiene toma de drenaje conectada.";
			}

			if ($aplicar_cargo) {
				$tabla_d = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos";
				if ($repetir == 0)
					$q = "INSERT INTO $tabla_d (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, 0)";
				else {
					$res = $y->q("SELECT COUNT(l.numcontrato) FROM vw_ligacargos_all l WHERE l.leyenda = '$leyenda' AND l.numcontrato = '$numcontrato'");
					list($cuenta) = $y->fetch_array($res);
					$q = "INSERT INTO $tabla_d (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, $cuenta)";
				}

				if ($y->q($q)) {
					$n++;
					// Calcular recargos si aplica
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, (isset($cuenta) ? $cuenta : 0), $y, 1, $cfg);
				} else
					$m++;
			}
		}
	}

	$mensaje = "Se ha" . (($n == 1) ? "" : "n") . " aplicado <b>$n</b> cargo" . (($n == 1) ? "" : "s") . "." . (($m != 0) ? "<br>$m cargo" . (($m == 1) ? "" : "s") . " no pud" . (($m == 1) ? "o" : "ieron") . " asignarse por duplicidad." : "");
	if (count($alertas) > 0) {
		$mensaje .= "<div style='color:#900; margin-top:10px; font-size:11px;'><b>RECHAZADOS POR REGLA:</b><br>" . implode("<br>", array_unique($alertas)) . "</div>";
	}

	// ═══ Snapshot financiero POST-aplicación (por cada contrato afectado) ═══
	// Auditoría de aplicación manual
	if ($n > 0) {
		$lista_labels = array();
		foreach($cargo as $l_in) { $a_l = explode('|', $l_in); $lista_labels[] = $a_l[0]; }
		$leyendas_str = implode(', ', array_unique($lista_labels));
		$contratos_lista_audit = is_array($c) ? $c : array($c);
		$ctos_str = implode(', ', $contratos_lista_audit);
		
		// Calcular snapshot post por cada contrato afectado
		$resumen_ctos = array();
		foreach ($contratos_lista_audit as $cto_a) {
			$res_p = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$cto_a'");
			$p = $y->fetch_array($res_p);
			$resumen_ctos[] = "Cto $cto_a: " . intval($p['n']) . " adeudos (\$" . number_format(floatval($p['total']), 2) . ")";
		}
		$snapshot_str = implode(' | ', $resumen_ctos);
		
		$leyendas_esc = $y->real_escape_string($leyendas_str);
		$ctos_esc = $y->real_escape_string($ctos_str);
		$snapshot_esc = $y->real_escape_string($snapshot_str);
		
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Aplicación manual de cargos', 'Cargos aplicados: $n | Formatos: $leyendas_esc', 'Contratos: $ctos_esc | $snapshot_esc', '-OPERACION-')");
	}

	return $templates->render('sistema/mensaje', [
		'titulo' => 'Aplicación de Cargos',
		'mensaje' => $mensaje . "<script>$('#cargostabla').html('')</script>"
	]);
}

function creaCargo($leyenda, $cat, $otracategoria, $monto, $mensual, $anio, $recargo, $interes, $multa, $aniocobro, $repetir, $metros, $automatico, $monto_comercial = 0)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$salida = "";

	if ($cat == -1) {
		$nombrecorto_auto = strtoupper(substr(preg_replace('/[^a-zA-Z0-9]/', '', $otracategoria), 0, 8));
		$q = "insert into categorias (nombre, nombrecorto) values(\"$otracategoria\", \"$nombrecorto_auto\")";
		if ($y->q($q))
			$salida .= "Se ha creado una categor&iacute;a nueva.<br>";
		else
			$salida .= "No se pudo agregar la categor&iacute;a nueva.<br>";
		$cat = $y->insert_id();
	}

	$multa = (!isset($multa)) ? 0 : $multa;
	$repetir = (!isset($repetir)) ? 0 : $repetir;
	$mensual = (!isset($mensual)) ? 0 : $mensual;
	$metros = (!isset($metros)) ? 0 : $metros;

	$monto_comercial = (!isset($monto_comercial) || $monto_comercial == "") ? 0 : floatval($monto_comercial);

	$q = "insert into cargos values(null, '$leyenda', $monto, $multa, '', $mensual, $cat, 1, $aniocobro, $repetir, $metros, $automatico, $monto_comercial)";

	if ($y->q($q)) {
		$salida .= "Se ha agregado al cat&aacute;logo de cargos <b>$leyenda</b>.<br>";
	} else
		$salida .= "No se pudo dar de alta el cargo.<br>";

	return $templates->render('sistema/mensaje', [
		'titulo' => 'Crear Cargo',
		'mensaje' => $salida . "<script>cargabusquedacontrato();</script>"
	]);
}

function modificaCargo($num, $leyenda, $cat, $otracategoria, $monto, $mensual, $anio, $recargo, $interes, $multa, $aniocobro, $repetir, $metros, $automatico, $monto_comercial = 0)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$salida = "";

	if ($cat == -1) {
		$nombrecorto_auto = strtoupper(substr(preg_replace('/[^a-zA-Z0-9]/', '', $otracategoria), 0, 8));
		$q = "insert into categorias (nombre, nombrecorto) values(\"$otracategoria\", \"$nombrecorto_auto\")";
		if ($y->q($q))
			$salida .= "Se ha creado una categor&iacute;a nueva.<br>";
		else
			$salida .= "No se pudo agregar la categor&iacute;a nueva.<br>";
		$cat = $y->insert_id();
	}

	$multa = (!isset($multa)) ? 0 : $multa;
	$repetir = (!isset($repetir)) ? 0 : $repetir;
	$mensual = (!isset($mensual)) ? 0 : $mensual;
	$metros = (!isset($metros)) ? 0 : $metros;

	$monto_comercial = (!isset($monto_comercial) || $monto_comercial == "") ? 0 : floatval($monto_comercial);

	$q = "update cargos set nombre='$leyenda', monto=$monto, monto_comercial=$monto_comercial, recargo=$multa, categoria=$cat, anio=$aniocobro, repetir=$repetir, metros=$metros, automatico=$automatico where numconsec=$num";

	if ($y->q($q)) {
		$salida .= "Se ha modificado el cargo $leyenda.<br>";
		
		// Sincronización de Saldo para cargos no pagados (estado = 0)
		$res_pendientes = $y->q("SELECT l.numcontrato, l.repetido, c.tipo, c.agua, c.drenaje, c.metros as metros_cto
								 FROM vw_ligacargos_pendientes l
								 JOIN contrato c ON l.numcontrato = c.numcontrato
								 WHERE l.leyenda='$leyenda'");
		
		$actualizados = 0;
		while ($p = $y->fetch_array($res_pendientes)) {
```

</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

Realize:  Sub-caso D — 2 Tomas: Normal + Comercial (máximo permitido) , medio Contrato #9912.
Valida a nivel de bd awa host c, si cumplio con lo esperado del caso.

<details>
<summary>Context</summary>

**Active File:** `historial_mov_cto.php`
**Language:** php
</details>

---

<details>
<summary>File: `Unknown file` (L148-188)</summary>

**Path:** `Unknown file`

```

        .tipo-badge {
            display: inline-block;
            padding: 2px 10px;
            border-radius: 9999px;
            font-size: 0.7rem;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 6px;
        }
        .tipo-cancelacion   { background: #fee2e2; color: #991b1b; }
        .tipo-reasignacion  { background: #dcfce7; color: #166534; }
        .tipo-declaratoria  { background: #fef9c3; color: #854d0e; }
        .tipo-amnistia      { background: #ede9fe; color: #5b21b6; }
        .tipo-estado        { background: #dbeafe; color: #1e40af; }
        .tipo-cobro         { background: #d1fae5; color: #065f46; }
        .tipo-paridad       { background: #fce7f3; color: #9d174d; }
        .tipo-propietario   { background: #fff7ed; color: #9a3412; }
        .tipo-aplicacion    { background: #ecfdf5; color: #047857; }
        .tipo-conexion      { background: #f0f9ff; color: #0369a1; }
        .tipo-nuevo         { background: #fef3c7; color: #92400e; }
        .tipo-otro          { background: #e0e7ff; color: #3730a3; }

        .timeline {
            position: relative;
            padding-left: 20px;
        }

        .timeline::before {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            bottom: 0;
            width: 2px;
            background: var(--border);
        }

        .timeline-item {
            position: relative;
            margin-bottom: 1.5rem;
```

</details>

---

## Agent Response

### Thinking

**Validating Contract Data**

I'm currently focused on verifying the database state for contract 9912 on Host C after the execution of Sub-case D, involving two scenarios: Normal and Comercial. My immediate objective is to validate the `contrato.numusuario` field for accuracy. I anticipate checking several other `contrato` fields and comparing these with the expected outcome.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.426539639s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 23 Apr 2026, 12:31 pm

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
**Created:** 23 Apr 2026, 12:31 pm

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
**Created:** 23 Apr 2026, 12:31 pm

---

## Agent Response

### Thinking

**Analyzing the Charges**

I've just determined the classification for each water intake: Toma 1 is Normal with Agua and Drenaje, while Toma 2 is Comercial, also with Agua, but no Drenaje. Now, I'm analyzing how to generate the charges based on the contract type to ensure accuracy.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.910404952s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 23 Apr 2026, 12:31 pm

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
**Created:** 23 Apr 2026, 12:31 pm

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
**Created:** 23 Apr 2026, 12:31 pm

---

## Agent Response

### Thinking

**Verifying Usage Data**

I have confirmed the "bitácora" data. It accurately reflects two tomas and two outstanding debts. The total debt is correctly calculated. Now, I need to check if the user exceeded the limit of two tomas for user 1, to ensure accuracy in the accounting.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.312355298s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

SObre:Conclusión: El sistema identificó que al haber al menos una toma comercial, todo el contrato debe tributar con la tarifa comercial, multiplicada por el número de servicios físicos activos.
Requiero cambiar esa regla de tomar el mayor comercial: que se cambie para que Que el cobro sea la suma de las unidades de los cargos, de acuerdo a su tipo de toma; ya sea para una o para dos tomas.
Analiza, describe me si esta claro el concepto de calculo , antes de que hagas algun cambio.

<details>
<summary>Context</summary>

**Active File:** `historial_mov_cto.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

**Revising Billing Rules**

I'm now focused on the billing structure for multi-toma contracts. The current setup, where any Commercial toma dictates Commercial billing for the entire contract, seems overly simplistic. The next step is to examine how to adapt to changes to billing for multi-toma contracts. This will involve an examination of requirements.


**Refining Billing Logic**

I've decided each toma should be billed independently based on its type, which is a significant shift. This means the total contract cost is the sum of individual toma rates. I'm focusing on the implementation details now: specifically, adapting `generaCargosAutomaticos` and `_sincronizaDeudaPendienteContrato`. The "Contrato Type" will still require a check for meter readings.


**Implementing Toma-Based Billing**

I'm now implementing the new logic in `generaCargosAutomaticos`. My plan is to iterate through each water-enabled toma for a contract and calculate the individual charge. I'll need to sum these charges for the total "ANUALIDAD DEL AGUA". This ensures individual billing based on each toma's `tipo`.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.955954367s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

Si, correcto, realizalo; y analiza impactos en otros calculos que se realiza en las phps de contratos.

<details>
<summary>Context</summary>

**Active File:** `historial_mov_cto.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

**Analyzing Impact**

I'm currently focused on the implications of introducing "Sum of Units" logic. My recent assessment pinpointed how this change affects two key areas: `cargaContrato` and `generaCargosAutomaticos`. The first UI remains sound, but the second requires this new sum.




### Actions

**Tool:** `view_file`
**File:** `cargos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.580279826s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L589-649)</summary>

**Path:** `Unknown file`

```
	if ($y->q($q)) {
		$salida .= "Se ha modificado el cargo $leyenda.<br>";
		
		// Sincronización de Saldo para cargos no pagados (estado = 0)
		$res_pendientes = $y->q("SELECT l.numcontrato, l.repetido, c.tipo, c.agua, c.drenaje, c.metros as metros_cto
								 FROM vw_ligacargos_pendientes l
								 JOIN contrato c ON l.numcontrato = c.numcontrato
								 WHERE l.leyenda='$leyenda'");
		
		$actualizados = 0;
		while ($p = $y->fetch_array($res_pendientes)) {
			$nc = $p['numcontrato'];
			$rep = $p['repetido'];
			$metros_cto = $p['metros_cto'];
			
			// Determinar número de tomas activas desde contrato_toma
			$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$nc' AND tiene_agua=1 AND estado_agua=1");
			list($n_agua) = $y->fetch_array($r_a);
			$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$nc' AND tiene_drenaje=1 AND estado_drenaje=1");
			list($n_drenaje) = $y->fetch_array($r_d);
			$r_t = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$nc'");
			list($es_com) = $y->fetch_array($r_t);
			
			$nuevo_monto = 0;
			
			// Recalcular basado en la nueva tarifa
			if ($cat == 2 && $n_agua > 0) {
				$m_base = ($es_com == 1 && $monto_comercial > 0) ? $monto_comercial : (($es_com == 1) ? $monto * 2 : $monto);
				$nuevo_monto = $m_base * $n_agua;
			}
			if ($cat == 3 && $n_drenaje > 0) {
				$m_base = ($es_com == 1 && $monto_comercial > 0) ? $monto_comercial : (($es_com == 1) ? $monto * 2 : $monto);
				$nuevo_monto = $m_base * $n_drenaje;
			}
			if ($metros == 1 && $nuevo_monto > 0) {
				$nuevo_monto = $nuevo_monto * $metros_cto;
			}
			
			// Si no es agua ni drenaje (ej. multas fijas), o usa configuración simple, aplicar tarifa directa
			if($cat != 2 && $cat != 3 && $nuevo_monto == 0) {
				$nuevo_monto = ($es_com == 1 && $monto_comercial > 0) ? $monto_comercial : (($es_com == 1) ? $monto * 2 : $monto);
				if ($metros == 1) $nuevo_monto = $nuevo_monto * $metros_cto;
			}

			if ($nuevo_monto > 0) {
				$y->q("UPDATE ligacargos SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
				$y->q("UPDATE ligacargos_historico SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
				$actualizados++;
			}
		}
		
		if ($actualizados > 0) {
			$salida .= "Se sincronizó el saldo retroactivamente en <b>$actualizados</b> contratos con este cargo pendiente.<br>";
			$antes_str = "Se modificaron tarifas del cargo. Tarifas aplicadas: Normal $\$$monto, Comercial: $\$$monto_comercial";
			$despues_str = "Sincronizacion de saldo aplicada a $actualizados contratos pendientes.";
			$leyenda_esc = $y->real_escape_string($leyenda);
			$antes_esc = $y->real_escape_string($antes_str);
			$despues_esc = $y->real_escape_string($despues_str);
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Sincr. masiva de Adeudos - $leyenda_esc', '$antes_esc', '$despues_esc', '-MASIVO-')");
		}

```

</details>

---

## Agent Response

### Thinking

**Analyzing Legacy Code**

I've determined that `modificaCargo` does indeed inherit outdated logic. My focus is now on meticulously updating the task list to reflect the necessary changes in `includes/negocio/contratos.php`, particularly `generaCargosAutomaticos` and `_sincronizaDeudaPendienteContrato`. I’m creating a precise, prioritized list of all the tasks.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 14.078279208s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 Apr 2026, 12:43 pm

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
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

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

## Conversation 2d2217ca-2154-4c88-b506-587e879d4278: Validating Agua Test Plan
- Created: 2026-04-18T20:32:04Z
- Last modified: 2026-04-18T23:01:21Z

### USER Objective:
Stabilizing Agua Testing Suite

Main Objective: Complete the formalization and stabilization of the Agua V2 testing suite to ensure autonomous, production-ready execution.

Goals:
1. Finalize the "Plan de Pruebas" documentation with high-precision CSS selectors and updated Host C paths.
2. Refactor attendance module interoperability between the Assembly generator and Agua processor, including MD5 validation and cross-table database consistency (active vs. historical).
3. Synchronize the deployment pipeline (B→A→C) to maintain environment integrity.
4. Establish clear operational separation for concurrent manual and automated testing across dual monitors.
5. Secure version control integrity for all finalized protocols in remote repositories.

## Conversation 857c34d0-7f04-45a0-98d9-f2c3598f2011: Investigating Host Synchronization Anomalies
- Created: 2026-04-18T05:16:57Z
- Last modified: 2026-04-18T06:38:48Z

### USER Objective:
Stabilizing Agua Audit Archiving

Objective: Finalize the migration of the audit logging system to a partitioned architecture (active vs. historical) and ensure full operational continuity of the Agua V2 administrative dashboard.

Goals:
1. Implement and validate the archival split between `cambios` and `cambios_historico` tables to ensure data integrity and performance.
2. Integrate the `sp_archivar_bitacora` procedure into the standard deployment pipeline (`Full-Pipeline-Sync.sh`) to prevent configuration drift on Host C.
3. Consolidate UI access by linking the `monitor_fallbacks.php` utility into the "Operaciones y Reportes" panel.
4. Refine system-wide SELECT queries to correctly handle temporal data distribution between the active and historical audit tables.

## Conversation 4e4d201a-ecea-40ab-b382-a9c52c17a702: Reorganizing Agua Configuration Dashboard
- Created: 2026-04-18T04:23:21Z
- Last modified: 2026-04-18T04:52:46Z

### USER Objective:
Refining Agua System UI
The user's primary objective is to finalize the administrative and diagnostic polish of the Agua V2 system. Key goals include:
1. Standardizing application labels and menu terminology for consistency across the platform.
2. Enhancing navigation and filter functionality for reporting modules, specifically in the Cartera Vencida and Saneamiento views.
3. Troubleshooting and patching the Bitácora de Saneamiento to ensure accurate audit trail visualization post-migration.
4. Managing version control and documentation integrity by excluding specific development notes from the deployment pipeline.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 23 Apr 2026, 12:43 pm

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
<summary>File: `Unknown file` (L819-869)</summary>

**Path:** `Unknown file`

```
	// Validar contrato ACTIVO
	$r = $y->q("SELECT estado FROM contrato WHERE numcontrato='$numcontrato'");
	list($est) = $y->fetch_array($r);
	$estado_activo = intval(obtenerValorSeguro($cfg, 'estado_activo', 1));
	if ($est != $estado_activo) {
		return "<b>Error:</b> Solo se puede cambiar la conexi&oacute;n en contratos ACTIVOS.";
	}

	$campo = ($servicio == 'agua') ? 'estado_agua' : 'estado_drenaje';

	// ═══ Snapshot financiero PRE-paridad ═══
	$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
	$pre = $y->fetch_array($res_pre);
	$n_pre   = intval($pre['n']);
	$tot_pre = number_format(floatval($pre['total']), 2);

	$y->q("UPDATE contrato_toma SET $campo=$nuevo_estado WHERE numcontrato='$numcontrato' AND num_toma=$num_toma");

    $desc_ev  = ($nuevo_estado == 0) ? 'desconectado' : 'conectado';
    $antes_ev = ($nuevo_estado == 0) ? 'conectado' : 'desconectado';
    $desc_ev_esc  = $y->real_escape_string($desc_ev);
    $antes_ev_esc = $y->real_escape_string($antes_ev);
    $servicio_esc = $y->real_escape_string($servicio);

	// Sincronizar campos legacy y Paridad Financiera
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($tot_a) = $y->fetch_array($r_a);
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
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `function _sincronizaDeudaPendienteContrato`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 Apr 2026, 12:43 pm

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
<summary>File: `Unknown file` (L752-818)</summary>

**Path:** `Unknown file`

```
function _sincronizaDeudaPendienteContrato($numcontrato, $y)
{
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($n_tomas_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($n_tomas_drenaje) = $y->fetch_array($r_d);
	$r_tc = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
	list($es_comercial) = $y->fetch_array($r_tc);

	$rescargos = $y->q("SELECT nombre, monto, monto_comercial, categoria, metros FROM cargos WHERE estado=1 AND automatico=1 AND categoria IN (2,3)");
	$tarifas_automaticas = array();
	while ($c = $y->fetch_array($rescargos)) {
		$tarifas_automaticas[$c['nombre']] = $c;
	}

	$pendientes = $y->q("SELECT leyenda, repetido, categoria, monto as monto_actual FROM vw_ligacargos_pendientes WHERE numcontrato='$numcontrato' AND categoria IN (2,3)");
	
	$rm = $y->q("SELECT metros FROM contrato WHERE numcontrato='$numcontrato'");
	list($metros_cto) = $y->fetch_array($rm);
	if (empty($metros_cto)) $metros_cto = 0;

	$actualizados = 0;
	while ($p = $y->fetch_array($pendientes)) {
		$leyenda = $p['leyenda'];
		$cat = $p['categoria'];
		$rep = $p['repetido'];
		$monto_actual = floatval($p['monto_actual']);
		
		if (isset($tarifas_automaticas[$leyenda])) {
		    $tf = $tarifas_automaticas[$leyenda];
		    $monto = floatval($tf['monto']);
		    $monto_com = floatval($tf['monto_comercial']);
		    $aplicametros = $tf['metros'];
		    
		    $nuevo_monto = 0;
		    if ($cat == 2 && $n_tomas_agua > 0) {
		        $m_base = ($es_comercial == 1 && $monto_com > 0) ? $monto_com : (($es_comercial == 1) ? $monto * 2 : $monto);
		        $nuevo_monto = $m_base * $n_tomas_agua;
		    }
		    if ($cat == 3 && $n_tomas_drenaje > 0) {
		        $m_base = ($es_comercial == 1 && $monto_com > 0) ? $monto_com : (($es_comercial == 1) ? $monto * 2 : $monto);
		        $nuevo_monto = $m_base * $n_tomas_drenaje;
		    }
		    if ($aplicametros == 1 && $nuevo_monto > 0) {
		        $nuevo_monto = $nuevo_monto * $metros_cto;
		    }
		    
		    if ($nuevo_monto > 0 && abs($nuevo_monto - $monto_actual) > 0.01) {
		        $y->q("UPDATE ligacargos SET monto=$nuevo_monto WHERE numcontrato='$numcontrato' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
		        $y->q("UPDATE ligacargos_historico SET monto=$nuevo_monto WHERE numcontrato='$numcontrato' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
		        $actualizados++;
		    }
		}
	}
	
	if ($actualizados > 0) {
	    $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Calibracion automatica de Deudas', 'Saldos desfasados por cambio de tipo', 'Se recalcularon $actualizados servicios pendientes', '$numcontrato')");
	}
}

function cambiaEstadoConexion($numcontrato, $num_toma, $servicio, $nuevo_estado)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg = cargaConfig($y);

```

</details>

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

---

*Generated by Chatledger for Antigravity*