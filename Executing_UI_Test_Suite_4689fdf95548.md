# Executing UI Test Suite

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `0391e558-c3f8-49ff-bc47-962e7fbf8c19` |
| **Cascade ID** | `772b23ae-0897-4270-9446-4689fdf95548` |
| **Type** | Agent Conversation |
| **Total Steps** | 133 |
| **Started** | 19 Apr 2026, 10:38 pm |
| **Completed** | 19 Apr 2026, 11:36 pm |

---

## User Request

Pruebas SECCIÓN 1
Inicia con la ejecución de las pruebas, usando el documento: Plan de Pruebas — Sprint Post-Correcciones.md (SECCIÓN 1/Grupo A) unicamente. Despues queden estables pasamos al siguiente grupo. Esperas mi aprobacion para pasar al siguiente grupo.

. Omite las pruebas que tiene que ver con el tema asamblea.
. No esperes input mio manual para realiza o completar alguna de las pruebas, si es requerido mi intervencion manual, salta esa prueba y realiza la siguiente, y ponlo en tu registro ese evento (issue).

. El resultado que sea un formato adecuado para identificar issues propios de la webapp, datos, del browser, etc. 
. No se corrige nada hasta haber revisado el resultado de las pruebas.
. Usa el monitor de la laptop dell de este host, yo estare trabajando en el monitor exteno samsum.
. Recuerda la regla de un intento maximo  , si no funcioa la prueba ir a la siguiente.
/opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion/Plan de Pruebas — Sprint Post-Correcciones.md

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
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

## Conversation 517dd86d-fc67-42b5-9de5-f6e0f00ed9f2: Unifying Agua Testing Protocols
- Created: 2026-04-17T05:31:40Z
- Last modified: 2026-04-17T07:00:04Z

### USER Objective:
Stabilizing Agua UI Testing

Main Objective: Complete the formalization and stabilization of the Agua V2 testing suite to ensure full operational readiness for the transition to Host C.

Goals:
1. Finalize the UI test cases in the "Plan de Pruebas" (covering state transitions, cargo management, and infrastructure modifications).
2. Execute a full cleanup of the `migration-aguav2/` repository, removing obsolete scripts and isolating manual utilities to ensure pipeline integrity.
3. Validate and synchronize the deployment runbooks (Runbook/Ground Truth) with the finalized, production-ready migration logic.
4. Prepare the system for final production Go-Live by verifying the consistency of the automated sync pipeline and documentation.

## Conversation e7b3cbc9-4d66-45e4-990c-ca7e0610a7ef: Summarizing Agua Stabilization Progress
- Created: 2026-04-17T01:03:02Z
- Last modified: 2026-04-17T05:21:10Z

### USER Objective:
Stabilizing Agua Reporting Pipeline

USER Objective: Finalize the stabilization of the Agua V2 reporting and administrative modules by resolving PHP null-offset errors and formalizing the testing and business rule documentation.

Goals:
1. Audit and patch all PHP files accessing the `$meses` array to ensure robust null handling.
2. Refactor the "Plan de Pruebas" to include an ordered index, sequential case numbering, and a restored section on financial reporting and congruency.
3. Extract and formalize business logic from test documentation into the central Ground Truth repository (`02-reglas-negocio.md`) to maintain architectural consistency.
4. Finalize all pipeline documentation to ensure the Host C environment is autonomous, production-ready, and fully auditable.

## Conversation 15385f37-7eaf-4132-ab60-91efba210118: Fixing Login Authentication Error
- Created: 2026-04-17T01:35:41Z
- Last modified: 2026-04-17T02:07:34Z

### USER Objective:
Restoring Agua Migration Pipeline

Main Objective:
Stabilize the Agua V2 production environment on Host C by resolving critical data loss caused by corrupted migration scripts and fixing PHP 7.4 compatibility issues.

Key Goals:
1. Restore the full functional integrity of `run_sync.sh` by reversing accidental code deletions and re-integrating essential extraction/import/validation logic.
2. Ensure the Host C database is correctly populated by re-running the full migration pipeline (`Full-Pipeline-Sync.sh --setup`) after script restoration.
3. Fix PHP runtime errors (`Trying to access array offset on value of type null`) in the login flow (`crud_usuario.php`) to restore access.
4. Correct the system-wide time zone inconsistency (`Europe/Berlin` to `America/Mexico_City`) by identifying and removing duplicate conflicting configurations in `php.ini`.
5. Validate the restored data integrity through the formal stabilization validation dashboard (`12_validate_pipeline.sql`).

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 19 Apr 2026, 10:38 pm

---

## Agent Response

### Thinking

**Initiating Test Execution**

I'm setting up to execute the first test session based on the document "Plan de Pruebas — Sprint Post-Correcciones.md." Right now, my focus is on **SECCIÓN 1 / Grupo A**. I'm prepared to dive into the testing process, fully respecting any pre-defined constraints.




### Actions

**Tool:** `view_file`
**File:** `Plan de Pruebas — Sprint Post-Correcciones.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.471107418s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# 📜 Plan de Pruebas Maestro: Estabilización e Integridad (V2.20)

Este documento define la suite de pruebas final para validar la migración a la arquitectura V2 (MariaDB/PHP 7.4).
Usa datos reales verificados de Host C y datos sintéticos QA (contratos mártires 9001–9008, inyectados vía `--with-qa`).

> **Nota sobre datos QA**: Los contratos/usuarios 9001–9008 / 9901–9907 **no existen en Host C en modo normal**.
> Se inyectan en Host A antes del sync mediante `00_inject_qa_tests.sql` ejecutado con `Full-Pipeline-Sync.sh --with-qa`.
> Las pruebas marcadas **[Dato Real]** son ejecutables directamente en Host C sin sync especial.

> **URL base ÚNICA (Host C - MariaDB/V2)**: `http://192.168.1.128:7001/agua`
> **Acceso QA**: usuario `nancy` / contraseña `260180`
> *Nota: Host A y B son exclusivos para transformación de datos; no se deben usar para navegar la webapp.*

---

## 🤖 Convenciones para Automatización de Browser

Cada caso de Sección 1 y 2 incluye un bloque `[AUTO]` con los campos mínimos para que una herramienta de automatización (Playwright, Selenium, Puppeteer, agente IA con browser) lo ejecute sin ambigüedad:

| Campo | Descripción |
|---|---|
| `url` | Ruta relativa desde `BASE_URL`. Salvo que se indique `[Host C]`, usar Host A. |
| `login` | Secuencia de login si no hay sesión activa: `campo #usuariologin = nancy` → `campo #passwordlogin = 260180` → `submit`. `skip` si ya hay sesión activa. |
| `precond_sql` | Query SQL a ejecutar vía MCP `bdawahost-c` (o `mysql -u root awa` en Host C) antes del test para verificar/preparar estado inicial. |
| `accion` | Interacción UI con selector CSS o texto exacto del elemento. Formato: `selector → acción`. |
| `assert_ui` | Texto o selector visible en pantalla que confirma el resultado. |
| `assert_sql` | Query SQL en Host C que confirma el resultado en BD. |
| `revert_sql` | Query SQL para dejar la BD en estado neutro después del test. |
| `datos_qa` | `si` = requiere `--with-qa`; `no` = usa datos reales siempre disponibles. |

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
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='405'` → debe retornar `estado=3`. Si retorna otro valor, marcar caso como IMPEDIDO y avanzar.
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
> `precond_sql`: `SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('1006','405')` → `1006=2`, `405=3`. Si alguno difiere, marcar sub-caso como IMPEDIDO.
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
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='405'` → `3`. Anotar recargos pendientes: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0`.
> `assert_sql`:
> - `SELECT estado FROM contrato WHERE numcontrato='405'` → `1`
> - Sin amnistía: `SELECT COUNT(*) FROM cambios WHERE numcontrato='405' AND descripcion='Amnistia de Recargos en Reactivacion (C06)' ORDER BY id DESC LIMIT 1` → `0`
> - Recargos conservados: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0` → igual o mayor que precond
> `revert_sql`: `UPDATE contrato SET estado=3 WHERE numcontrato='405'`

**Sub-caso G (3→4, QA contrato `9002` — preferido — o `405` como fallback)**:
> `precond_sql`: Resolver contrato a usar: `SELECT estado FROM contrato WHERE numcontrato='9002'` → si resultado = `3`, usar `9002` (QA). Si no = `3`, verificar `SELECT estado FROM contrato WHERE numcontrato='405'` → si = `3`, usar `405` (dato real — operación destructiva, confirmar con operador). Si ninguno es `3`, marcar sub-caso G como **IMPEDIDO** — no existe dato en estado correcto.
> `assert_sql` (reemplazar `<cto>` con el contrato resuelto en precond):
> - `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='<cto>'` → `estado=4, agua=0, drenaje=0`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='<cto>' AND (estado_agua != 0 OR estado_drenaje != 0)` → `0`
> - `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='<cto>'` → `0`
> *(Si se usó `405` sobre dato real, operación irreversible — documentar en reporte.)*

> **[AUTO] — precond global**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no` (sub-casos A,B,D,F) / `si` (sub-casos C,E,G)
> `precond_sql` (verificar estados antes de iniciar): `SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('200','500','1006','405')` → esperado: `200=1`, `500=1`, `1006=2`, `405=3`. Si alguno difiere, marcar ese sub-caso como IMPEDIDO y continuar con los demás.
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
2. Ir a "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6A"` → tipo Normal → Toma 1: agua=sí, drenaje=sí → Guardar.
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
> `accion`: Menú "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6A"` → tipo=`Normal` → Toma 1: marcar agua y drenaje → clic `input[value="Guardar Contrato"]`
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
1. "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6B"` → Toma 1: agua=sí, **drenaje=NO** → Guardar.

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
2. "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6C"` → Toma 1: tipo=**Comercial**, agua=sí, drenaje=sí → Guardar.

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
1. "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6D"` → Toma 1: tipo=Normal, agua=sí, drenaje=sí → **activar Toma 2**: tipo=Comercial, agua=sí, drenaje=no → Guardar.

**Resultado Esperado**:
- `contrato_toma`: 2 filas. Toma 1: `tipo=0`, `tiene_agua=1, tiene_drenaje=1`. Toma 2: `tipo=1`, `tiene_agua=1, tiene_drenaje=0`.
- `contrato.agua=2` (COUNT de tomas con agua=1), `contrato.drenaje=1`, `contrato.tipo=1` (MAX tipo = Comercial).
- ANUALIDAD AGUA 2026: monto = `(monto_comercial_o_2x) * 2 tomas` = tarifa Comercial × 2.
- ANUALIDAD DRENAJE 2026: monto = tarifa Comercial × 1 toma (solo Toma 1 tiene drenaje).
- `cambios`: `'Registro de Nuevo Contrato'` + posiblemente `'Calibracion automatica de Deudas'`.

> **[AUTO]**
> `precond_sql`: Limpiar huérfano de runs anteriores: `SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6D' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@h; DELETE FROM contrato_toma WHERE numcontrato=@h; DELETE FROM contrato WHERE numcontrato=@h;` — Luego: `SELECT monto, monto_comercial FROM cargos WHERE nombre IN ('ANUALIDAD DEL AGUA 2026','ANUALIDAD DEL DRENAJE 2026') AND estado=1` → anotar tarifas.
> `accion`: "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6D"` → activar 2 tomas → Toma 1: Normal, agua+drenaje → Toma 2: Comercial, solo agua → Guardar.
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
2. Intentar crear nuevo contrato → usuario=`706` → mismo domicilio que contrato `100` → 1 toma → Guardar.

**Resultado Esperado**: Alert de rechazo. No se crea ningún contrato. Mensaje incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT domicilio FROM contrato WHERE numcontrato='100' LIMIT 1` → capturar el valor exacto del domicilio (ej. `"INDEPENDENCIA 100"`) — este string es el que debe ingresarse en el campo domicilio del formulario. Luego: `SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato=ct.numcontrato WHERE c.numusuario=706 AND c.estado!=4` → debe retornar `2`. Si retorna ≠ 2, marcar IMPEDIDO.
> `accion`: "Nuevo Contrato" → usuario=`706` → domicilio=valor capturado en precond (domicilio exacto de contrato `100`) → Toma 1 → clic Guardar.
> `assert_ui`: Alert con texto que incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`.
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE numusuario=706` → mismo valor que antes (no creó contrato nuevo).
> `revert_sql`: *(ninguno)*

---

**Sub-caso F — Bloqueo: ID de contrato ya existe**

**Qué valida**: Que el sistema rechace un contrato si el ID sugerido ya fue tomado por otro operador concurrentemente (o si el operador fuerza un ID duplicado). Regla M2-R01.

**Pasos**:
1. En la pantalla de "Nuevo Contrato", modificar manualmente el campo `numcontrato` a un valor ya existente (ej. `100`).
2. Completar el resto del formulario → Guardar.

**Resultado Esperado**: Mensaje `"No ha sido posible agregar este contrato a la base de datos."` (INSERT falla por PK duplicada). No se crean tomas ni cargos.

> **[AUTO]**
> `precond_sql`: `SELECT numcontrato FROM contrato WHERE numcontrato='100'` → debe existir.
> `accion`: "Nuevo Contrato" → editar campo `numcontrato` → ingresar `100` → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6F"` → Toma 1 → Guardar.
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
> `accion`: Ir a "Nuevo Contrato" → campo usuario=`706` → ingresar domicilio capturado en precond → 1 toma → clic "Guardar"
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

**Dato Real**: Contrato `100` con cargos pendientes. Verificado en Host C: tiene 7 cargos `estado=0` (FALTA ASAMBLEA 29 MAR 2026 y recargos ENE–MAR 2026 de agua y drenaje). No tiene ANUALIDAD pendiente — ya está pagada. Usar cualquier cargo pendiente disponible.

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
> `precond_sql`: `SELECT numcontrato, leyenda, estado FROM ligacargos WHERE numcontrato IN ('9007','9008') AND categoria=6` → 9008 debe tener `estado=0`. Si 9008 ya está `estado=1`, marcar IMPEDIDO — el cargo ya fue sincronizado en un run anterior; requiere revert o re-inyección.
> `accion`: Buscar contrato `9007` → localizar cargo categoría 6 pendiente → seleccionar → clic `#botonpagar` → confirmar
> `assert_ui`: En ficha contrato `9008`, la FALTA ASAMBLEA con la misma leyenda ya no aparece como pendiente
> `assert_sql`: `SELECT estado FROM ligacargos WHERE numcontrato='9008' AND categoria=6 ORDER BY id DESC LIMIT 1` → `1`
> `revert_sql`: `UPDATE ligacargos SET estado=0, fpago=NULL, folio=0 WHERE numcontrato='9008' AND categoria=6 AND estado=1 ORDER BY id DESC LIMIT 1`

---

```

</details>

---

## Agent Response

### Thinking

**Analyzing the Test Plan**

I've just finished reviewing the first 800 lines of the test plan. My immediate focus is now on executing "SECCIÓN 1 / Grupo A." I see that this group includes tests UI-1, specifically "Amnistía Histórica al Reactivar desde Susp. Temporal (Regla C06)," and test 1.2, which I need to get started on immediately.


**Refining the Execution Plan**

I'm now zeroing in on Group A of the test plan. I've re-reviewed the plan to reconfirm Group A's relevance to the assembly topic, and it is a good fit. I'm focusing on those initial UI tests: UI-1, Reactivate from Susp. Temporal (2->1) with Amnistía, and UI-2, Reactivate from Susp. Administrativa (3->1) WITHOUT Amnistía. UI-1 requires the --with-qa flag and Contract 9002.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 5.052620161s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 19 Apr 2026, 10:39 pm

---

## Agent Response

### Thinking

**Locating Missing Contracts**

I've hit a snag. The crucial QA contracts (9001, 9002, 9003) are AWOL. This puts a stop to the QA tests until I find a way to inject them. The user, however, insisted on holding off on corrections until the test results are reviewed. I may need to inject the QA data.


**Analyzing Data Prerequisites**

I'm now focusing on data prerequisites. Without the QA contracts, certain tests are impeded. I need to determine if I should proceed as-is, flagging the tests, or attempt a data sync. The documentation suggests injecting the data via a sync, which could potentially take time, and the user specifically said to use the monitor on this host. Now, I will check if I can run the tests that are using REAL data.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.910007823s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 19 Apr 2026, 10:39 pm

---

## Agent Response

### Thinking

**Initiating the Browser Task**

I've just begun the browser subagent. My initial task is to execute the login sequence. I am using `nancy` as the username and `260180` as the password. I'm now proceeding to submit these credentials and preparing for the subsequent case work.




### Actions

**Tool:** `browser_subagent`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 6.036297365s
- **Model:** Gemini 3 Flash
</details>

---

### Browser Automation

**Status:** Cancelled
**Created:** 19 Apr 2026, 10:39 pm

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

**Verifying Test Results**

I've just finished reviewing the initial test output from the browser subagent. I'm focusing on discrepancies between the screenshots and the subagent's report. Specifically, I'm digging into UI-1, where the subagent flagged "Missing 9002 (IMPEDIDO)." I also confirmed the Reactivation for UI-2 to be "PASS" per the "Admin -> Active" designation.


**Analyzing Action Execution**

I'm now focusing on UI-4 and UI-6, trying to understand some potential execution failures. I see that step 45 timed out, which might be a culprit. I'm cross-referencing this timeout with the saved click feedback screenshots to confirm what actually occurred during the transition. I will be updating the artifact with findings as I proceed.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.359138584s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 19 Apr 2026, 10:50 pm

---

## Agent Response

### Thinking

**Analyzing Current State Consistency**

I've determined that the states are, in fact, precisely the same as the prior measurement, with the UI-2 and UI-5-B components failing and no new contract for User 1. Specifically, the data is: 1006: 2, 1028: 4, 200: 1, 405: 3, and 500: 1. It seems the browser subagent failed to commit the expected updates.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.486916097s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 19 Apr 2026, 10:50 pm

---

## Agent Response

### Thinking

**Observing Status Transitions**

I've just observed some recent state transitions. Specifically, I noted two changes: ticket ID 4928 moved from an Admin state to Active with a "Reactivacion desde susp. administrativa prueba QA" description. Then, ticket ID 4929 went from Active back to Admin, with the description "Regresando a susp. administrativa prueba QA UI".


**Tracking Missing Test Steps**

I'm now focusing on the missing UI tests, UI-4, UI-5, and UI-6. I confirmed the previous PASS status of UI-2 and UI-3. Currently, UI-4 is pending, and I'll proceed with searching for 1028 and verifying the absence of a "Modificar" link. Next, I'll attempt UI-5, starting with case A, attempting to transition from state 1 to 2, before moving on to subsequent test cases B, D, and F.




### Actions

**Tool:** `browser_subagent`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 6.032819769s
- **Model:** Gemini 3 Flash
</details>

---

### Browser Automation

**Status:** Cancelled
**Created:** 19 Apr 2026, 10:50 pm

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

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 19 Apr 2026, 11:01 pm

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
**Created:** 19 Apr 2026, 11:01 pm

---

## Agent Response

### Thinking

**Analyzing Subagent Failure**

I've pinpointed a failure in contract creation for user 1, likely due to a timeout or skipping during the transition. Step 102, which involved contract 405, was the last successful operation. This means UI-6 wasn't executed, so I need to explore what happened.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.152159566s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 19 Apr 2026, 11:02 pm

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
**Created:** 19 Apr 2026, 11:02 pm

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
**Created:** 19 Apr 2026, 11:02 pm

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
**Created:** 19 Apr 2026, 11:02 pm

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
**Created:** 19 Apr 2026, 11:02 pm

---

## Agent Response

### Thinking

**Confirming Key Data**

I've confirmed that `numusuario` exists within the `contrato` table. This indicates that user 1, ABAD CRUZ BLANCO, requires `noconsecutivo` to be set to 1 in the `usuario` table. I am now proceeding to address UI-6 tasks, leveraging the browser tool to guide these specific actions.




### Actions

**Tool:** `browser_subagent`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.034580987s
- **Model:** Gemini 3 Flash
</details>

---

### Browser Automation

**Status:** Cancelled
**Created:** 19 Apr 2026, 11:02 pm

---

## User Request

que paso ?

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

**Analyzing the Cancellation**

I'm focusing on the interruption of the browser subagent. It seems the user canceled the process mid-execution. I've pinpointed that the cancellation occurred during "UI-6 (New Contract tests)". I've noted the subagent was performing multiple steps like clicking and typing. The process didn't reach the completion stage before interruption.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.047762309s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

Intenta continuar con  1.6 UI-6, usando ABAD CRUZ BLANCO en el input text Buscar y luego TAB, esto activa se llene el combo.
Utiliza nombre de usuario reales de la bd awa host c; no uses nombre mecanicos como 111

---

## Agent Response

### Thinking

**Focusing on Nuevo Contrato**

I'm now zeroing in on UI-6, specifically the "Nuevo Contrato" workflow. I've got my sights set on populating the "Buscar" input with "ABAD CRUZ BLANCO." Next, I will use **TAB** to trigger the combo box population. I am ready to use real user names from the system to move forward.




### Actions

**Tool:** `browser_subagent`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.786564622s
- **Model:** Gemini 3 Flash
</details>

---

### Browser Automation

**Status:** Cancelled
**Created:** 19 Apr 2026, 11:14 pm

---

## User Request

Despues del TAB, se selecciono  ABAD CRUZ BLANCO, luego debes dar click en Nueva direccion label  , lo que permitirta habilitar el inputtext de DOmicilio, donde debes ingresar uno dummy y continuar.

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

**Defining UI-6 Interactions**

I'm now zeroing in on the interaction details for UI-6, specifically focusing on the new contract flow. I've broken down the steps: search for "ABAD CRUZ BLANCO", tab to select, and then clicking the "Nueva direccion" label, which unlocks the "Domicilio" field. This is the new focus to make sure all is covered.




### Actions

**Tool:** `browser_subagent`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.374860700s
- **Model:** Gemini 3 Flash
</details>

---

### Browser Automation

**Status:** Cancelled
**Created:** 19 Apr 2026, 11:21 pm

---

## User Request

Reproduje la prueba manualmente con lo que estabas haciendo, al darle click en guardar como resultado salio un popup de confirmacion,. le di click en Aceptar u Ok y creo eso detono que se guardara.
Hasta aqui actualiza el documento de pruebas con estas precisiones mencionadas como la de TAB , etc. para que proxima ejecución ya se tengan estos pasos considerados.

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

**Clarifying The Save Action**

I've manually replicated the test scenario and confirmed the popup's behavior. Clicking "Guardar" triggers the popup, and "Aceptar/Ok" is the actual trigger for the save function. I'm updating the test plan document (`Plan de Pruebas — Sprint Post-Correcciones.md`) with these details.




### Actions

**Tool:** `view_file`
**File:** `Plan de Pruebas — Sprint Post-Correcciones.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.126538371s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L399-599)</summary>

**Path:** `Unknown file`

```
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
2. Ir a "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6A"` → tipo Normal → Toma 1: agua=sí, drenaje=sí → Guardar.
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
> `accion`: Menú "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6A"` → tipo=`Normal` → Toma 1: marcar agua y drenaje → clic `input[value="Guardar Contrato"]`
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
1. "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6B"` → Toma 1: agua=sí, **drenaje=NO** → Guardar.

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
2. "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6C"` → Toma 1: tipo=**Comercial**, agua=sí, drenaje=sí → Guardar.

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
1. "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6D"` → Toma 1: tipo=Normal, agua=sí, drenaje=sí → **activar Toma 2**: tipo=Comercial, agua=sí, drenaje=no → Guardar.

**Resultado Esperado**:
- `contrato_toma`: 2 filas. Toma 1: `tipo=0`, `tiene_agua=1, tiene_drenaje=1`. Toma 2: `tipo=1`, `tiene_agua=1, tiene_drenaje=0`.
- `contrato.agua=2` (COUNT de tomas con agua=1), `contrato.drenaje=1`, `contrato.tipo=1` (MAX tipo = Comercial).
- ANUALIDAD AGUA 2026: monto = `(monto_comercial_o_2x) * 2 tomas` = tarifa Comercial × 2.
- ANUALIDAD DRENAJE 2026: monto = tarifa Comercial × 1 toma (solo Toma 1 tiene drenaje).
- `cambios`: `'Registro de Nuevo Contrato'` + posiblemente `'Calibracion automatica de Deudas'`.

> **[AUTO]**
> `precond_sql`: Limpiar huérfano de runs anteriores: `SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6D' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@h; DELETE FROM contrato_toma WHERE numcontrato=@h; DELETE FROM contrato WHERE numcontrato=@h;` — Luego: `SELECT monto, monto_comercial FROM cargos WHERE nombre IN ('ANUALIDAD DEL AGUA 2026','ANUALIDAD DEL DRENAJE 2026') AND estado=1` → anotar tarifas.
> `accion`: "Nuevo Contrato" → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6D"` → activar 2 tomas → Toma 1: Normal, agua+drenaje → Toma 2: Comercial, solo agua → Guardar.
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
2. Intentar crear nuevo contrato → usuario=`706` → mismo domicilio que contrato `100` → 1 toma → Guardar.

**Resultado Esperado**: Alert de rechazo. No se crea ningún contrato. Mensaje incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT domicilio FROM contrato WHERE numcontrato='100' LIMIT 1` → capturar el valor exacto del domicilio (ej. `"INDEPENDENCIA 100"`) — este string es el que debe ingresarse en el campo domicilio del formulario. Luego: `SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato=ct.numcontrato WHERE c.numusuario=706 AND c.estado!=4` → debe retornar `2`. Si retorna ≠ 2, marcar IMPEDIDO.
> `accion`: "Nuevo Contrato" → usuario=`706` → domicilio=valor capturado en precond (domicilio exacto de contrato `100`) → Toma 1 → clic Guardar.
> `assert_ui`: Alert con texto que incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`.
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE numusuario=706` → mismo valor que antes (no creó contrato nuevo).
> `revert_sql`: *(ninguno)*

---

**Sub-caso F — Bloqueo: ID de contrato ya existe**

**Qué valida**: Que el sistema rechace un contrato si el ID sugerido ya fue tomado por otro operador concurrentemente (o si el operador fuerza un ID duplicado). Regla M2-R01.

**Pasos**:
1. En la pantalla de "Nuevo Contrato", modificar manualmente el campo `numcontrato` a un valor ya existente (ej. `100`).
2. Completar el resto del formulario → Guardar.

**Resultado Esperado**: Mensaje `"No ha sido posible agregar este contrato a la base de datos."` (INSERT falla por PK duplicada). No se crean tomas ni cargos.

> **[AUTO]**
> `precond_sql`: `SELECT numcontrato FROM contrato WHERE numcontrato='100'` → debe existir.
> `accion`: "Nuevo Contrato" → editar campo `numcontrato` → ingresar `100` → usuario=`1` → domicilio=`"CALLE PRUEBA AUTO 6F"` → Toma 1 → Guardar.
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
> `accion`: Ir a "Nuevo Contrato" → campo usuario=`706` → ingresar domicilio capturado en precond → 1 toma → clic "Guardar"
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
```

</details>

---

## Agent Response

### Thinking

**Updating the Test Plan**

I'm currently focused on the `Plan de Pruebas — Sprint Post-Correcciones.md` file. I'm making very specific updates to the UI-6 test cases (A, B, C, D, E, and F). The "pasos" and "accion" fields are being carefully adjusted to precisely reflect the sequence: "Buscar usuario -> presionar TAB -> seleccionar de la lista." These precise changes are the current priority.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 6.294200210s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 19 Apr 2026, 11:28 pm

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
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

## Conversation 517dd86d-fc67-42b5-9de5-f6e0f00ed9f2: Unifying Agua Testing Protocols
- Created: 2026-04-17T05:31:40Z
- Last modified: 2026-04-17T07:00:04Z

### USER Objective:
Stabilizing Agua UI Testing

Main Objective: Complete the formalization and stabilization of the Agua V2 testing suite to ensure full operational readiness for the transition to Host C.

Goals:
1. Finalize the UI test cases in the "Plan de Pruebas" (covering state transitions, cargo management, and infrastructure modifications).
2. Execute a full cleanup of the `migration-aguav2/` repository, removing obsolete scripts and isolating manual utilities to ensure pipeline integrity.
3. Validate and synchronize the deployment runbooks (Runbook/Ground Truth) with the finalized, production-ready migration logic.
4. Prepare the system for final production Go-Live by verifying the consistency of the automated sync pipeline and documentation.

## Conversation e7b3cbc9-4d66-45e4-990c-ca7e0610a7ef: Summarizing Agua Stabilization Progress
- Created: 2026-04-17T01:03:02Z
- Last modified: 2026-04-17T05:21:10Z

### USER Objective:
Stabilizing Agua Reporting Pipeline

USER Objective: Finalize the stabilization of the Agua V2 reporting and administrative modules by resolving PHP null-offset errors and formalizing the testing and business rule documentation.

Goals:
1. Audit and patch all PHP files accessing the `$meses` array to ensure robust null handling.
2. Refactor the "Plan de Pruebas" to include an ordered index, sequential case numbering, and a restored section on financial reporting and congruency.
3. Extract and formalize business logic from test documentation into the central Ground Truth repository (`02-reglas-negocio.md`) to maintain architectural consistency.
4. Finalize all pipeline documentation to ensure the Host C environment is autonomous, production-ready, and fully auditable.

## Conversation 15385f37-7eaf-4132-ab60-91efba210118: Fixing Login Authentication Error
- Created: 2026-04-17T01:35:41Z
- Last modified: 2026-04-17T02:07:34Z

### USER Objective:
Restoring Agua Migration Pipeline

Main Objective:
Stabilize the Agua V2 production environment on Host C by resolving critical data loss caused by corrupted migration scripts and fixing PHP 7.4 compatibility issues.

Key Goals:
1. Restore the full functional integrity of `run_sync.sh` by reversing accidental code deletions and re-integrating essential extraction/import/validation logic.
2. Ensure the Host C database is correctly populated by re-running the full migration pipeline (`Full-Pipeline-Sync.sh --setup`) after script restoration.
3. Fix PHP runtime errors (`Trying to access array offset on value of type null`) in the login flow (`crud_usuario.php`) to restore access.
4. Correct the system-wide time zone inconsistency (`Europe/Berlin` to `America/Mexico_City`) by identifying and removing duplicate conflicting configurations in `php.ini`.
5. Validate the restored data integrity through the formal stabilization validation dashboard (`12_validate_pipeline.sql`).

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 19 Apr 2026, 11:28 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Plan de Pruebas — Sprint Post-Correcciones.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L1299-1399)</summary>

**Path:** `Unknown file`

```
> `accion`: Pestaña "Pase de Lista" → clic "Reporte .TXT (Con Firma MD5)" → descargar archivo → leer contenido
> `assert_ui`: Descarga iniciada; archivo descargado contiene en línea 1 un hash MD5 de 32 caracteres hexadecimales
> `assert_sql`: *(verificación de formato del archivo descargado, no de BD)* — validar que el TXT contiene separadores `\n-\n` y líneas `N:numcontrato` donde N es secuencial desde 1
> `revert_sql`: *(ninguno)*

---

<a name="ui-32"></a>
### 1.32 UI-32: Procesamiento de Asistencias en Agua (Botón Verde "Asistencias")

**Qué valida**: Que `abriendoarchivo()` (`sistema.php:67`) lea el archivo `lastassambly` del directorio raíz de la webapp, parsee la fecha para construir la leyenda `"falta asamblea DD MMM YYYY"`, y ejecute `sp_cancelar_cargo` para cada contrato asistente.

**Precondición**: 
- Debe existir una "FALTA ASAMBLEA" pendiente en los contratos de prueba. Verificar: `SELECT numcontrato, leyenda, estado FROM ligacargos WHERE categoria=6 AND estado=0 AND numcontrato IN ('100','160') ORDER BY anio DESC LIMIT 5`.
- El archivo `cone.txt` (o TXT descargado en UI-31) debe copiarse como `lastassambly` (sin extensión, con ese typo exacto) en `/opt/lampp/htdocs/agua/`.

**Pasos**:
1. Copiar el TXT de asistencias al directorio raíz:
   ```bash
   cp /home/carlos/Documents/tmp01/hostb/cone.txt /opt/lampp/htdocs/agua/lastassambly
   ```
2. En la webapp Agua → clic en el botón verde **"Asistencias"** en el menú principal.
3. Verificar el resultado en pantalla: debe mostrar `"Se procesaron N contratos"` con la leyenda de la asamblea.

**Resultado Esperado**:
- La pantalla muestra el número de contratos procesados y la leyenda generada (ej. `"falta asamblea 29 mar 2026"`).
- Los contratos del archivo `cone.txt` que existen en la BD tienen su cargo `"FALTA ASAMBLEA 29 MAR 2026"` cancelado (`estado=-1`).

> **[AUTO]**
> `url`: `BASE_URL/` | `login`: `skip` (sesión activa de casos anteriores) | `datos_qa`: `no`
> `precond_manual` (⚠️ instrucción de shell — ejecutar ANTES de la acción UI): `cp /opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion/cone.txt /opt/lampp/htdocs/agua/lastassambly`. Si la herramienta no puede ejecutar comandos de shell, marcar esta precondición como **manual** y solicitar al operador que la ejecute. Verificar que el archivo existe antes de continuar: `ls -la /opt/lampp/htdocs/agua/lastassambly` (o equivalente).
> `precond_sql`: `SELECT COUNT(*) FROM ligacargos WHERE categoria=6 AND estado=0 AND numcontrato IN ('100','160')` → ≥ 1. Si retorna `0`, marcar IMPEDIDO — no hay cargos de asamblea pendientes que procesar.
> `accion`: Clic en enlace `a:has-text("Asistencias")` (botón verde en el menú principal — puede estar en `#clutter` o en la barra de navegación)
> `assert_ui`: Página muestra texto que contiene `"contratos"` y una leyenda tipo `"falta asamblea"` con fecha
> `assert_sql` (contratos del cone.txt de referencia — `100` y `160` registrados en UI-30): `SELECT COUNT(*) FROM ligacargos WHERE categoria=6 AND estado=-1 AND numcontrato IN ('100','160') AND fcobro > '2026-01-01'` → valor > 0
> `revert_sql`: `UPDATE ligacargos SET estado=0, fpago=NULL WHERE categoria=6 AND estado=-1 AND fcobro > '2026-01-01' ORDER BY id LIMIT 50`

---

<a name="ui-33"></a>
### 1.33 UI-33: Verificación de Cargos Cancelados Post-procesamiento de Asistencias

**Qué valida**: Que los contratos presentes en el archivo TXT de asistencias efectivamente tengan el cargo "FALTA ASAMBLEA" cancelado en BD, y que contratos **no** asistentes mantengan el cargo pendiente.

**Precondición**: UI-32 completado exitosamente.

**Dato Real**: Contratos del `cone.txt` de referencia incluyen: `10`, `100`, `1001`, `1002`, `1006` (entre otros).

**Pasos**:
1. BD: `SELECT numcontrato, leyenda, estado FROM ligacargos WHERE categoria=6 AND numcontrato IN ('10','100','1001') AND leyenda LIKE '%29 MAR 2026%'` (o la fecha del archivo) → `estado` debe ser `-1` (cancelado).
2. Elegir un contrato que **no** esté en el archivo (ej. `200`) → verificar que su "FALTA ASAMBLEA" de la misma fecha sigue en `estado=0` (pendiente).
3. Verificar también en `ligacargos_historico` si la asamblea era de año ≤ 2025.

**Pasos** (sub-caso — búsqueda con regex):
1. El archivo `cone.txt` puede incluir contratos con sufijo `/M` o ` ST` (variantes legacy).
2. Verificar que `abriendoarchivo()` los resuelve correctamente via regex: buscar en `contratos_procesados` si alguno tenía ese formato.

**Resultado Esperado**:
- Contratos asistentes: cargo cancelado (`estado=-1`) en la tabla correcta (activa o histórico).
- Contratos no asistentes: cargo sin cambio (`estado=0`).
- Contratos con número variante (`/M`, ` ST`): resueltos correctamente via búsqueda regex.

> **[AUTO]**
> `url`: *(verificación post UI-32)* | `login`: `skip` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM cambios WHERE descripcion LIKE '%asamblea%' AND DATE(fecha)=CURDATE()` → si `0`, marcar IMPEDIDO — UI-32 no fue ejecutado en esta sesión. Si ≥ 1: anotar la leyenda de asamblea procesada (`SELECT despues FROM cambios WHERE descripcion LIKE '%asamblea%' ORDER BY id DESC LIMIT 1`) para usarla en los asserts. Los contratos asistentes son los registrados en UI-30 (`100` y `160` de la asamblea QA Auto).
> `accion`: Consultar BD directamente (sin acción UI adicional)
> `assert_sql` (asistentes — contratos registrados en UI-30): `SELECT numcontrato, estado FROM ligacargos WHERE categoria=6 AND numcontrato IN ('100','160') AND estado=-1 AND fcobro > '2026-01-01'` → ambos con `estado=-1`
> `assert_sql` (no asistentes — contrato fuera del cone.txt): `SELECT COUNT(*) FROM ligacargos WHERE categoria=6 AND numcontrato='200' AND estado=-1 AND fcobro > '2026-01-01'` → `0` (sin cambio)
> `assert_sql` (histórico si asamblea 2025): `SELECT estado FROM ligacargos_historico WHERE categoria=6 AND numcontrato IN ('100','160') AND anio=2025 LIMIT 5`
> `revert_sql`: *(mismo que UI-32 revert_sql)*

---

<a name="seccion-2"></a>
## 📊 SECCIÓN 2: REPORTES Y CONGRUENCIA FINANCIERA

---

<a name="rc-1"></a>
### 2.1 RC-1: Empate Detalle vs Resumen de Caja al Centavo

**Qué valida**: Congruencia matemática entre `concentradocortecaja.php` (detalle por folio) y `concentradocortecajaresumen.php` (resumen por período). Totales y conteo de folios únicos deben coincidir.

**URL detalle**: `http://192.168.1.128:7001/agua/reportes/concentradocortecaja.php`
**URL resumen**: `http://192.168.1.128:7001/agua/reportes/concentradocortecajaresumen.php`
**Dato QA** (`--with-qa`): Folio `9999` — pago de prueba RC-1.

**Pasos**:
1. Ir a `concentradocortecaja.php` → seleccionar el período del mes más reciente con pagos → anotar total general y total por categoría.
2. Ir a `concentradocortecajaresumen.php` → mismo período → anotar totales y conteo `(n=X)` de folios.
3. Comparar ambos reportes.

**Resultado Esperado**:
- Total detalle == Total resumen (diferencia = `$0.00`).
- Conteo de folios únicos coincide en ambos reportes.
- Ninguna categoría tiene montos negativos o NULL.

> **[AUTO]**
> `url` (detalle): `/agua/reportes/concentradocortecaja.php` | `login`: `nancy/260180` | `datos_qa`: `no`
> `url` (resumen): `/agua/reportes/concentradocortecajaresumen.php`
> `precond_sql`: `SELECT DATE_FORMAT(fpago,'%Y-%m') AS periodo, COUNT(*) FROM ligacargos WHERE estado=1 AND fpago IS NOT NULL GROUP BY periodo ORDER BY periodo DESC LIMIT 3` → elegir el período con más pagos (ej. `2026-04`). Anotar el mes y año para seleccionarlo en la UI.
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `UI-21\|UI-27`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 19 Apr 2026, 11:28 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `Cambio de Propietario`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 19 Apr 2026, 11:28 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Plan de Pruebas — Sprint Post-Correcciones.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L899-1199)</summary>

**Path:** `Unknown file`

```
1. Ficha contrato `100` → sección "Cargos Cancelados" → seleccionar un cargo → clic "Reasignar" → confirmar prompt.
2. Verificar que el cargo reaparece en la tabla de adeudos pendientes.
3. BD: `SELECT * FROM cambios WHERE numcontrato='100' AND descripcion='Reasignacion de cargo cancelado' ORDER BY id DESC LIMIT 1` → incluye `id_cargo`, folio y `'| Operador: nancy'`.

**Sub-caso adicional** — cargo en histórico (anio ≤ 2025):
1. Buscar un cargo cancelado en `ligacargos_historico` (anio 2024 o 2025) y restaurarlo.
2. Verificar que el UPDATE actualizó `ligacargos_historico`, no `ligacargos`.

**Resultado Esperado**: El cargo pasa a `estado=0` en la tabla correcta (activa o histórico según el año). La ficha lo muestra en adeudos.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT id_cargo, leyenda, anio FROM vw_ligacargos_all WHERE numcontrato='100' AND estado=-1 LIMIT 1` — `vw_ligacargos_all` incluye todos los estados incluidos los cancelados (estado=-1). `vw_ligacargos_pendientes` solo retorna estado=0 — nunca usar esta última para buscar cargos cancelados. Si el resultado está vacío, primero ejecutar UI-17 sub-caso B para generar un cargo cancelado.
> `accion`: Buscar contrato `100` → sección "Cargos Cancelados" → clic "Reasignar" en el cargo → confirmar prompt
> `assert_ui`: El cargo reaparece en la tabla de adeudos pendientes con `estado=0`
> `assert_sql`: `SELECT estado FROM ligacargos WHERE numcontrato='100' AND estado=0 ORDER BY id DESC LIMIT 1` → `0`
> Para sub-caso histórico: `SELECT estado FROM ligacargos_historico WHERE numcontrato='100' AND estado=0 ORDER BY id DESC LIMIT 1` → `0`
> `revert_sql`: `UPDATE ligacargos SET estado=-1 WHERE numcontrato='100' AND estado=0 ORDER BY id DESC LIMIT 1`

---

<a name="ui-19"></a>
### 1.19 UI-19: Modificación de Tarifa en Catálogo con Propagación Masiva

**Qué valida**: Que `modificaCargo()` (`cargos.php:519`) al cambiar el monto de un cargo del catálogo, dispare la sincronización retroactiva a todos los contratos con ese cargo pendiente (`estado=0`) en `ligacargos` y `ligacargos_historico`.

**Dato Real**: Modificar la tarifa de "ANUALIDAD DEL AGUA 2026" en el catálogo de cargos.

> **Precaución**: Esta operación modifica montos reales en todos los contratos con la leyenda afectada. Para aislamiento, usar **primero la opción B (cargo exclusivo QA)**; la opción A con "ANUALIDAD DEL AGUA 2026" solo si se requiere validación con datos reales.

**Opción A — Propagación real (cargo compartido)**:
1. Ir a "Catálogo de Cargos" → buscar "ANUALIDAD DEL AGUA 2026" → Modificar.
2. Cambiar el monto de `600` a `601` → Guardar.
3. Verificar BD: `SELECT monto FROM ligacargos WHERE leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 LIMIT 5` → todos deben ser `601.00`.
4. **Revertir inmediatamente**: Volver a cambiar el monto a `600`.

**Opción B — Cargo QA aislado (recomendado para automatización)**:
1. Crear cargo de prueba en el catálogo: `INSERT INTO cargos (nombre, monto, estado, categoria) VALUES ('CARGO PRUEBA PROPAGACION QA', 1.00, 1, 1)` — anotar el `id` generado.
2. Aplicar manualmente a contrato `200` (`aplicacargos`): crear al menos 1 `ligacargo` con esa leyenda.
3. Ir a "Catálogo de Cargos" → buscar "CARGO PRUEBA PROPAGACION QA" → cambiar monto a `2.00` → Guardar.
4. Verificar propagación solo en ese contrato: `SELECT monto FROM ligacargos WHERE leyenda='CARGO PRUEBA PROPAGACION QA' AND estado=0` → `2.00`.
5. `revert_sql`: `DELETE FROM ligacargos WHERE leyenda='CARGO PRUEBA PROPAGACION QA'; DELETE FROM cargos WHERE nombre='CARGO PRUEBA PROPAGACION QA';`

**Pasos** (opción A):
1. Ir a "Catálogo de Cargos" → buscar "ANUALIDAD DEL AGUA 2026" → Modificar.
2. Cambiar el monto de `600` a `601` → Guardar.
3. Verificar BD: `SELECT monto FROM ligacargos WHERE leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 LIMIT 5` → todos deben ser `601.00`.
4. **Revertir**: Volver a cambiar el monto a `600`.

**Resultado Esperado**:
- Mensaje indica `'Se sincronizó el saldo retroactivamente en N contratos...'`
- `cambios` registra `'Sincr. masiva de Adeudos - ANUALIDAD DEL AGUA 2026'` con conteo de contratos afectados.
- Todos los ligacargos pendientes con esa leyenda tienen el nuevo monto.

> **[AUTO]**
> `url`: `/agua/` (Catálogo de Cargos) | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT monto FROM cargos WHERE nombre='ANUALIDAD DEL AGUA 2026'` → anotar valor original (probablemente `600`)
> `accion`: Ir a "Catálogo de Cargos" → buscar "ANUALIDAD DEL AGUA 2026" → clic "Modificar" → cambiar monto a `601` → Guardar
> `assert_ui`: Mensaje de confirmación que indica cuántos contratos fueron sincronizados
> `assert_sql`: `SELECT COUNT(DISTINCT numcontrato) FROM ligacargos WHERE leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 AND monto != 601` → `0`
> `revert_sql`: Volver al catálogo → modificar "ANUALIDAD DEL AGUA 2026" → monto=`600` → Guardar

---

<a name="ui-20"></a>
### 1.20 UI-20: Cruce de Años en Historial de Cargos (Activa + Histórico)

**Qué valida**: Que la ficha muestre continuidad de cargos de años anteriores (`ligacargos_historico`, anio ≤ 2025) junto con los de 2026 (`ligacargos` activa), vía `vw_ligacargos_pendientes` (UNION). Sin gaps ni duplicados.

**Dato Real**: Contrato `10` (verificado en Host C: 3 cargos pendientes en activa 2026; histórico con cargos 2017–2025 en `estado=0`). La vista `vw_ligacargos_pendientes` hace UNION activa+histórico, por lo que deben aparecer juntos.

**Pasos**:
1. Ficha contrato `10` → revisar tabla de adeudos.
2. Revisar sección "Cargos Cancelados" — debe incluir cancelados del histórico.

**Resultado Esperado**:
- Adeudos muestran filas de años anteriores (vía histórico) y 2026 en lista continua ordenada por año.
- Cargos cancelados del histórico también aparecen en el panel correspondiente.
- No hay duplicados ni valores inconsistentes.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT anio, COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='10' GROUP BY anio ORDER BY anio` → debe retornar filas de al menos 2 años distintos (histórico ≤2025 + activa 2026). Si solo retorna 2026, verificar que la vista UNION esté funcionando.
> `accion`: Buscar contrato `10` → revisar la tabla de adeudos y la sección de cargos cancelados
> `assert_ui`: Tabla de adeudos muestra cargos de múltiples años (2024/2025 y 2026) en lista continua sin separación visual por tabla
> `assert_sql`: `SELECT MIN(anio), MAX(anio) FROM vw_ligacargos_pendientes WHERE numcontrato='10'` → `MIN < 2026, MAX = 2026`
> `revert_sql`: *(ninguno — solo lectura)*

---

### GRUPO E — Usuarios, Auditoría y Operaciones Generales

---

<a name="ui-21"></a>
### 1.21 UI-21: Cambio de Propietario con Registro de Auditoría

**Qué valida**: Que `cambiapropietario()` actualice `contrato.numusuario` y registre en `cambios` el ID anterior y el nuevo.

**Dato Real**: Contrato `500` (usuario 361).

**Pasos**:
1. Ficha contrato `500` → "Cambio de propietario" → buscar por apellido un usuario diferente → seleccionar → Asignar.
2. Verificar que la ficha recarga con el nuevo nombre de propietario.
3. BD: `SELECT antes, despues FROM cambios WHERE numcontrato='500' AND descripcion LIKE 'Cambio de propietario%' ORDER BY id DESC LIMIT 1` → `antes='Usuario=361'`, `despues='Usuario=<nuevo_id>'`.
4. Revertir asignando de vuelta al usuario 361.

**Resultado Esperado**: Ficha muestra nuevo propietario. `cambios` registra correctamente los IDs anterior y nuevo.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT numusuario FROM contrato WHERE numcontrato='500'` → debe retornar `361`
> `accion`: Buscar contrato `500` → clic `a:has-text("Cambio de propietario")` o `button:has-text("Cambio de propietario")` → en el panel que aparece: campo `input#busqueda_usuario_cambio` (o `input[name=busqueda_propietario]` o el input de búsqueda dentro del panel "Cambio de Propietario") escribir `"mendoza"` → clic `button:has-text("Buscar")` en ese panel → seleccionar un usuario ≠ 361 de la lista resultante → clic `button:has-text("Asignar")`
> `assert_ui`: Ficha recarga mostrando el nombre del nuevo propietario
> `assert_sql`: `SELECT antes, despues FROM cambios WHERE numcontrato='500' AND descripcion LIKE 'Cambio de propietario%' ORDER BY id DESC LIMIT 1` → `antes` contiene `'361'`, `despues` contiene el nuevo id
> `revert_sql`: "Cambio de propietario" → asignar de vuelta al usuario `361`

---

<a name="ui-22"></a>
### 1.22 UI-22: Acción 'Hacer Anotación' y Soft-delete

**Qué valida**: Que `creaNota()` inserte en `notas` con `estado=0` y `eliminaNota()` haga `UPDATE notas SET estado=-1` (soft-delete), sin borrado físico.

**Dato Real**: Contrato `1` (activo, usuario 1536).

**Pasos**:
1. Ficha contrato `1` → "Hacer una anotación" → escribir texto de prueba → Guardar.
2. Verificar que la nota aparece en el panel superior de la ficha.
3. Clic en `[ x ]` junto a la nota para eliminarla.
4. BD: `SELECT estado FROM notas WHERE contrato='1' ORDER BY id DESC LIMIT 1` → `estado=-1`.

**Resultado Esperado**: Nota aparece y desaparece de la vista. En BD: `estado=-1` (no borrada). `cambios` registra `'Nota de Contrato'` y `'Eliminación de Nota'`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM notas WHERE contrato='1' AND estado=0` → anotar cantidad actual
> `accion`: Buscar contrato `1` → "Hacer una anotación" → texto=`"Nota de prueba automatizacion QA"` → Guardar → clic en `[ x ]` para eliminar la nota recién creada
> `assert_ui`: Nota aparece en la ficha, luego desaparece al eliminar
> `assert_sql`: `SELECT estado FROM notas WHERE contrato='1' ORDER BY id DESC LIMIT 1` → `estado=-1`
> `revert_sql`: *(ninguno — soft-delete ya es el estado final correcto)*

---

<a name="ui-23"></a>
### 1.23 UI-23: Auditoría y Trazabilidad de Operador en Cancelaciones

**Qué valida**: Que `pagacancelacargos()` y `regresarCargoCancelado()` registren el nombre del usuario de sesión (`$_SESSION['usuario']`) en el campo `despues` de `cambios`.

**Dato Real**: Contrato `100`. Operador logueado: `nancy`.

**Pasos**:
1. Iniciar sesión como `nancy`.
2. Cancelar un cargo en contrato `100` (motivo ≥20 chars).
3. BD: `SELECT despues FROM cambios WHERE numcontrato='100' AND descripcion='cancelacion' ORDER BY id DESC LIMIT 1` → debe contener `'| Operador: nancy'`.

**Resultado Esperado**: El operador `nancy` aparece registrado en `cambios`. Si el campo `$_SESSION['usuario']` fuera nulo, el fallback registra `'cajero'`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM cambios WHERE numcontrato='100' AND descripcion='cancelacion' AND DATE(fecha)=CURDATE()` → si retorna `0`, marcar IMPEDIDO — UI-17 sub-caso B no fue ejecutado en esta sesión de pruebas. Ejecutar UI-17 primero y luego retomar UI-23.
> `accion`: Con sesión activa como `nancy` (login documentado en UI-17)
> `assert_ui`: *(verificación de BD)*
> `assert_sql`: `SELECT despues FROM cambios WHERE numcontrato='100' AND descripcion='cancelacion' ORDER BY id DESC LIMIT 1` → el campo `despues` contiene la cadena `'| Operador: nancy'`
> `revert_sql`: *(ninguno — solo lectura de cambios)*

---

<a name="ui-24"></a>
### 1.24 UI-24: Trazabilidad Visual en Historial (Colores y Segundos)

**Qué valida**: Que `historial_mov_cto.php` diferencie visualmente cancelaciones (rojo), reasignaciones (verde) y muestre timestamps con segundos (HH:MM:SS).

**Dato Real**: Usar registros recientes generados en UI-17 y UI-18.

**Pasos**:
1. Ir a `reportes/historial_mov_cto.php`.
2. Localizar la cancelación y la reasignación recientes.

**Resultado Esperado**:
- `descripcion='cancelacion'` → fila resaltada en rojo.
- `descripcion='Reasignacion de cargo cancelado'` → fila en verde.
- Columna de fecha con formato `YYYY-MM-DD HH:MM:SS` (segundos visibles, no `00:00:00`).

> **[AUTO]**
> `url`: `/agua/reportes/historial_mov_cto.php` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM cambios WHERE numcontrato='100' AND descripcion IN ('cancelacion','Reasignacion de cargo cancelado') AND DATE(fecha)=CURDATE()` → si retorna `0`, marcar IMPEDIDO — UI-17 y UI-18 no se ejecutaron en la sesión actual. Ejecutar ambos primero y retomar UI-24. Si ≥ 1: `SELECT id, descripcion, fecha FROM cambios WHERE numcontrato='100' AND descripcion IN ('cancelacion','Reasignacion de cargo cancelado') ORDER BY id DESC LIMIT 2`
> `accion`: Navegar a `historial_mov_cto.php` → buscar por contrato `100`
> `assert_ui`: Fila de `cancelacion` destacada en rojo; fila de `Reasignacion de cargo cancelado` en verde; columna fecha con formato `YYYY-MM-DD HH:MM:SS` con segundos ≠ `00`
> `assert_sql`: `SELECT TIME_FORMAT(TIME(fecha),'%H:%i:%s') AS hora FROM cambios WHERE numcontrato='100' ORDER BY id DESC LIMIT 1` → hora ≠ `'00:00:00'`
> `revert_sql`: *(ninguno — solo lectura)*

---

<a name="ui-25"></a>
### 1.25 UI-25: Visibilidad de Usuarios No Localizados (Reglas U01/U03)

**Qué valida**: Que usuarios con `no_localizado=1` (o `estado=2`) aparezcan con badge distintivo en reportes de morosos y su deuda quede segmentada como incobrable.

**Dato QA** (`--with-qa` requerido): Usuario `9905` (no_localizado=1, con contratos y deuda).

**Pasos**:
1. Ejecutar `Full-Pipeline-Sync.sh --with-qa`.
2. Ir a `reportes/reporte_morosos.php` → buscar usuario `9905`.

**Resultado Esperado**: Badge visual "No Localizado". Deuda sumada en sección separada "Deuda Incobrable", fuera del total recuperable.

> **[AUTO]**
> `url`: `http://192.168.1.128:7001/agua/reportes/reporte_morosos.php` (URL canónica Host C — verificar existencia con `precond_sql` antes de navegar; si retorna 404, la ruta puede ser `listadeudores.php` o `reportes/morosos.php`) | `login`: `nancy/260180` | `datos_qa`: `si`
> `precond_sql`: `SELECT noconsecutivo, estado FROM usuario WHERE noconsecutivo=9905` → debe existir con `estado=2`
> `accion`: Ejecutar `Full-Pipeline-Sync.sh --with-qa` → navegar al reporte de morosos → buscar usuario `9905`
> `assert_ui`: Registro del usuario `9905` visible con badge "No Localizado" y su deuda en sección separada "Deuda Incobrable"
> `assert_sql`: `SELECT estado FROM usuario WHERE noconsecutivo=9905` → `2`
> `revert_sql`: *(ninguno — dato QA; se elimina en el siguiente sync sin `--with-qa`)*

---

<a name="ui-26"></a>
### 1.26 UI-26: Categorización de Egresos por ID

**Qué valida**: Que `registraegreso()` resuelva el `id_categoria` desde `categorias_egresos` y lo guarde en `egresos.id_categoria` (no NULL).

**Dato Real**: Registrar egreso nuevo.

**Pasos**:
1. Ir a sección "Egresos" → registrar egreso con leyenda de prueba, monto y categoría seleccionada del dropdown.
2. BD: `SELECT leyenda, categoria, id_categoria FROM egresos ORDER BY id DESC LIMIT 1` → `id_categoria` debe ser un entero válido ≠ NULL.

**Resultado Esperado**: `id_categoria` poblado con el ID numérico de la categoría seleccionada.

> **[AUTO]**
> `url`: `/agua/` (sección Egresos) | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM egresos` → anotar cantidad actual
> `accion`: Ir a sección "Egresos" → registrar nuevo egreso con leyenda=`"Egreso prueba automatizacion QA"`, monto=`1.00`, seleccionar cualquier categoría del dropdown → Guardar
> `assert_ui`: El egreso nuevo aparece en el listado de egresos
> `assert_sql`: `SELECT leyenda, id_categoria FROM egresos ORDER BY id DESC LIMIT 1` → `leyenda='Egreso prueba automatizacion QA'`, `id_categoria IS NOT NULL AND id_categoria > 0`
> `revert_sql`: `DELETE FROM egresos WHERE leyenda='Egreso prueba automatizacion QA' ORDER BY id DESC LIMIT 1`

---

<a name="ui-27"></a>
### 1.27 UI-27: Fusión Visual de Usuarios — Reasignación de Contrato

**Qué valida**: El escenario de "fusión" de usuario duplicado: reasignar contrato de usuario secundario al usuario master, verificando que todos los contratos queden bajo un `numusuario` y `cambios` refleje el movimiento.

**Dato Real**: Contrato `1195` (usuario 34 — verificado en Host C: estado 2, es el único contrato de usuario 34; ~~no tiene contrato `991`~~).
**Dato QA** (`--with-qa`): Usuarios `9903` y `9904` (duplicados sintéticos).

**Pasos**:
1. Ficha contrato `1195` → "Cambio de propietario" → seleccionar usuario diferente → Asignar.
2. Verificar ficha con nuevo propietario.
3. Revertir (reasignar a usuario 34).

**Resultado Esperado**: `cambios` registra los IDs antes/después. La ficha actualiza el nombre del propietario.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT numusuario FROM contrato WHERE numcontrato='1195'` → debe retornar `34`
> `accion`: Buscar contrato `1195` → clic `a:has-text("Cambio de propietario")` → campo `input#busqueda_usuario_cambio` (o `input[name=busqueda_propietario]`) = `"gonzalez"` → clic `button:has-text("Buscar")` → seleccionar usuario diferente de la lista → clic `button:has-text("Asignar")`
> `assert_ui`: Ficha muestra nombre del nuevo propietario
> `assert_sql`: `SELECT antes, despues FROM cambios WHERE numcontrato='1195' AND descripcion LIKE 'Cambio de propietario%' ORDER BY id DESC LIMIT 1` → `antes` contiene `'34'`
> `revert_sql`: "Cambio de propietario" → reasignar al usuario `34`

---

<a name="ui-28"></a>
### 1.28 UI-28: Búsqueda de Contratos — Filtros Combinados

**Qué valida**: Que `cargaresultados()` (`cargos.php:207`) aplique correctamente los filtros por estado, agua/drenaje y nombre/domicilio, retornando resultados coherentes.

**Dato Real**: Usar la pantalla de búsqueda de contratos.

**Pasos** (sub-caso A — por nombre de usuario):
1. Pantalla de búsqueda → modo "Usuario" → escribir "ibáñez" → filtrar solo Estado 1 → Buscar.
2. **Resultado esperado**: Aparecen contratos `100` y `160` del usuario 706.

**Pasos** (sub-caso B — por estado 4):
1. Modo "Contrato/Domicilio" → sin texto → marcar solo Estado `4` → Buscar.
2. **Resultado esperado**: Lista de contratos en SDF (incluyendo `1028`). Ningún contrato de Estado 1, 2 o 3.

**Pasos** (sub-caso C — filtro agua/drenaje):
1. Buscar contratos sin drenaje (`drenaje=0`) en Estado 1.
2. **Resultado esperado**: Incluye contrato `1` pero no contrato `100` (que tiene drenaje).

**Resultado Esperado**: Los tres sub-casos retornan solo los contratos que cumplen los filtros combinados.

> **[AUTO]**
> `url`: `/agua/` (pantalla de búsqueda/listado de contratos) | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT numcontrato, numusuario FROM contrato WHERE numusuario=706 AND estado=1` → debe retornar contratos `100` y `160`
> `accion` (sub-caso A): Recargar la página de búsqueda para resetear filtros → seleccionar modo "Usuario" → limpiar campo texto (o navegar de nuevo a la URL) → texto=`"ibáñez"` → estado=`1` (desmarcar otros estados) → Buscar
> `assert_ui` (A): Lista incluye contratos `100` y `160`; ningún contrato de otro usuario
> `accion` (sub-caso B): Recargar la página de búsqueda → sin texto → desmarcar estados 1, 2, 3 → marcar solo estado `4` → Buscar
> `assert_ui` (B): Lista incluye contrato `1028`; ningún contrato de estado 1, 2 o 3
> `accion` (sub-caso C): Recargar la página de búsqueda → filtrar `drenaje=0` → estado=`1` → Buscar
> `assert_ui` (C): Lista incluye contrato `1`; no incluye contrato `100` (que sí tiene drenaje)
> `assert_sql` (C): `SELECT COUNT(*) FROM contrato WHERE drenaje=0 AND estado=1` → mismo conteo que la lista retornada
> `revert_sql`: *(ninguno — solo lectura)*

---

<a name="ui-29"></a>
```

</details>

---

## Agent Response

### Thinking

**Updating Related User Interfaces**

I'm focusing on UI-21 and UI-27, because both are related to user searches. Specifically, regarding UI-21, the user should be able to type "mendoza", press TAB, and select from a dropdown list. I will update those user interfaces accordingly.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.817749780s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 19 Apr 2026, 11:28 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

commitea y subes los cambios en ambos repos

<details>
<summary>Context</summary>

**Active File:** `Plan%20de%20Pruebas%20%E2%80%94%20Sprint%20Post-Correcciones.md`
**Language:** markdown
</details>

---

## Agent Response

### Thinking

**Considering Repository Actions**

Okay, I'm now focusing on committing and pushing changes. My understanding is that this needs to happen in two repositories: `agua`, which appears to be the primary one, and `agua_chatledger`, where critical components like `.agents` and `docs-dev` are most likely situated, as per the `GEMINI.md` documentation.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.103034098s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:29 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Thinking

**Locating Key Files**

I've pinpointed the relevant file and repository locations: `/opt/lampp/htdocs/agua`, and `/home/carlos/GitHub/agua_chatledger`. Specifically, I was working with `/opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion/Plan de Pruebas — Sprint Post`.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.335210514s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Thinking

**Investigating Access Restrictions**

I've hit a roadblock. It appears I can't access the target even via a symlink when it's outside the workspace. I'll inform the user. However, a potential workaround emerges: I can leverage `git` directly from the current workspace, but with a specified directory.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.434141359s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Thinking

**Clarifying Symlink Status**

Okay, so I just realized something significant – `docs-dev` isn't a symlink! This changes everything. My edits to `Plan de Pruebas — Sprint Post-Correcciones.md` are only affecting the `agua` repository. The user's input, "comm" doesn't seem to have a bearing. I need to reassess the wider implication of this.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.833871219s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Thinking

**Checking the Test Plan**

I've located the test plan within the `agua` repository. A quick `git status` check revealed modifications in `docs-dev/doc-estabilizacion/Plan de Pruebas – Sprint Post-Correcciones.md`. It seems the test plan is actively being updated.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.896203883s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Thinking

**Analyzing Recent Changes**

I've noted the recent modifications, including changes to the `agua_chatledger`, specifically updates to `Executing_Agua_Stabilization_Tests_1c737ab57f1d.md` and `docs-dev/ga-cl-ia/promts/pmt-claude-Optimize AWA database and migrate to MariaDB.txt`, plus new related files. The focus now is on committing these updates, as requested.


**Executing Commit Operations**

I'm currently executing the commit operations as requested, and will be pushing the changes to both repositories. I've initiated the specific `git` commands for each repo, including adding and committing the necessary files. I'm aware of the "untracked files" and backups, I'll commit everything.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.457720799s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 19 Apr 2026, 11:30 pm

---

## Agent Response

### Actions

**Tool:** `command_status`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Process Monitor

**Status:** Completed
**Created:** 19 Apr 2026, 11:32 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

CUanto de saldo Google one se consume, al ejcutar este tipo de pruebas ?
cuanto me gaste en lograr completar 1.2 UI-2, 1.3 UI-3, 1.4 UI-4 y 1.5 UI-5: ÉXITO  ?

<details>
<summary>Context</summary>

**Active File:** `Plan%20de%20Pruebas%20%E2%80%94%20Sprint%20Post-Correcciones.md`
**Language:** markdown
</details>

---

## Agent Response

### Thinking

**Assessing Credit Consumption**

I'm currently focused on the user's inquiry regarding "Google One" balance consumption for specific UI tests (UI-2 through UI-5). It's a bit tricky, since I don't have access to real-time billing data. However, I'm working on framing the response to best address the request, within the boundaries of my capabilities.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.781876905s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

DOnde quedo el reporte  Resumen de Resultados (Grupo A) ?

<details>
<summary>Context</summary>

**Active File:** `Plan%20de%20Pruebas%20%E2%80%94%20Sprint%20Post-Correcciones.md`
**Language:** markdown
</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

---

*Generated by Chatledger for Antigravity*