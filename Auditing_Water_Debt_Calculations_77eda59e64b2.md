# Auditing Water Debt Calculations

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `6550479e-2627-44be-ae66-6d5296bf6e1d` |
| **Cascade ID** | `e9e60f8c-dc0e-4c0c-a226-77eda59e64b2` |
| **Type** | Agent Conversation |
| **Total Steps** | 311 |
| **Started** | 11 May 2026, 8:39 am |
| **Completed** | 11 May 2026, 12:35 pm |

---

## User Request

COn base a toda la documentación de texto (.md, html,etc) en este directorio  /opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion ; asi como los php core de la webabpp:
/opt/lampp/htdocs/agua/reportes
/opt/lampp/htdocs/agua/includes

1) Define como se calcula y se comporta la cartera vencida , variables, parametros, que utiliza , etc.
2) EN particular determina si es correcto la forma de expresar/representar el conceto de cartera vencida en:
concentradocortecajaresumen.php , concentradocortecaja.php, carteravencida.php y 
listadeudores.php.
3) Identifica y describe gaps,issues, mejoras (poner labels key año calculo,etc.).


---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 219bd295-172b-4c03-a3df-83f565d88963: Validating Full-Pipeline-Sync Integrity
- Created: 2026-05-09T05:39:34Z
- Last modified: 2026-05-10T22:20:43Z

### USER Objective:
Hardening Agua V2 Production Resilience

Objective: Finalize the migration and stabilization of the Agua V2 webapp in the Host C production environment.
Goals:
1. Implement autonomous UPS fail-safe monitoring with non-blocking shutdown procedures.
2. Automate background service startup sequences and centralized log management for the Kiosko-mode environment.
3. Redesign the Annual Consolidation (Split) interface to provide a pro-active, error-proof administrative dashboard.
4. Validate system resilience through simulated power failure testing and ensure audit integrity across all server operations.

## Conversation 65980880-a19d-4db2-82b2-19454270eff9: Validating Database Connectivity
- Created: 2026-05-08T04:39:13Z
- Last modified: 2026-05-09T05:27:52Z

### USER Objective:
Testing UPS Infrastructure Scripts

Objective: Validate the operational safety of the Agua V2 server's power management and deployment automation in Host C.

Goals:
1. Develop a controlled testing methodology to simulate UPS power failure scenarios without requiring actual hardware power-offs.
2. Verify the end-to-end integration of monitoring, alert, and shutdown scripts (`monitor-ups.ps1`, `shutdown-server.ps1`, and `stop-webapps.ps1`).
3. Ensure the system demonstrates graceful shutdown, robust database backup generation, and automated startup recovery.
4. Execute staged testing scenarios to confirm that system integrity is maintained during power-loss transitions.

## Conversation 4261727a-9250-4b18-a666-5b474f1c4a4c: Identifying Broken Ubuntu Packages
- Created: 2026-04-28T18:06:17Z
- Last modified: 2026-05-09T05:19:39Z

### USER Objective:
System Maintenance And Cleanup

Objective: Systematically clean and optimize the Ubuntu 22 environment to eliminate broken dependencies, stale configuration files, and unused resources.

Goals:
1. Purge residual 'rc' packages and outdated kernel components to reclaim system storage and stabilize package management.
2. Identify and prune invalid '.desktop' shortcut entries that point to non-existent binaries.
3. Validate the integrity of the critical Whisper-cpp/Voxd/CUDA stack to ensure zero-impact maintenance.
4. Synchronize and secure the 'ga-cl-ia' documentation repository through automated git recovery and sync protocols.
5. Enhance the existing cleanup script to include automated identification of newer broken entries and stale snap revisions.

## Conversation 3d0ec69e-8bdd-40fe-a2ee-0c7e71a92060: Migrating Disk Usage Ubuntu
- Created: 2026-05-06T03:39:39Z
- Last modified: 2026-05-09T03:55:59Z

### USER Objective:
Optimizing Ubuntu Disk Usage

Main Objective: Reclaim storage space and improve system performance by auditing and removing redundant software, large temporary files, and obsolete developer tools.

Goals:
1. Reorganize VirtualBox virtual machine storage to utilize high-speed NVMe partitions.
2. Perform a comprehensive purge of legacy Oracle Middleware, .NET SDKs, Liquibase instances, and their associated system environment variables.
3. Consolidate and clean up redundant tools like OnlyOffice and WebLogic Remote Console.
4. Audit and sanitize the user's `~/.bashrc` profile to remove references to deprecated software paths, ensuring a clean and efficient shell environment.

## Conversation f056b1a8-79e6-4c2a-95f5-54a33ea06e98: Explaining Financial Reporting Logic
- Created: 2026-05-07T23:30:40Z
- Last modified: 2026-05-09T03:35:54Z

### USER Objective:
Blindando Categorización Agua V2

Objective: Eradicate Category Zero errors and ensure data integrity in the Agua V2 Host C environment by hardening the application and migration pipeline.

Goals:
1. Implement Poka-Yoke guards in PHP (`cargos.php`) to force correct category assignment (19-22) for administrative charges, overriding user input errors.
2. Automate the sanitization of the master `cargos` catalog within the `10_pipeline_saneamiento.sql` pipeline to prevent historical category corruption post-sync.
3. Validate that all administrative categories (Change of Owner, Fines, Constancias) are correctly mapped and immune to legacy `0` or `1` artifacts.
4. Establish a fail-safe synchronization pattern that ensures all new transactions originate with production-ready metadata, reducing reliance on manual post-hoc SQL patches.

## Conversation bcf279c3-7e58-4790-9c85-a35ebec1c331: Automating Windows Deployment Scripts
- Created: 2026-05-06T00:58:39Z
- Last modified: 2026-05-09T00:27:19Z

### USER Objective:
Automating Agua V2 Windows Deployment

Main Objective: Complete the Agua V2 appliance hardening for Windows 10 Host C to ensure a fully autonomous, production-ready server environment.

Goals:
1. Finalize storage-agnostic infrastructure through centralized configuration ($TargetDrive).
2. Refactor bash deployment scripts to prepare a clean, directory-structured 'agua' webapp package for seamless extraction.
3. Optimize the Windows environment into a Kiosko appliance with automated startup/shutdown and non-intrusive UI/UX.
4. Centralize all deployment assets and operational documentation for the production release (Pase a Producción).
5. Ensure robust system security and stability through automated GPO integration, UPS monitoring, and Chrome Kiosko enforcement.

## Conversation 70b5094f-e7ed-44ff-b37e-6634cd67ee3f: Auditing Git Sync Script
- Created: 2026-05-06T04:38:01Z
- Last modified: 2026-05-06T04:59:45Z

### USER Objective:
Auditing Git Sync Script

Main Objective:
Analyze the safety and integrity of the `sync with link de chatledger-entre main y rama git.sh` script on the Ubuntu 22.04 host to ensure it functions correctly without causing system corruption or repository data loss.

Goals:
1. Verify the script's logic regarding file migration, symbolic link creation, and `.gitignore` management to prevent accidental data deletion.
2. Evaluate potential race conditions or error states if the script is re-run (idempotency checks).
3. Ensure the script correctly handles directory transitions between the local repository and the external `STORAGE_DIR` without breaking the application's reliance on `.chatledger`.
4. Assess the risk of Git state inconsistencies (e.g., cached vs. ignored files) during the synchronization process.

## Conversation 25b74c07-23d4-48e6-b039-435b579b0cf6: Sourcing Water Delivery System Repositories
- Created: 2026-05-05T21:11:02Z
- Last modified: 2026-05-05T21:12:16Z

### USER Objective:
Sourcing Water Delivery System Repositories

Main Objective:
Identify and source existing, publicly available repository examples of water delivery/distribution management systems to serve as a baseline for a PHP/PostgreSQL POC.

Goals:
1. Locate repositories containing full-scope management features including inventory (garrafones), logistics (routes/schedules), vehicle tracking, and personnel management.
2. Evaluate these repositories as data and architectural inputs to facilitate the migration of the user's current "Agua" webapp system into a modernized PHP/PostgreSQL environment.
3. Provide direct links to relevant projects to enable the user to conduct an analysis of business logic and schema structures for the upcoming migration.

## Conversation 89bc16ba-c2d5-462e-9435-d8421190f457: Kiosk Mode Browser Automation
- Created: 2026-04-30T15:35:02Z
- Last modified: 2026-05-01T05:21:04Z

### USER Objective:
Kiosk Mode Browser Automation

Main Objective:
Automate the deployment of the "Agua" web application in a "Kiosk" or "App" mode using Google Chrome.

Goals:
1. Create a PowerShell script (`.ps1`) that launches the specific URL `http://localhost/agua/login/index.php` in a stripped-down Chrome window without navigation bars, tabs, or address bars.
2. Ensure the resulting script file is placed on the user's desktop for quick, one-click access.
3. Configure the browser flags (specifically `--app` or `--kiosk`) to ensure a distraction-free, application-like experience suitable for the local web deployment.

## Conversation 4207a55e-b96d-41a1-958d-feb2ced23088: Automating Agua Webapp Deployment
- Created: 2026-04-30T05:31:52Z
- Last modified: 2026-04-30T07:00:25Z

### USER Objective:
Automating Agua Webapp Deployment

Main Objective: Create a robust Bash automation script to sanitize the Agua V2 application directory for secure deployment to the production Apache Host C.

Goals:
1. Develop a cleanup script that removes sensitive development metadata (.git, logs, temporary backups, and IDE/OS artifacts) without disrupting application functionality.
2. Implement a safe execution workflow, preferably using rsync or dry-run validation, to ensure that only production-ready files are deployed.
3. Preserve essential application directory structures (such as upload or cache folders) while clearing their contents to maintain environment parity.
4. Enhance deployment reliability by ensuring the finalized production directory excludes redundant files that could pose security risks or performance overhead on the web server.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 11 May 2026, 8:39 am

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
**Created:** 11 May 2026, 8:39 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 8:39 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 8:39 am

---

## User Request

Continua.

---

## Agent Response

### Thinking

**Investigating Overdue Debt**

I'm now diving into the "Cartera Vencida" calculations within the "Agua" project. My focus is on understanding the mechanics behind overdue debt, particularly how it's defined and tracked. I'm exploring the provided documentation and PHP code to trace the core logic.




### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.603932781s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `doc-estabilizacion` (6 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion`

| Name | Type | Size |
|------|------|------|
| `data-cortes-caja-libro` | Directory | - |
| `encuadres` | Directory | - |
| `funcionalidad-reglas-negocio` | Directory | - |
| `mas-features` | Directory | - |
| `pruebas-cp-manuales-auto` | Directory | - |
| `reglas-negocio-por-menu.md` | File | 33995 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `cartera vencida`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 11 May 2026, 8:40 am

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `reglas-negocio-por-menu.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Reglas de Negocio por Módulo de Menú — Webapp Agua V2

**Extraídas de código PHP y BD Host C — 2026-04-19**
**Archivos fuente**: `includes/negocio/contratos.php`, `includes/negocio/cargos.php`, `includes/negocio/usuarios.php`, `reportes/*.php`

> Este documento complementa `.agents/rules/02-reglas-negocio.md` con el detalle de implementación,
> la función PHP exacta, la línea de código y el comportamiento verificado en Host C (MariaDB 10.4.27).
> Al encontrar divergencias entre este doc y el código, el código manda.

---

## 📋 ÍNDICE

- [M1 — Menú: Contratos (Ficha y Edición)](#m1-contratos)
- [M2 — Menú: Nuevo Contrato](#m2-nuevo-contrato)
- [M3 — Menú: Cambio de Estado del Contrato](#m3-cambio-estado)
- [M4 — Menú: Tomas Físicas (Conexión/Desconexión)](#m4-tomas)
- [M5 — Menú: Cargos (Agregar / Cancelar / Restaurar)](#m5-cargos)
- [M6 — Menú: Cobro y Pagos (Caja)](#m6-cobro)
- [M7 — Menú: Catálogo de Cargos (Admin)](#m7-catalogo)
- [M8 — Menú: Egresos](#m8-egresos)
- [M9 — Menú: Usuarios](#m9-usuarios)
- [R1 — Reporte: Cartera Vencida](#r1-cartera)
- [R2 — Reporte: Concentrado Corte de Caja](#r2-caja)
- [R3 — Reporte: Lista de Deudores / Morosos](#r3-deudores)
- [R4 — Reporte: Historial de Movimientos del Contrato](#r4-historial)
- [R5 — Reporte: Auditoría de Integridad de BD](#r5-auditoria)

---

<a name="m1-contratos"></a>
## M1 — Menú: Contratos (Ficha y Edición)

Función principal: `cargaContrato()` en `contratos.php:40`

### M1-R01 — Carga automática de cargos en apertura de ficha
- **Dónde**: `cargaContrato()` líneas 69–131
- **Regla**: Al abrir la ficha de un contrato en **Estado 1 (Activo)**, el sistema evalúa los cargos del catálogo con `automatico=1` desde el año de alta del contrato (`anio >= aniocontrato`). Para cada cargo, verifica si ya existe en `vw_ligacargos_all` antes de insertar.
- **Anti-duplicado**: Si `repetir=0` → verifica existencia exacta (leyenda + contrato). Si `repetir=1` → verifica existencia por año. Solo inserta si no existe. Esto previene la "Refresh-bomb" (multiplicación por recarga de página).
- **Monto calculado en tiempo real**: El monto insertado depende del número de tomas activas (`estado_agua=1`, `estado_drenaje=1`) y del tipo (Normal vs Comercial), usando `monto_comercial` del catálogo cuando el tipo es Comercial.
- **Dispara**: `calcula_recargos()` inmediatamente después de cada INSERT de cargo automático.
- **No aplica**: Estados 2, 3 y 4 — NO se insertan cargos automáticos en apertura de ficha.

### M1-R02 — Vista de adeudos: separación capital vs recargo
- **Dónde**: `cargaContrato()` líneas 142–157
- **Regla**: La clasificación "recargo" en la vista se determina por `categoria IN (16,17)` — **nunca** por el campo `ligacargos.recargo` (que es float heredado, regla F05). El campo `recargo` se normaliza a `0/1` para el coloreado UI antes de enviarlo a la vista.
- **Fuente de datos**: `vw_ligacargos_pendientes` (UNION automático activa + histórico V2).

### M1-R03 — Cargos cancelados: COALESCE activa→histórico para ID
- **Dónde**: `cargaContrato()` líneas 188–200
- **Regla**: Para obtener el `id_cargo` de cargos cancelados (estado=-1), se usa `COALESCE((SELECT id FROM ligacargos ...), (SELECT id FROM ligacargos_historico ...))`. Nunca se asume que el cargo está en una sola tabla. Esto es la implementación de la Regla F06 (cobertura dual).

### M1-R04 — Guardado de contrato: bloqueo total en Estado 4
- **Dónde**: `guardaContrato()` línea 502
- **Regla**: Si `contrato.estado=4`, `guardaContrato()` retorna alert de error y **no ejecuta ninguna otra lógica**. Implementa Regla C02.
- **Mensaje exacto**: `"Error: Este contrato se encuentra en SUSPENSIÓN DEFINITIVA y no permite modificaciones."`

### M1-R05 — Guardado: restricción de agregar tomas según estado
- **Dónde**: `guardaContrato()` líneas 506–512
- **Regla**: Solo se puede **agregar** nuevas tomas (num_tomas > tomas_actuales) en contratos con `estado IN (1, 2)`. Estado 3 y 4 bloquean la adición de tomas.
- **Mensaje**: `"Restriccion: Solo se permite agregar nuevas tomas a contratos en estado Activo o Suspension Temporal."`

### M1-R06 — Guardado: validación límite 2 tomas por domicilio (incluyendo otros contratos)
- **Dónde**: `guardaContrato()` líneas 514–522
- **Regla**: Antes de guardar, suma las tomas de **otros contratos del mismo usuario en el mismo domicilio** (`estado != 4`, excluye el contrato actual). Si `tomas_otras + tomas_solicitadas > 2`, rechaza.
- **Normalización de domicilio**: Compara sin espacios, sin puntos, sin tildes (`UPPER + REPLACE`).
- **Mensaje**: `"Restriccion de Tomas: El usuario ya cuenta con N toma(s) en otros contratos para este domicilio. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio."`

### M1-R07 — Guardado: tracking de cambios de infraestructura y tarifa
- **Dónde**: `guardaContrato()` líneas 558–593
- **Regla**: Cualquier cambio en `tiene_agua`, `tiene_drenaje` o `tipo` de una toma genera un registro en `cambios` con descripción `'Infrastructura Agua Toma N'`, `'Infrastructura Drenaje Toma N'` o `'Cambio de Tarifa Toma N'`.
- **Desconexión de agua**: Si `estado_agua` pasa de 1 a 0, llama a `_quitaCargoAnual($id, 'AGUA', $y)`.
- **Desconexión de drenaje**: Si `estado_drenaje` pasa de 1 a 0, llama a `_quitaCargoAnual($id, 'DRENAJE', $y)`.

### M1-R08 — Guardado: sincronización de campos legacy y paridad al finalizar
- **Dónde**: `guardaContrato()` líneas 598–635
- **Regla**: Después de actualizar todas las tomas, sincroniza `contrato.agua`, `contrato.drenaje`, `contrato.tipo` desde `COUNT/MAX` de `contrato_toma`. Luego llama siempre a `_sincronizaParidadFinanciera()`.
- **Paridad**: Solo tiene efecto financiero si el estado del contrato es 4 (depuración total) o si hay discrepancias entre tomas físicas y cargos anuales del año actual.

### M1-R09 — Eliminación de toma: solo por reducción en `guardaContrato()`
- **Dónde**: `guardaContrato()` líneas 536–542
- **Regla**: Si `num_tomas` recibido es menor que las tomas actuales, las tomas sobrantes se **eliminan físicamente** de `contrato_toma` con DELETE, y se registra en `cambios`. No hay recuperación posible.

### M1-R10 — Verificación de anualidades del año en catálogo
- **Dónde**: `_verificaAnualidades()` líneas 456–465
- **Regla**: Al cargar la ficha o el formulario de nuevo contrato, el sistema verifica que existan `ANUALIDAD DEL AGUA YYYY` y `ANUALIDAD DEL DRENAJE YYYY` en el catálogo `cargos` con `estado=1`. Si faltan, muestra advertencia `faltan_cargos` en la UI. Sin estas anualidades, `_sincronizaParidadFinanciera()` no puede generar cargos para el año actual.

---

<a name="m2-nuevo-contrato"></a>
## M2 — Menú: Nuevo Contrato

Funciones: `nuevoContrato()` (render formulario) + `guardaNuevoContrato()` (persistencia) en `contratos.php`

### M2-R01 — Número de contrato: autoincremento sobre MAX(numcontrato) numérico
- **Dónde**: `nuevoContrato()` línea 429
- **Regla**: El ID sugerido es `MAX(CAST(numcontrato AS UNSIGNED)) + 1`. Es solo sugerencia — el operador puede cambiarlo. Si el ID ya existe en BD, el INSERT falla y muestra "No ha sido posible agregar este contrato".
- **Riesgo**: Contratos con ID alfanumérico (ej. `100A`) pueden desincronizar el MAX.

### M2-R02 — Exención de recargos primer año: valor desde config_sistema
- **Dónde**: `guardaNuevoContrato()` línea 823
- **Regla**: El campo `exento_recargo_primer_anio` del nuevo contrato toma el valor de `config_sistema.nuevo_contrato_exento_default` (default: 1). **No es editable en el formulario** — se establece automáticamente. Efecto: `calcula_recargos()` omitirá recargos cat 16/17 en el año de alta del contrato.

### M2-R03 — Validación de límite de tomas antes de crear
- **Dónde**: `guardaNuevoContrato()` líneas 825–836
- **Regla**: Antes de insertar, suma las tomas existentes del usuario en el mismo domicilio (todos los contratos, excluye Estado 4). Si `existentes + solicitadas > 2`, rechaza con alert.
- **Normalización de domicilio**: Igual que M1-R06 (UPPER + REPLACE sin tildes, espacios, puntos).
- **Diferencia vs guardaContrato()**: Aquí NO excluye el contrato actual (no existe todavía). `guardaContrato()` sí lo excluye.

### M2-R04 — Creación de tomas en contrato_toma con estado inicial activo
- **Dónde**: `guardaNuevoContrato()` líneas 847–855
- **Regla**: Por cada toma solicitada (1 a `max_tomas_por_contrato`), inserta en `contrato_toma` con `estado_agua = tiene_agua` y `estado_drenaje = tiene_drenaje`. Es decir, si se declara que tiene agua, la toma nace activa (`estado_agua=1`).
- **Límite**: Nunca crea más tomas que `config_sistema.max_tomas_por_contrato` (default: 2).

### M2-R05 — Sincronización de campos legacy contrato.agua/drenaje/tipo post-creación
- **Dónde**: `guardaNuevoContrato()` líneas 857–864
- **Regla**: Después de crear las tomas, recalcula `contrato.agua` (COUNT tomas con `tiene_agua=1`), `contrato.drenaje` (COUNT tomas con `tiene_drenaje=1`) y `contrato.tipo` (MAX tipo de tomas). Actualiza el contrato con estos valores.

### M2-R06 — Paridad inicial: genera cargos anuales según tomas dadas de alta
- **Dónde**: `guardaNuevoContrato()` línea 867
- **Regla**: Llama a `_sincronizaParidadFinanciera($id, $y)` como **primer acto financiero** del nuevo contrato. Esto generará o confirmará los cargos anuales correspondientes a las tomas creadas.
- **Precondición**: Requiere que `ANUALIDAD DEL AGUA YYYY` y `ANUALIDAD DEL DRENAJE YYYY` existan en el catálogo. Si no existen, la paridad no inserta cargos (ver M1-R10).

### M2-R07 — Auditoría de creación en tabla cambios
- **Dónde**: `guardaNuevoContrato()` líneas 870–872
- **Regla**: Registra `descripcion='Registro de Nuevo Contrato'`, `antes='NUEVO'`, `despues='Usuario: X | Domicilio: Y'`.

### M2-R08 — Formulario muestra tarifas de referencia del año actual
- **Dónde**: `nuevoContrato()` líneas 432–445
- **Regla**: Antes de renderizar el formulario, consulta `cargos WHERE automatico=1 AND recargo=0 AND estado=1 AND anio=YYYY AND categoria IN (2,3)`. Estas tarifas se muestran en la UI para orientar al operador (Normal y Comercial). Si no existen anualidades del año, la UI mostrará alerta `faltan_cargos`.

### M2-R09 — Tipo comercial en toma 2: regla de negocio implícita
- **Dónde**: `guardaNuevoContrato()` línea 849 + `_sincronizaDeudaPendienteContrato()`
- **Regla**: `contrato.tipo` se establece como `MAX(tipo)` de todas las tomas. Si al menos una toma es Comercial (tipo=1), el contrato completo se considera Comercial para efectos de cálculo de tarifa. Los montos de anualidades se calculan usando `monto_comercial` si el tipo resultante es 1.

### M2-R10 — Contrato creado siempre en Estado 1 (Activo)
- **Dónde**: `guardaNuevoContrato()` línea 838
- **Regla**: El INSERT de nuevo contrato hardcodea `estado=1`. No existe mecanismo para crear un contrato en otro estado inicial.

### M2-R11 — Fecha de alta: NOW() al momento del INSERT
- **Dónde**: `guardaNuevoContrato()` línea 838
- **Regla**: `fecha = NOW()`. Esta fecha determina el `anio_creacion` usado por `calcula_recargos()` para verificar la exención F07. Si el contrato se crea en 2026 y `exento=1`, no recibirá recargos moratorios durante 2026.

---

<a name="m3-cambio-estado"></a>
## M3 — Menú: Cambio de Estado del Contrato

Función: `cambiaestado()` en `contratos.php:254`

### M3-R01 — Estado 4 bloquea cualquier cambio posterior
- **Dónde**: `cambiaestado()` líneas 267–272
- **Regla**: Si `estado_actual=4`, retorna error inmediato. Ninguna transición sale de Estado 4.
- **Mensaje**: `"No es posible cambiar el estado de un contrato que se encuentra en Suspensión Definitiva."`

### M3-R02 — Bloqueo de salto directo 2↔3 (Regla C07)
- **Dónde**: `cambiaestado()` líneas 274–280
- **Regla**: `(2→3)` y `(3→2)` están bloqueados. El contrato debe pasar por Estado 1 primero.
- **Implementación**: Condición `(actual==2 && destino==3) || (actual==3 && destino==2)`.
- **Mensaje**: `"No se permite saltar entre diferentes tipos de suspensión directamente. El contrato debe ser Regularizado a Activo antes de cambiar el tipo de suspensión."`

### M3-R03 — Suspensión Temporal: solo en mes configurado
- **Dónde**: `cambiaestado()` líneas 287–294
- **Regla**: La transición a Estado 2 solo está permitida cuando `date('m') == config_sistema.susptemp_mes_permitido` (default: 12, diciembre). Bloquea el resto del año.
- **Mensaje**: `"La Suspensión Temporal solo puede solicitarse en [mes_nombre]."`

### M3-R04 — Motivo obligatorio: mínimo de caracteres configurable
- **Dónde**: `cambiaestado()` línea 296 + `pagacancelacargos()` línea 308
- **Regla**: Todo cambio de estado y toda cancelación requieren un texto de motivo con longitud > `config_sistema.cancelacion_min_caracteres` (default: 20). Sin eso, retorna error sin ejecutar ninguna acción.

### M3-R05 — Transición a Estado 4: C05 — Depuración Total
- **Dónde**: `cambiaestado()` líneas 309–316
- **Regla**: Al pasar a Estado 4:
  1. `UPDATE contrato_toma SET estado_agua=0, estado_drenaje=0` (desconexión física total)
  2. `UPDATE contrato SET agua=0, drenaje=0` (sincronización legacy)
  3. `_sincronizaParidadFinanciera()` → al detectar Estado 4, cancela TODOS los cargos pendientes en `ligacargos` y `ligacargos_historico` (estado=-1)
- **Auditoría**: `despues` contiene `"Eliminación física de tomas y depuración total de deuda (Regla C05)."`

### M3-R06 — Transición a Estado 1: C04 + C06 — Paridad ANTES que Amnistía
- **Dónde**: `cambiaestado()` líneas 317–328
- **Regla**: Al reactivar a Estado 1:
  1. `_sincronizaParidadFinanciera()` — restaura/confirma anualidades según tomas físicas actuales
  2. Si venía de Estado 2: `_amnistiaRecargosHistoricos()` — cancela cat 16/17 de anio < año actual
  3. Si venía de Estado 3: **NO amnistía** — adeudo íntegro conservado
- **Orden crítico**: La paridad se ejecuta ANTES de la amnistía para evitar que la paridad restaure recargos que la amnistía acabará de cancelar.

### M3-R07 — Transiciones a Estado 2 o 3: NO modifican cargos
- **Dónde**: `cambiaestado()` líneas 329–334
- **Regla**: Las transiciones `1→2` y `1→3` **no llaman** a `_sincronizaParidadFinanciera()`. Los cargos en `ligacargos` no cambian. Solo se registra una nota descriptiva en `cambios`.
- **Nota Estado 2**: `"Facturación congelada. Anualidad vigente cancelada (Regla C06)."` — **este texto es solo descriptivo, no es una acción de código**. La anualidad ya fue cancelada por el sistema cuando el contrato entró a Estado 2 anteriormente (en ciclos previos), no en esta transición.
- **Nota Estado 3**: `"Suspensión sancionatoria. Adeudo íntegro conservado. Sin amnistía al reactivar."`

### M3-R08 — Snapshot financiero post-cambio en auditoría
- **Dónde**: `cambiaestado()` líneas 336–341
- **Regla**: Después de ejecutar paridad y/o amnistía, toma un snapshot `COUNT(*)/SUM(monto)` de `vw_ligacargos_pendientes` y lo incluye en `cambios.despues` como `"Adeudos: N | Deuda: $X.XX"`.

---

<a name="m4-tomas"></a>
## M4 — Menú: Tomas Físicas (Conexión/Desconexión)

Funciones: `cambiaEstadoConexion()` (cambio rápido) + `guardaContrato()` (modo edición completo)

### M4-R01 — Cambio rápido de conexión: solo en contratos Activos
- **Dónde**: `cambiaEstadoConexion()` líneas 787–793
- **Regla**: El botón de cambio rápido solo opera si `contrato.estado = config_sistema.estado_activo` (default: 1). Si el contrato está en Estado 2, 3 o 4, retorna error.
- **Mensaje**: `"Solo se puede cambiar la conexión en contratos ACTIVOS."`

### M4-R02 — Cambio rápido: dispara paridad financiera automáticamente
- **Dónde**: `cambiaEstadoConexion()` líneas 805–812
- **Regla**: Después de actualizar `estado_agua/estado_drenaje`, recalcula `contrato.agua/drenaje` y llama a `_sincronizaParidadFinanciera()`. Esto cancela el cargo anual si se desconectó, o lo restaura si se reconectó.

### M4-R03 — Motor de paridad: solo opera sobre anualidades del año actual
- **Dónde**: `_sincronizaParidadFinanciera()` líneas 694–717
- **Regla**: La paridad busca `"ANUALIDAD DEL AGUA YYYY"` y `"ANUALIDAD DEL DRENAJE YYYY"` donde YYYY = `date('Y')`. No opera sobre anualidades de años anteriores.
- **Lógica**: Si hay toma activa (`estado_agua=1, tiene_agua=1`): restaura (estado=-1 → 0). Si no hay toma: cancela (estado=0 → -1). Opera en ambas tablas (activa + histórico).

### M4-R04 — Motor de paridad: recalibra montos vía `_sincronizaDeudaPendienteContrato()`
- **Dónde**: `_sincronizaParidadFinanciera()` línea 717
- **Regla**: Después de sincronizar estados, llama a `_sincronizaDeudaPendienteContrato()`. Esta función recalcula el monto de anualidades pendientes (cat 2/3) basándose en el número actual de tomas activas y el tipo (Normal/Comercial). Si el monto difiere en más de $0.01, actualiza en ambas tablas y registra `'Calibracion automatica de Deudas'` en `cambios`.

### M4-R05 — Motor de paridad en Estado 4: depuración total
- **Dónde**: `_sincronizaParidadFinanciera()` líneas 664–683
- **Regla**: Si al llamar a la paridad el contrato está en Estado 4, cancela TODOS los cargos pendientes (estado=0 → -1) en ambas tablas, independientemente del servicio o categoría. Registra `'Depuración SDF Automática (Motor Paridad)'` en `cambios`.

### M4-R06 — Eliminación de cargo anual por desconexión: `_quitaCargoAnual()`
- **Dónde**: `_quitaCargoAnual()` líneas 647–652
- **Regla**: Llama a `sp_cancelar_cargo` con la leyenda `"ANUALIDAD DEL [AGUA|DRENAJE] YYYY"`. El SP opera sobre ambas tablas. Esta función se invoca desde `guardaContrato()` cuando se detecta que `estado_agua/drenaje` pasó de 1 a 0.

---

<a name="m5-cargos"></a>
## M5 — Menú: Cargos (Agregar / Cancelar / Restaurar)

Función: `aplicacargos()` en `cargos.php:357` + `pagacancelacargos()` modo cancelar en `cargos.php:299` + `regresarCargoCancelado()` en `contratos.php`

### M5-R01 — Bloqueo total de cargos en Estado 4 (Regla F02)
- **Dónde**: `aplicacargos()` líneas 380–385
- **Regla**: Si el contrato está en Estado 4, rechaza el cargo con alert. No se inserta nada.
- **Mensaje**: `"El contrato N se encuentra en Suspensión Definitiva y no puede recibir nuevos cargos."`

### M5-R02 — Bloqueo de servicio sin infraestructura (Regla F08)
- **Dónde**: `aplicacargos()` líneas 426–434
- **Regla**: Si `categoria=2` (agua) y `n_tomas_agua=0`, rechaza. Si `categoria=3` (drenaje) y `n_tomas_drenaje=0`, rechaza.
- **Mensajes**: `"El cargo X no aplica porque el contrato N no tiene toma de agua/drenaje conectada."`

### M5-R03 — Monto calculado dinámicamente al aplicar: tomas activas + tipo
- **Dónde**: `aplicacargos()` líneas 410–421
- **Regla**: Para cat 2 (agua): `monto = monto_base * n_tomas_agua`. Para cat 3 (drenaje): `monto = monto_base * n_tomas_drenaje`. `monto_base` es `monto_comercial` si el contrato es Comercial y `monto_comercial > 0`, o `monto * 2` si es Comercial sin `monto_comercial`, o `monto` si es Normal.

### M5-R04 — Tabla de destino según año del cargo (split V2)
- **Dónde**: `aplicacargos()` línea 437
- **Regla**: `$tabla_d = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos"`. Cualquier cargo con año ≤2025 va a histórico; ≥2026 va a activa. Aplica tanto en `aplicacargos()` como en `calcula_recargos()`.

### M5-R05 — Cargo con `repetir=0`: anti-duplicado por leyenda
- **Dónde**: `aplicacargos()` líneas 438–439
- **Regla**: Si `repetir=0`, usa INSERT simple. La duplicidad es detectada a nivel SQL (error de BD) o por el mensaje `"M cargo(s) no pudieron asignarse por duplicidad"` en el caso de falla.
- **Nota**: `repetir=0` en `aplicacargos()` no verifica existencia previa explícita — a diferencia de `cargaContrato()` que sí hace SELECT previo. El error de duplicado proviene de constraint de BD o falla del INSERT.

### M5-R06 — Cargo con `repetir=1`: contador incremental `repetido`
- **Dónde**: `aplicacargos()` líneas 440–444
- **Regla**: `repetido = COUNT(existentes en vw_ligacargos_all)`. Permite múltiples instancias del mismo cargo con índice 0, 1, 2... N-1.

### M5-R07 — Cancelación: motivo obligatorio con mínimo de caracteres
- **Dónde**: `pagacancelacargos()` línea 309
- **Regla**: `strlen($texto) > $min_car` donde `$min_car = config_sistema.cancelacion_min_caracteres` (default: 20). La verificación es estricta (mayor, no mayor-igual).

### M5-R08 — Cancelación: operador identificado en auditoría
- **Dónde**: `pagacancelacargos()` líneas 326–335
- **Regla**: El operador se extrae de `$_SESSION['usuario']`. Si es string: se usa directamente. Si es objeto con método `getNombre()`: se llama al método. Default: `'cajero'`. Se incluye en `cambios.despues`.

### M5-R09 — Cancelación: usa `sp_cancelar_cargo` (SP que opera en ambas tablas)
- **Dónde**: `pagacancelacargos()` línea 323
- **Regla**: La cancelación pasa el `id_cargo` al SP. El SP es responsable de determinar en qué tabla está el cargo y actualizar `estado=-1` con `fpago=NOW()` en esa tabla.

### M5-R10 — Restauración de cargo cancelado: bloqueo en Estado 4
- **Dónde**: `regresarCargoCancelado()` en `contratos.php` (referenciado en M1-R03)
- **Regla**: Verifica `contrato.estado != 4` antes de restaurar. Si el contrato está en SDF, rechaza. Registra operador (`$_SESSION['usuario']`) en `cambios`.

### M5-R11 — `calcula_recargos()`: no genera recargos sobre recargos
- **Dónde**: `calcula_recargos()` líneas 53–56
- **Regla**: Si `$categoria == cat_agua (16)` o `$categoria == cat_drenaje (17)`, retorna sin hacer nada. Evita recargos sobre recargos.

### M5-R12 — `calcula_recargos()`: exenciones múltiples
- **Dónde**: `calcula_recargos()` líneas 38–51
- **Regla**: No genera recargos si:
  - `contrato.estado = 4` (SDF)
  - `contrato.estado = 2` (Susp. Temporal — anualidad ya cancelada)
  - `exento_recargo_primer_anio = 1 AND anio == anio_creacion` (F07)
  - `categoria IN (cat_agua, cat_drenaje)` (no recargos sobre recargos)

### M5-R13 — `calcula_recargos()`: solo genera el mes con nombre igual al cargo base
- **Dónde**: `calcula_recargos()` líneas 69–98
- **Regla**: Genera recargos con leyenda `"RECARGO [MES] [AÑO] - [LEYENDA_BASE]"`. Solo inserta recargos del mismo año que el cargo base (`if ($aniorecargo == $anio)`). Los recargos de años siguientes NO se insertan automáticamente.

---

<a name="m6-cobro"></a>
## M6 — Menú: Cobro y Pagos (Caja)

Función: `pagacancelacargos()` modo `pagacargos` en `cargos.php:268`

### M6-R01 — Folio atómico: AUTO_INCREMENT en `folios_recibo`
- **Dónde**: `pagacancelacargos()` líneas 269–271
- **Regla**: Antes de pagar cualquier cargo, hace `INSERT INTO folios_recibo (dummy) VALUES (1)` y captura el `insert_id()`. Este folio es único y atómico — imposible colisión en concurrencia.

### M6-R02 — Pago via `sp_pagar_cargo`
- **Dónde**: `pagacancelacargos()` líneas 286–291
- **Regla**: Cada cargo se paga llamando a `sp_pagar_cargo($id_cargo, $numcontrato, $leyenda, $repetido, $folio, ...)`. El SP actualiza `estado=1`, `fpago=NOW()`, `folio=X` en la tabla correcta (activa o histórico).

### M6-R03 — Pago de asamblea: dispara `sp_sinc_asamblea_puntual`
- **Dónde**: `pagacancelacargos()` líneas 281–288
- **Regla**: Si `categoria=6` o `leyenda LIKE '%FALTA ASAMBLEA%'`, tras pagar el cargo del contrato principal llama a `sp_sinc_asamblea_puntual($numusuario, $leyenda, ...)`. El SP cancela el mismo cargo en todos los contratos hermanos del usuario.

### M6-R04 — Folio vinculado: todos los cargos del cobro comparten el mismo folio
- **Dónde**: `pagacancelacargos()` línea 286 (el folio se reutiliza en el loop)
- **Regla**: Un recibo puede cubrir múltiples cargos y múltiples contratos del mismo usuario. Todos comparten el mismo `folio_sig`. Esto permite que `concentradocortecaja.php` cuente folios únicos (no filas).

### M6-R05 — Auditoría de cobro en `cambios`
- **Dónde**: `pagacancelacargos()` líneas 293–295
- **Regla**: `descripcion='Cobro de Cargos'`, `antes='Emisión de Recibo Folio: X'`, `despues='Total Marcado: $Y | Cargos liquidados via sp_pagar_cargo [Atomic ID Mode]'`.

---

<a name="m7-catalogo"></a>
## M7 — Menú: Catálogo de Cargos (Admin)

Funciones: `creaCargo()` + `modificaCargo()` en `cargos.php`

### M7-R01 — Modificación de cargo: propagación masiva a cargos pendientes
- **Dónde**: `modificaCargo()` líneas 549–604
- **Regla**: Al modificar el monto de un cargo en el catálogo, el sistema automáticamente recalcula y actualiza el monto en todos los registros pendientes (`estado=0`) de `ligacargos` y `ligacargos_historico` que tengan esa misma leyenda. Usa la misma lógica de tomas activas y tipo Normal/Comercial.
- **Auditoría**: Si se actualizaron contratos, registra `'Sincr. masiva de Adeudos - [leyenda]'` con conteo de contratos afectados.

### M7-R02 — Nueva categoría creada on-the-fly si `cat=-1`
- **Dónde**: `creaCargo()` líneas 489–496 + `modificaCargo()` líneas 527–534
- **Regla**: Si se selecciona categoría `-1` (nueva), el sistema crea la categoría en la tabla `categorias` con nombre corto auto-generado (primeros 8 chars alfanuméricos en mayúscula) y usa el ID generado para el cargo.

### M7-R03 — Campo `monto_comercial`: default 0 si no se proporciona
- **Dónde**: `creaCargo()` línea 504
- **Regla**: Si `monto_comercial` está vacío, se guarda como `0`. La función `_sincronizaDeudaPendienteContrato()` interpreta `monto_com == 0` como "Comercial = monto × 2".

---

<a name="m8-egresos"></a>
## M8 — Menú: Egresos

Función: `eliminaEgreso()` en `cargos.php:102`

### M8-R01 — Eliminación lógica: `estado=-1`, no DELETE físico
- **Dónde**: `eliminaEgreso()` línea 114
- **Regla**: Los egresos no se eliminan físicamente. Se marcan con `estado=-1` y `motivoelimina`.

### M8-R02 — Auditoría de eliminación de egreso
- **Dónde**: `eliminaEgreso()` líneas 116–118
- **Regla**: Registra en `cambios` con `numcontrato='-EGRESO-'`, `descripcion='Eliminación de Egreso'`, incluyendo leyenda, monto y categoría del egreso eliminado.

### M8-R03 — Categoría legacy `categoria=0` válida
- **Dónde**: BD Host C, `egresos.categoria=0`
- **Regla**: Egresos con `categoria=0` son registros legacy (pre-2018). El reporte RC-3 valida que el sistema no quede con `id_categoria=NULL` al migrar estos registros. `categoria=0` se trata como "sin categoría" — es un valor válido en la BD, no un error.

---

<a name="m9-usuarios"></a>
## M9 — Menú: Usuarios

Funciones: `busquedaUsuario()`, `busquedaUsuarioCalle()`, `cargaUsuario()` en `usuarios.php`

### M9-R01 — Búsqueda excluye usuarios No Localizados (estado=2)
- **Dónde**: `busquedaUsuario()` línea 23 + `busquedaUsuarioCalle()` línea 73
- **Regla**: `WHERE u.estado <> 2`. Los usuarios marcados como No Localizados (estado=2) no aparecen en búsquedas estándar.

### M9-R02 — Búsqueda solo retorna usuarios con al menos 1 contrato
- **Dónde**: `busquedaUsuario()` línea 25
- **Regla**: `HAVING ctotales > 0`. Usuarios sin contratos vinculados no aparecen en la búsqueda estándar de contratos.

### M9-R03 — Detección de nombre duplicado en resultados de búsqueda
- **Dónde**: `busquedaUsuario()` línea 20
- **Regla**: `(SELECT COUNT(*) FROM usuario u2 WHERE u2.nombre = u.nombre) as cnt`. Si `cnt > 1`, el usuario se marca como "repetido" en la UI (para identificar duplicados).

### M9-R04 — Ficha de usuario excluye contratos en Estado 4
- **Dónde**: `cargaUsuario()` línea 110 + línea 31 de `busquedaUsuario()`
- **Regla**: `WHERE estado <> 4`. La ficha del usuario no muestra contratos en Suspensión Definitiva. La lista de contratos en búsqueda tampoco.

### M9-R05 — Cambio de propietario: solo reasigna `numusuario`, sin validación de contratos destino
- **Dónde**: `cambiapropietario()` líneas 404–419
- **Regla**: `UPDATE contrato SET numusuario='$nuevousuario'`. No verifica si el nuevo usuario ya tiene 2 tomas en el mismo domicilio. La restricción de 2 tomas se aplica solo en creación/edición de contratos.

---

<a name="r1-cartera"></a>
## R1 — Reporte: Cartera Vencida

Archivo: `reportes/carteravencida.php`

### R1-R01 — Filtro de categorías excluidas de cartera
- **Dónde**: `carteravencida.php` línea 66
- **Regla**: `categoria NOT IN (6, 19, 20, 21, 22)`. Implementa Regla R02:
  - Cat 6: multas asamblea (sincronización por usuario, no cuota periódica)
  - Cat 16, 17: SÍ se incluyen (van a cartera cuando son de años anteriores)
  - Cat 19–22: conceptos únicos V2 (CB/PROP, MLT/DESP, CNT/NADO, CNC/FUGA)
  - Cat 11: recargos normales **SÍ** incluidos — van a cartera cuando son de años anteriores

### R1-R02 — Exclusión de contratos Estado 4
- **Dónde**: `carteravencida.php` línea 65
- **Regla**: `AND c.estado != 4`. Siempre explícito, independientemente del saneamiento de la BD.

### R1-R03 — Filtro por año: campo `anio` o `fcobro` como fallback
- **Dónde**: `carteravencida.php` líneas 67–72
- **Regla**: `(l.anio = $anio) OR ((l.anio = 0 OR l.anio IS NULL) AND SUBSTRING(fcobro,1,4) = '$anio')`. Cargos sin año en campo `anio` usan el año de `fcobro` como fallback.

### R1-R04 — Segmentación por estado del usuario: "No Localizado"
- **Dónde**: `carteravencida.php` líneas 94–110+
- **Regla**: Los usuarios con `u.estado=2` (No Localizados) aparecen en sección separada de la cartera. Se calculan subtotales independientes: `total_activa` vs `total_no_loc`.

---

<a name="r2-caja"></a>
## R2 — Reporte: Concentrado Corte de Caja

Archivo: `reportes/concentradocortecaja.php` + `concentradocortecajaresumen.php`

### R2-R01 — Columnas dinámicas desde catálogo `categorias`
- **Dónde**: `concentradocortecaja.php` (construcción dinámica)
- **Regla**: Las columnas del reporte se generan con `SELECT id, nombre, nombrecorto FROM categorias ORDER BY id`. Esto incluye automáticamente las categorías V2 (19–22) sin hardcode. Implementa Regla R04.

### R2-R02 — Conteo de folios únicos: array-set por contrato
- **Dónde**: `concentradocortecaja.php`
- **Regla**: `$folios_c[$cid][$folio] = true` (set, no array). El total al pie usa `COUNT(DISTINCT folio)`. Los `(n=X)` de ambos reportes (detalle y resumen) deben coincidir. Implementa Regla R05.

### R2-R03 — Excluye categorías de cartera (mismo filtro que R1)
- **Dónde**: Ambos reportes de caja
- **Regla**: Mismas exclusiones que R1-R01 para coherencia inter-reporte. Regla R02.

---

<a name="r3-deudores"></a>
## R3 — Reporte: Lista de Deudores / Morosos

Archivos: `reportes/listadeudores.php`, `reportes/reporte_morosos.php` (referenciado en Ground Truth)

### R3-R01 — Mismos filtros canónicos de cartera
- **Regla**: Aplica `categoria NOT IN (6, 19, 20, 21, 22)` y `c.estado != 4`. Coherencia con R1.

### R3-R02 — Sin filtro de año para categorías acumulativas
- **Regla**: La Cat 6 (Asamblea) es la única que no tiene filtro de año (`sin_anio`) — acumula deuda de cualquier año en la misma cartera. Implementa `sin_anio=[6]` de Regla R02.

---

<a name="r4-historial"></a>
## R4 — Reporte: Historial de Movimientos del Contrato

Archivo: `reportes/historial_mov_cto.php`

### R4-R01 — Muestra registros de `cambios` con segundos
- **Regla**: El campo `fecha` en `cambios` incluye `HH:MM:SS`. El reporte debe mostrar la hora completa para trazabilidad de operaciones dentro del mismo día (Regla RC-5).

---

<a name="r5-auditoria"></a>
## R5 — Reporte: Auditoría de Integridad de BD

Archivo: `admin/reportes/auditoria_integridad_bd.php`

### R5-R01 — Discriminador canónico de recargos: `categoria IN (16,17)`
- **Dónde**: `auditoria_integridad_bd.php` líneas 69 y 136 (corregidas 2026-04-15)
- **Regla**: Para detectar recargos huérfanos (sin cargo base pagado), el criterio es `categoria IN (cat_agua, cat_drenaje)`. **Nunca** `recargo=1` en `ligacargos`. Implementa Regla F05.

---

## 🔑 Resumen de Funciones Clave y sus Responsabilidades

| Función | Archivo | Propósito | Dispara |
|---|---|---|---|
| `cargaContrato()` | `contratos.php:40` | Carga ficha + inserta cargos automáticos faltantes | `calcula_recargos()` |
| `guardaContrato()` | `contratos.php:490` | Edita contrato + tomas existentes | `_sincronizaParidadFinanciera()` |
| `guardaNuevoContrato()` | `contratos.php:817` | Crea contrato + tomas iniciales | `_sincronizaParidadFinanciera()` |
| `cambiaestado()` | `contratos.php:254` | Cambia estado del ciclo de vida | `_sincronizaParidadFinanciera()` + `_amnistiaRecargosHistoricos()` |
| `cambiaEstadoConexion()` | `contratos.php:780` | Cambio rápido de conexión física | `_sincronizaParidadFinanciera()` |
| `_sincronizaParidadFinanciera()` | `contratos.php:657` | Motor paridad: sincroniza tomas ↔ cargos | `_sincronizaDeudaPendienteContrato()` |
| `_sincronizaDeudaPendienteContrato()` | `contratos.php:720` | Recalibra montos de anualidades pendientes | — |
| `_amnistiaRecargosHistoricos()` | `contratos.php:924` | C06: cancela recargos cat 16/17 de anio < actual | — |
| `_quitaCargoAnual()` | `contratos.php:647` | Cancela anualidad al desconectar | `sp_cancelar_cargo` |
| `aplicacargos()` | `cargos.php:357` | Aplica cargos manuales | `calcula_recargos()` |
| `pagacancelacargos()` | `cargos.php:262` | Paga o cancela cargos seleccionados | `sp_pagar_cargo` / `sp_cancelar_cargo` / `sp_sinc_asamblea_puntual` |
| `modificaCargo()` | `cargos.php:519` | Modifica catálogo + propaga masivamente | — |
| `calcula_recargos()` | `cargos.php:22` | Genera recargos moratorios | — |

---

*Generado: 2026-04-19 | Fuente: código PHP Host A (`/opt/lampp/htdocs/agua`) verificado contra BD Host C*

```

</details>

---

## Agent Response

### Thinking

**Analyzing Delinquent Portfolio Data**

I'm currently focused on "Cartera Vencida" data. I've pinpointed relevant information in `reglas-negocio-por-menu.md`, specifically sections related to the report `R1 — Reporte: Cartera Vencida` (lines 392-416). I am now extracting the data and rules, such as `R1-R01`: Categories excluded: `6, 19, 20, 21, 22`. I need to ensure the correct processing and filtering of categories.




### Actions

**Tool:** `view_file`
**File:** `carteravencida.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.423178568s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<xml version="1.0" encoding="utf-8">
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Cartera Vencida</title>
	</head>

	<body onload="print();">
		<style>
			body {
				margin-left: 40px;
				margin-top: 30px;
			}

			h1 {
				page-break-after: always;
				font-size: 1px;
			}

			table {
				border-right: solid 1px #a0a0a0;
				border-bottom: solid 1px #a0a0a0;
			}

			td {
				font-family: "times new roman";
				font-size: 10px;
				border-left: solid 1px #a0a0a0;
				border-top: solid 1px #a0a0a0;
				text-transform: uppercase;
			}

			th {
				font-family: "Times new roman";
				font-size: 12px;
				color: white;
				background: #404040;
				border-left: solid 1px #a0a0a0;
				border-top: solid 1px #a0a0a0;
				text-transform: uppercase;
			}
		</style>
		<?php
		header('Content-Type: text/html; charset=UTF-8');
		require_once "../config/Conexion.php";
		$y = new Conexion();
		$y->conectarBaseDatos();
		$anio = $_GET["anio"] ?? date('Y');

		// ANTES (v1): sin exclusión de categorías especiales — cat 6 (asamblea), 16/17 (recargos acumulativos)
		//   y 19-22 (conceptos únicos) inflaban la cartera con deuda que no es de cuotas anuales periódicas.
		//   Inconsistencia con concentradocortecaja.php que sí excluía esas categorías.
		// AHORA (v2): excluye las mismas categorías que concentradocortecaja.php para coherencia entre reportes.
		//   cat 6: multas asamblea (se sincronizan por usuario, no por contrato)
		//   cat 11, 16, 17: recargos normales y recargos de agua/drenaje SÍ se incluyen en la cartera
		//   cat 19-22: conceptos únicos (CB/PROP, MLT/DESP, CNT/NADO, CNC/FUGA) — no son cuotas periódicas
		$query = "SELECT l.numcontrato, UCASE(u.nombre) usuario, sum(l.monto) AS debe
		FROM vw_ligacargos_pendientes l
			JOIN contrato c ON l.numcontrato = c.numcontrato
			JOIN usuario u ON u.noconsecutivo = c.numusuario
		WHERE l.estado = 0
			AND c.estado != 4
			AND (u.estado IS NULL OR u.estado != 2)
			AND l.categoria NOT IN (6, 19, 20, 21, 22)
			AND (
				(l.anio <> 0 AND l.anio IS NOT NULL AND l.anio = $anio)
				OR
				((l.anio = 0 OR l.anio IS NULL) AND substring(l.fcobro, 1, 4) = '$anio')
			)
		GROUP BY l.numcontrato
		ORDER BY CAST(l.numcontrato AS SIGNED)";

		$res = $y->q($query);
		$mod = 0;

		$mes = array("1" => "enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre");
		$hoymes = date("m") + 0;

		$numerodecontratos = $y->num_rows($res);

		if ($numerodecontratos == 0)
			print "No existen contratos para el a&ntilde; requerido.";

		$paginas = ceil($numerodecontratos / 47);
		$numpag = 1;

		$total = 0;

		while ($row = $y->fetch_array($res)) {
			if (($mod % 47) == 0) {
				print "<table border=0 cellpadding=3 cellspacing=0>";
				print "<tr><th colspan=3><b>C A R T E R A &nbsp;&nbsp; V E N C I D A &nbsp;&nbsp; A &Ntilde O &nbsp;&nbsp; $anio";
				print "</b><br>  &nbsp;&nbsp; (" . $numerodecontratos . " registros)<br>-p&aacute;gina " . $numpag . " de " . $paginas . ", impresa el " . date("d") . " de " . $mes[$hoymes] . " de " . date("Y") . "-</th></tr>";
				print "<tr><td width=50 style='text-align: center'><b>CONTRATO</b></td><td width=270 style='text-align: center'><b>USUARIO</b></td><td width=50 style='text-align: center'><b>DEBE</b></td></tr>";
				$numpag++;
			}

			print "<tr><td style='text-align: center'>" . $row[0] . "</td><td>&nbsp;&nbsp;" . $row[1] . "</td><td style='text-align: right'>$ " . number_format($row[2], 2, '.', ',') . "</td></tr>";

			if ((($mod - 46) % 47) == 0) {
				print "</table>";
				print "<h1>&nbsp;</h1>";
			}
			$mod++;

			$total += $row[2];
		}

		print "</table>";
		print "<div style='margin-top: 20px; font-family: sans-serif; font-size: 11px; width: 350px; border: 1px solid #ccc; padding: 10px; background: #fafafa;'>";
		print "<b>TOTAL CARTERA VENCIDA $anio:</b><br><br>";
		print "<table border=0 width='100%' style='border:0;'>";
		print "<tr style='border-top: 1px solid #333;'><td style='border:0;'><b>GRAN TOTAL:</b></td><td style='border:0; text-align:right;'><b>$ " . number_format($total, 2, '.', ',') . "</b></td></tr>";
		print "</table>";
		print "</div>";
		print "<h1>&nbsp;</h1>";

		$y->free_result($res);
		$y->cerrarConexion();
		?>
	</body>

	</html>
```

</details>

---

## Agent Response

### Thinking

**Analyzing Pending Cargo Reports**

I'm now focusing on `carteravencida.php` and its use of `vw_ligacargos_pendientes`. This view seems promising, as it encompasses both active and historical data. I've noted the crucial `WHERE l.estado = 0` condition, which targets pending items, and the exclusion of SDF contracts via `AND c.estado != 4`. Further analysis is underway to understand additional filters.




### Actions

**Tool:** `view_file`
**File:** `listadeudores.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.819105283s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<xml version="1.0" encoding="utf-8">
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
	<html>

	<head>
		<title>Lista de usuarios con adeudos</title>
	</head>

	<body onload="print();">
		<style>
			body {
				margin-left: 40px;
				margin-top: 30px;
			}

			h1 {
				page-break-after: always;
				font-size: 1px;
			}

			table {
				border-right: solid 1px #a0a0a0;
				border-bottom: solid 1px #a0a0a0;
			}

			td {
				font-family: "times new roman";
				font-size: 10px;
				border-left: solid 1px #a0a0a0;
				border-top: solid 1px #a0a0a0;
				text-transform: uppercase;
			}

			th {
				font-family: "Times new roman";
				font-size: 12px;
				color: white;
				background: #404040;
				border-left: solid 1px #a0a0a0;
				border-top: solid 1px #a0a0a0;

			}
		</style>
		<?php
		require_once "../config/Conexion.php";
		$y = new Conexion();
		$y->conectarBaseDatos();

		// ANTES (v1): sin exclusión de categorías ni de contratos dados de baja definitiva (estado=4).
		//   — cat 6,16,17,19-22 inflaban el total con deuda no periódica.
		//   — contratos estado=4 (baja definitiva) aportaban $107,082 de deuda fantasma (validado vs Host B).
		//     En Host C el saneamiento los dejó en estado=-1 (invisible en vw_ligacargos_pendientes),
		//     pero sin el filtro explícito cualquier BD sin sanear los mostraría.
		// AHORA (v2): excluye cat 6,16,17,19-22 Y contratos estado=4 Y usuarios No Localizados (u.estado=2)
		//   — blindaje triple a nivel de código, independiente del estado de saneamiento de la BD.
		//   Reglas U01, R02, R06 (.agents/rules/02-reglas-negocio.md). Alineado con carteravencida.php y
		//   la tabla Impacto Financiero de Saneamientos (Saneamiento 1 y 5).
		$query = "SELECT c.numcontrato, u.nombre, c.domicilio, SUM(l.monto) AS paga
		           FROM vw_ligacargos_pendientes l
		           INNER JOIN contrato c ON l.numcontrato = c.numcontrato
		           LEFT JOIN usuario u ON c.numusuario = u.noconsecutivo
		           WHERE l.monto != 0
		             AND c.estado != 4
		             AND (u.estado IS NULL OR u.estado != 2)
		             AND l.categoria NOT IN (6, 19, 20, 21, 22)
		           GROUP BY c.numcontrato
		           ORDER BY paga DESC";

		$query2 = "SELECT SUM(l.monto)
		            FROM vw_ligacargos_pendientes l
		            INNER JOIN contrato c ON l.numcontrato = c.numcontrato
		            LEFT JOIN usuario u ON c.numusuario = u.noconsecutivo
		            WHERE l.monto != 0
		              AND c.estado != 4
		              AND (u.estado IS NULL OR u.estado != 2)
		              AND l.categoria NOT IN (6, 19, 20, 21, 22)";
		
		$res = $y->q($query);
		$totalregistros = ($res) ? $y->num_rows($res) : 0;
		
		$res2 = $y->q($query2);
		$total = ($res2) ? $y->fetch_array($res2) : [0 => 0];
		if($res2) $y->free_result($res2);

		$mod = 0;

		$mes = array("1" => "enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre");
		$hoymes = date("m") + 0;

		$pagina = 1;
		$paginas = ceil($totalregistros / 42);

		$subt = 0;
		$reg = 0;

		while ($row = $y->fetch_array($res)) {
			$reg++;
			if (($mod % 42) == 0) {
				print "<table border=0 cellpadding=3 cellspacing=0>";
				print "<tr><th colspan=4><b>R E L A C I &Oacute; N &nbsp;&nbsp; D E &nbsp;&nbsp; U S U A R I O S &nbsp; C O N &nbsp;&nbsp; D E U D A S</b><br>-Total de $" . number_format($total[0], 0, '.', ',') . ". P&aacute;gina " . $pagina . " de " . $paginas . ", impresa el " . date("d") . " de " . $mes[$hoymes] . " de " . date("Y") . "-</th></tr>";
				print "<tr><td width=30><b>No. Cto.</b></td><td width=310><b>NOMBRE</b></td><td width=310><b>DOMICILIO</b></td><td width=50><b>MONTO</b></td></tr>";
				$pagina++;
			}
			print "<tr><td align=right valign=top>" . $row[0] . "</td><td>" . htmlentities($row[1]) . "</td><td>" . substr(str_replace("\n", " ", htmlentities($row[2])), 0, 45) . "</td><td align=right>$" . number_format($row[3], 0, '.', ',') . "</td></tr>";
			$subt += $row[3];
			if ((($mod - 41) % 42) == 0 || $reg == $totalregistros) {
				print "<tr><td align=right colspan=3 valign=top><b>S U B T O T A L </b></td><td align=right><b>$" . number_format($subt, 0, '.', ',') . "</b></td></tr>";
				$subt = 0;
				print "</table>";
				print "<h1>&nbsp;</h1>";
			}
			$mod++;
		}
		$y->free_result($res);
		$y->cerrarConexion();
		?>
	</body>

	</html>
```

</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 219bd295-172b-4c03-a3df-83f565d88963: Validating Full-Pipeline-Sync Integrity
- Created: 2026-05-09T05:39:34Z
- Last modified: 2026-05-10T22:20:43Z

### USER Objective:
Hardening Agua V2 Production Resilience

Objective: Finalize the migration and stabilization of the Agua V2 webapp in the Host C production environment.
Goals:
1. Implement autonomous UPS fail-safe monitoring with non-blocking shutdown procedures.
2. Automate background service startup sequences and centralized log management for the Kiosko-mode environment.
3. Redesign the Annual Consolidation (Split) interface to provide a pro-active, error-proof administrative dashboard.
4. Validate system resilience through simulated power failure testing and ensure audit integrity across all server operations.

## Conversation 65980880-a19d-4db2-82b2-19454270eff9: Validating Database Connectivity
- Created: 2026-05-08T04:39:13Z
- Last modified: 2026-05-09T05:27:52Z

### USER Objective:
Testing UPS Infrastructure Scripts

Objective: Validate the operational safety of the Agua V2 server's power management and deployment automation in Host C.

Goals:
1. Develop a controlled testing methodology to simulate UPS power failure scenarios without requiring actual hardware power-offs.
2. Verify the end-to-end integration of monitoring, alert, and shutdown scripts (`monitor-ups.ps1`, `shutdown-server.ps1`, and `stop-webapps.ps1`).
3. Ensure the system demonstrates graceful shutdown, robust database backup generation, and automated startup recovery.
4. Execute staged testing scenarios to confirm that system integrity is maintained during power-loss transitions.

## Conversation 4261727a-9250-4b18-a666-5b474f1c4a4c: Identifying Broken Ubuntu Packages
- Created: 2026-04-28T18:06:17Z
- Last modified: 2026-05-09T05:19:39Z

### USER Objective:
System Maintenance And Cleanup

Objective: Systematically clean and optimize the Ubuntu 22 environment to eliminate broken dependencies, stale configuration files, and unused resources.

Goals:
1. Purge residual 'rc' packages and outdated kernel components to reclaim system storage and stabilize package management.
2. Identify and prune invalid '.desktop' shortcut entries that point to non-existent binaries.
3. Validate the integrity of the critical Whisper-cpp/Voxd/CUDA stack to ensure zero-impact maintenance.
4. Synchronize and secure the 'ga-cl-ia' documentation repository through automated git recovery and sync protocols.
5. Enhance the existing cleanup script to include automated identification of newer broken entries and stale snap revisions.

## Conversation 3d0ec69e-8bdd-40fe-a2ee-0c7e71a92060: Migrating Disk Usage Ubuntu
- Created: 2026-05-06T03:39:39Z
- Last modified: 2026-05-09T03:55:59Z

### USER Objective:
Optimizing Ubuntu Disk Usage

Main Objective: Reclaim storage space and improve system performance by auditing and removing redundant software, large temporary files, and obsolete developer tools.

Goals:
1. Reorganize VirtualBox virtual machine storage to utilize high-speed NVMe partitions.
2. Perform a comprehensive purge of legacy Oracle Middleware, .NET SDKs, Liquibase instances, and their associated system environment variables.
3. Consolidate and clean up redundant tools like OnlyOffice and WebLogic Remote Console.
4. Audit and sanitize the user's `~/.bashrc` profile to remove references to deprecated software paths, ensuring a clean and efficient shell environment.

## Conversation f056b1a8-79e6-4c2a-95f5-54a33ea06e98: Explaining Financial Reporting Logic
- Created: 2026-05-07T23:30:40Z
- Last modified: 2026-05-09T03:35:54Z

### USER Objective:
Blindando Categorización Agua V2

Objective: Eradicate Category Zero errors and ensure data integrity in the Agua V2 Host C environment by hardening the application and migration pipeline.

Goals:
1. Implement Poka-Yoke guards in PHP (`cargos.php`) to force correct category assignment (19-22) for administrative charges, overriding user input errors.
2. Automate the sanitization of the master `cargos` catalog within the `10_pipeline_saneamiento.sql` pipeline to prevent historical category corruption post-sync.
3. Validate that all administrative categories (Change of Owner, Fines, Constancias) are correctly mapped and immune to legacy `0` or `1` artifacts.
4. Establish a fail-safe synchronization pattern that ensures all new transactions originate with production-ready metadata, reducing reliance on manual post-hoc SQL patches.

## Conversation bcf279c3-7e58-4790-9c85-a35ebec1c331: Automating Windows Deployment Scripts
- Created: 2026-05-06T00:58:39Z
- Last modified: 2026-05-09T00:27:19Z

### USER Objective:
Automating Agua V2 Windows Deployment

Main Objective: Complete the Agua V2 appliance hardening for Windows 10 Host C to ensure a fully autonomous, production-ready server environment.

Goals:
1. Finalize storage-agnostic infrastructure through centralized configuration ($TargetDrive).
2. Refactor bash deployment scripts to prepare a clean, directory-structured 'agua' webapp package for seamless extraction.
3. Optimize the Windows environment into a Kiosko appliance with automated startup/shutdown and non-intrusive UI/UX.
4. Centralize all deployment assets and operational documentation for the production release (Pase a Producción).
5. Ensure robust system security and stability through automated GPO integration, UPS monitoring, and Chrome Kiosko enforcement.

## Conversation 70b5094f-e7ed-44ff-b37e-6634cd67ee3f: Auditing Git Sync Script
- Created: 2026-05-06T04:38:01Z
- Last modified: 2026-05-06T04:59:45Z

### USER Objective:
Auditing Git Sync Script

Main Objective:
Analyze the safety and integrity of the `sync with link de chatledger-entre main y rama git.sh` script on the Ubuntu 22.04 host to ensure it functions correctly without causing system corruption or repository data loss.

Goals:
1. Verify the script's logic regarding file migration, symbolic link creation, and `.gitignore` management to prevent accidental data deletion.
2. Evaluate potential race conditions or error states if the script is re-run (idempotency checks).
3. Ensure the script correctly handles directory transitions between the local repository and the external `STORAGE_DIR` without breaking the application's reliance on `.chatledger`.
4. Assess the risk of Git state inconsistencies (e.g., cached vs. ignored files) during the synchronization process.

## Conversation 25b74c07-23d4-48e6-b039-435b579b0cf6: Sourcing Water Delivery System Repositories
- Created: 2026-05-05T21:11:02Z
- Last modified: 2026-05-05T21:12:16Z

### USER Objective:
Sourcing Water Delivery System Repositories

Main Objective:
Identify and source existing, publicly available repository examples of water delivery/distribution management systems to serve as a baseline for a PHP/PostgreSQL POC.

Goals:
1. Locate repositories containing full-scope management features including inventory (garrafones), logistics (routes/schedules), vehicle tracking, and personnel management.
2. Evaluate these repositories as data and architectural inputs to facilitate the migration of the user's current "Agua" webapp system into a modernized PHP/PostgreSQL environment.
3. Provide direct links to relevant projects to enable the user to conduct an analysis of business logic and schema structures for the upcoming migration.

## Conversation 89bc16ba-c2d5-462e-9435-d8421190f457: Kiosk Mode Browser Automation
- Created: 2026-04-30T15:35:02Z
- Last modified: 2026-05-01T05:21:04Z

### USER Objective:
Kiosk Mode Browser Automation

Main Objective:
Automate the deployment of the "Agua" web application in a "Kiosk" or "App" mode using Google Chrome.

Goals:
1. Create a PowerShell script (`.ps1`) that launches the specific URL `http://localhost/agua/login/index.php` in a stripped-down Chrome window without navigation bars, tabs, or address bars.
2. Ensure the resulting script file is placed on the user's desktop for quick, one-click access.
3. Configure the browser flags (specifically `--app` or `--kiosk`) to ensure a distraction-free, application-like experience suitable for the local web deployment.

## Conversation 4207a55e-b96d-41a1-958d-feb2ced23088: Automating Agua Webapp Deployment
- Created: 2026-04-30T05:31:52Z
- Last modified: 2026-04-30T07:00:25Z

### USER Objective:
Automating Agua Webapp Deployment

Main Objective: Create a robust Bash automation script to sanitize the Agua V2 application directory for secure deployment to the production Apache Host C.

Goals:
1. Develop a cleanup script that removes sensitive development metadata (.git, logs, temporary backups, and IDE/OS artifacts) without disrupting application functionality.
2. Implement a safe execution workflow, preferably using rsync or dry-run validation, to ensure that only production-ready files are deployed.
3. Preserve essential application directory structures (such as upload or cache folders) while clearing their contents to maintain environment parity.
4. Enhance deployment reliability by ensuring the finalized production directory excludes redundant files that could pose security risks or performance overhead on the web server.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 11 May 2026, 8:40 am

---

## Agent Response

### Thinking

**Analyzing Debtors Report**

I've been examining `listadeudores.php` and noted some key aspects. It lacks a year filter, presenting combined debt across all years per contract. Also, it consistently omits categories 6, 19, 20, 21, and 22, and it excludes records where `estado` equals 4.




### Actions

**Tool:** `view_file`
**File:** `concentradocortecaja.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.001069821s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<xml version="1.0" encoding="utf-8">
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

	<head>
		<meta charset="UTF-8">
		<title>Corte de Caja</title>
	</head>

	<body onload="print();">
		<style>
			@page {
				size: letter landscape;
				margin: 0.5cm;
			}
			
			body {
				margin: 0;
				padding: 0;
			}

			h1 {
				page-break-after: always;
				font-size: 1px;
			}

			table {
				border-right: solid 1px #a0a0a0;
				border-bottom: solid 1px #a0a0a0;
				border-collapse: collapse;
				width: 100%;
			}

			td {
				font-family: Arial, sans-serif;
				font-size: 8px; /* Reducido para ajuste a hoja carta */
				border-left: solid 1px #a0a0a0;
				border-top: solid 1px #a0a0a0;
				text-transform: uppercase;
				padding: 1px;
			}

			.money-cell {
				width: 40px; /* Reducido de 42px para permitir columna adicional */
				text-align: right;
				vertical-align: middle;
			}

			th {
				font-family: Arial, sans-serif;
				font-size: 8px;
				color: white;
				background: #404040;
				border-left: solid 1px #a0a0a0;
				border-top: solid 1px #a0a0a0;
				text-transform: uppercase;
				padding: 5px 2px;
			}

			/* Mejora de visibilidad de grupos */
			.group-start {
				border-left: 2px solid #000 !important;
			}

			.glossary-table {
				width: 50%;
				margin-top: 20px;
				border: 1px solid #000;
				font-size: 9px;
			}
			.glossary-table th {
				background: #eee;
				color: #000;
				border: 1px solid #000;
			}
			.glossary-table td {
				border: 1px solid #ccc;
				text-transform: none;
				padding: 2px 5px;
			}
		</style>
		<center>
			<?php
			require_once "../config/Conexion.php";
			include "../includes/numeros.php";
			$y = new Conexion();
			$y->conectarBaseDatos();

			$inicio = $_GET["inicio"];
			$fin = $_GET["fin"];

			// Validar formato de fecha (soporta DD/MM/YYYY y YYYY-MM-DD)
			if (strpos($inicio, '/') !== false) {
				$a = explode('/', $inicio);
				$dia_i = $a[0];
				$mes_i = $a[1];
				$anio_i = $a[2];
			} else {
				$a = explode('-', $inicio);
				$anio_i = $a[0];
				$mes_i = $a[1];
				$dia_i = $a[2];
			}

			if (strpos($fin, '/') !== false) {
				$a = explode('/', $fin);
				$dia_f = $a[0];
				$mes_f = $a[1];
				$anio_f = $a[2];
			} else {
				$a = explode('-', $fin);
				$anio_f = $a[0];
				$mes_f = $a[1];
				$dia_f = $a[2];
			}

			$inicio_q = $anio_i . "/" . $mes_i . "/" . $dia_i;
			$fin_q = $anio_f . "/" . $mes_f . "/" . $dia_f;

			// F3: anio_ref — año del ciclo de cobro. Cuando el período cruza cambio de año
			// (ej. 29/09/2025–04/01/2026) el año del fin (2026) no corresponde al ciclo:
			// todos los cargos son anio=2025. Se usa anio_i como referencia, con override
			// opcional via ?anio_corte=YYYY para casos especiales.
			if (isset($_GET['anio_corte']) && intval($_GET['anio_corte']) > 2000) {
				$anio_ref = intval($_GET['anio_corte']);
			} else {
				$anio_ref = intval($anio_i);
				if ($anio_ref == 0) $anio_ref = intval(date('Y'));
			}

			// Cargar catálogo completo con agrupación
			// grupos: A=Cuotas anuales, B=Servicios, C=Sanciones, D=Recargos, E=General
			$cat_map = [];
			$res_cat = $y->q("SELECT id, nombre, nombrecorto FROM categorias ORDER BY id");
			while ($row_c = $y->fetch_array($res_cat)) {
				$cid = intval($row_c[0]);
				$cat_map[$cid] = ['nombre' => $row_c[1], 'corto' => $row_c[2]];
			}
			$y->free_result($res_cat);

			// F1: cat 6 (FALTAS) es la única sin filtro de año — acumulativa por diseño.
			// cats 16/17 (REC/AGUA, REC/DREN) usan anio=anio_ref; sus rezagos van a cartera (F2).
			$sin_anio = [6];
			// F2: cats 16 y 17 salen de excluir_cartera — sus rezagos (anio < anio_ref) van a R.CART.
			$excluir_cartera = [6, 19, 20, 21, 22];
			$excluir_cartera_sql = implode(',', $excluir_cartera);

			// Grupos para UI — orden visual del reporte
			$grupos = [
				'A' => ['label' => 'CUOTAS ANUALES',  'ids' => [2, 3, 10, 4]],
				'B' => ['label' => 'SERVICIOS',        'ids' => [8, 18, 14, 15, 9, 5, 7, 1, 13, 19, 21]],
				'C' => ['label' => 'SANCIONES',        'ids' => [20, 22, 12]],
				'D' => ['label' => 'RECARGOS',         'ids' => [6, 11, 16, 17]],
			];

			// Construir CASE dinámico para cada categoría del catálogo
			$cases = '';
			foreach ($cat_map as $cid => $cat) {
				if (in_array($cid, $sin_anio)) {
					$cases .= "SUM(CASE WHEN P.categoria=$cid AND P.estado=1 THEN P.monto ELSE 0 END) AS c$cid,\n";
				} else {
					$cases .= "SUM(CASE WHEN P.categoria=$cid AND P.anio=$anio_ref AND P.estado=1 THEN P.monto ELSE 0 END) AS c$cid,\n";
				}
			}

			$query = "SELECT P.numcontrato AS numcontrato, P.folio AS folio, P.fpago AS fpago,
			$cases
			SUM(CASE WHEN P.anio < $anio_ref AND u.estado != 2 AND P.categoria NOT IN ($excluir_cartera_sql) THEN P.monto ELSE 0 END) AS cartera
			FROM vw_ligacargos_all P
			JOIN contrato c ON P.numcontrato = c.numcontrato
			JOIN usuario u ON c.numusuario = u.noconsecutivo
			WHERE folio <> 0 AND P.estado = 1 AND fpago BETWEEN '$inicio_q 00:00:00' AND '$fin_q 23:59:59'
			GROUP BY P.numcontrato, P.folio";

			$folios = $y->q($query);
			$mod = 0;

			// num_rows = filas del GROUP BY (numcontrato,folio) — usado para paginación
			$numfolios = $y->num_rows($folios);
			$paginas = ceil($numfolios / 37);

			// Folios distintos reales para la leyenda al pie (un folio puede cubrir varios contratos)
			$res_nf = $y->q("SELECT COUNT(DISTINCT folio) AS n FROM vw_ligacargos_all P
				JOIN contrato c ON P.numcontrato = c.numcontrato
				JOIN usuario u ON c.numusuario = u.noconsecutivo
				WHERE folio <> 0 AND P.estado = 1 AND fpago BETWEEN '$inicio_q 00:00:00' AND '$fin_q 23:59:59'");
			list($numfolios_distintos) = $y->fetch_array($res_nf);
			$y->free_result($res_nf);
			$numpag = 0;

			// Acumuladores dinámicos por categoría
			$total_c    = [];
			$cnt_c      = [];   // conteo de folios DISTINTOS por categoría (para congruencia con resumen)
			$folios_c   = [];   // set de folios vistos por categoría
			foreach ($cat_map as $cid => $cat) {
				$total_c[$cid]  = 0;
				$cnt_c[$cid]    = 0;
				$folios_c[$cid] = [];
			}
			$total_cartera = 0; $total_todo = 0;
			$cnt_cartera   = 0;
			$folios_cartera = [];

			$last_numcontrato = '';
			$bg_color = '#ffffff';

			while ($row_f = $y->fetch_array($folios)) {
				$numcontrato    = $row_f['numcontrato'];
				$folio          = $row_f['folio'];
				$fpago          = $row_f['fpago'];
				$cartera        = floatval($row_f['cartera']);
				$cv = [];
				foreach ($cat_map as $cid => $cat)
					$cv[$cid] = floatval($row_f['c' . $cid]);
				if (($mod % 37) == 0) {
					print "<h2><b>CONCENTRADO PARA CORTE DE CAJA DEL " . cambia_fecha($dia_i, $mes_i, $anio_i) . " AL " . cambia_fecha($dia_f, $mes_f, $anio_f) . "</b></h2>";
					print "<table border=0 cellpadding=3 cellspacing=0>";

					// Fila 1: etiquetas de grupo
					print "<tr>";
					print "<th colspan='3' style='padding:5px;'>&nbsp;</th>";
					foreach ($grupos as $grupo) {
						$span = count($grupo['ids']);
						print "<th colspan='$span' style='padding:3px 2px; background:#606060; border-bottom:1px solid #888;'>" . $grupo['label'] . "</th>";
					}
					print "<th colspan='1' style='padding:3px 2px; background:#606060;'>CARTERA</th>";
					print "<th style='padding:3px 2px; background:#606060;'>&nbsp;</th>";
					print "</tr>";

					// Fila 2: columnas individuales
					print "<tr>";
					print "<th style='padding:5px;'>CTO</th>";
					print "<th style='padding:5px;'>FOLIO</th>";
					print "<th style='padding:5px;'>FECHA</th>";
					foreach ($grupos as $g_key => $grupo) {
						foreach ($grupo['ids'] as $idx => $cid) {
							if (isset($cat_map[$cid])) {
								$class = ($idx === 0) ? " class='group-start'" : "";
								print "<th style='padding:5px 2px;'$class>" . $cat_map[$cid]['corto'] . "</th>";
							}
						}
					}
					print "<th style='padding:5px;' class='group-start'>R.CART.</th>";
					print "<th style='padding:5px;' class='group-start'>TOTAL</th>";
					print "</tr>";
					$numpag++;
				}

				$f = explode(' ', $fpago);
				$f = explode('-', $f[0]);
				$fpago = $f[2] . "/" . $f[1] . "/" . $f[0];

				if ($numcontrato != $last_numcontrato) {
					$bg_color = ($bg_color == '#ffffff') ? '#eeeeee' : '#ffffff';
					$last_numcontrato = $numcontrato;
				}

				print "<tr style='background-color:$bg_color;'>";
				print "<td width=35 style='text-align:center;'><b>$numcontrato</b></td>";
				print "<td width=35 style='text-align:center;'><a href='recibo.php?folio=$folio' target='_blank' style='color:#0E4F8E;text-decoration:none;font-weight:bold;'>$folio</a></td>";
				print "<td width=45 style='text-align:center;'><b>$fpago</b></td>";
				foreach ($grupos as $g_key => $grupo) {
					foreach ($grupo['ids'] as $idx => $cid) {
						if (isset($cat_map[$cid])) {
							$class = "class='money-cell" . ($idx === 0 ? " group-start" : "") . "'";
							print "<td $class>" . ($cv[$cid] == 0 ? "" : money_format_no_sign($cv[$cid])) . "</td>";
						}
					}
				}
				print "<td class='money-cell group-start'>" . ($cartera == 0 ? "" : money_format_no_sign($cartera)) . "</td>";

				// Total fila = suma de todas las categorías + cartera (C.N.L. excluido)
				$total_fila = $cartera;
				foreach ($cat_map as $cid => $cat)
					$total_fila += $cv[$cid];
				print "<td class='money-cell'><b>" . money_format_no_sign($total_fila) . "</b></td>";
				print "</tr>";

				// Acumuladores — folios distintos por categoría (un folio puede aparecer en
				// múltiples filas si cubre varios contratos; contamos el folio solo una vez)
				foreach ($cat_map as $cid => $cat) {
					$total_c[$cid] += $cv[$cid];
					if ($cv[$cid] > 0) $folios_c[$cid][$folio] = true;
				}
				$total_cartera += $cartera;
				if ($cartera > 0) $folios_cartera[$folio] = true;
				$total_todo += $total_fila;

				if ((($mod - 36) % 37) == 0) {
					print "</table>";
					print "<span style='float:right; padding-right:110px;'>P&aacute;g. " . $numpag . " de " . $paginas . "</span>";
					print "<span style='float:left; padding-left:100px;'>Fecha impresi&oacute;n: " . date("j-m-Y") . "</span>";
					print "<h1>&nbsp;</h1><br/>";
				}
				$mod++;
			}

			// Fila separadora
			$num_cols = 3 + array_sum(array_map(function($g){ return count($g['ids']); }, $grupos)) + 3;
			print "<tr><td colspan='$num_cols' style='text-align:center;'><b>&nbsp;</b></td></tr>";

			// Fila TOTALES
			print "<tr>";
			print "<td colspan='3' style='text-align:center;'><b>TOTALES</b></td>";
			foreach ($grupos as $g_key => $grupo) {
				foreach ($grupo['ids'] as $idx => $cid) {
					if (isset($cat_map[$cid])) {
						$class = "class='money-cell" . ($idx === 0 ? " group-start" : "") . "'";
						print "<td $class><b>" . money_format_no_sign($total_c[$cid]) . "</b></td>";
					}
				}
			}
			print "<td class='money-cell group-start'><b>" . money_format_no_sign($total_cartera) . "</b></td>";
			// Indicador de cuadre: suma horizontal de todas las columnas visibles debe == $total_todo
			$suma_columnas = $total_cartera;
			foreach ($cat_map as $cid => $cat) $suma_columnas += $total_c[$cid];
			$diferencia = round($total_todo - $suma_columnas, 2);
			if ($diferencia != 0) {
				$total_style = "background:#ff4444; color:#fff;";
				$total_label = money_format_no_sign($total_todo) . " <span style='font-size:7px;'>&#9888; DESCUADRE " . number_format(abs($diferencia),2,'.',',') . "</span>";
			} else {
				$total_style = "";
				$total_label = money_format_no_sign($total_todo);
			}
			print "<td class='money-cell group-start' style='$total_style'><b>$total_label</b></td>";
			print "</tr>";

			// Derivar conteos finales de folios distintos desde los sets acumulados
			foreach ($cat_map as $cid => $cat) $cnt_c[$cid] = count($folios_c[$cid]);
			$cnt_cartera = count($folios_cartera);

			// Fila CONTADORES
			print "<tr>";
			print "<td colspan='3' style='text-align:center; font-size:8px;'><b>(# FOLIOS)</b></td>";
			foreach ($grupos as $g_key => $grupo) {
				foreach ($grupo['ids'] as $idx => $cid) {
					if (isset($cat_map[$cid])) {
						$class = "class='money-cell" . ($idx === 0 ? " group-start" : "") . "'";
						print "<td $class style='text-align:center; font-size:8px;'>(" . $cnt_c[$cid] . ")</td>";
					}
				}
			}
			print "<td class='money-cell group-start' style='text-align:center; font-size:8px;'>($cnt_cartera)</td>";
			print "<td class='money-cell group-start'></td>";
			print "</tr>";

			print "</table>";
			print "<h3 style='padding-left:100px; float:left;'>Recibos del Per&iacute;odo: " . $numfolios_distintos . "</h3>";
			$total_letras = convertir_a_letras($total_todo);
			$centavos = round(($total_todo - floor($total_todo)) * 100);
			print "<h3 style='float:right; padding-right: 100px; white-space:nowrap;'><b>TOTAL: " . money_format1($total_todo) . " &nbsp; <span style='font-size: 10px; font-weight: normal;'>(" . strtoupper($total_letras) . " PESOS " . sprintf("%02d", $centavos) . "/100 M.N.)</span></b></h3><br><br><br><br>";
			print "<span style='float:right; padding-right:110px;'>P&aacute;g. " . $numpag . " de " . $paginas . "</span>";

			// GLOSARIO DE CONCEPTOS Y NOTAS
			print "<br clear='all'/><br/>";
			print "<table class='glossary-table' align='left'>";
			print "<tr><th colspan='2'>GLOSARIO DE CONCEPTOS (Categor&iacute;as)</th></tr>";
			$etiquetas = [
				2  => 'COBRO DE AGUA POTABLE',
				3  => 'COBRO DE DRENAJE',
				16 => 'COBRO DE RECARGOS DE AGUA',
				17 => 'COBRO DE RECARGOS DE DRENAJE',
				8  => 'COBRO POR CONTRATOS NUEVOS (AGUA)',
				18 => 'COBRO POR CONTRATOS NUEVOS (DRENAJE)',
				7  => 'COBRO POR METROS LINEALES',
				6  => 'COBRO POR FALTAS DE ASAMBLEA',
				14 => 'COBRO POR RECONEXI&Oacute;N DE SERVICIO',
				15 => 'COBRO POR CONEXIONES',
				13 => 'COBRO POR CANCELACI&Oacute;N DE SERVICIO',
				9  => 'COBRO POR REPOSICI&Oacute;N DE CREDENCIAL',
				19 => 'COBRO POR CAMBIO DE PROPIETARIO',
				20 => 'MULTA POR DESPERDICIO DE AGUA',
				21 => 'EXPEDICI&Oacute;N DE CONSTANCIA DE NO ADEUDO',
				22 => 'REPARACI&Oacute;N DE FUGAS (EXCAVACI&Oacute;N Y CANCEL.)',
				12 => 'COBRO POR SANCIONES',
				5  => 'COBRO POR REPARACIONES',
				10 => 'COBRO POR COOPERACIONES',
				11 => 'COBRO DE RECARGOS NORMALES',
				1  => 'COBRO POR OTROS CONCEPTOS (GENERAL)',
				4  => 'COBRO POR CUOTAS ESPECIALES',
			];
			foreach ($cat_map as $cid => $cat) {
				$nombre_homologado = isset($etiquetas[$cid]) ? $etiquetas[$cid] : $cat['nombre'];
				print "<tr><td width='80'><b>" . $cat['corto'] . "</b></td><td>" . $nombre_homologado . "</td></tr>";
			}
			print "<tr><td><b>R.CART.</b></td><td>RECUPERACI&Oacute;N DE CARTERA VENCIDA (A&ntilde;os anteriores a $anio_ref)</td></tr>";
			print "<tr><td><b>C.N.L.</b></td><td>CARTERA NO LOCALIZADA (Cobros de cartera de a&ntilde;os anteriores de usuarios en Estado 2: NO LOCALIZADO. Por regla de negocio, el sistema dispara Suspensi&oacute;n Definitiva en los contratos de estos usuarios. Informativo: no contabiliza en el TOTAL.)</td></tr>";
			print "</table>";

			$y->free_result($folios);
			$y->cerrarConexion();

			function mes_nombre($mes)
			{
				$meses = array("ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO", "JUNIO", "JULIO", "AGOSTO", "SEPTIEMBRE", "OCTUBRE", "NOVIEMBRE", "DICIEMBRE");
				return $meses[$mes - 1];
			}

			function cambia_fecha($dia, $mes, $anio)
			{
				return $dia . " DE " . mes_nombre($mes) . " DE " . $anio;
			}

			function money_format1($value)
			{
				return "$ " . number_format($value, 2, ".", ",");
			}

			function money_format_no_sign($value)
			{
				return "<div style='text-align:right;'>" . number_format($value, 2, ".", ",") . "</div>";
			}
			?>
		</center>
	</body>

	</html>
```

</details>

---

## Agent Response

### Thinking

**Analyzing Cartera Calculation**

I'm now zeroing in on the cartera calculation within `concentradocortecaja.php`. Specifically, I'm examining how the `anio_ref` and `anio_i` variables interplay. I'm focusing on line 167 where the sum of specific cases is calculated based on the year, status, and category of each payment. The logic appears crucial to the overall cartera calculation, so I'm dissecting the conditional statements.




### Actions

**Tool:** `view_file`
**File:** `concentradocortecajaresumen.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.059636426s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<xml version="1.0" encoding="UTF-8">
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
	<html>

	<head>
		<title>Corte de Caja Resumen</title>
	</head>

	<body onload="print()">
		<style>
			@page {
				size: letter portrait;
				margin: 1cm;
			}

			body {
				margin: 0;
				padding: 0;
			}

			b,
			span {
				padding-top: 0px;
				padding-bottom: 0px;
				margin-top: 0px;
				margin-bottom: 0px;
			}

			h1 {
				page-break-after: always;
				font-size: 1px;
			}

			table {
				border-right: solid 1px #a0a0a0;
				border-bottom: solid 1px #a0a0a0;
				border-collapse: collapse;
				width: 80%;
				margin: auto;
			}

			td {
				font-family: Arial, sans-serif;
				font-size: 10px;
				border-left: solid 1px #a0a0a0;
				border-top: solid 1px #a0a0a0;
				text-transform: uppercase;
				padding: 3px;
				vertical-align: middle;
			}

			td:last-child {
				font-family: "times new roman";
				font-size: 9px;
				border-right: solid 1px black;
				border-top: solid 1px black;
				text-transform: uppercase;
				padding-top: 0px;
				padding-bottom: 2px;
				padding-left: 2px;
				padding-right: 2px;
				margin: 0px;
				vertical-align: middle;
			}

			th {
				font-family: "Times new roman";
				font-size: 12px;
				color: white;
				background: #404040;
				border-left: solid 1px #a0a0a0;
				border-top: solid 1px #a0a0a0;
				text-transform: uppercase;
			}

			td b,
			td span {
				padding-top: 0px;
				padding-bottom: 0px;
				margin: 0px;
				vertical-align: middle;
			}

			.tablefirmantes {
				border: 0px;
			}

			.tablefirmantes tr td {
				border: 0px;
			}
		</style>
		<center>
			<?php
			header('Content-Type: text/html; charset=utf-8');
			require_once "../config/Conexion.php";
			$y = new Conexion();
			$y->conectarBaseDatos();
			$inicio = $_GET["inicio"];
			$fin = $_GET["fin"];
			$existencia_anterior = $_GET["existencia_anterior"];

			// Validar formato de fecha (soporta DD/MM/YYYY y YYYY-MM-DD)
			if (strpos($inicio, '/') !== false) {
				$a = explode('/', $inicio);
				$dia_i = $a[0];
				$mes_i = $a[1];
				$anio_i = $a[2];
			} else {
				$a = explode('-', $inicio);
				$anio_i = isset($a[0]) ? $a[0] : date('Y');
				$mes_i = isset($a[1]) ? $a[1] : '01';
				$dia_i = isset($a[2]) ? $a[2] : '01';
			}

			if (strpos($fin, '/') !== false) {
				$a = explode('/', $fin);
				$dia_f = $a[0];
				$mes_f = $a[1];
				$anio_f = $a[2];
			} else {
				$a = explode('-', $fin);
				$anio_f = isset($a[0]) ? $a[0] : date('Y');
				$mes_f = isset($a[1]) ? $a[1] : '12';
				$dia_f = isset($a[2]) ? $a[2] : '31';
			}

			// Manual override for analysis year (useful for cycle closures)
			// We keep $anio_f for the date range, but use $anio_ref for the CASE logic.
			if (isset($_GET['anio_corte']) && intval($_GET['anio_corte']) > 2000) {
				$anio_ref = intval($_GET['anio_corte']);
				$overridden = true;
			} else {
				$anio_ref = intval($anio_i);
				if ($anio_ref == 0) $anio_ref = intval(date('Y'));
				$overridden = false;
			}

			$inicio_q = $anio_i . "-" . $mes_i . "-" . $dia_i;
			$fin_q = $anio_f . "-" . $mes_f . "-" . $dia_f;

			// ANTES (v1): Conceptos especiales identificados por leyenda LIKE sobre categorías genéricas (1,2,4,5,12,13).
			//   Problema en Host C: cats 19-22 ya están reclasificadas en el catálogo → los LIKE no matchean
			//   → CB/PROP, MLT/DESP, CNT/NADO, CNC/FUGA caían en columnas genéricas c1/c2/c4 sin su propia línea.
			//   Además cat 6 y 16/17 filtraban por anio=$anio_ref, incorrecto (son acumulativos sin año fijo).
			//   La cartera excluía por LIKE en lugar de por categoria.
			//
			// AHORA (v2): Conceptos especiales identificados por categoria (19,20,21,22) desde el catálogo.
			//   cat 11, 16, 17 (RECARGOS) NO se excluyen de cartera → recargos de años anteriores van a R.CART.

			// F1: cat 6 (FALTAS) es la única sin filtro de año — acumulativa por diseño.
			// cats 16/17 (REC/AGUA, REC/DREN) usan anio=anio_ref; sus rezagos van a cartera (F2).
			$sin_anio = [6];
			// F2: cats 16 y 17 NO están en excluir_cartera — sus rezagos (anio < anio_ref) van a R.CART.
			$excluir_cartera = [6, 19, 20, 21, 22];
			$excluir_cartera_sql = implode(',', $excluir_cartera);

			// Cargar catálogo completo de categorías
			$cat_map = [];
			$res_cat = $y->q("SELECT id, nombre, nombrecorto FROM categorias ORDER BY id");
			while ($row_c = $y->fetch_array($res_cat)) {
				$cid = intval($row_c[0]);
				$cat_map[$cid] = ['nombre' => $row_c[1], 'corto' => $row_c[2]];
			}
			$y->free_result($res_cat);

			// Construir CASE dinámico por categoría
			$cases = '';
			foreach ($cat_map as $cid => $cat) {
				if (in_array($cid, $sin_anio)) {
					$cases .= "SUM(CASE WHEN P.categoria=$cid AND P.estado=1 THEN P.monto ELSE 0 END) AS c$cid,\n";
				} else {
					$cases .= "SUM(CASE WHEN P.categoria=$cid AND P.anio=$anio_ref AND P.estado=1 THEN P.monto ELSE 0 END) AS c$cid,\n";
				}
			}

			$query = "SELECT P.folio AS folio, P.fpago AS fpago,
			$cases
			SUM(CASE WHEN P.anio < $anio_ref AND u.estado != 2 AND P.categoria NOT IN ($excluir_cartera_sql) THEN P.monto ELSE 0 END) AS cartera
			FROM vw_ligacargos_all P
			JOIN contrato c ON P.numcontrato = c.numcontrato
			JOIN usuario u ON c.numusuario = u.noconsecutivo
			WHERE P.folio <> 0 AND P.estado = 1 AND P.fpago BETWEEN '$inicio_q 00:00:00' AND '$fin_q 23:59:59'
			GROUP BY P.folio";

			$folios = $y->q($query);
			$numfolios = $y->num_rows($folios);

			// ANTES (v1): acumuladores hardcodeados $total_c1..$total_c18 + variables especiales LIKE
			// AHORA (v2): acumuladores dinámicos indexados por id de categoría del catálogo
			$total_c = [];
			foreach ($cat_map as $cid => $cat) $total_c[$cid] = 0;
			$total_cartera = 0;
			$total_ingresos = 0;

			print "<p style='margin-left:0px;font-size:7pt;'><b>CORTE DE CAJA QUE MANIFIESTA LOS FONDOS EXISTENTES DURANTE EL PERIODO COMPRENDIDO DEL " . cambia_fecha($dia_i, $mes_i, $anio_i) . " AL " . cambia_fecha($dia_f, $mes_f, $anio_f) . " POR EL COMIT&Eacute; ADMINISTRADOR DE AGUA POTABLE Y ALCANTARILLADO DE LA COLONIA DEL MAESTRO, A.C.</b></p>";

			print "<div style='text-align:left;'>";
			print "<table border=0 cellpadding=3 cellspacing=0 style='width:100%'>";

			print "<tr><td style='width:535px; max-width:575px; text-align:center;'><b>PERIODO " . ($anio_ref - 1) . " - " . $anio_ref . "</b>" . ($overridden ? "<br><small>(An&aacute;lisis forzado a a&ntilde;o $anio_ref)</small>" : "") . "</td><td style='width:70px'></td><td style='width:70px'></td>";
			print "<tr><td style='text-align:center;'>CONCEPTO</td><td style='text-align:center;'><b>INGRESOS</b></td><td style='text-align:center;'><b>EGRESOS</b></td>";
			print "<tr><td style='text-align:right;'><b>EXISTENCIA ANTERIOR</b></td><td style='text-align:right;'><b>" . money_format1($existencia_anterior) . "</b></td><td></td>";
			print "<tr><td style='text-align:center;'><b>INGRESOS</b></td><td></td><td></td>";

			// ANTES (v1): fetch con list() posicional de 32 columnas fijas + variables LIKE especiales
			// AHORA (v2): fetch asociativo dinámico — lee c{id} por cada categoría del catálogo
			while ($row_f = $y->fetch_array($folios)) {
				$cartera    = floatval($row_f['cartera']);
				$total_fila = $cartera;
				foreach ($cat_map as $cid => $cat) {
					$v = floatval($row_f['c' . $cid]);
					$total_c[$cid] += $v;
					$total_fila += $v;
				}
				$total_cartera  += $cartera;
				$total_ingresos += $total_fila;
			}
			$y->free_result($folios);

			// ANTES (v1): 14 queries COUNT individuales hardcodeados por categoría (nc1..nc18, nrez, nrez_no_loc, ncbp, nmlt, ncna, nfug)
			// ANTES (v2): COUNT(DISTINCT folio) sin filtro de año → contaba folios de cualquier año
			//   aunque el monto del concepto solo acumulaba cargos del año de corte ($anio_ref).
			//   Resultado: ($n) podía mostrar más folios que los que realmente aportaron monto → incongruente.
			// AHORA (v2.1): CASE condicional por categoría — mismo filtro de año que los CASE de montos.
			//   sin_anio=[6,16,17]: COUNT sin filtro de año (acumulativos). Resto: solo anio=$anio_ref.
			$sin_anio_set = implode(',', $sin_anio); // ya definido arriba: "6,16,17"
			$cases_nc = '';
			foreach ($cat_map as $cid => $cat) {
				if (in_array($cid, $sin_anio)) {
					$cases_nc .= "COUNT(DISTINCT CASE WHEN P.categoria=$cid THEN P.folio END) AS nc$cid,\n";
				} else {
					$cases_nc .= "COUNT(DISTINCT CASE WHEN P.categoria=$cid AND P.anio=$anio_ref THEN P.folio END) AS nc$cid,\n";
				}
			}
			// Un solo SELECT devuelve todos los conteos en una fila — más eficiente que GROUP BY + post-procesado
			$nc = [];
			$res_nc_all = $y->q("SELECT\n$cases_nc 0 AS _dummy
				FROM vw_ligacargos_all P
				WHERE P.estado=1 AND P.folio<>0
				  AND P.fpago BETWEEN '$inicio_q 00:00:00' AND '$fin_q 23:59:59'");
			if ($row_nc = $y->fetch_array($res_nc_all)) {
				foreach ($cat_map as $cid => $cat) $nc[$cid] = intval($row_nc['nc' . $cid]);
			}
			$y->free_result($res_nc_all);

			$res_nrez = $y->q("SELECT COUNT(DISTINCT folio) FROM vw_ligacargos_all P JOIN contrato c ON P.numcontrato=c.numcontrato JOIN usuario u ON c.numusuario=u.noconsecutivo WHERE P.anio<$anio_ref AND P.estado=1 AND P.folio<>0 AND P.categoria NOT IN ($excluir_cartera_sql) AND P.fpago BETWEEN '$inicio_q 00:00:00' AND '$fin_q 23:59:59'");
			list($nrez) = @$y->fetch_array($res_nrez); $y->free_result($res_nrez);

			// ANTES (v1): líneas print hardcodeadas por nombre de variable y etiqueta fija
			// AHORA (v2): etiquetas descriptivas por id de categoría — mapa legible para el reporte oficial
			$etiquetas = [
				2  => 'COBRO DE AGUA POTABLE',
				3  => 'COBRO DE DRENAJE',
				16 => 'COBRO DE RECARGOS DE AGUA',
				17 => 'COBRO DE RECARGOS DE DRENAJE',
				8  => 'COBRO POR CONTRATOS NUEVOS (AGUA)',
				18 => 'COBRO POR CONTRATOS NUEVOS (DRENAJE)',
				7  => 'COBRO POR METROS LINEALES',
				6  => 'COBRO POR FALTAS DE ASAMBLEA',
				14 => 'COBRO POR RECONEXI&Oacute;N DE SERVICIO',
				15 => 'COBRO POR CONEXIONES',
				13 => 'COBRO POR CANCELACI&Oacute;N DE SERVICIO',
				9  => 'COBRO POR REPOSICI&Oacute;N DE CREDENCIAL',
				19 => 'COBRO POR CAMBIO DE PROPIETARIO',
				20 => 'MULTA POR DESPERDICIO DE AGUA',
				21 => 'EXPEDICI&Oacute;N DE CONSTANCIA DE NO ADEUDO',
				22 => 'REPARACI&Oacute;N DE FUGAS (EXCAVACI&Oacute;N Y CANCEL.)',
				12 => 'COBRO POR SANCIONES',
				5  => 'COBRO POR REPARACIONES',
				10 => 'COBRO POR COOPERACIONES',
				11 => 'COBRO DE RECARGOS NORMALES',
				1  => 'COBRO POR OTROS CONCEPTOS (GENERAL)',
				4  => 'COBRO POR CUOTAS ESPECIALES',
			];
			$con_anio = [2, 3, 11, 16, 17];
			foreach ($total_c as $cid => $total) {
				if ($total > 0) {
					$etiqueta = isset($etiquetas[$cid]) ? $etiquetas[$cid] : (isset($cat_map[$cid]) ? $cat_map[$cid]['nombre'] : "CONCEPTO $cid");
					if (in_array($cid, $con_anio)) {
						$etiqueta .= " $anio_ref";
					}
					$cnt = isset($nc[$cid]) ? $nc[$cid] : 0;
					print "<tr><td>$etiqueta ($cnt)</td><td style='text-align:right;'>" . money_format1($total) . "</td><td></td></tr>";
				}
			}
			if ($total_cartera > 0)
				print "<tr><td>RECUPERACI&Oacute;N DE CARTERA VENCIDA (A&ntilde;os anteriores a $anio_ref) ($nrez)</td><td style='text-align:right;'>" . money_format1($total_cartera) . "</td><td></td></tr>";

			print "<tr><td style='text-align:right;'><b>TOTAL DE INGRESOS ($numfolios)</b></td><td style='text-align:right;'><b>" . money_format1($total_ingresos) . "</b></td><td></td></tr>";

			print "<tr><td style='text-align:center;'><b>EGRESOS</b></td><td></td><td></td>";

			// ANTES (v1): egresos agrupados por campo texto categoria='NINGUNA' como caso especial separado.
			//   Problema: registros con categoria='NINGUNA' ya fueron renombrados a 'SIN CATEGORÍA' (id=10)
			//   en el saneamiento. La query extra WHERE categoria='NINGUNA' no devuelve nada en Host C.
			// AHORA (v2): egresos agrupados por id_categoria JOIN categorias_egresos — consistente con catálogo.
			//   Un solo loop unificado sin caso especial NINGUNA.
			$query = "SELECT ce.nombre, e.leyenda, e.monto, e.fecha
			          FROM egresos e
			          JOIN categorias_egresos ce ON e.id_categoria = ce.id
			          WHERE e.fecha BETWEEN '$inicio_q 00:00:00' AND '$fin_q 23:59:59'
			            AND e.estado <> -1
			          ORDER BY ce.id, e.fecha";
			$egresos_res = $y->q($query);

			$suma_egresos = 0;
			$numegresos_total = 0;
			$egresos_por_cat = [];

			while ($er = $y->fetch_array($egresos_res)) {
				$cat_nombre = $er['nombre'];
				if (!isset($egresos_por_cat[$cat_nombre])) $egresos_por_cat[$cat_nombre] = [];
				$egresos_por_cat[$cat_nombre][] = $er;
			}
			$y->free_result($egresos_res);

			foreach ($egresos_por_cat as $cat_nombre => $items) {
				$totalegreso = 0.0;
				$leyendas = [];
				foreach ($items as $item) {
					$totalegreso += $item['monto'];
					if ($item['leyenda'] != '') $leyendas[] = $item['leyenda'];
					$numegresos_total++;
				}
				print "<tr><td style='width:535px; max-width:535px; text-align:justify;'><b>" . htmlspecialchars($cat_nombre) . ": </b>" . implode(', ', $leyendas) . "</td><td></td><td style='text-align:right;'>" . money_format1($totalegreso) . "</td></tr>";
				$suma_egresos += $totalegreso;
			}

			if ($numegresos_total == 0)
				print "<tr><td style='text-align:center;'>No se registraron egresos en este periodo</td><td></td><td></td></tr>";

			$suma_ingresos = $total_ingresos + $existencia_anterior;
			$existencia_caja = $suma_ingresos - $suma_egresos;
			$suma_total_ingresos = $suma_ingresos;
			$suma_total_egresos = $suma_egresos + $existencia_caja;

			print "<tr><td style='text-align:right;'><b>SUMA DE INGRESOS</b></td><td style='text-align:right;'><b>" . money_format1($suma_ingresos) . "</b></td><td></td></tr>";
			print "<tr><td style='text-align:right;'><b>SUMA DE EGRESOS</b></td><td></td><td style='text-align:right;'><b>" . money_format1($suma_egresos) . "</b></td></tr>";
			print "<tr><td style='text-align:right;'><b>EXISTENCIA EN BANCO</b></td><td></td><td style='text-align:right;'><b>" . money_format1($existencia_caja) . "</b></td></tr>";
			print "<tr><td style='text-align:right;'><b>SUMAS IGUALES</b></td><td style='text-align:right;'><b>" . money_format1($suma_total_ingresos) . "</b></td><td style='text-align:right;'><b>" . money_format1($suma_total_egresos) . "</b></td></tr>";
			print "</table>";

			$query = "SELECT presidente, vicepresidente, secretario, tesorero, vocal1, vocal2, vocal3, vocal4, presidente_vigilancia, secretario_vigilancia FROM firmantes limit 1";

			$firmantes = $y->q($query);

			list($nombrepresidente, $nombrevicepresidente, $nombresecretario, $nombretesorero, $nombrevocal1, $nombrevocal2, $nombrevocal3, $nombrevocal4, $nombrepresidentev, $nombresecretariov) = $y->fetch_array($firmantes);
			$y->free_result($firmantes);
			$y->cerrarConexion();

			print "<br>";

			print "<table border=0 cellspacing=0 class='tablefirmantes'>";

			print "<tr><td></td><td style='text-align:center;'><b>COMIT&Eacute; ADMINISTRADOR</b></td><td></td></tr>";
			print "<tr><td colspan='3'>&nbsp;</td></tr>";

			print "<tr><td style='text-align:center; width:238px; max-width:238px;'>$nombrepresidente</td><td style='text-align:center; width:239px; max-width:239px;'>$nombrevicepresidente</td><td style='text-align:center; width:238px; max-width:238px;'>$nombresecretario</td></tr>";
			print "<tr><td style='text-align:center;'>PRESIDENTE</td><td style='text-align:center;'>VICEPRESIDENTE</td><td style='text-align:center;'>SECRETARIO</td></tr>";

			print "<tr><td colspan='3'>&nbsp;</td></tr>";

			print "<tr><td style='text-align:center;'>$nombretesorero</td><td style='text-align:center;'>$nombrevocal1</td><td style='text-align:center;'>$nombrevocal2</td></tr>";
			print "<tr><td style='text-align:center;'>TESORERO</td><td style='text-align:center;'>VOCAL I</td><td style='text-align:center;'>VOCAL II</td></tr>";

			print "<tr><td colspan='3'>&nbsp;</td></tr>";

			print "<tr><td style='text-align:center;'>$nombrevocal3</td><td style='text-align:center;'></td><td style='text-align:center;'>$nombrevocal4</td></tr>";
			print "<tr><td style='text-align:center;'>VOCAL III</td><td style='text-align:center;'><b>COMIT&Eacute; DE VIGILANCIA</b></td><td style='text-align:center;'>VOCAL IV</td></tr>";

			print "<tr><td colspan='3'>&nbsp;</td></tr>";

			print "<tr><td style='text-align:center;'>$nombrepresidentev</td><td style='text-align:center;'></td><td style='text-align:center;'>$nombresecretariov</td></tr>";
			print "<tr><td style='text-align:center;'>PRESIDENTE</td><td style='text-align:center;'></td><td style='text-align:center;'>SECRETARIO</td></tr>";

			print "<tr><td colspan='3'>&nbsp;</td></tr>";

			print "<tr><td style='text-align:right;' colspan='3'><br>HUAJUAPAN DE LE&Oacute;N, OAX. A " . cambia_fecha($dia_f, $mes_f, $anio_f) . ".</td></tr>";

			print "</table>";

			print "</div>";

			function mes_nombre($mes)
			{
				$meses = array("ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO", "JUNIO", "JULIO", "AGOSTO", "SEPTIEMBRE", "OCTUBRE", "NOVIEMBRE", "DICIEMBRE");
				return $meses[$mes - 1];
			}

			function cambia_fecha($dia, $mes, $anio)
			{
				return $dia . " DE " . mes_nombre($mes) . " DE " . $anio;
			}

			function money_format1($value)
			{
				return "<div style='float:left;text-align:left;'>$</div><div style='text-align:right;'>" . number_format($value, 2, ".", ",") . "</div>";
			}
			?>
		</center>
	</body>

	</html>
```

</details>

---

## Agent Response

### Thinking

**Defining Delinquency Criteria**

I'm currently working to define what constitutes "cartera vencida," based on the code. My understanding is any charge, whether pending or paid, that has an `anio` value less than the reference year (`anio_ref`) fits the definition. I'm also noting the exclusions, which are categories `6` and `19`. This information will be key to classifying and categorizing delinquent accounts.


**Refining Delinquency Criteria Further**

I've deepened my investigation into exclusions for delinquency. Now, I'm identifying more specific scenarios, like categories `10`, `20`, `21`, `22`, and contracts with `estado = 4`, alongside users classified as "No Localizado" (estado = 2). I am focusing on how these are handled in reports. Inclusions seem consistent with the original definition, but I am confirming how surcharges are handled. The subtle differences in calculations, particularly between `carteravencida.php` and the other reports, are now clearer.


**Identifying Inconsistencies**

I've pinpointed inconsistencies in the reports. `carteravencida.php` mislabels current-year debts. The filter in `listadeudores.php` deviates from the documentation, and `concentradocortecaja.php` and `resumen` might omit future year debts. Also, the handling of "No Localizados" in these reports needs further review.




### Actions

**Tool:** `view_file`
**File:** `REPORTES_CAJA_CARTERA_DECLARACION.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.302226612s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Reportes de Caja y Cartera — HOMOLOGADOS, CONSOLIDADOS Y VERIFICADOS

> **Declaración formal** — 2026-04-13 / 2026-04-14  
> Los módulos `concentradocortecaja.php`, `concentradocortecajaresumen.php` y `carteravencida.php`  
> se declaran **homologados, consolidados y verificados** para operación en Host C (V2 / MariaDB).  
> La refactorización eliminó inconsistencias entre reportes, incluyó las nuevas categorías V2,  
> y estableció una fuente de verdad única sobre qué se cobra, qué se debe y cómo se contabiliza.

---

## Resumen Ejecutivo

| Módulo | Problema Central | Estado Final |
|---|---|---|
| `concentradocortecaja.php` | Contadores de folios inflados por folios multi-contrato | ✅ Corregido — folios distintos reales por categoría |
| `concentradocortecajaresumen.php` | Columnas hardcodeadas, cats 19-22 ausentes, filtro año incorrecto | ✅ Refactorizado — SQL dinámico desde catálogo |
| `carteravencida.php` | Incluía multas asamblea y cats V2 como deuda cobrable | ✅ Corregido — exclusiones canónicas alineadas |
| **Congruencia entre reportes** | Conteos divergentes entre ambos concentrados | ✅ Verificado — mismos totales en todos los períodos de prueba |
| **Split ligacargos (V2)** | Reportes ignoraban `ligacargos_historico` | ✅ Cubiertos por vistas `vw_ligacargos_all` / `vw_ligacargos_pendientes` |

---

## Contexto V2: Vistas como Capa de Abstracción

Host C introduce el split `ligacargos` (anio ≥ 2026) + `ligacargos_historico` (anio ≤ 2025).  
Para no duplicar lógica en cada reporte, se instalaron dos vistas canónicas en `host-c-setup/04_views.sql`:

| Vista | Propósito | Equivalente V1 |
|---|---|---|
| `vw_ligacargos_all` | UNION ALL de activa + histórico, todos los estados | `FROM ligacargos` sin filtro de estado |
| `vw_ligacargos_pendientes` | UNION ALL de activa + histórico, solo `estado=0` | `FROM ligacargos WHERE estado=0` |

Los tres reportes migrados usan `vw_ligacargos_all` — **un único cambio de capa resuelve el acceso a todo el historial**.

---

## Módulo 1: `reportes/concentradocortecaja.php`

### Problema original

El reporte agrupaba por `(numcontrato, folio)` para mostrar un renglón por usuario-folio.  
Un folio puede cubrir simultáneamente 2 o 3 contratos del mismo usuario (uso legítimo).  
El conteo de "(CTOS/USUARIOS)" incrementaba 1 por fila del GROUP BY — **no por folio único**.

| Columna | Antes | Después |
|---|---|---|
| Etiqueta de contador | `(CTOS/USUARIOS)` | `(# FOLIOS)` |
| Conteo por categoría | `$cnt_c[$cid]++` (por fila) | `count($folios_c[$cid])` (por folio único) |
| "Folios Registrados" al pie | `$y->num_rows($folios)` → 1,946 filas | `COUNT(DISTINCT folio)` → 524 folios reales |
| Total al pie | Incorrecto (inflado) | Correcto — coincide con resumen |

### Solución aplicada

```php
// ANTES: incremento por fila
$cnt_c[$cid]++;

// AHORA: acumulador de sets — un folio se cuenta una sola vez por categoría
$folios_c[$cid][$folio] = true;
// ...al final del loop:
foreach ($cat_map as $cid => $cat) $cnt_c[$cid] = count($folios_c[$cid]);
```

El total de "Folios Registrados" al pie también se corrigió:
```php
// ANTES: num_rows del query GROUP BY (número de filas, no folios únicos)
$numfolios = $y->num_rows($folios); // → 1,946

// AHORA: query separado COUNT(DISTINCT folio)
$res_nf = $y->q("SELECT COUNT(DISTINCT folio) AS n FROM vw_ligacargos_all P ...");
$numfolios_distintos = ...; // → 524
```

### SQL dinámico desde catálogo

```php
// ANTES (v1): CASE hardcodeados para IDs 1-18 + leyendas LIKE para identificar CB/PROP etc.
// AHORA (v2): catálogo completo cargado dinámicamente
$res_cat = $y->q("SELECT id, nombre, nombrecorto FROM categorias ORDER BY id");
while ($row_c = $y->fetch_array($res_cat)) { $cat_map[$cid] = [...]; }

// CASE construido por loop — incluye automáticamente cats 19-22
foreach ($cat_map as $cid => $cat) {
    if (in_array($cid, $sin_anio)) {
        $cases .= "SUM(CASE WHEN P.categoria=$cid AND P.estado=1 THEN P.monto ELSE 0 END) AS c$cid,\n";
    } else {
        $cases .= "SUM(CASE WHEN P.categoria=$cid AND P.estado=1 AND P.anio<=$anio_f THEN P.monto ELSE 0 END) AS c$cid,\n";
    }
}
```

---

## Módulo 2: `reportes/concentradocortecajaresumen.php`

### Problemas originales (3 independientes)

#### P1 — Columnas hardcodeadas (v1 → v2)
```php
// ANTES (v1): 18 columnas fijas con LIKE para identificar conceptos especiales
"SUM(CASE WHEN leyenda LIKE '%CAMBIO DE PROPIETARIO%' ..."
// → frágil, rompía con cualquier variación de leyenda
// → ignoraba por completo las categorías 19, 20, 21, 22 recién creadas en V2
```

#### P2 — Filtro de año incorrecto en conteo de folios (v2 → v2.1)
```php
// ANTES (v2): COUNT(DISTINCT folio) sin filtro de año — contaba folios de CUALQUIER año
COUNT(DISTINCT CASE WHEN P.categoria=$cid THEN P.folio END) AS nc$cid
// → mostraba (n=236) junto a concepto que solo generó monto en el año de corte
// → divergencia visible vs concentradocortecaja.php

// AHORA (v2.1): CASE condicional — mismo filtro que los CASE de montos
// cat sin_anio [6]: sin filtro de año (acumulativos)
COUNT(DISTINCT CASE WHEN P.categoria=$cid THEN P.folio END) AS nc$cid
// cat normal: solo folios del año de corte
COUNT(DISTINCT CASE WHEN P.categoria=$cid AND P.anio=$anio_ref THEN P.folio END) AS nc$cid
```

#### P3 — Egresos por nombre de categoría en lugar de `id_categoria`
```php
// ANTES: unión frágil por nombre de texto
WHERE e.categoria = 'NINGUNA'  // no encontraba nada en Host C (renombrado a 'SIN CATEGORÍA')

// AHORA: JOIN por id canónico
FROM egresos e
JOIN categorias_egresos ce ON e.id_categoria = ce.id
WHERE e.fecha BETWEEN ... AND e.estado <> -1
```

### Saneamiento de datos aplicado (Host C)

Para habilitar P3, se poblaron los `id_categoria` en la tabla `egresos`:

```sql
-- 311 registros: obtienen id_categoria desde JOIN por nombre
UPDATE egresos e
JOIN categorias_egresos ce ON e.categoria = ce.nombre
SET e.id_categoria = ce.id
WHERE e.id_categoria IS NULL AND e.categoria != 'NINGUNA';

-- Registros 'NINGUNA': renombrados a 'SIN CATEGORÍA' (id=10)
UPDATE egresos SET id_categoria = 10, categoria = 'SIN CATEGORÍA'
WHERE categoria = 'NINGUNA';
```

Este saneamiento también se integró en `10_pipeline_saneamiento.sql` (Paso 3-B-4) para que sea idempotente en cada sync.

---

## Módulo 3: `reportes/carteravencida.php`

### Problema original

El reporte incluía en la deuda cobrable conceptos que no son deuda real:
- **Categoría 6 (FALTA DE ASAMBLEA):** Multas que se sincronizan automáticamente vía `sp_sinc_asamblea_bulk` — no son cobros individuales reales en todos los contratos
- **Categorías 19–22 (V2):** `CB/PROP`, `MLT/DESP`, `CNT/NADO`, `CNC/FUGA` — conceptos únicos no periódicos; su inclusión distorsionaba la cartera anual

### Solución aplicada

```sql
-- ANTES:
WHERE l.estado = 0 AND c.estado != 4 AND l.anio = $anio

-- AHORA: exclusiones canónicas alineadas con concentradocortecaja.php
WHERE l.estado = 0
  AND c.estado != 4
  AND l.categoria NOT IN (6, 19, 20, 21, 22)
  AND (
    (l.anio <> 0 AND l.anio IS NOT NULL AND l.anio = $anio)
    OR ...
  )
```

> **Nota sobre cat 11, 16, 17 (RECARGOS):** Deliberadamente NO excluidas de cartera.  
> Los recargos de años anteriores sí son deuda cobrable real. Incluirlos en cartera garantiza  
> que el gran total del concentrado cuadre con lo cobrado (encuadre verificado = $0 diferencia).

---

## Congruencia Cruzada Verificada

La siguiente tabla muestra las métricas que deben coincidir entre reportes para el mismo período:

| Métrica | `concentradocortecaja.php` | `concentradocortecajaresumen.php` | Validación |
|---|---|---|---|
| Total folios del período | `COUNT(DISTINCT folio)` al pie | `GROUP BY folio` en totales | ✅ Idénticos (ej: 524) |
| Folios cat 2 (AGUA) | `count($folios_c[2])` | `COUNT(DISTINCT CASE WHEN cat=2 AND anio=$anio)` | ✅ Coinciden |
| Folios cat 6 (ASAMBLEA) | `count($folios_c[6])` | `COUNT(DISTINCT CASE WHEN cat=6)` ← sin filtro año | ✅ Coinciden |
| Monto cartera vencida | Columna `R.CART.` en concentrado | No aplica | ✅ Cuadre $0 en 5 períodos validados |
| Exclusiones cartera | `$excluir_cartera = [6,19-22]` | `$excluir_cartera_sql` idéntico | ✅ Misma constante |

**Períodos de validación exitosos:** 2024 anual, 2025 anual, 2026-01-01/2026-04-13, 2026-Q1, período actual.

---

## Módulos Relacionados También Homologados

Los mismos patrones de exclusión se aplicaron consistentemente a:

| Módulo | Cambio Aplicado |
|---|---|
| `reportes/listadeudores.php` | Agregó `c.estado != 4` + `NOT IN (6,19,20,21,22)` en WHERE y subqueries |
| `admin/saneamiento/reporte_morosos.php` | Variable `$excluir_deuda_sql` con mismo conjunto de exclusiones |
| `admin/saneamiento/cv_por_tipo_edo_cto.php` | Reemplazó `categoria LIKE 'RECARGO%'` por `categoria IN (11,16,17)` en 3 queries |

---

## Tabla Canónica de Categorías (catálogo `categorias`)

Referencia para entender las exclusiones. **Válida para Host C (V2):**

| id | Nombre | `sin_anio` | En cartera | Notas |
|---|---|---|---|---|
| 1 | CUOTA FIJA DE AGUA | — | ✅ | Cuota base mensual |
| 2 | CUOTA DIFERENCIADA | — | ✅ | Cuota por volumen |
| 3 | DERECHOS DE CONEXIÓN | — | ✅ | |
| 4 | TRÁMITES ESPECIALES | — | ✅ | |
| 5 | MULTA | — | ✅ | Multas ordinarias |
| 6 | FALTA DE ASAMBLEA | ✅ sin_anio | ❌ excluida | Sincronizada automáticamente por `sp_sinc_asamblea_bulk` |
| 7 | SERVICIOS | — | ✅ | |
| 8 | OBRA | — | ✅ | |
| 9 | CONVENIO | — | ✅ | |
| 10 | OTRO INGRESO | — | ✅ | |
| 11 | RECARGOS (normales) | — | ✅ **incluida** | Recargos de años anteriores = deuda real cobrable |
| 12–15 | (varios) | — | ✅ | |
| 16 | RECARGO AGUA | — | ✅ **incluida** | Recargos de años anteriores van a cartera |
| 17 | RECARGO DRENAJE | — | ✅ **incluida** | Recargos de años anteriores van a cartera |
| 18 | MANTENIMIENTO | — | ✅ | |
| **19** | **CAMBIO DE PROPIETARIO** | — | ❌ excluida | Nuevo V2 — concepto único no periódico |
| **20** | **MULTA DESPERDICIO** | — | ❌ excluida | Nuevo V2 — concepto único |
| **21** | **CONSTANCIA NO ADEUDO** | — | ❌ excluida | Nuevo V2 — concepto único |
| **22** | **CANCELACIÓN FUGA** | — | ❌ excluida | Nuevo V2 — concepto único |

> **Regla de inclusión en cartera:** Se incluye cualquier categoría con cargos `estado=0`, `anio=X` que **no esté en** `(6, 19, 20, 21, 22)` y cuyo contrato sea `estado != 4`.

---

## Tabla Canónica de Categorías de Egresos (catálogo `categorias_egresos`)

| id | Nombre |
|---|---|
| 1–9 | Categorías operativas (mantenimiento, nómina, etc.) |
| 10 | SIN CATEGORÍA (antes: `NINGUNA`) |

Los reportes de egresos en `concentradocortecajaresumen.php` y en caja diaria usan  
`JOIN categorias_egresos ce ON e.id_categoria = ce.id` — sin texto frágil.

---

## Impacto Financiero del Saneamiento

| Concepto | Impacto | Origen |
|---|---:|---|
| Multas asamblea (cat 6) desvinculadas de cartera | No cuantificado como deuda individual | `sp_sinc_asamblea_bulk` las marca `estado=1, monto=0` en contratos secundarios |
| Cargos pendientes en contratos SDF (D7) cancelados | Excluidos de cartera vencida | `03_sync_host_a.sql` sección D7 |
| 20 folios multi-contrato contados correctamente | Contadores reducidos en ~22 folios por período | Refactor de acumuladores `folios_c[$cid]` |
| Encuadre de caja (diferencia concentrado vs recibido) | **$0** en todos los períodos validados | Inclusión correcta de cat 11 en cartera |

---

## Archivos Modificados

| Archivo | Tipo de cambio | Comentarios en código |
|---|---|---|
| `reportes/concentradocortecaja.php` | Refactor + bugfix contadores | `// ANTES / AHORA` en líneas ~97-107 |
| `reportes/concentradocortecajaresumen.php` | Refactor SQL dinámico + bugfix filtro año + egresos | `// ANTES / AHORA` en líneas ~226-302 |
| `reportes/carteravencida.php` | Bugfix exclusiones categorías | Comentarios en `$query` principal |
| `reportes/listadeudores.php` | Bugfix exclusiones + estado=4 | |
| `admin/saneamiento/reporte_morosos.php` | Homologación exclusiones | Variable `$excluir_deuda_sql` |
| `admin/saneamiento/cv_por_tipo_edo_cto.php` | Sustitución LIKE → IN numérico | 3 queries actualizados |
| `docs-dev/migration-aguav2/host-c-setup/04_views.sql` | Vistas `vw_ligacargos_all` / `vw_ligacargos_pendientes` | Abstracción del split |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/10_pipeline_saneamiento.sql` | Paso 3-B: patch categorías V2 + egresos idempotente | Integrado al pipeline automático |

---

*Documento generado: 2026-04-14 | Rama: `feature/upgrade-v2-win-xampp`*

```

</details>

---

## Agent Response

### Thinking

**Defining Delinquent Portfolio**

I've clarified the definition of "Cartera Vencida". It represents the total outstanding charges from previous years, concerning either collected or still-owed amounts, which are older than the reporting year (often the start or current year). I am now seeing a much clearer picture.


**Refining Scope Parameters**

I'm now detailing precise inclusions and exclusions for the "Cartera Vencida" calculations. Periodic charges and late fees from prior years are in, while categories tied to unique events or suspended contracts are out. Specifically, I'm excluding Category 6 (due to its user-based synchronization) and non-periodic V2 categories. Also, contracts in Status 4 (Permanent Suspension) are omitted.


**Assessing Report Accuracy**

I've just assessed specific files for accuracy. Concentradocortecaja and concentradocortecajaresumen are perfect! However, carteravencida.php has a limitation; it calculates for only one given year, not the total "Cartera Vencida". It also defaults to the current year if no year is provided, which is mislabeled. Lastly, listadeudores.php's code is correct, though the comments are inconsistent.


**Clarifying Exclusions & Gaps**

I've identified crucial discrepancies and gaps in the existing code. Firstly, a stale comment in `listadeudores.php` incorrectly labels categories excluded, contradicting both the code and business rules. I also found that `concentradocortecaja.php` and its resumen counterpart overlook future-year charges, potentially skewing totals. The report `carteravencida.php` does not differentiate between years. I must revisit my approach.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 8.294152837s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

Va,mos a crear un documento MD con toda esta descripciones dadas, con las siguientes y otras precisiones vayamos iterando en esta sesion.

a) Añade a esta descripcion una tabla que muestre dos partes : 
. Para la parte de  R.CART con la Inclusión de Recargos su ID , nombre largo de catalogo y corto; manejo de folios únicos. 
. Para la parte de Exclusiones Canónicas (con la Inclusión de Recargos su ID , nombre largo de catalogo y corto -de haber ).
. Describe/define eso de "asegurar que el cuadre de caja sea de $0" para R.CART 

. COrrige todos de Gaps, Issues y Mejoras (Labels), con las siguientes precisiones.
-  [ISSUE-TERM-CV] , que el item en Listados se renombre asi:  Cartera Vencida (Adeudos por Año); y tambien en la carteravencida.php , en su header titulo fondo negro concatenar al año que ya aparece (Adeudos por Año).  Hacer mas anchas las columnas y añadir una la izquierda como un contador consecutivo.
- Para concentradocortecaja.php, evalua si en  la columna: R.CART. es valido concatenarle (años < anio_ref), o que dato; de cara al usuario operador no haya confusiones, revisa si concentradocortecajaresumen.php ya lo incluye, o como se homologa.

Estos  solo ponerlo como una seccion de mejoras por realizar: 
 [GAP-CALC-FUTURE], [IMPROVEMENT-CONSOLIDATED-CV] , [GAP-NO-LOC-RECOVERY].
. este "Resumen Técnico para el Encuadre", llamalo issue conceptual y añadelo a seccion de mejoras; incluye significado de 6, 19, 20, 21, 22; y estado = 0 , c.estado != 4
EL proposito es tener un documento informativo para la audiencia del contador ,y operadodor de la appweb.


---

## Agent Response

### Thinking

**Defining "Cartera Vencida"**

I'm aiming to craft a Markdown document, tentatively named something like `CARTERA_VENCIDA_DEFINICION.md`, for the accountant and operators. The goal is to provide a clear definition of "Cartera Vencida." I'm focusing on defining the key components of the document; I have made a list of two components of the Markdown document.


**Expanding the Definition**

I'm now expanding the Markdown document's scope. I'm focusing on incorporating specific UI and PHP adjustments related to "Cartera Vencida." This includes renaming list items, modifying headers, and widening columns for clarity. I'm also planning to evaluate changes to the `R.CART.` column headers in related reports. I also need to begin reading `concentradocortecaja.php` and `concentradocortecajaresumen.php`.




### Actions

**Tool:** `grep_search`
**Query:** `carteravencida.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.434356201s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 11 May 2026, 11:00 am

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `agua` (26 items)</summary>

**Path:** `opt/lampp/htdocs/agua`

| Name | Type | Size |
|------|------|------|
| `.agents` | File | 19 bytes |
| `.chatledger` | File | 35 bytes |
| `.claude` | File | 19 bytes |
| `.clauderules` | File | 24 bytes |
| `.git` | Directory | - |
| `.gitignore` | File | 967 bytes |
| `.mcp.json` | File | 21 bytes |
| `.vscode` | Directory | - |
| `CLAUDE.md` | File | 21 bytes |
| `GEMINI.md` | File | 21 bytes |
| `admin` | Directory | - |
| `asamblea` | Directory | - |
| `composer.json` | File | 59 bytes |
| `composer.lock` | File | 2656 bytes |
| `config` | Directory | - |
| `docs-dev` | Directory | - |
| `includes` | Directory | - |
| `index2.php` | File | 3438 bytes |
| `libs` | Directory | - |
| `login` | Directory | - |
| `reportes` | Directory | - |
| `ruteador.php` | File | 10453 bytes |
| `scratch` | Directory | - |
| `vendor` | Directory | - |
| `views` | Directory | - |
| `web-assets` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/views`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `views` (4 items)</summary>

**Path:** `opt/lampp/htdocs/agua/views`

| Name | Type | Size |
|------|------|------|
| `cargos` | Directory | - |
| `contratos` | Directory | - |
| `sistema` | Directory | - |
| `usuarios` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/views/sistema`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `sistema` (7 items)</summary>

**Path:** `opt/lampp/htdocs/agua/views/sistema`

| Name | Type | Size |
|------|------|------|
| `asistencias.php` | File | 2258 bytes |
| `asistencias_resultado.php` | File | 570 bytes |
| `configuracion.php` | File | 3940 bytes |
| `contrasenas.php` | File | 5856 bytes |
| `listados.php` | File | 4072 bytes |
| `mensaje.php` | File | 86 bytes |
| `menu_options.php` | File | 1742 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `listados.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<h1>Listados</h1>
<hr>

<style type="text/css">
	.listados-layout {
		display: flex;
		justify-content: space-between;
		gap: 20px;
		margin-top: 15px;
	}

	.listados-column {
		flex: 1;
		display: flex;
		flex-direction: column;
		align-items: center;
		min-width: 280px;
	}

	.listados-label {
		background: #0E4F8E;
		color: #fff;
		width: 100%;
		text-align: center;
		padding: 6px 0;
		font-weight: bold;
		text-transform: uppercase;
		font-size: 13px;
		margin-bottom: 15px;
		border-radius: 4px;
		box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
	}

	.listados-items {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		gap: 10px;
		width: 100%;
	}

	/* Ajuste para mostrar 2 items por renglón */
	.icon-container {
		flex: 0 0 45%;
		margin: 5px 0 !important;
		float: none !important;
		display: table !important;
		min-height: 85px;
		cursor: pointer;
		text-align: center;
	}

	/* Nombres de los reportes en negrita */
	.icon-container small {
		font-weight: bold;
	}

	/* Modal corte de caja */
	.mcc-row {
		display: flex;
		align-items: center;
		margin-bottom: 8px;
		gap: 8px;
	}
	.mcc-row label {
		width: 130px;
		font-size: 11px;
		font-weight: bold;
		text-align: right;
		flex-shrink: 0;
	}
</style>

<div class="listados-layout">
	<!-- Columna: Usuarios -->
	<div class="listados-column">
		<div class="listados-label">Usuarios</div>
		<div class="listados-items">
			<div class="icon-container" id="iconoarchivo" onClick="window.open('reportes/listausuarios.php', 'Usuarios', 'width=850,height=450,scrollbars=yes');">
				<img src='web-assets/img/doc.png'><br>
				<small>Usuarios registrados en el sistema</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="window.open('reportes/listadeudores.php', 'Contratos', 'width=850,height=450,scrollbars=yes');">
				<img src='web-assets/img/doc.png'><br>
				<small>Listado de deudores</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="usuariosEspeciales();">
				<img src='web-assets/img/doc.png'><br>
				<small>Usuarios Especiales</small>
			</div>
		</div>
	</div>

	<!-- Columna: Contratos -->
	<div class="listados-column">
		<div class="listados-label">Contratos</div>
		<div class="listados-items">
			<div class="icon-container" id="iconoarchivo" onClick="window.open('reportes/listacontratos.php', 'Contratos', 'width=850,height=450,scrollbars=yes');">
				<img src='web-assets/img/doc.png'><br>
				<small>Registrados en el sistema</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="listaContratosNuevos();">
				<img src='web-assets/img/doc.png'><br>
				<small>Contratos Nuevos</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="listaContratosEstados();">
				<img src='web-assets/img/doc.png'><br>
				<small>Por Estado</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="listaContratosTipos();">
				<img src='web-assets/img/doc.png'><br>
				<small>Por Tipo</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="listaContratosAguaTomas();">
				<img src='web-assets/img/doc.png'><br>
				<small>Agua por No. de Tomas</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="listaContratosDrenajeTomas();">
				<img src='web-assets/img/doc.png'><br>
				<small>Drenaje por No. de Descargas</small>
			</div>
		</div>
	</div>

	<!-- Columna: Corte de Caja -->
	<div class="listados-column">
		<div class="listados-label">Corte de Caja</div>
		<div class="listados-items">
			<div class="icon-container" id="iconoarchivo" onClick="corteCaja();">
				<img src='web-assets/img/doc.png'><br>
				<small>Por Fechas</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="carteraVencida();">
				<img src='web-assets/img/doc.png'><br>
				<small>Cartera Vencida</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="corteCajaResumen();">
				<img src='web-assets/img/doc.png'><br>
				<small>Resumen de Caja</small>
			</div>
		</div>
	</div>
</div>

<div id='nara'></div>
```

</details>

---

## Agent Response

### Thinking

**Updating the Code**

I've renamed line 143 to include "(Adeudos por Año)" and started outlining modifications for `carteravencida.php`. The plan now is to concatenate this phrase. This should improve clarity.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.410433366s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 11 May 2026, 11:00 am

---

## Agent Response

### Thinking

**Updating Carteravencida Report**

I've just been working on the `reportes/carteravencida.php` file, specifically the header and column widths. I changed the header to include the year, and I've adjusted the widths of the `CONTRATO`, `USUARIO`, and `DEBE` columns to better display the information. The goal is to make the report more readable and user-friendly. I'm focusing on the visual presentation now.


**Adding Counter Column**

Okay, I'm now modifying the `carteravencida.php` file to include a counter column for each row in the report. I've adjusted the table structure to add the new `<td>` and updated the header `colspan` to reflect the change. Also, I've declared a counter variable `$conteo` to keep track of the row number. I've also verified column widths.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.875717886s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 11 May 2026, 11:01 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

Inicia como nuevo, para la solicitud, pues te puse en modo planning para un mejor resultado.

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php
</details>

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time.
2. Create an implementation plan artifact with `request_feedback = true` to request approval. Include any open questions for the user directly in the implementation plan. Don't use the ask_question tool to ask these questions. Stop calling tools and allow the user to review the plan and provide feedback or approval.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, bash_command_reminder

</details>

---

## Agent Response

### Thinking

**Prioritizing Tool Specificity**

I'm focusing intently on tool selection, always opting for the most specialized utility available. My aim is to leverage `grep_search` instead of bash `grep`, and I'm avoiding the use of `cat` for file operations. The goal is to maximize efficiency and precision, even if it requires a slight learning curve for specific tools.


**Planning Tool Implementations**

I'm now shifting gears into planning mode, as requested. My immediate focus is to create an `implementation_plan.md` document, meticulously detailing each step, including the recent modifications I made to `listados.php` and `carteravencida.php`. I will then articulate the planned creation of the MD file and the evaluation of `concentradocortecaja.php`. I will explicitly list all the relevant tools prior to execution.


**Defining Document Scope**

I'm now zeroing in on defining the scope for the MD document as requested. I intend to meticulously document the structure for Cartera Vencida, ensuring it covers the specific tables and elements the user detailed. I will describe the required parts to be included in that document, and aim to clarify the purpose and audience. My goal is to produce a detailed resource for the accountant and app operator.




### Actions

**Tool:** `view_file`
**File:** `concentradocortecaja.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.711738173s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file` (L219-259)</summary>

**Path:** `Unknown file`

```
					print "<th colspan='3' style='padding:5px;'>&nbsp;</th>";
					foreach ($grupos as $grupo) {
						$span = count($grupo['ids']);
						print "<th colspan='$span' style='padding:3px 2px; background:#606060; border-bottom:1px solid #888;'>" . $grupo['label'] . "</th>";
					}
					print "<th colspan='1' style='padding:3px 2px; background:#606060;'>CARTERA</th>";
					print "<th style='padding:3px 2px; background:#606060;'>&nbsp;</th>";
					print "</tr>";

					// Fila 2: columnas individuales
					print "<tr>";
					print "<th style='padding:5px;'>CTO</th>";
					print "<th style='padding:5px;'>FOLIO</th>";
					print "<th style='padding:5px;'>FECHA</th>";
					foreach ($grupos as $g_key => $grupo) {
						foreach ($grupo['ids'] as $idx => $cid) {
							if (isset($cat_map[$cid])) {
								$class = ($idx === 0) ? " class='group-start'" : "";
								print "<th style='padding:5px 2px;'$class>" . $cat_map[$cid]['corto'] . "</th>";
							}
						}
					}
					print "<th style='padding:5px;' class='group-start'>R.CART.</th>";
					print "<th style='padding:5px;' class='group-start'>TOTAL</th>";
					print "</tr>";
					$numpag++;
				}

				$f = explode(' ', $fpago);
				$f = explode('-', $f[0]);
				$fpago = $f[2] . "/" . $f[1] . "/" . $f[0];

				if ($numcontrato != $last_numcontrato) {
					$bg_color = ($bg_color == '#ffffff') ? '#eeeeee' : '#ffffff';
					$last_numcontrato = $numcontrato;
				}

				print "<tr style='background-color:$bg_color;'>";
				print "<td width=35 style='text-align:center;'><b>$numcontrato</b></td>";
				print "<td width=35 style='text-align:center;'><a href='recibo.php?folio=$folio' target='_blank' style='color:#0E4F8E;text-decoration:none;font-weight:bold;'>$folio</a></td>";
				print "<td width=45 style='text-align:center;'><b>$fpago</b></td>";
```

</details>

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time.
2. Create an implementation plan artifact with `request_feedback = true` to request approval. Include any open questions for the user directly in the implementation plan. Don't use the ask_question tool to ask these questions. Stop calling tools and allow the user to review the plan and provide feedback or approval.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, bash_command_reminder

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
**Created:** 11 May 2026, 11:06 am

---

## User Request

Continua.

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php
</details>

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time.
2. Create an implementation plan artifact with `request_feedback = true` to request approval. Include any open questions for the user directly in the implementation plan. Don't use the ask_question tool to ask these questions. Stop calling tools and allow the user to review the plan and provide feedback or approval.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, bash_command_reminder

</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.1 Pro (High)
</details>

---

## User Request

que paso.

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php
</details>

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time.
2. Create an implementation plan artifact with `request_feedback = true` to request approval. Include any open questions for the user directly in the implementation plan. Don't use the ask_question tool to ask these questions. Stop calling tools and allow the user to review the plan and provide feedback or approval.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, bash_command_reminder

</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.1 Pro (High)
</details>

---

## User Request

Continua.

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php

**Open Files:**
- `listados.php`
- `carteravencida.php`
</details>

---

## Agent Response

### Thinking

The user wants me to continue with the full plan from their original request. Let me re-read the original request carefully and execute all the planned changes:

1. Create an MD document with descriptions
2. Fix [ISSUE-TERM-CV] - rename in listados.php and carteravencida.php
3. Evaluate R.CART. column header in concentradocortecaja.php
4. Document gaps/issues/improvements

Let me check the current state of the files that were already modified in the previous (incomplete) attempt, then proceed with the complete plan.

The user wants me to:
1. Apply code changes (some already done in previous attempt)


2. Creating the markdown document...

### Actions

**Tool:** `view_file`
**File:** `carteravencida.php`

**Tool:** `view_file`
**File:** `listados.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.961277087s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file` (L84-124)</summary>

**Path:** `Unknown file`

```

		$paginas = ceil($numerodecontratos / 47);
		$numpag = 1;

		$total = 0;
		$conteo_reg = 1;

		while ($row = $y->fetch_array($res)) {
			if (($mod % 47) == 0) {
				print "<table border=0 cellpadding=3 cellspacing=0>";
				print "<tr><th colspan=4 style='padding:10px;'><b>C A R T E R A &nbsp;&nbsp; V E N C I D A &nbsp;&nbsp; A &Ntilde O &nbsp;&nbsp; $anio &nbsp; (Adeudos por Año)";
				print "</b><br>  &nbsp;&nbsp; (" . $numerodecontratos . " registros)<br>-p&aacute;gina " . $numpag . " de " . $paginas . ", impresa el " . date("d") . " de " . $mes[$hoymes] . " de " . date("Y") . "-</th></tr>";
				print "<tr><td width=30 style='text-align: center'><b>#</b></td><td width=60 style='text-align: center'><b>CONTRATO</b></td><td width=350 style='text-align: center'><b>USUARIO</b></td><td width=80 style='text-align: center'><b>DEBE</b></td></tr>";
				$numpag++;
			}

			print "<tr><td style='text-align: center; color: #666;'>" . $conteo_reg . "</td><td style='text-align: center'><b>" . $row[0] . "</b></td><td>&nbsp;&nbsp;" . $row[1] . "</td><td style='text-align: right'>$ " . number_format($row[2], 2, '.', ',') . "</td></tr>";

			if ((($mod - 46) % 47) == 0) {
				print "</table>";
				print "<h1>&nbsp;</h1>";
			}
			$mod++;
			$conteo_reg++;
			$total += $row[2];
		}

		print "</table>";
		print "<div style='margin-top: 20px; font-family: sans-serif; font-size: 11px; width: 350px; border: 1px solid #ccc; padding: 10px; background: #fafafa;'>";
		print "<b>TOTAL CARTERA VENCIDA $anio:</b><br><br>";
		print "<table border=0 width='100%' style='border:0;'>";
		print "<tr style='border-top: 1px solid #333;'><td style='border:0;'><b>GRAN TOTAL:</b></td><td style='border:0; text-align:right;'><b>$ " . number_format($total, 2, '.', ',') . "</b></td></tr>";
		print "</table>";
		print "</div>";
		print "<h1>&nbsp;</h1>";

		$y->free_result($res);
		$y->cerrarConexion();
		?>
	</body>

```

</details>

---

<details>
<summary>File: `Unknown file` (L138-148)</summary>

**Path:** `Unknown file`

```
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="carteraVencida();">
				<img src='web-assets/img/doc.png'><br>
				<small>Cartera Vencida (Adeudos por Año)</small>
			</div>

			<div class="icon-container" id="iconoarchivo" onClick="corteCajaResumen();">
				<img src='web-assets/img/doc.png'><br>
				<small>Resumen de Caja</small>
			</div>
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `concentradocortecaja.php`

**Tool:** `view_file`
**File:** `concentradocortecajaresumen.php`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file` (L214-245)</summary>

**Path:** `Unknown file`

```
					print "<h2><b>CONCENTRADO PARA CORTE DE CAJA DEL " . cambia_fecha($dia_i, $mes_i, $anio_i) . " AL " . cambia_fecha($dia_f, $mes_f, $anio_f) . "</b></h2>";
					print "<table border=0 cellpadding=3 cellspacing=0>";

					// Fila 1: etiquetas de grupo
					print "<tr>";
					print "<th colspan='3' style='padding:5px;'>&nbsp;</th>";
					foreach ($grupos as $grupo) {
						$span = count($grupo['ids']);
						print "<th colspan='$span' style='padding:3px 2px; background:#606060; border-bottom:1px solid #888;'>" . $grupo['label'] . "</th>";
					}
					print "<th colspan='1' style='padding:3px 2px; background:#606060;'>CARTERA</th>";
					print "<th style='padding:3px 2px; background:#606060;'>&nbsp;</th>";
					print "</tr>";

					// Fila 2: columnas individuales
					print "<tr>";
					print "<th style='padding:5px;'>CTO</th>";
					print "<th style='padding:5px;'>FOLIO</th>";
					print "<th style='padding:5px;'>FECHA</th>";
					foreach ($grupos as $g_key => $grupo) {
						foreach ($grupo['ids'] as $idx => $cid) {
							if (isset($cat_map[$cid])) {
								$class = ($idx === 0) ? " class='group-start'" : "";
								print "<th style='padding:5px 2px;'$class>" . $cat_map[$cid]['corto'] . "</th>";
							}
						}
					}
					print "<th style='padding:5px;' class='group-start'>R.CART.</th>";
					print "<th style='padding:5px;' class='group-start'>TOTAL</th>";
					print "</tr>";
					$numpag++;
				}
```

</details>

---

<details>
<summary>File: `Unknown file` (L279-291)</summary>

**Path:** `Unknown file`

```
						$etiqueta .= " $anio_ref";
					}
					$cnt = isset($nc[$cid]) ? $nc[$cid] : 0;
					print "<tr><td>$etiqueta ($cnt)</td><td style='text-align:right;'>" . money_format1($total) . "</td><td></td></tr>";
				}
			}
			if ($total_cartera > 0)
				print "<tr><td>RECUPERACI&Oacute;N DE CARTERA VENCIDA (A&ntilde;os anteriores a $anio_ref) ($nrez)</td><td style='text-align:right;'>" . money_format1($total_cartera) . "</td><td></td></tr>";

			print "<tr><td style='text-align:right;'><b>TOTAL DE INGRESOS ($numfolios)</b></td><td style='text-align:right;'><b>" . money_format1($total_ingresos) . "</b></td><td></td></tr>";

			print "<tr><td style='text-align:center;'><b>EGRESOS</b></td><td></td><td></td>";

```

</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 11:19 am

---

## User Request

Continua.

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php

**Open Files:**
- `carteravencida.php`
- `listados.php`
</details>

---

## Agent Response

### Thinking

Now I have all the context I need. Let me proceed with:

1. Applying the R.CART. header improvement in concentradocortecaja.php (lines 225 and 242)
2. The resumen already has the year context: "RECUPERACIÓN DE CARTERA VENCIDA (Años anteriores a $anio_ref)" - this is good, it's already homologated.
3. Creating the full MD document

For concentradocortecaja.php:
- Line 225: Group header "CARTERA" → "RECUPER. CARTERA"  
- Line 242: Column header "R.CART." → needs the year annotation


- The two-line header approach works well here: "RECUP. CARTERA" as the group, then "R.CART." with a sub-label `(<$anio_ref)` to match the space constraints of the landscape format while maintaining consistency with the resumen's year context.
- I'll update the group row label and modify the column header to use the two-line format, then generate the markdown document.

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 12.484306502s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 11 May 2026, 11:20 am

---

## Agent Response

### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 11:22 am

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 11:24 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

que archivos cambiaste ?

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 219bd295-172b-4c03-a3df-83f565d88963: Validating Full-Pipeline-Sync Integrity
- Created: 2026-05-09T05:39:34Z
- Last modified: 2026-05-10T22:20:43Z

### USER Objective:
Hardening Agua V2 Production Resilience

Objective: Finalize the migration and stabilization of the Agua V2 webapp in the Host C production environment.
Goals:
1. Implement autonomous UPS fail-safe monitoring with non-blocking shutdown procedures.
2. Automate background service startup sequences and centralized log management for the Kiosko-mode environment.
3. Redesign the Annual Consolidation (Split) interface to provide a pro-active, error-proof administrative dashboard.
4. Validate system resilience through simulated power failure testing and ensure audit integrity across all server operations.

## Conversation 65980880-a19d-4db2-82b2-19454270eff9: Validating Database Connectivity
- Created: 2026-05-08T04:39:13Z
- Last modified: 2026-05-09T05:27:52Z

### USER Objective:
Testing UPS Infrastructure Scripts

Objective: Validate the operational safety of the Agua V2 server's power management and deployment automation in Host C.

Goals:
1. Develop a controlled testing methodology to simulate UPS power failure scenarios without requiring actual hardware power-offs.
2. Verify the end-to-end integration of monitoring, alert, and shutdown scripts (`monitor-ups.ps1`, `shutdown-server.ps1`, and `stop-webapps.ps1`).
3. Ensure the system demonstrates graceful shutdown, robust database backup generation, and automated startup recovery.
4. Execute staged testing scenarios to confirm that system integrity is maintained during power-loss transitions.

## Conversation 4261727a-9250-4b18-a666-5b474f1c4a4c: Identifying Broken Ubuntu Packages
- Created: 2026-04-28T18:06:17Z
- Last modified: 2026-05-09T05:19:39Z

### USER Objective:
System Maintenance And Cleanup

Objective: Systematically clean and optimize the Ubuntu 22 environment to eliminate broken dependencies, stale configuration files, and unused resources.

Goals:
1. Purge residual 'rc' packages and outdated kernel components to reclaim system storage and stabilize package management.
2. Identify and prune invalid '.desktop' shortcut entries that point to non-existent binaries.
3. Validate the integrity of the critical Whisper-cpp/Voxd/CUDA stack to ensure zero-impact maintenance.
4. Synchronize and secure the 'ga-cl-ia' documentation repository through automated git recovery and sync protocols.
5. Enhance the existing cleanup script to include automated identification of newer broken entries and stale snap revisions.

## Conversation 3d0ec69e-8bdd-40fe-a2ee-0c7e71a92060: Migrating Disk Usage Ubuntu
- Created: 2026-05-06T03:39:39Z
- Last modified: 2026-05-09T03:55:59Z

### USER Objective:
Optimizing Ubuntu Disk Usage

Main Objective: Reclaim storage space and improve system performance by auditing and removing redundant software, large temporary files, and obsolete developer tools.

Goals:
1. Reorganize VirtualBox virtual machine storage to utilize high-speed NVMe partitions.
2. Perform a comprehensive purge of legacy Oracle Middleware, .NET SDKs, Liquibase instances, and their associated system environment variables.
3. Consolidate and clean up redundant tools like OnlyOffice and WebLogic Remote Console.
4. Audit and sanitize the user's `~/.bashrc` profile to remove references to deprecated software paths, ensuring a clean and efficient shell environment.

## Conversation f056b1a8-79e6-4c2a-95f5-54a33ea06e98: Explaining Financial Reporting Logic
- Created: 2026-05-07T23:30:40Z
- Last modified: 2026-05-09T03:35:54Z

### USER Objective:
Blindando Categorización Agua V2

Objective: Eradicate Category Zero errors and ensure data integrity in the Agua V2 Host C environment by hardening the application and migration pipeline.

Goals:
1. Implement Poka-Yoke guards in PHP (`cargos.php`) to force correct category assignment (19-22) for administrative charges, overriding user input errors.
2. Automate the sanitization of the master `cargos` catalog within the `10_pipeline_saneamiento.sql` pipeline to prevent historical category corruption post-sync.
3. Validate that all administrative categories (Change of Owner, Fines, Constancias) are correctly mapped and immune to legacy `0` or `1` artifacts.
4. Establish a fail-safe synchronization pattern that ensures all new transactions originate with production-ready metadata, reducing reliance on manual post-hoc SQL patches.

## Conversation bcf279c3-7e58-4790-9c85-a35ebec1c331: Automating Windows Deployment Scripts
- Created: 2026-05-06T00:58:39Z
- Last modified: 2026-05-09T00:27:19Z

### USER Objective:
Automating Agua V2 Windows Deployment

Main Objective: Complete the Agua V2 appliance hardening for Windows 10 Host C to ensure a fully autonomous, production-ready server environment.

Goals:
1. Finalize storage-agnostic infrastructure through centralized configuration ($TargetDrive).
2. Refactor bash deployment scripts to prepare a clean, directory-structured 'agua' webapp package for seamless extraction.
3. Optimize the Windows environment into a Kiosko appliance with automated startup/shutdown and non-intrusive UI/UX.
4. Centralize all deployment assets and operational documentation for the production release (Pase a Producción).
5. Ensure robust system security and stability through automated GPO integration, UPS monitoring, and Chrome Kiosko enforcement.

## Conversation 70b5094f-e7ed-44ff-b37e-6634cd67ee3f: Auditing Git Sync Script
- Created: 2026-05-06T04:38:01Z
- Last modified: 2026-05-06T04:59:45Z

### USER Objective:
Auditing Git Sync Script

Main Objective:
Analyze the safety and integrity of the `sync with link de chatledger-entre main y rama git.sh` script on the Ubuntu 22.04 host to ensure it functions correctly without causing system corruption or repository data loss.

Goals:
1. Verify the script's logic regarding file migration, symbolic link creation, and `.gitignore` management to prevent accidental data deletion.
2. Evaluate potential race conditions or error states if the script is re-run (idempotency checks).
3. Ensure the script correctly handles directory transitions between the local repository and the external `STORAGE_DIR` without breaking the application's reliance on `.chatledger`.
4. Assess the risk of Git state inconsistencies (e.g., cached vs. ignored files) during the synchronization process.

## Conversation 25b74c07-23d4-48e6-b039-435b579b0cf6: Sourcing Water Delivery System Repositories
- Created: 2026-05-05T21:11:02Z
- Last modified: 2026-05-05T21:12:16Z

### USER Objective:
Sourcing Water Delivery System Repositories

Main Objective:
Identify and source existing, publicly available repository examples of water delivery/distribution management systems to serve as a baseline for a PHP/PostgreSQL POC.

Goals:
1. Locate repositories containing full-scope management features including inventory (garrafones), logistics (routes/schedules), vehicle tracking, and personnel management.
2. Evaluate these repositories as data and architectural inputs to facilitate the migration of the user's current "Agua" webapp system into a modernized PHP/PostgreSQL environment.
3. Provide direct links to relevant projects to enable the user to conduct an analysis of business logic and schema structures for the upcoming migration.

## Conversation 89bc16ba-c2d5-462e-9435-d8421190f457: Kiosk Mode Browser Automation
- Created: 2026-04-30T15:35:02Z
- Last modified: 2026-05-01T05:21:04Z

### USER Objective:
Kiosk Mode Browser Automation

Main Objective:
Automate the deployment of the "Agua" web application in a "Kiosk" or "App" mode using Google Chrome.

Goals:
1. Create a PowerShell script (`.ps1`) that launches the specific URL `http://localhost/agua/login/index.php` in a stripped-down Chrome window without navigation bars, tabs, or address bars.
2. Ensure the resulting script file is placed on the user's desktop for quick, one-click access.
3. Configure the browser flags (specifically `--app` or `--kiosk`) to ensure a distraction-free, application-like experience suitable for the local web deployment.

## Conversation 4207a55e-b96d-41a1-958d-feb2ced23088: Automating Agua Webapp Deployment
- Created: 2026-04-30T05:31:52Z
- Last modified: 2026-04-30T07:00:25Z

### USER Objective:
Automating Agua Webapp Deployment

Main Objective: Create a robust Bash automation script to sanitize the Agua V2 application directory for secure deployment to the production Apache Host C.

Goals:
1. Develop a cleanup script that removes sensitive development metadata (.git, logs, temporary backups, and IDE/OS artifacts) without disrupting application functionality.
2. Implement a safe execution workflow, preferably using rsync or dry-run validation, to ensure that only production-ready files are deployed.
3. Preserve essential application directory structures (such as upload or cache folders) while clearing their contents to maintain environment parity.
4. Enhance deployment reliability by ensuring the finalized production directory excludes redundant files that could pose security risks or performance overhead on the web server.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 11 May 2026, 11:25 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 11:25 am

---

## User Request

continua.

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php
</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 11:25 am

---

## User Request

Continue

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

The user is asking what files I changed. Let me give a clear summary and verify the current state of each file.

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.918812943s
- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 11:26 am

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 11:26 am

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 11:26 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

## User Request

De la  2.4 Tabla de Categorías — Inclusiones y Exclusiones en Cartera
SON 18 conceptos INCLUIDoS que contabilizan para calcular la  Cartera Vencida ?

<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

The user is asking me to verify: are there really 18 categories INCLUDED in the Cartera Vencida calculation?

Let me count what's in my document's "Categorías INCLUIDAS" table:

1. ID 1 - CUOTA FIJA DE AGUA
2. ID 2 - COBRO DE AGUA POTABLE
3. ID 3 - COBRO DE DRENAJE
4. ID 4 - COBRO POR CUOTAS ESPECIALES
5. ID 5 - COBRO POR REPARACIONES
6. ID 7 - COBRO POR METROS LINEALES


7. ID 8 - COBRO POR CONTRATOS NUEVOS (AGUA)
8. ID 9 - COBRO POR REPOSICIÓN DE CREDENCIAL
9. ID 10 - COBRO POR COOPERACIONES
10. ID 11 - COBRO DE RECARGOS NORMALES
11. ID 12 - COBRO POR SANCIONES
12. ID 13 - COBRO POR CANCELACIÓN DE SERVICIO
13. ID 14 - COBRO POR RECONEXIÓN DE SERVICIO
14. ID 15 - COBRO POR... (this one appears to be cut off)
15. ID 16 - COBRO DE RECARGOS DE AGUA
16. ID 17 - COBRO DE RECARGOS DE DRENAJE
17. ID 18 - MANTENIMIENTO

So I'm counting 17 IDs total since I excluded ID 6. The full catalog runs from 1 to 22, with IDs 19-22 being the new V2 categories, and IDs 6, 19, 20, and 21 being excluded from this list.

Let me verify this against the actual database code to make sure I have the right categories. Looking at the group assignments in the PHP file, I can see how the categories are distributed across different groups. So the document listing is accurate at 17 entries—the original catalog had 18 categories, but excluding category 6 brings it down to 17 that are actually included in the cartera.

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 18.085377850s
- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

## User Request

si, actualizalo, para no haya confusiones ,y este documento tenga la verdad de como funciona, actuamente la CV.
quita las partes  tecnias de estas secciones, y concentralas en un tabla para simplificar:
 3.2 carteravencida.php — Cartera Vencida (Adeudos por Año) 
 3.3 listadeudores.php — Relación de Usuarios con Deudas 
 3.4 concentradocortecaja.php — Concentrado de Corte de Caja (Detallado) 
 3.5 concentradocortecajaresumen.php — Resumen de Caja 
Elimina esto:
 4. Cambios de Código Aplicados (2026-05-11)


<details>
<summary>Context</summary>

**Active File:** `listados.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

The user wants me to update the MD document with these changes:

1. Add explicit counts: "17 Categorías INCLUIDAS" and "5 Categorías EXCLUIDAS" in the sub-table headers
2. Remove technical parts from sections 3.2-3.5, consolidate them into a single table
3. Remove section 4 entirely (Cambios de Código Aplicados)
4. Renumber section 5 to 4, section 6 to 5

Let me rewrite the document.

### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 91.034878929s
- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 11 May 2026, 11:42 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

## User Request

en concentradocortecaja, del DEL 29 DE SEPTIEMBRE DE 2025 AL 04 DE ENERO DE 2026 con anio_corte=2025
Para  col: CUOTAS ANUALES/AGUA ? 600  y renglon: CTO: 1041 , folio 24017 y fecha	14/10/202; con total 1,140.00 y R.CART vacio. que significa explica.

Para CTO: 1163	, folio: 24086	, fecha 17/12/2025y con R.CART = 1,230 = Total; que significa explica. 

. Para R.CART. = 23,900.00 y total = 110,344.00, que significa para todo este periodo explica. 

<details>
<summary>Context</summary>

**Active File:** `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`
**Language:** markdown
</details>

---

## Agent Response

### Thinking

The user is asking me to explain specific rows/data from the concentradocortecaja report for the period 29/09/2025 to 04/01/2026 with anio_corte=2025. Let me query the database to get the actual data and explain it.

Let me first connect to the database and query the specific data points they're asking about.

### Actions

**Tool:** `mcp_bdawahost-a_query`

**Tool:** `mcp_bdawahost-a_query`

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.256764045s
- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:02 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:02 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:02 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 12:02 pm

---

## Agent Response

### Thinking

The user got an error about looping content. Let me provide a clean response without any repetitive patterns.

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.979688455s
- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

## User Request

debes usar bd awa en  host c; reanaliza y presenta.

<details>
<summary>Context</summary>

**Active File:** `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`
**Language:** markdown
</details>

---

## Agent Response

### Thinking

The user wants me to use the Host C database. Let me check the rules for the connection details.

### Actions

**Tool:** `view_file`
**File:** `01-infra-hosts.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.902008374s
- **Model:** Claude Opus 4.6 (Thinking)
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

- **Model:** Claude Opus 4.6 (Thinking)
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

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Cancelled
**Created:** 11 May 2026, 12:04 pm

---

## User Request

Inicia, pues actualice el mcp de host c

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

## Agent Response

### Thinking

The user updated the MCP config for host C. Let me retry the queries.

### Actions

**Tool:** `mcp_bdawahost-c_query`

**Tool:** `mcp_bdawahost-c_query`

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 7.373005645s
- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:08 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:08 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:09 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Opus 4.6 (Thinking)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 12:09 pm

---

## User Request

Continua. 

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 12:10 pm

---

## User Request

Continue

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

## Agent Response

### Thinking

**Initiating Analysis Continuation**

Okay, I'm now tasked with restarting the analysis on Host C. I understand that previous attempts timed out, likely due to connection issues. The MCP has been updated, so I should try again. I am instructed to continue the analysis ("Continue", "Inicia"), so I will proceed.




### Actions

**Tool:** `mcp_bdawahost-c_query`

**Tool:** `mcp_bdawahost-c_query`

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.549066480s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:10 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:10 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:10 pm

---

## Agent Response

### Thinking

**Diagnosing Connection Failure**

I'm still grappling with the Host C timeout. It seems the user updated the MCP, so I'm now digging into the `.mcp.json` file to identify the specific changes. My goal is to determine the connection issue root or try using the CLI.




### Actions

**Tool:** `view_file`
**File:** `.mcp.json`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.568890940s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
{
  "mcpServers": {
    "bdawahost-a": {
      "command": "docker",
      "args": [
        "exec",
        "-i",
        "context7-mcp-mysql",
        "npx",
        "-y",
        "@f4ww4z/mcp-mysql-server",
        "mysql://root:comite_2026@127.0.0.1:3306/awa"
      ],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    },
    "bdawahost-b": {
      "command": "docker",
      "args": [
        "exec",
        "-i",
        "context7-mcp-mysql",
        "npx",
        "-y",
        "@f4ww4z/mcp-mysql-server",
        "mysql://root:sdrastbuy@192.168.0.116:3306/awa"
      ],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    },
    "bdawahost-c": {
      "command": "docker",
      "args": [
        "exec",
        "-i",
        "context7-mcp-mysql",
        "npx",
        "-y",
        "@f4ww4z/mcp-mysql-server",
        "mysql://root:comite_2026@192.168.1.128:7002/awa"
      ],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    }
  }
}

```

</details>

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
**Created:** 11 May 2026, 12:11 pm

---

## Agent Response

### Thinking

**Verifying Network Connectivity**

I've confirmed network connectivity to the target port. The connection to 192.168.1.128, port 7002, was successful via TCP. Now, I'm shifting my focus towards the MCP server's internal workings within the Docker container. I suspect a potential conflict stemming from that "patch" referenced in Rule 06. Perhaps there's a misconfiguration there.




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.717248471s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:11 pm

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
**Created:** 11 May 2026, 12:11 pm

---

## Agent Response

### Thinking

**Investigating MySQL Service**

I've discovered MySQL isn't running on Host A. My initial instinct was to start it, but then Rule 05, referencing "Host C," caught my attention. I'm now exploring the possibility of starting XAMPP services, considering the user's explicit directive to use "bd awa en host c." Host C it is.


**Analyzing Network Connectivity**

I've confirmed MariaDB is running on Host C via `nc`, so the server is accessible. The MCP client, however, is still timing out. My current suspicion is that the Docker container `context7-mcp-mysql` on Host A has network connectivity issues reaching Host C at `192.168.1.128`. Running a `ping` from within the container is tricky, requiring a `run_command` I don't have. For now, I'm bypassing MCP by executing the SQL queries via the CLI, as a workaround, from Host A to Host C. I'm starting with queries for Folios 24017 and 24086.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.929877562s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:11 pm

---

## Agent Response

### Thinking

**Analyzing Folio Data**

I've successfully retrieved data for CTO 1041 Folio 24017. It's showing a total of 1,140.00, broken down into 600.00 for Cat 2 (Agua) and 540.00 for Cat 16 (Recargo Agua). The latter comprises 9 items each at 60.00. I am now looking at the next calculation, considering `anio_ref = 2`.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.146902550s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:11 pm

---

## Agent Response

### Thinking

**Calculating the Summation**

I've calculated the total for folio CTO 1163/24086. It seems I must add 150.00 for Cat 1 (2022), 600.00 for Cat 2 (2024), and 480.00 from Cat 16 (2023 and 2024). This comes to 1,230.00. Now, I need to understand what "Since" refers to here.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.200081352s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:12 pm

---

## Agent Response

### Thinking

**Presenting Data Analysis**

The re-analysis is complete. I can now confidently present a detailed analysis using real data extracted from Host C, mirroring the user's specified scenario. The analysis covers the period from September 29th, 2025, to January 4th, 2026, with a reference year of 2025. I am ready to start presenting the initial case.


**Summarizing Charge Details**

I have analyzed two specific folios with their charge breakdowns. Folio 24017, from October 14, 2025, shows charges for water and water surcharge, all categorized as current since they are from 2025. Folio 24086, from December 17, 2025, includes charges from 2022, 2023, and 2024, which are now all consolidated under R.CART. I am now working on understanding the total analysis.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.863304054s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

Si, ponlo como anexo.

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Cartera Vencida — Modelo, Cálculo y Reportes

> **Audiencia:** Contador y Operador de la Webapp Agua V2
> **Última actualización:** 2026-05-11
> **Rama:** `feature/upgrade-v2-win-xampp`

---

## 1. Definición y Contexto

La **Cartera Vencida** representa la suma de todos los adeudos de un usuario (contrato) que no han sido liquidados y cuyo año de cargo es **anterior al ejercicio fiscal de consulta**. Es decir: dinero que ya debió haberse cobrado en períodos anteriores y aún está pendiente.

> **No confundir con:** Los adeudos del año en curso (ejercicio corriente), que son independientes aunque también sean deudas pendientes. El sistema los separa con precisión.

---

## 2. Modelo de Cálculo

### 2.1 Variables y Parámetros Clave

| Variable | Descripción | Ejemplo |
|---|---|---|
| `anio_ref` | **Año fiscal de referencia.** Define la frontera entre corriente y vencido. Se toma del año de la fecha de inicio del período analizado. Puede sobrescribirse con `?anio_corte=YYYY`. | `2026` |
| `anio` (del cargo) | Ejercicio fiscal al que pertenece cada cargo en la base de datos. | `2024`, `2025` |
| `estado` (del cargo) | `0` = pendiente de pago; `1` = pagado. | |
| `estado` (del contrato) | `1` = Activo; `2` = Suspensión Temporal; `3` = Suspensión Administrativa; `4` = **Suspensión Definitiva** | |
| `estado` (del usuario) | `2` = No Localizado (C.N.L.) | |

### 2.2 Regla de Pertenencia a Cartera Vencida

Un cargo pertenece a la Cartera Vencida si cumple **todas** las condiciones:

```
cargo.estado = 0                         →  aún no pagado
cargo.anio < anio_ref                    →  de un ejercicio anterior
contrato.estado ≠ 4                      →  contrato NO en Suspensión Definitiva
categoria NOT IN (6,19,20,21,22)         →  concepto cobrable periódico (ver tabla §2.4)
```

### 2.3 Fuente de Datos (Vistas Canónicas — Host C V2)

Host C opera con la tabla `ligacargos` partida en dos para optimizar rendimiento:

| Vista | Contenido | Cuándo se usa |
|---|---|---|
| `vw_ligacargos_all` | Activa (≥2026) + histórico (≤2025), todos los estados | Concentrado de Caja (cobra **pagados** `estado=1`) |
| `vw_ligacargos_pendientes` | Activa + histórico, solo `estado=0` | Cartera Vencida (busca **no pagados**) |

---

### 2.4 Tabla de Categorías — Inclusiones y Exclusiones en Cartera

#### 17 Categorías INCLUIDAS en Cartera Vencida

Son los conceptos de cobro periódico o acumulativo que generan deuda real cobrable:

| # | ID | Nombre Largo (Catálogo) | Nombre Corto | Notas |
|---|---|---|---|---|
| 1 | 1 | CUOTA FIJA DE AGUA | CUOTA/FJA | Cuota base mensual |
| 2 | 2 | COBRO DE AGUA POTABLE | AGU/POT | Cuota diferenciada por volumen |
| 3 | 3 | COBRO DE DRENAJE | DRN | Derechos de conexión/uso |
| 4 | 4 | COBRO POR CUOTAS ESPECIALES | CUO/ESP | Trámites especiales |
| 5 | 5 | COBRO POR REPARACIONES | REP | Multas ordinarias/reparaciones |
| 6 | 7 | COBRO POR METROS LINEALES | MTS/LIN | Servicios proporcionales |
| 7 | 8 | COBRO POR CONTRATOS NUEVOS (AGUA) | CTO/NVO | Conexión nueva agua |
| 8 | 9 | COBRO POR REPOSICIÓN DE CREDENCIAL | REP/CRD | |
| 9 | 10 | COBRO POR COOPERACIONES | COOP | Otro ingreso cooperativo |
| 10 | **11** | **COBRO DE RECARGOS NORMALES** | **REC/NRM** | **Recargos de años anteriores = deuda real cobrable ✓** |
| 11 | 12 | COBRO POR SANCIONES | SANC | |
| 12 | 13 | COBRO POR CANCELACIÓN DE SERVICIO | CANC/SRV | |
| 13 | 14 | COBRO POR RECONEXIÓN DE SERVICIO | RCON | |
| 14 | 15 | COBRO POR CONEXIONES | CON | |
| 15 | **16** | **COBRO DE RECARGOS DE AGUA** | **REC/AGU** | **Recargos de años anteriores = deuda real cobrable ✓** |
| 16 | **17** | **COBRO DE RECARGOS DE DRENAJE** | **REC/DRN** | **Recargos de años anteriores = deuda real cobrable ✓** |
| 17 | 18 | MANTENIMIENTO | MTTO | |

> **¿Por qué se incluyen los recargos (11, 16, 17)?** Los recargos de ejercicios anteriores
> son deuda vencida real y cobrable. Su inclusión garantiza que la columna **R.CART.** del
> concentrado de caja cuadre a **$0 de diferencia** (ver §2.5).

#### 5 Categorías EXCLUIDAS de Cartera Vencida

| # | ID | Nombre Largo (Catálogo) | Nombre Corto | Razón de Exclusión |
|---|---|---|---|---|
| 1 | **6** | COBRO POR FALTAS DE ASAMBLEA | ASAM/FLT | Se sincroniza automáticamente por usuario. No es cargo periódico individual por contrato. Sin `anio` fijo (acumulativo). |
| 2 | **19** | COBRO POR CAMBIO DE PROPIETARIO | CB/PROP | Concepto único V2 — trámite administrativo, no cuota periódica |
| 3 | **20** | MULTA POR DESPERDICIO DE AGUA | MLT/DESP | Concepto único V2 — sanción puntual |
| 4 | **21** | EXPEDICIÓN DE CONSTANCIA DE NO ADEUDO | CNT/NADO | Concepto único V2 — trámite puntual |
| 5 | **22** | REPARACIÓN DE FUGAS (EXCAVACIÓN Y CANCEL.) | CNC/FUGA | Concepto único V2 — servicio puntual |

> **Total del catálogo:** 22 categorías (IDs 1–22).
> **Incluidas:** 17 (toda categoría que NO esté en la lista de exclusiones).
> **Excluidas:** 5 (IDs 6, 19, 20, 21, 22).

---

### 2.5 El Cuadre de Caja a $0 — ¿Qué Significa?

En el **Concentrado de Corte de Caja** cada fila de pago (folio) tiene un total horizontal:

```
TOTAL_FILA = Σ(todas las categorías año corriente) + R.CART.
```

Al sumar todos los folios del período, la suma de columnas debe ser **idéntica** al total general:

```
Σ(R.CART.) + Σ(cat_2) + Σ(cat_3) + ... + Σ(cat_N) = TOTAL_TODO
```

Si los recargos de años anteriores (cat 11, 16, 17) se **excluyeran** de R.CART. pero el pago
los incluyera en el folio, quedarían "flotando" sin columna asignada → el total de la fila
superaría la suma de columnas → **descuadre visible en rojo** en la interfaz.

Incluirlos en R.CART. asegura: diferencia = **$0** en todos los períodos validados.

---

## 3. Representación por Reporte

### 3.1 Resumen Comparativo

| Reporte | Nombre en Menú | ¿Qué muestra? | Filtro de Año | Cartera Vencida | Exclusiones canónicas |
|---|---|---|---|---|---|
| `carteravencida.php` | **Cartera Vencida (Adeudos por Año)** | Listado de contratos con adeudo pendiente en un año fiscal específico. | `?anio=YYYY` (default: año actual) | Es el **reporte principal** de cartera: muestra la deuda NO pagada del año solicitado | ✅ `NOT IN (6,19-22)`, `c.estado≠4`, `u.estado≠2` |
| `listadeudores.php` | **Listado de Deudores** | Total de deuda acumulada por contrato, **sin separar años**. Incluye deuda corriente + vencida en un solo monto. | Sin filtro de año | No desglosa cartera vencida vs. corriente; muestra el total pendiente integral | ✅ `NOT IN (6,19-22)`, `c.estado≠4`, `u.estado≠2` |
| `concentradocortecaja.php` | **Corte de Caja — Por Fechas** | Reporte detallado por folio de pago: cada fila = un pago con desglose por categoría + cartera recuperada | Columna `R.CART.` usa `anio < anio_ref` | Columna **R.CART. (`<$anio_ref`)**: monto *cobrado* en el período que correspondía a deuda de años anteriores | ✅ `NOT IN (6,19-22)` en la columna R.CART. |
| `concentradocortecajaresumen.php` | **Resumen de Caja** | Documento oficial con firmas. Ingresos agrupados por concepto + egresos + existencia en banco | Línea con `(Años anteriores a $anio_ref)` | Línea **"RECUPERACIÓN DE CARTERA VENCIDA (Años anteriores a YYYY) (N folios)"** | ✅ `NOT IN (6,19-22)` en la línea de cartera |

> **Diferencia clave entre reportes:**
> - `carteravencida.php` y `listadeudores.php` muestran **deuda NO pagada** (pendiente, `estado=0`).
> - `concentradocortecaja.php` y `concentradocortecajaresumen.php` muestran **deuda YA cobrada** (pagada, `estado=1`) en el período, desglosando cuánto de ese cobro era cartera de años anteriores.

---

## 4. Mejoras por Realizar (Backlog)

### `[GAP-CALC-FUTURE]` — Cargos con Año Futuro No Aparecen en Ninguna Columna

**Contexto:** Si un usuario paga por adelantado cargos del año siguiente (ej. paga 2027 en
2026), el monto no cae en ninguna columna del concentrado detallado: ni corriente (`anio=anio_ref`)
ni R.CART. (`anio<anio_ref`). El total de la fila sería mayor que la suma de sus columnas →
**descuadre visual en rojo** en ese folio específico (total general sigue siendo correcto).

**Mejora sugerida:** Añadir columna `ANTICIPOS` que capture `anio > anio_ref AND estado=1`.

---

### `[IMPROVEMENT-CONSOLIDATED-CV]` — No Existe Vista de Deuda Histórica Total

**Contexto:** `carteravencida.php` muestra la deuda pendiente de **un año a la vez**. No existe
reporte que consolide la deuda vencida de **todos los ejercicios anteriores** por contrato.
El contador debe generar el reporte año por año y sumar manualmente.

**Mejora sugerida:** Crear un reporte consolidado o añadir modo `?anio=todos` al reporte
actual que muestre el acumulado histórico con desglose por ejercicio.

---

### `[GAP-NO-LOC-RECOVERY]` — Deuda de Usuarios No Localizados en Limbo Informativo

**Contexto:** Los usuarios en Estado 2 (No Localizados, `u.estado=2`) son excluidos del total de Cartera
Vencida. En el Concentrado Detallado aparecen como **C.N.L.** (Cartera No Localizada) y **no contabilizan
en el TOTAL**. No existe reporte dedicado que muestre el monto total de C.N.L. ni su evolución.

**Mejora sugerida:** Añadir fila informativa "CARTERA NO LOCALIZABLE (C.N.L.)" al pie del
Resumen de Caja y del reporte de Cartera Vencida, marcada como **NO suma al total** pero visible
para seguimiento gerencial.

---

### `[ISSUE-CONCEPTUAL-ENCUADRE]` — Definición del Filtro Canónico para Futuros Desarrollos

**Contexto:** Para que un cargo sea considerado parte de la Cartera Vencida en cualquier reporte
del sistema, debe satisfacer la siguiente condición. Se documenta aquí para que cualquier
futuro desarrollo aplique exactamente el mismo filtro y no introduzca divergencias:

| Condición | Significado |
|---|---|
| `cargo.estado = 0` | El cargo está **pendiente** de pago (no cobrado aún). Estado `1` = ya pagado. |
| `contrato.estado ≠ 4` | El contrato **no** está en Suspensión Definitiva. Estado 4 = baja permanente; su deuda fue depurada y ya no es cobrable. |
| `categoria ≠ 6` | **Faltas de Asamblea:** gestión colectiva automática, no cargo individual por contrato. |
| `categoria ≠ 19` | **Cambio de Propietario:** trámite único administrativo, no cuota recurrente. |
| `categoria ≠ 20` | **Multa por Desperdicio:** sanción puntual por evento, no periódica. |
| `categoria ≠ 21` | **Constancia de No Adeudo:** trámite puntual de servicio, cobro único. |
| `categoria ≠ 22` | **Reparación de Fugas:** servicio puntual por evento de infraestructura. |
| `cargo.anio < anio_ref` | El cargo pertenece a un ejercicio **anterior** al año de referencia. |

**Mejora sugerida:** Encapsular este filtro en una Vista SQL para que todos los reportes
tengan una única fuente de verdad y no sea necesario mantener la constante de exclusión
sincronizada manualmente en múltiples archivos.

---

## 5. Tabla de Congruencia Cruzada

Los siguientes totales **deben coincidir** para el mismo período entre reportes:

| Métrica | `concentradocortecaja.php` | `concentradocortecajaresumen.php` | Validación |
|---|---|---|---|
| Total folios del período | `COUNT(DISTINCT folio)` al pie | Folios agrupados en totales | ✅ Idénticos |
| Monto por categoría (ej. Agua) | Columna AGU/POT, solo `anio=anio_ref` | Línea "COBRO DE AGUA POTABLE $anio" | ✅ Idénticos |
| Monto R.CART. | Columna `R.CART. <$anio_ref` | Línea "RECUPERACIÓN CARTERA VENCIDA" | ✅ Idénticos |
| Exclusiones de cartera | `NOT IN (6,19,20,21,22)` | `NOT IN (6,19,20,21,22)` — misma constante | ✅ Homologados |
| Cuadre horizontal | Σ columnas = TOTAL → diferencia $0 | N/A (resumen vertical) | ✅ Validado 5+ períodos |

---

*Documento generado: 2026-05-11 | Rama: `feature/upgrade-v2-win-xampp`*

```

</details>

---

## Agent Response

### Thinking

**Adding Practical Examples**

I'm focusing on incorporating real-world scenarios into the document. I plan to append the "Anexo: Ejemplos Prácticos de Lectura (Casos Reales)" section to enhance understanding for both the accountant and operator. These practical cases will be derived from real operational periods.


**Analyzing Payment Scenarios**

I've been working through specific payment scenarios from late 2025 into early 2026. I've broken down three key cases, each with distinct characteristics. Scenario A involves a 100% current payment for the 2025 water annuity and associated recargos. Scenario B showcases a 100% "cartera" or old debt payment, covering 2022-2024. Finally, I've started pulling together the period's productivity data, including total revenue and debt recovery figures.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.970406645s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 11 May 2026, 12:20 pm

---

## Agent Response

### Thinking

**Finalizing the Document**

I've just finalized the comprehensive Markdown document, "CARTERA\_VENCIDA\_MODELO\_Y\_REPORTES.md". I've updated the counts to reflect 17 inclusions and 5 exclusions, and I've significantly simplified sections 3.2 and 3.3. The document is now complete, including the requested annex.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.289986013s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

actualiza GEMINI.md y asociados; comitea todo y sube a los repos.

<details>
<summary>Context</summary>

**Active File:** `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`
**Language:** markdown
</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `GEMINI.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# GEMINI.md - Central Project Context for Agua (MASTER INDEX)

Este archivo es el punto de entrada principal para el asistente de IA (Antigravity/Gemini) y un resumen del contexto del proyecto **Agua**. El conocimiento detallado y las reglas de oro se han distribuido en archivos modulares dentro de `.agents/rules/`.

> [!IMPORTANT]
> **Gemini**: Debes consultar y seguir las reglas detalladas en el directorio `.agents/rules/` para cada tarea orquestada en este proyecto.

---

## 🗺️ Índice de Reglas y Conocimiento (Ground Truth)

| Regla | Descripción | Archivo |
| :--- | :--- | :--- |
| **01** | **Infraestructura y Hosts** | [.agents/rules/01-infra-hosts.md](file:///.agents/rules/01-infra-hosts.md) |
| **02** | **Diccionario de Reglas por Módulo** | [.agents/rules/02-reglas-negocio.md](file:///.agents/rules/02-reglas-negocio.md) |
| **03** | **Sincronización de Datos (B -> A)** | [.agents/rules/03-sincronizacion-b-a.md](file:///.agents/rules/03-sincronizacion-b-a.md) |
| **04** | **Arquitectura MVC y Directorios** | [.agents/rules/04-arquitectura-mvc.md](file:///.agents/rules/04-arquitectura-mvc.md) |
| **05** | **Despliegue y Automatización (Host C)** | [.agents/rules/05-despliegue-host-c.md](file:///.agents/rules/05-despliegue-host-c.md) |
| **06** | **Accesos, Rutas y Herramientas** | [.agents/rules/06-accesos-rutas.md](file:///.agents/rules/06-accesos-rutas.md) |
| **07** | **Control de Versiones y Git Workflow** | [.agents/rules/07-git-workflow.md](file:///.agents/rules/07-git-workflow.md) |
| **08** | **Integridad del Ground Truth / Runbook** | [.agents/rules/08-integridad-ground-truth.md](file:///.agents/rules/08-integridad-ground-truth.md) |
| **09** | **Documentación de Sesión** | [.agents/rules/09-sesion-summary.md](file:///.agents/rules/09-sesion-summary.md) |
| **10** | **Limitantes Conocidas de la Webapp** | [.agents/rules/10-limitantes-webapp.md](file:///.agents/rules/10-limitantes-webapp.md) |
| **11** | **Estándares de Código y Seguridad** | [.agents/rules/11-estandares-codigo.md](file:///.agents/rules/11-estandares-codigo.md) |
| **12** | **Uso Seguro de `Conexion.php` (mysqli)** | [.agents/rules/12-estandar-conexion-mysqli.md](file:///.agents/rules/12-estandar-conexion-mysqli.md) |

---

## 🛠️ Skills Personalizadas (Workflows y Estándares)
Estas habilidades definen **cómo** ejecuto las tareas técnicas:
- **[UI/UX Modern Refactor](file:///.agents/skills/skill-ui-modern-refactor/SKILL.md)**: Estándares de CSS/HTML para el Host C.
- **[Dynamic UI & AJAX](file:///.agents/skills/skill-dynamic-html-ajax/SKILL.md)**: Interactividad con `paxscript.js`.
- **[Plates Templating Patterns](file:///.agents/skills/skill-plates-templating/SKILL.md)**: Uso del motor de plantillas Views.
- **[PHP-Migration-74](file:///.agents/skills/skill-migration-php74/SKILL.md)**: Refactorización de PHP 5.5 a 7.4.
- **[Database Evolution](file:///.agents/skills/skill-database-evolution/SKILL.md)**: Partición de `ligacargos` y migración a MariaDB.

---

## 🏗️ Workflows Disponibles (Procesos Detallados)
- **[/update-business-data](file:///.agents/workflows/update-business-data.md)**: Sync B → A (Comando: `Sync-B2A`)
- **[/deploy-to-host-c](file:///.agents/workflows/deploy-to-host-c.md)**: Sync A → C (Comando: `Sync-A2C`)

---

## 🚨 Módulos Críticos y Auditoría Constante
Existen funcionalidades core que requieren especial atención para asegurar la congruencia de datos:
- **Lógica Híbrida y Retroactividad (V2)**: Motor de Mora Continuo y Reglas de Paridad en `transiciones_estado_contratos.md`.
- **Estados de Contrato**: Transiciones entre `1 (ACTIVO)`, `2 (SUSPENSIÓN TEMPORAL)`, `3 (SUSPENSIÓN ADMINISTRATIVA)` y `4 (SUSPENSIÓN DEFINITIVA)`. Ver matriz completa en `transiciones_estado_contratos.md`.
- **Cartera Vencida (`carteravencida.php`)**: Validación de deuda morosa.
- **Corte de Caja (`concentradocortecaja.php`)**: Ingresos diarios contra reportes detallados.
- **Resumen de Caja (`reportes/concentradocortecajaresumen.php`)**: Consolidación total.
- **Saneamiento Estructural (PMU)**: Consolidación de asambleas, unicidad de cargos y depuración de usuarios placeholder en `docs-dev/doc-estabilizacion/funcionalidad-reglas-negocio/analisis_paridad_3hosts.md`.
- **Plan de Pruebas Maestro**: `docs-dev/doc-estabilizacion/pruebas-cp-manuales-auto/Plan de Pruebas — Sprint Post-Correcciones.md`.

---

## 🚀 Estado Actual: Host C UP & RUNNING (2026-04-07)

- Split `ligacargos` **completado**: 2,513 activa (≥2026) + 192,545 histórico (≤2025)
- Schema v2 completo + webapp PHP 7.4 adaptada en `feature/upgrade-v2-win-xampp`
- Pipeline de Sincronización B → A → C **Maestro** (Comando: `Full-Pipeline-Sync`)
- **Saneamiento Estructural (2026-04-26)**: 100% de asambleas consolidadas (max 3/día) y catálogos con llaves de unicidad.
- Puertos Host C: Apache **7001**, MariaDB **7002**
- Protocolo de Migración: `docs-dev/migration-aguav2/MIGRATION_PROTOCOL.md`
- Checklist pase a producción: `docs-dev/migration-aguav2/host-c-setup/07_transferir_datos.md`

## 🛡️ Automatización y Hardening Host C (2026-05-08)
El entorno Windows 10 ha sido convertido en un Appliance Kiosko 100% automatizado:
- **Agnóstico a Discos:** Todos los scripts y archivos de configuración (Apache/MySQL/PHP) heredan dinámicamente la unidad destino desde `config.ps1`.
- **Auto-Arranque:** Tareas Programadas inician los servicios al logueo de sesión.
- **Apagado Seguro:** El script `shutdown-server.ps1` fuerza un volcado físico en ZIP de la BD antes de apagar la máquina (evitando corrupciones).
- **Kiosko Restringido:** El script `setup-full.ps1` crea una carpeta `aguav2` en el escritorio para la gestión técnica, y deja expuesto solo el Kiosko de Chrome y el botón de apagado para los operadores. Chrome está bloqueado vía Registro para evitar actualizaciones.

> **⚠️ Filosofía de Uso**: Los scripts `Sync-*` y `Full-Pipeline-Sync` son **Herramientas de Migración**, no tareas recurrentes. Se ejecutan durante el desarrollo para estabilizar Host C. En producción (Go-Live) se ejecutan **una última vez** y luego se retiran. Host C opera autónomamente.

> Ver tabla de comandos canónicos y comportamiento de flags en: `docs-dev/migration-aguav2/MIGRATION_PROTOCOL.md`

## 🔒 Fixes de Seguridad en Motor de Recargos (2026-04-26)

Dos guards implementados en `includes/negocio/cargos.php` para blindar el flag `recargo` del catálogo:

| Guard | Función | Descripción |
|-------|---------|-------------|
| **G01** | `calcula_recargos()` | Retorno temprano si `recargo=0` — la ruta de aplicación manual ya no genera mora en cargos sin flag. |
| **G02** | `creaCargo()` / `modificaCargo()` | Fuerza `recargo=0` server-side para cualquier categoría ≠ 2 (AGUA) o 3 (DRENAJE). Cierra la vía UI del checkbox "Es una multa". |

**Cambios en BD asociados:**
- `config_sistema.descripcion` extendida de `varchar(255)` → `TEXT` (Hosts A y C).
- Nuevos parámetros: `paridad_anios_max_recargo=5`, `paridad_ignorar_fpago_fantasma=1`.
- Script sincronizado: `docs-dev/migration-aguav2/host-c-setup/03_config_datos_catalogo.sql`.

**UI:** `admin/operaciones/configuracion.php` rediseñado — 2 columnas, modal de confirmación con diff, descripciones desde BD. Ver regla F09 en `02-reglas-negocio.md`.

---

## 🔒 Fixes Financieros y Arquitectura Poka-Yoke (2026-04-28)

Se implementaron parches estructurales para asegurar la integridad de la configuración y la reversibilidad forense:

| Fix | Componente | Descripción |
|-------|---------|-------------|
| **Poka-Yoke Numérico** | `cargaConfig()` | Intercepción con `preg_match` y `str_replace` para sanear globalmente cualquier número formateado (ej. "10,500.00") en `config_sistema` antes del casteo `floatval/intval`. Protege 18 variables nativas. |
| **Reversa Incondicional** | `_getReversal()` | El botón "Revertir transición" se ha desacoplado de las reglas de deuda y ahora es permanentemente visible en la UI tras un cambio de estado válido. |
| **Límite Bomba** | `calcula_recargos()` | Se introdujo una regla de quiebre de deuda máxima (`reversal_threshold`). El motor deja de generar mora si el contrato alcanza este tope de deuda. |
| **Toggle de Límite** | `reversal_threshold_enable` | Nuevo parámetro global para activar/desactivar (1/0) el Límite Bomba de recargos a voluntad del operador. Por default, apagado. |

---

## 🐛 Bugs Host C corregidos (2026-04-07, commit `bd1cb2f`)

Derivados del split `ligacargos`: 5 PHPs usaban `FROM ligacargos` directa (perdían datos ≤2025).

| Archivo | Fix aplicado |
|---------|-------------|
| `reportes/listadeudores.php` | Eliminado cross join implícito `ligacargos.monto` → `vw_ligacargos_pendientes.monto` |
| `reportes/carteravencida.php` | Añadido `OR anio IS NULL` para históricos migrados sin anio |
| `reportes/concentradocortecajaresumen.php` | `FROM ligacargos` → `FROM vw_ligacargos_all` |
| `includes/negocio/cargos.php` | SELECT duplicados y UPDATE masivo corregidos (UPDATE ahora aplica en ambas tablas) |
| `docs-dev/sanemiento-limpieza/reportes/genera_csv.php` | 4 JOINs directos → `vw_ligacargos_all` |

**Regla para nuevos PHPs**: Todo SELECT debe usar `vw_ligacargos_all` o `vw_ligacargos_pendientes`. Ver [skill-database-evolution/SKILL.md](.agents/skills/skill-database-evolution/SKILL.md).

---
---

## 🏗️ Arquitectura Brain / Ground Truth (2026-04-09)

Todo el contexto de agentes IA vive en `agua_chatledger`. El repo `agua` tiene solo symlinks (8/8).
**Antes de cualquier refactoring de archivos meta, leer regla 08.**

Validar integridad:
```bash
bash docs-dev/ga-cl-ia/chatledger_validate.sh
```

## 🛡️ Saneamiento y Resiliencia Extrema (2026-05-10)
Se implementó un sistema de protección de triple capa para el Host C, blindándolo contra apagados abruptos y asegurando la veracidad de la auditoría:

| Capa | Componente | Descripción |
|:---:|---|---|
| **L1** | **Smart Backup** | `start-webapps.ps1` detecta si falta el backup de ayer. Si hubo actividad y el backup no existe, realiza un "Catch-up Backup" antes de iniciar MySQL. Omite automáticamente días no laborables (domingos/feriados) si no hay cambios en la DB. |
| **L2** | **Pre-Vuelo** | Limpieza automática de archivos `.pid` huérfanos y ejecución externa de `aria_chk --recover` sobre las tablas de sistema MariaDB antes de lanzar el servicio. |
| **L3** | **Auto-Repair SQL** | Health-check automático al inicio. Si detecta el Error 176 (Aria checksum), invoca `repair_aria_system_tables.sql` para reconstruir las tablas físicamente antes de abrir Apache. |

**Hitos de Estabilización (Sesión 2026-05-10):**
*   **Watchdog Automatizado**: El `monitor-ups.ps1` ahora inicia automáticamente en modo oculto vía `start-webapps.ps1`, asegurando protección 24/7 sin intervención manual.
*   **Fail-Safe UPS**: El cronómetro de apagado (8 min) ahora es independiente de la interacción del usuario (no bloqueante), garantizando el cierre seguro incluso en ausencia del operador.
*   **Dashboard de Consolidación**: Interfaz de "Cierre Anual" rediseñada como un tablero pro-activo que muestra registros pendientes y estado de las tablas en tiempo real.
*   **Auditoría Global**: El reporte de historial (`id=0`) fue habilitado para visualizar los logs de sistema (migraciones, splits, configuraciones) bajo el identificador universal de sistema.

**Mejoras de Veracidad en Pipeline:**
*   **Limpieza de Auditoría:** `run_setup.sh` ahora ejecuta `TRUNCATE TABLE fallback_log` al inicio de cada sincronización, asegurando que los logs mostrados en la UI correspondan estrictamente a la sesión actual.
*   **Trazabilidad '0':** El proceso de migración y split anual ahora se registra bajo el identificador universal de sistema `numcontrato = '0'`.

---

**Última actualización**: 2026-05-10

> [!IMPORTANT]
> **Terminología de Sesión**:
> - **Ground Truth**: Denominación del contexto maestro para **Claude**.
> - **Runbook**: Denominación del contexto maestro (GEMINI.md + .agents/) para **Gemini**.

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
| **C01** | Límite de **2 tomas (contratos)** activas por usuario en el mismo domicilio físico. El domicilio comparado es `contrato.domicilio` (dirección física de la toma), **no** `usuario.domicilio` (dato de contacto del titular — campo independiente en tabla `usuario`, sin relación con validaciones de paridad ni tomas). La comparación usa normalización canónica `_normalizaDomicilioSQL()` / `_normalizaDomicilio()` (`contratos.php`) que unifica UPPER, acentos, variantes tipográficas (`n°/nº/no./nO.` → `N`), puntos y espacios múltiples — evita que typos burlen el límite. | Implementada |
| **C02** | Prohibida la modificación de estado de contratos en `4 (SUSPENSIÓN DEFINITIVA)`. | Implementada |
| **C03** | Registro obligatorio de folios únicos por cada nuevo contrato. | Validada |
| **C04** | **Motor de Paridad Universal**: Sincronización obligatoria; si una toma se activa/reconecta, su cargo anual debe restaurarse automáticamente. | Implementada |
| **C05** | **Limpieza por Suspensión Definitiva**: Al pasar a Estado 4, se debe forzar la desconexión física y la cancelación de deuda anual actual. | Implementada |
| **C06** | **Amnistía de Recargos en Reactivación**: Al pasar un contrato de `2 (SUSPENSIÓN TEMPORAL)` a `1 (ACTIVO)`, los recargos de años anteriores al año en curso se cancelan automáticamente (`estado=-1`). Solo permanece vigente la deuda del año actual. **NO aplica si el origen es estado `3 (SUSPENSIÓN ADMINISTRATIVA)`**: el adeudo íntegro se conserva (incluyendo anualidad del año en curso y todos los recargos históricos). Implementado en `_amnistiaRecargosHistoricos()` (contratos.php) + `_sincronizaParidadFinanciera()`. El registro en `cambios` indica explícitamente si se aplicó o no la amnistía. | Implementada |
| **C07** | **Restricción de Transiciones de Suspensión**: Prohibido el salto directo entre estados de suspensión (`2` y `3`). El contrato debe ser regularizado a `1 (ACTIVO)` primero para asegurar que los disparadores de paridad y amnistía se ejecuten según el origen correcto. Enforzado en UI (`ficha.php`) y Servidor (`contratos.php`). | Implementada |
| **C08** | **Límite de Tomas Físicas**: Restricción operativa de un máximo de **2 tomas físicas** registrables por cada contrato/domicilio. Enforzado en la UI de gestión de tomas. | Implementada |
| **C09** | **Límite de Domicilios Distintos por Usuario** (`max_domicilios_por_contrato`, default=3): Al crear un nuevo contrato, si el usuario ya tiene N domicilios físicos distintos (en `contrato.domicilio`) y el nuevo domicilio es diferente a todos ellos, el sistema bloquea la creación. Domicilio ya existente siempre pasa (segunda toma en mismo domicilio). No aplica retroactivamente. Configurable en `config_sistema` clave `max_domicilios_por_contrato`. Usar `0` para sin límite. Implementado en `guardaNuevoContrato()` (`contratos.php`). Basado en análisis real: 91.6% de usuarios tiene 1 domicilio, 7% tiene 2, 1.4% tiene 3, <0.1% tiene 4. | Implementada |
| **C10** | **Normalización canónica de `contrato.domicilio`**: Todo domicilio se normaliza al guardarse vía `_normalizaDomicilio()` en PHP y `_normalizaDomicilioSQL()` para comparaciones SQL. Reglas: UPPER, sin acentos (Á→A, Ñ→N…), variantes de número (`n°/nº/no./nO.` → `N`), sin puntos ni comas, espacios múltiples → uno. Aplica en `guardaNuevoContrato()`, `guardaContrato()` y `validaTomasSync()`. **No aplica a `usuario.domicilio`** — ese es dato de contacto personal y no participa en ninguna validación de paridad. | Implementada |

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
| **R03** | **Semántica canónica de estados en `ligacargos` / `ligacargos_historico`** — `estado=0`: pendiente de cobro. `estado=1`: pagado (por `sp_pagar_cargo` o caja.php). `estado=-1`: cancelado canónico (por `sp_cancelar_cargo`, D7, Paso 8-B, saneamiento 10c). **`estado=2` NO EXISTE** como valor válido en ligacargos — era un bug en scripts previos; todos corregidos. `estado=-2`: legacy pre-2018 (≈68 registros históricos, solo lectura). `estado=-3`: legacy pre-2018 (≈166 registros históricos, solo lectura). Para cartera y deuda solo consultar `estado=0`. Toda cancelación produce `estado=-1` con `fpago=NOW()`. Documentado en `docs-dev/doc-estabilizacion/pase-a-prod/MIGRATION_PROTOCOL.md`. | Implementada |
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

**Updating Documentation**

I'm currently focused on updating documentation, specifically `GEMINI.md` and `.agents/rules/02-reglas-negocio.md`. Within `02-reglas-negocio.md`, I'm making revisions to **R02** to incorporate the final logic for Cartera Vencida, ensuring proper handling of all scenarios, with 17 included and 5 excluded.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.551340626s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 11 May 2026, 12:22 pm

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
**Created:** 11 May 2026, 12:22 pm

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 219bd295-172b-4c03-a3df-83f565d88963: Validating Full-Pipeline-Sync Integrity
- Created: 2026-05-09T05:39:34Z
- Last modified: 2026-05-10T22:20:43Z

### USER Objective:
Hardening Agua V2 Production Resilience

Objective: Finalize the migration and stabilization of the Agua V2 webapp in the Host C production environment.
Goals:
1. Implement autonomous UPS fail-safe monitoring with non-blocking shutdown procedures.
2. Automate background service startup sequences and centralized log management for the Kiosko-mode environment.
3. Redesign the Annual Consolidation (Split) interface to provide a pro-active, error-proof administrative dashboard.
4. Validate system resilience through simulated power failure testing and ensure audit integrity across all server operations.

## Conversation 65980880-a19d-4db2-82b2-19454270eff9: Validating Database Connectivity
- Created: 2026-05-08T04:39:13Z
- Last modified: 2026-05-09T05:27:52Z

### USER Objective:
Testing UPS Infrastructure Scripts

Objective: Validate the operational safety of the Agua V2 server's power management and deployment automation in Host C.

Goals:
1. Develop a controlled testing methodology to simulate UPS power failure scenarios without requiring actual hardware power-offs.
2. Verify the end-to-end integration of monitoring, alert, and shutdown scripts (`monitor-ups.ps1`, `shutdown-server.ps1`, and `stop-webapps.ps1`).
3. Ensure the system demonstrates graceful shutdown, robust database backup generation, and automated startup recovery.
4. Execute staged testing scenarios to confirm that system integrity is maintained during power-loss transitions.

## Conversation 4261727a-9250-4b18-a666-5b474f1c4a4c: Identifying Broken Ubuntu Packages
- Created: 2026-04-28T18:06:17Z
- Last modified: 2026-05-09T05:19:39Z

### USER Objective:
System Maintenance And Cleanup

Objective: Systematically clean and optimize the Ubuntu 22 environment to eliminate broken dependencies, stale configuration files, and unused resources.

Goals:
1. Purge residual 'rc' packages and outdated kernel components to reclaim system storage and stabilize package management.
2. Identify and prune invalid '.desktop' shortcut entries that point to non-existent binaries.
3. Validate the integrity of the critical Whisper-cpp/Voxd/CUDA stack to ensure zero-impact maintenance.
4. Synchronize and secure the 'ga-cl-ia' documentation repository through automated git recovery and sync protocols.
5. Enhance the existing cleanup script to include automated identification of newer broken entries and stale snap revisions.

## Conversation 3d0ec69e-8bdd-40fe-a2ee-0c7e71a92060: Migrating Disk Usage Ubuntu
- Created: 2026-05-06T03:39:39Z
- Last modified: 2026-05-09T03:55:59Z

### USER Objective:
Optimizing Ubuntu Disk Usage

Main Objective: Reclaim storage space and improve system performance by auditing and removing redundant software, large temporary files, and obsolete developer tools.

Goals:
1. Reorganize VirtualBox virtual machine storage to utilize high-speed NVMe partitions.
2. Perform a comprehensive purge of legacy Oracle Middleware, .NET SDKs, Liquibase instances, and their associated system environment variables.
3. Consolidate and clean up redundant tools like OnlyOffice and WebLogic Remote Console.
4. Audit and sanitize the user's `~/.bashrc` profile to remove references to deprecated software paths, ensuring a clean and efficient shell environment.

## Conversation f056b1a8-79e6-4c2a-95f5-54a33ea06e98: Explaining Financial Reporting Logic
- Created: 2026-05-07T23:30:40Z
- Last modified: 2026-05-09T03:35:54Z

### USER Objective:
Blindando Categorización Agua V2

Objective: Eradicate Category Zero errors and ensure data integrity in the Agua V2 Host C environment by hardening the application and migration pipeline.

Goals:
1. Implement Poka-Yoke guards in PHP (`cargos.php`) to force correct category assignment (19-22) for administrative charges, overriding user input errors.
2. Automate the sanitization of the master `cargos` catalog within the `10_pipeline_saneamiento.sql` pipeline to prevent historical category corruption post-sync.
3. Validate that all administrative categories (Change of Owner, Fines, Constancias) are correctly mapped and immune to legacy `0` or `1` artifacts.
4. Establish a fail-safe synchronization pattern that ensures all new transactions originate with production-ready metadata, reducing reliance on manual post-hoc SQL patches.

## Conversation bcf279c3-7e58-4790-9c85-a35ebec1c331: Automating Windows Deployment Scripts
- Created: 2026-05-06T00:58:39Z
- Last modified: 2026-05-09T00:27:19Z

### USER Objective:
Automating Agua V2 Windows Deployment

Main Objective: Complete the Agua V2 appliance hardening for Windows 10 Host C to ensure a fully autonomous, production-ready server environment.

Goals:
1. Finalize storage-agnostic infrastructure through centralized configuration ($TargetDrive).
2. Refactor bash deployment scripts to prepare a clean, directory-structured 'agua' webapp package for seamless extraction.
3. Optimize the Windows environment into a Kiosko appliance with automated startup/shutdown and non-intrusive UI/UX.
4. Centralize all deployment assets and operational documentation for the production release (Pase a Producción).
5. Ensure robust system security and stability through automated GPO integration, UPS monitoring, and Chrome Kiosko enforcement.

## Conversation 70b5094f-e7ed-44ff-b37e-6634cd67ee3f: Auditing Git Sync Script
- Created: 2026-05-06T04:38:01Z
- Last modified: 2026-05-06T04:59:45Z

### USER Objective:
Auditing Git Sync Script

Main Objective:
Analyze the safety and integrity of the `sync with link de chatledger-entre main y rama git.sh` script on the Ubuntu 22.04 host to ensure it functions correctly without causing system corruption or repository data loss.

Goals:
1. Verify the script's logic regarding file migration, symbolic link creation, and `.gitignore` management to prevent accidental data deletion.
2. Evaluate potential race conditions or error states if the script is re-run (idempotency checks).
3. Ensure the script correctly handles directory transitions between the local repository and the external `STORAGE_DIR` without breaking the application's reliance on `.chatledger`.
4. Assess the risk of Git state inconsistencies (e.g., cached vs. ignored files) during the synchronization process.

## Conversation 25b74c07-23d4-48e6-b039-435b579b0cf6: Sourcing Water Delivery System Repositories
- Created: 2026-05-05T21:11:02Z
- Last modified: 2026-05-05T21:12:16Z

### USER Objective:
Sourcing Water Delivery System Repositories

Main Objective:
Identify and source existing, publicly available repository examples of water delivery/distribution management systems to serve as a baseline for a PHP/PostgreSQL POC.

Goals:
1. Locate repositories containing full-scope management features including inventory (garrafones), logistics (routes/schedules), vehicle tracking, and personnel management.
2. Evaluate these repositories as data and architectural inputs to facilitate the migration of the user's current "Agua" webapp system into a modernized PHP/PostgreSQL environment.
3. Provide direct links to relevant projects to enable the user to conduct an analysis of business logic and schema structures for the upcoming migration.

## Conversation 89bc16ba-c2d5-462e-9435-d8421190f457: Kiosk Mode Browser Automation
- Created: 2026-04-30T15:35:02Z
- Last modified: 2026-05-01T05:21:04Z

### USER Objective:
Kiosk Mode Browser Automation

Main Objective:
Automate the deployment of the "Agua" web application in a "Kiosk" or "App" mode using Google Chrome.

Goals:
1. Create a PowerShell script (`.ps1`) that launches the specific URL `http://localhost/agua/login/index.php` in a stripped-down Chrome window without navigation bars, tabs, or address bars.
2. Ensure the resulting script file is placed on the user's desktop for quick, one-click access.
3. Configure the browser flags (specifically `--app` or `--kiosk`) to ensure a distraction-free, application-like experience suitable for the local web deployment.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 11 May 2026, 12:22 pm

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
**Created:** 11 May 2026, 12:22 pm

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
**Created:** 11 May 2026, 12:24 pm

---

## Agent Response

### Thinking

**Analyzing File Structure**

I'm currently focused on file structure. I've noted `GEMINI.md`'s symlink nature, pointing to a chatledger directory. Also, I've observed `.agents/rules/02-reglas-negocio.md` is a regular file. Rule 08 suggests potential symlinks for all agent context, which I'm now exploring.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.510623993s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:24 pm

---

## Agent Response

### Thinking

**Investigating File Changes**

I'm currently looking into a suspected modification of `.agents/rules/02-reglas-negocio.md`. I realize I used `replace_file_content`, which suggests the file content was directly altered. Now, I suspect the file could be a symlink and that the changes might be to the target. I'll run `ls -l` on the file to get confirmation.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.098787124s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:24 pm

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
**Created:** 11 May 2026, 12:24 pm

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
**Created:** 11 May 2026, 12:24 pm

---

## Agent Response

### Thinking

**Mapping File Paths**

I'm currently working through a file path mapping. I've established an initial pattern involving moving files from a root directory, to a hidden chatledger directory, then to a specified GitHub location. I'm focusing on the translation of `GEMINI.md` and `02-reglas-negocio.md` through these stages.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.308191816s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:24 pm

---

## Agent Response

### Thinking

**Addressing the Pre-commit Hook**

I'm currently dealing with a blocked commit. A pre-commit hook is preventing the update due to an integrity check failure related to `mcp_config.json`. The error message specifically flags a divergence between `mcp_config.json` and `.mcp.json`. The action item is clear: I need to synchronize these two files to proceed.




### Actions

**Tool:** `view_file`
**File:** `mcp_config.json`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.869990289s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
{
  "mcpServers": {
    "bdawahost-a": {
      "command": "docker",
      "args": [
        "exec",
        "-i",
        "context7-mcp-mysql",
        "npx",
        "-y",
        "@f4ww4z/mcp-mysql-server",
        "mysql://root:comite_2026@127.0.0.1:3306/awa"
      ],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    },
    "bdawahost-b": {
      "command": "docker",
      "args": [
        "exec",
        "-i",
        "context7-mcp-mysql",
        "npx",
        "-y",
        "@f4ww4z/mcp-mysql-server",
        "mysql://root:sdrastbuy@192.168.0.116:3306/awa"
      ],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    },
    "bdawahost-c": {
      "command": "docker",
      "args": [
        "exec",
        "-i",
        "context7-mcp-mysql",
        "npx",
        "-y",
        "@f4ww4z/mcp-mysql-server",
        "mysql://root:comite_2026@192.168.0.115:7002/awa"
      ],
      "env": {
        "DOCKER_HOST": "unix:///var/run/docker.sock"
      }
    }
  }
}

```

</details>

---

## Agent Response

### Thinking

**Resolving Network Discrepancy**

I've identified a network configuration inconsistency between `mcp_config.json` and `.mcp.json` regarding `bdawahost-c`. The former holds `192.168.0.115` and the latter now reflects `192.168.1.128`. I've determined that the user updated the wrong file. I will update `/opt/lampp/ht`.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.312418828s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 11 May 2026, 12:24 pm

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
**Created:** 11 May 2026, 12:25 pm

---

## Agent Response

### Thinking

**Pushing Changes to Agua**

I've successfully committed the changes in `agua`. My next task is to commit and push the corresponding updates in `agua_chatledger`. Given that files modified in `agua` are symlinks to `agua_chatledger`, the next commit is important for version synchronization between the repos.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.497493345s
- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 11 May 2026, 12:25 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `07-git-workflow.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 07: Control de Versiones (Git/GitHub)

Esta regla define el flujo de trabajo en el repositorio oficial de **Agua**.
Válida para **Claude Code** y **Google Antigravity/Gemini** por igual.

---

## Repositorio Oficial

- **URL**: `https://github.com/cbena999/aguaclmhj.git`
- **Usuario GH**: `cbena999`

---

## Repositorio de Historial (ChatLedger)

Almacena el Ground Truth de agentes IA y logs de conversaciones, independiente del código fuente.

- **Ruta Local**: `/home/carlos/GitHub/agua_chatledger/`
- **URL Remoto**: `https://github.com/cbena999/agua_chatledger.git`
- **Symlink en App**: `.chatledger` → `/home/carlos/GitHub/agua_chatledger/`
- **Rama Git**: `master`

```bash
# Subir cambios al ChatLedger (cuando se indique):
cd /home/carlos/GitHub/agua_chatledger
git add -A
git commit -m "Sync: <descripción breve>"
git push origin master
```

---

## Gestión de Ramas

| Rama | Propósito | Host |
| :--- | :--- | :--- |
| `main` | Producción estable — Host A (Linux XAMPP MySQL 5.6) | A |
| `feature/upgrade-v2-win-xampp` | Migración tecnológica a XAMPP 7.4 / Windows 10 | C |

---

## Arquitectura de Symlinks (Ground Truth)

Los siguientes paths en el repo `agua` son **symlinks permanentes** al chatledger.
Aplican en **ambas ramas** (`main` y `feature`). Git en `agua` **nunca reporta cambios** en su contenido.

| Symlink en repo `agua` | Apunta a | Git lo rastrea |
| :--- | :--- | :--- |
| `.chatledger` | `/home/carlos/GitHub/agua_chatledger/` | Solo el symlink en sí |
| `.agents` | `.chatledger/.agents/` | Solo el symlink en sí |
| `CLAUDE.md` | `.chatledger/CLAUDE.md` | Solo el symlink en sí |
| `GEMINI.md` | `.chatledger/GEMINI.md` | Solo el symlink en sí |
| `.clauderules` | `.chatledger/.clauderules` | Solo el symlink en sí |
| `.mcp.json` | `.chatledger/.mcp.json` | Solo el symlink en sí |
| `docs-dev/ga-cl-ia/` | `/home/carlos/GitHub/agua_chatledger/docs-dev/ga-cl-ia/` | Solo el symlink en sí |

> **Consecuencia clave:** Editar `.agents/rules/`, `CLAUDE.md`, `docs-dev/ga-cl-ia/`, etc.
> modifica físicamente `agua_chatledger`. Para versionar esos cambios → commitear en `agua_chatledger`, no en `agua`.

Para recrear todos los symlinks en un equipo nuevo:
```bash
bash docs-dev/ga-cl-ia/chatledger_sync_ga_lnks.sh
```

---

## Protocolo Obligatorio al Cambiar de Rama

> Aplica para **cualquier dirección**: `main → feature` o `feature → main`.
> Claude Code y Gemini deben ejecutar estos pasos **antes** de `git checkout`.

### Paso 1 — Verificar estado de `agua_chatledger`

```bash
git -C /home/carlos/GitHub/agua_chatledger status
```

**Si hay cambios sin commitear:**
```bash
cd /home/carlos/GitHub/agua_chatledger
git add -A
git commit -m "docs: guardar cambios antes de cambiar rama en agua"
cd /opt/lampp/htdocs/agua
```

> Esto protege reglas, skills, workflows y docs editados antes del cambio de rama.

### Paso 2 — Verificar estado de `agua`

```bash
git status
```

Clasificar cada archivo reportado:

| Tipo de archivo | Acción |
| :--- | :--- |
| **Código PHP/JS/SQL** modificado — pertenece a rama actual | `git add` + `git commit` antes de cambiar |
| **Código PHP/JS/SQL** modificado — trabajo en progreso | `git stash push -m "wip: descripcion"` |
| **Archivo nuevo sin track** (`??`) de código | Decidir: commitear en rama actual o ignorar si es temporal |
| **Symlinks** (`.agents`, `CLAUDE.md`, etc.) | Ignorar — git no reporta cambios en su contenido |
| **Artifacts de sync** (`work/*.sql`, `backups/*.sql.gz`) | Descartar — ver sección Artifacts |

### Paso 3 — Cambiar de rama

```bash
git checkout <rama-destino>
```

### Paso 4 — Verificar estado post-cambio

```bash
git status
```

- Árbol limpio → OK
- Si hay stash pendiente → `git stash pop` y resolver

---

## Qué commitear en cada repo

| Cambio | Repo donde commitear |
| :--- | :--- |
| Código PHP, JS, SQL, vistas, includes | `agua` (rama correspondiente) |
| Reglas `.agents/rules/` | `agua_chatledger` |
| Skills `.agents/skills/` | `agua_chatledger` |
| Workflows `.agents/workflows/` | `agua_chatledger` |
| `CLAUDE.md`, `GEMINI.md`, `.clauderules` | `agua_chatledger` |
| `docs-dev/ga-cl-ia/` (docs IA) | `agua_chatledger` |
| Symlinks nuevos (modo 120000) | `agua` (ambas ramas si aplica) |
| `.gitignore`, `composer.json`, configs de repo | `agua` |

---

## Artifacts de Sync — Nunca Commitear

Los directorios `work/` y `backups/` de los pipelines de sync son generados automáticamente. Están en `.gitignore`.

| Path ignorado | Origen |
| :--- | :--- |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/*.sql` | Dumps sync B→A |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/conteos_*.txt` | Logs de conteo B→A |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/backups/*.sql.gz` | Backups automáticos Host A |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/work/*.sql` | Dumps sync A→C |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/work/conteos_*.txt` | Logs de conteo A→C |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/backups/*.sql.gz` | Backups automáticos Host C |

Si aparecen como M/D/? en `git status`, descartarlos con:

```bash
git checkout -- docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/
git checkout -- docs-dev/migration-aguav2/sync_hosta_to_hostc/work/
```

---

## Notas para Agentes IA (Claude Code y Gemini)

- **Commits**: formato `tipo(scope): descripción`. Descripción clara y técnica.
- **NO commitear tras cada cambio**: aplicar los cambios en archivos, reportar qué se modificó, y detenerse. Solo ejecutar `git add / commit / push` cuando el usuario lo solicite explícitamente ("commitea", "sube los cambios", etc.).
- **Pushes**: permitidos bajo usuario `cbena999`. Confirmar con usuario antes de push a `main`.
- **Symlinks**: no reemplazar symlinks por archivos reales. Si se detecta un directorio real donde debería haber symlink → ejecutar `chatledger_sync_ga_lnks.sh`.
- **Conflictos**: resolver antes de proponer merge. No usar `--no-verify` ni `--force` sin autorización explícita.
- **Scope de autorización**: una aprobación puntual no autoriza la misma acción en contextos futuros.
- **ChatLedger primero**: ante duda de dónde commitear algo relacionado con IA/docs → siempre `agua_chatledger`.

---

**Última actualización:** 2026-04-21

```

</details>

---

## Agent Response

### Thinking

**Analyzing Git Operations**

I'm currently focused on streamlining the Git operations. Right now, I'm examining specific commands for managing my local repository. I have several lines of code that need a brief description, so I can sync and push them.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.191125462s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:25 pm

---

## Agent Response

### Thinking

**Accessing Configuration & Files**

I've successfully accessed the configuration and associated files. I can see the modifications in `.agents/mcp_config.json`, `.agents/rules/02-reglas-negocio.md`, and `.mcp.json`. Also, there are updates in `GEMINI.md` and a new file, `Auditing_Water_Debt_Calculations_77eda59`.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.434688257s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:25 pm

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
**Created:** 11 May 2026, 12:25 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

Analiza los texto por seccione q desplega http://localhost:7001/agua/admin/operaciones/configuracion.php
1) que texto se podrian tomar  y poner como anexo o complemento en las secciones del documento CARTERA_VENCIDA_MODELO_Y_REPORTES.md. lista melos.
2) Sobre Límite Bomba (Recargos),  analiza la php donde se ocupan estos parametros: paridad_anios_max_recargo, reversal_threshold,  reversal_threshold_enable y dime si todos intervienen para reducir la bomba, o hay algunb mandatorio 

<details>
<summary>Context</summary>

**Active File:** `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`
**Language:** markdown
</details>

---

## Agent Response

### Thinking

**Analyzing Configuration Data**

I'm currently focused on extracting text from Host C's configuration page to identify potential annex content for the "Cartera Vencida" document. I'm also delving into the "Límite Bomba" logic, aiming to fully grasp its operational implications. I'll need to determine what texts on the page can be used as annexes, and then I can dig into the "Límite Bomba" logic.




### Actions

**Tool:** `view_file`
**File:** `configuracion.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.721557214s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
require_once('../../login/usuario.php');
session_start();
if (!isset($_SESSION['usuario'])) {
    print "<script>window.location='../../login/index.php'</script>";
    exit();
}

require_once('../../config/Conexion.php');
$y = new Conexion();
$y->conectarBaseDatos();

$mensaje = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['config'])) {
    $configs = $_POST['config'];
    foreach ($configs as $clave => $valor) {
        $clave_segura = $y->real_escape_string($clave);
        $valor_seguro = $y->real_escape_string($valor);
        $y->q("UPDATE config_sistema SET valor='$valor_seguro' WHERE clave='$clave_segura'");
    }
    $mensaje = "<div class='success-msg'>&#10003; Configuraci&oacute;n actualizada correctamente.</div>";
}

$res = $y->q("SELECT clave, valor, descripcion FROM config_sistema ORDER BY clave ASC");
$opciones = array();
while ($row = $y->fetch_array($res)) {
    $opciones[$row['clave']] = $row;
}

// ── Agrupación temática ──────────────────────────────────────────────────────
$grupos = array(
    'Recargos Moratorios' => array(
        'desc_grupo' => 'Parámetros que controlan cómo y cuándo se generan los recargos por mora.',
        'readonly'   => false,
        'claves'     => ['recargo_mes_inicio','recargo_porcentaje'],
    ),
    'Operación y Contratos' => array(
        'desc_grupo' => 'Paridad: alcance retroactivo del recálculo de mora. Reversas: umbral para habilitar reversión de transición. Ciclo de vida: reglas de transición de estado y comportamiento al crear contratos.',
        'readonly'   => false,
        'claves'     => ['paridad_anios_max_recargo','reversal_threshold_enable','reversal_threshold','susptemp_mes_permitido','nuevo_contrato_exento_default','max_tomas_por_contrato','max_domicilios_por_contrato'],
    ),
    'Estados de Contrato' => array(
        'desc_grupo' => 'Códigos numéricos del catálogo de estados. <strong>Solo lectura</strong> — no modificar.',
        'readonly'   => true,
        'claves'     => ['estado_activo','estado_susp_temporal','estado_susp_administrativa','estado_susp_definitiva'],
    ),
);

// Campos editables (max_tomas_por_contrato: solo lectura)
$editables = ['recargo_mes_inicio','recargo_porcentaje','recargo_categoria_agua','recargo_categoria_drenaje',
              'susptemp_mes_permitido','paridad_anios_max_recargo',
              'reversal_threshold_enable','reversal_threshold','nuevo_contrato_exento_default',
              'max_domicilios_por_contrato'];

header('Content-Type: text/html; charset=UTF-8');

function get_mes_nombre($n) {
    $meses = ["", "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
    return isset($meses[$n]) ? $meses[$n] : "Mes $n";
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Configuraci&oacute;n del Sistema</title>
    <link rel="stylesheet" href="../../web-assets/css/paxstyle2.css">
    <style>
        body { padding: 20px; font-family: Arial, sans-serif; background: #f5f6fa; }
        h1 { font-size: 22px; color: #2c3e50; margin-bottom: 6px; font-style: normal; text-shadow: none; text-align: left; }
        .subtitle { color: #7f8c8d; font-size: 13px; margin-bottom: 20px; }
        .back-link { display: inline-block; margin-bottom: 16px; color: #0674B7; text-decoration: none; font-weight: bold; font-size: 13px; }
        .back-link:hover { text-decoration: underline; }
        .success-msg { color: #155724; background: #d4edda; border: 1px solid #c3e6cb; padding: 10px 14px; margin-bottom: 18px; border-radius: 4px; font-weight: bold; font-size: 13px; }

        /* Layout dos columnas — tarjeta Estados ocupa fila completa al final */
        .grupos-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 18px; margin-bottom: 20px; }
        .g-estados { grid-column: 1 / -1; }

        /* Tarjeta de grupo */
        .grupo-card { background: #fff; border: 1px solid #dde3ec; border-radius: 6px; overflow: hidden; }
        .grupo-header { padding: 10px 14px; font-weight: bold; font-size: 12px; text-transform: uppercase;
                        letter-spacing: .5px; color: #fff; }
        .g-estados    .grupo-header { background: #7f8c8d; }
        .g-recargos   .grupo-header { background: #2980b9; }
        .g-paridad    .grupo-header { background: #8e44ad; }
        .g-ciclo      .grupo-header { background: #27ae60; }
        .g-reversa    .grupo-header { background: #c0392b; }
        .grupo-desc { font-size: 11px; color: #666; padding: 6px 14px 8px; border-bottom: 1px solid #eee; background: #fafbfc; }
        .grupo-body { padding: 10px 14px 14px; }

        /* Fila de config */
        .cfg-row { margin-bottom: 12px; }
        .cfg-grouped-top { background: #fdfdfd; padding: 10px 14px; border: 1px solid #d0d5dd; border-bottom: none; border-radius: 6px 6px 0 0; margin-bottom: 0; }
        .cfg-grouped-middle { background: #fdfdfd; padding: 10px 14px; border-left: 1px solid #d0d5dd; border-right: 1px solid #d0d5dd; border-top: 1px dashed #ccc; border-bottom: none; border-radius: 0; margin-top: 0; margin-bottom: 0; }
        .cfg-grouped-bottom { background: #fdfdfd; padding: 10px 14px 10px 34px; border: 1px solid #d0d5dd; border-top: none; border-radius: 0 0 6px 6px; margin-top: 0; position: relative; }
        .cfg-grouped-bottom::before { content: '\21B3'; position: absolute; left: 14px; top: 10px; color: #999; font-size: 16px; font-weight: bold; }
        .cfg-grouped-top .cfg-key, .cfg-grouped-middle .cfg-key, .cfg-grouped-bottom .cfg-key { color: #c0392b; }
        .cfg-row:last-child { margin-bottom: 0; }
        .cfg-key { font-family: monospace; font-size: 12px; font-weight: bold; color: #2c3e50; display: block; margin-bottom: 3px; }
        .cfg-desc { font-size: 11px; color: #777; margin-bottom: 5px; display: block; line-height: 1.5; white-space: pre-line; }
        .cfg-input { width: 100%; padding: 7px 9px; border: 1px solid #ccc; border-radius: 4px;
                     box-sizing: border-box; font-family: monospace; font-size: 13px; background: #fff; }
        .cfg-input:focus { border-color: #3498db; outline: none; box-shadow: 0 0 0 2px rgba(52,152,219,.2); }
        .cfg-input[readonly] { background: #f0f0f0; color: #999; cursor: not-allowed; }
        .readonly-badge { display: inline-block; font-size: 10px; background: #ecf0f1; color: #7f8c8d;
                          border: 1px solid #bdc3c7; border-radius: 3px; padding: 1px 5px; margin-left: 6px; vertical-align: middle; }

        /* Botón guardar */
        .footer-bar { text-align: right; padding-top: 4px; }
        .submit-btn { background: #0674B7; color: #fff; padding: 10px 24px; border: none; border-radius: 4px;
                      cursor: pointer; font-size: 14px; font-weight: bold; }
        .submit-btn:hover { background: #045a8d; }

        /* Modal confirmación de cambios */
        #cfg-overlay { position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.45);z-index:9998; }
        #cfg-modal   { position:fixed;top:50%;left:50%;transform:translate(-50%,-50%);z-index:9999;
                       background:#f4f6f8;border:1px solid #aaa;border-radius:6px;padding:0;
                       min-width:480px;max-width:680px;width:90%;box-shadow:0 4px 18px rgba(0,0,0,0.25); }
        #cfg-modal .m-header { background:#0E4F8E;color:#fff;padding:9px 14px;border-radius:5px 5px 0 0;
                               font-weight:bold;font-size:12px;text-transform:uppercase; }
        #cfg-modal .m-body   { padding:14px 18px;max-height:55vh;overflow-y:auto; }
        #cfg-modal .m-footer { text-align:right;padding:0 18px 14px; }
        .cfg-diff-table { width:100%;border-collapse:collapse;font-size:12px;margin-bottom:12px; }
        .cfg-diff-table th { background:#0E4F8E;color:#fff;padding:5px 8px;text-align:left;font-size:11px; }
        .cfg-diff-table td { padding:5px 8px;border-bottom:1px solid #e0e4ea;vertical-align:top; }
        .cfg-diff-table tr:last-child td { border-bottom:none; }
        .cfg-diff-table .col-key  { font-family:monospace;font-weight:bold;color:#2c3e50;white-space:nowrap; }
        .cfg-diff-table .col-ant  { color:#888;text-decoration:line-through; }
        .cfg-diff-table .col-new  { color:#1a7a1a;font-weight:bold; }
        .cfg-diff-table .col-imp  { font-size:10px;color:#555;line-height:1.4; }
        .no-cambios { color:#7f8c8d;font-size:13px;text-align:center;padding:14px 0; }
        #cfg-modal input[type=button] { padding:7px 18px;border:none;border-radius:4px;cursor:pointer;
                                        font-size:13px;font-weight:bold; }
        #cfg-cancelar-modal { background:#888;color:#fff;margin-right:8px; }
        #cfg-confirmar-modal { background:#0674B7;color:#fff; }

        @media (max-width: 700px)  { .grupos-grid { grid-template-columns: 1fr; } }
    </style>
</head>
<body>
    <a href="../../index2.php" class="back-link">&larr; Volver al Men&uacute; Principal</a>
    <h1>Configuraci&oacute;n Global del Sistema</h1>
    <p class="subtitle">Par&aacute;metros operativos agrupados por tema funcional. Los campos <span class="readonly-badge">solo lectura</span> son valores fijos del cat&aacute;logo.</p>

    <?= $mensaje ?>

    <form method="POST" action="configuracion.php">
        <div class="footer-bar" style="margin-bottom:14px;">
            <button type="button" class="submit-btn" onclick="abrirModalConfirmacion()">
                Guardar Configuraci&oacute;n
            </button>
        </div>
        <div class="grupos-grid">
        <?php
        $clases_grupo = [
            'Estados de Contrato'  => 'g-estados',
            'Recargos Moratorios'  => 'g-recargos',
            'Operación y Contratos'=> 'g-paridad',
        ];
        foreach ($grupos as $nombre_grupo => $gdef):
            $clase = isset($clases_grupo[$nombre_grupo]) ? $clases_grupo[$nombre_grupo] : 'g-ciclo';
        ?>
        <div class="grupo-card <?= $clase ?>">
            <div class="grupo-header">
                <?= htmlspecialchars($nombre_grupo) ?>
                <?php if ($gdef['readonly']): ?><span class="readonly-badge">solo lectura</span><?php endif; ?>
            </div>
            <div class="grupo-desc"><?= $gdef['desc_grupo'] ?></div>
            <div class="grupo-body">
            <?php
            $separadores_grupo = [
                'Operación y Contratos' => [
                    'paridad_anios_max_recargo' => 'Límite Bomba (Recargos)',
                    'susptemp_mes_permitido' => 'Ciclo de Vida',
                ],
            ];
            $seps = isset($separadores_grupo[$nombre_grupo]) ? $separadores_grupo[$nombre_grupo] : [];
            foreach ($gdef['claves'] as $clave):
                if (!isset($opciones[$clave])) continue;
                $opt = $opciones[$clave];
                $es_editable = in_array($clave, $editables) && !$gdef['readonly'];
                if (isset($seps[$clave])): ?>
                <div style="border-top:1px dashed #d0d5dd;margin:10px 0 10px;position:relative;">
                    <span style="position:absolute;top:-8px;left:50%;transform:translateX(-50%);background:#fff;padding:0 6px;font-size:10px;color:#999;text-transform:uppercase;letter-spacing:.5px;"><?= $seps[$clave] ?></span>
                </div>
                <?php endif; ?>
                <?php
                $isGroupedTop = ($clave === 'paridad_anios_max_recargo');
                $isGroupedMiddle = ($clave === 'reversal_threshold_enable');
                $isGroupedBottom = ($clave === 'reversal_threshold');
                $rowClass = "cfg-row";
                if ($isGroupedTop) $rowClass .= " cfg-grouped-top";
                elseif ($isGroupedMiddle) $rowClass .= " cfg-grouped-middle";
                elseif ($isGroupedBottom) $rowClass .= " cfg-grouped-bottom";
                ?>
                <div class="<?= $rowClass ?>">
                    <span class="cfg-key"><?= htmlspecialchars($clave) ?></span>
                    <?php 
                        $desc = $opt['descripcion'] ?: '';
                        if ($clave === 'susptemp_mes_permitido') {
                            $mes_nombre = get_mes_nombre(intval($opt['valor']));
                            $desc .= " <strong style='color:#2980b9;'>(Actual: $mes_nombre)</strong>";
                        }
                    ?>
                    <span class="cfg-desc"><?= $desc ?></span>
                    <?php if ($clave === 'reversal_threshold_enable'): ?>
                        <div style="display: flex; align-items: center; margin-top: 6px; gap: 8px;">
                            <input type="hidden" name="config[<?= htmlspecialchars($clave) ?>]" value="0">
                            <input type="checkbox"
                                   class="cfg-input"
                                   style="width: 18px; height: 18px; cursor: pointer; accent-color: #c0392b;"
                                   name="config[<?= htmlspecialchars($clave) ?>]"
                                   value="1"
                                   data-original="<?= htmlspecialchars($opt['valor']) ?>"
                                   <?= $opt['valor'] == '1' ? 'checked' : '' ?>
                                   <?= $es_editable ? '' : 'disabled' ?>>
                            <span style="font-size: 13px; font-weight: bold; color: <?= $opt['valor'] == '1' ? '#c0392b' : '#7f8c8d' ?>;">
                                <?= $opt['valor'] == '1' ? 'Límite Activo' : 'Límite Desactivado' ?>
                            </span>
                        </div>
                    <?php else: ?>
                    <input type="text"
                           class="cfg-input"
                           name="config[<?= htmlspecialchars($clave) ?>]"
                           value="<?= htmlspecialchars($opt['valor']) ?>"
                           data-original="<?= htmlspecialchars($opt['valor']) ?>"
                           <?= $es_editable ? '' : 'readonly' ?>>
                    <?php endif; ?>
                </div>
            <?php endforeach; ?>
            </div>
        </div>
        <?php endforeach; ?>
        </div>

    </form>

    <div id="cfg-nara"></div>

    <script>
    // Descripciones leídas desde config_sistema.descripcion (BD)
    var impactos = <?= json_encode(array_map(function($o){ return $o['descripcion'] ?: ''; }, $opciones), JSON_UNESCAPED_UNICODE) ?>;

    function abrirModalConfirmacion() {
        var cambios = [];
        var inputs  = document.querySelectorAll('form input.cfg-input:not([readonly]):not([disabled])');

        inputs.forEach(function(inp) {
            var m = inp.name.match(/^config\[(.+)\]$/);
            if (!m) return;
            var clave = m[1];
            var valOrig = inp.getAttribute('data-original');
            var valNuevo = inp.type === 'checkbox' ? (inp.checked ? '1' : '0') : inp.value;
            if (valOrig !== valNuevo) {
                cambios.push({ clave: clave, antes: valOrig, despues: valNuevo });
            }
        });

        var bodyHtml;
        if (cambios.length === 0) {
            bodyHtml = '<div class="no-cambios">No se detectaron cambios respecto a los valores actuales.</div>';
        } else {
            bodyHtml  = '<p style="font-size:12px;color:#555;margin:0 0 10px;">Se modificar&aacute;n <strong>' + cambios.length + '</strong> par&aacute;metro(s). Revise antes de confirmar:</p>';
            bodyHtml += '<table class="cfg-diff-table">';
            bodyHtml += '<tr><th>Par&aacute;metro</th><th>Antes</th><th>Despu&eacute;s</th><th>Impacto</th></tr>';
            cambios.forEach(function(c) {
                var imp = impactos[c.clave] || 'Afecta el comportamiento del m&oacute;dulo correspondiente de forma inmediata.';
                bodyHtml += '<tr>' +
                    '<td class="col-key">' + c.clave + '</td>' +
                    '<td class="col-ant">' + escHtml(c.antes) + '</td>' +
                    '<td class="col-new">' + escHtml(c.despues) + '</td>' +
                    '<td class="col-imp">' + imp + '</td>' +
                    '</tr>';
            });
            bodyHtml += '</table>';
            bodyHtml += '<p style="font-size:11px;color:#b05a00;background:#fffbe6;border:1px solid #e0cc80;border-radius:4px;padding:6px 10px;margin:0;">&#9888; Los cambios son efectivos de forma inmediata y afectan el comportamiento global del sistema.</p>';
        }

        var hayCambios = cambios.length > 0;
        var html =
            '<div id="cfg-overlay"></div>' +
            '<div id="cfg-modal">' +
                '<div class="m-header">Confirmar Cambios en Configuraci&oacute;n Global</div>' +
                '<div class="m-body">' + bodyHtml + '</div>' +
                '<div class="m-footer">' +
                    '<input type="button" id="cfg-cancelar-modal" value="Cancelar">' +
                    (hayCambios ? '<input type="button" id="cfg-confirmar-modal" value="Guardar Cambios">' : '') +
                '</div>' +
            '</div>';

        document.getElementById('cfg-nara').innerHTML = html;

        document.getElementById('cfg-cancelar-modal').addEventListener('click', cerrarModal);
        document.getElementById('cfg-overlay').addEventListener('click', cerrarModal);
        if (hayCambios) {
            document.getElementById('cfg-confirmar-modal').addEventListener('click', function() {
                cerrarModal();
                document.querySelector('form').submit();
            });
        }
    }

    function cerrarModal() {
        document.getElementById('cfg-nara').innerHTML = '';
    }

    function escHtml(s) {
        return String(s)
            .replace(/&/g,'&amp;').replace(/</g,'&lt;')
            .replace(/>/g,'&gt;').replace(/"/g,'&quot;');
    }
    </script>
</body>
</html>

```

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

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 11 May 2026, 12:31 pm

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
**Created:** 11 May 2026, 12:31 pm

---

## Agent Response

### Thinking

**Analyzing Parameter Descriptions**

I've been meticulously examining the parameter descriptions. I'm focusing on `recargo_porcentaje`, and the risk-related insights on debt. Then, I am looking closely at `paridad_anios_max_recargo`, and the rationale for its recommended value. Finally, I noticed the presence of `reversal_threshold` and `reversal_threshold_`.




### Actions

**Tool:** `grep_search`
**Query:** `paridad_anios_max_recargo|reversal_threshold|reversal_threshold_enable`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.245991364s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 11 May 2026, 12:31 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `paridad_anios_max_recargo|reversal_threshold|reversal_threshold_enable`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 11 May 2026, 12:31 pm

---

## Agent Response

### Thinking

**Analyzing Debt Ceiling Behavior**

I'm now investigating an unexpected behavior concerning the debt ceiling (reversal_threshold) rule. It appears the system isn't behaving as anticipated based on the previously reported functionality, where debt generation should halt when the contract reaches the threshold. The current analysis suggests a deviation from this expected stop condition.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.074176299s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 11 May 2026, 12:31 pm

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

	$mes_inicio   = intval(isset($cfg['recargo_mes_inicio']) ? $cfg['recargo_mes_inicio'] : 4);
	$porcentaje   = floatval(isset($cfg['recargo_porcentaje']) ? $cfg['recargo_porcentaje'] : 10);
	$cat_agua     = intval(isset($cfg['recargo_categoria_agua']) ? $cfg['recargo_categoria_agua'] : 16);
	$cat_drenaje  = intval(isset($cfg['recargo_categoria_drenaje']) ? $cfg['recargo_categoria_drenaje'] : 17);
	$max_anios    = intval(isset($cfg['paridad_anios_max_recargo']) ? $cfg['paridad_anios_max_recargo'] : 0);
	$ignorar_fantasma = intval(isset($cfg['paridad_ignorar_fpago_fantasma']) ? $cfg['paridad_ignorar_fpago_fantasma'] : 1);
	$umbral_bomba_enable = intval(isset($cfg['reversal_threshold_enable']) ? $cfg['reversal_threshold_enable'] : 0);
	$umbral_bomba = floatval(isset($cfg['reversal_threshold']) ? $cfg['reversal_threshold'] : 15000);

	// REGLA: El flag recargo=0 en tabla cargos significa que el concepto no devenga mora
	if (intval($recargo) === 0) {
		return;
	}

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

		// FILTRO: antigüedad máxima — no generar recargos sobre deudas más viejas que N años
		if ($max_anios > 0 && $anio < (intval(date('Y')) - $max_anios)) {
			return;
		}

		// FILTRO: fpago fantasma — excluir cargos con fecha de pago corrupta (anterior al año 2000)
		if ($ignorar_fantasma) {
			$res_fp = $y->q("SELECT fpago FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato' AND estado=0 LIMIT 1");
			if ($row_fp = $y->fetch_array($res_fp)) {
				if ($row_fp['fpago'] !== null && substr($row_fp['fpago'], 0, 4) < '2000') {
					return;
				}
			}
		}

		if ($pagado == 0) {
			$res_deuda = $y->q("SELECT IFNULL(SUM(monto),0) FROM vw_ligacargos_pendientes WHERE numcontrato='$numcontrato'");
			list($deuda_actual) = $y->fetch_array($res_deuda);
			$deuda_actual = floatval($deuda_actual);

			for ($i = 1; $i <= $meses; $i++) {
				if ($umbral_bomba_enable == 1 && $deuda_actual >= $umbral_bomba && $umbral_bomba > 0) {
					break; // Límite Bomba de Recargos alcanzado
				}
				$leyenda_recargo = "RECARGO $nom_meses[$mesrecargo] $aniorecargo - $leyenda";
				$tabla_dest = ($aniorecargo <= 2025) ? "ligacargos_historico" : "ligacargos";
				
				// Idempotencia: no duplicar si el recargo ya existe (protege contra refresh y re-activaciones)
				$chk_rec = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda_recargo' AND numcontrato='$numcontrato' LIMIT 1");
				if ($y->num_rows($chk_rec) == 0) {
					// REGLA F05: ligacargos.recargo es neutralizado (0.00). La Fuente de Verdad es la Categoría.
					$q = "INSERT INTO $tabla_dest (numcontrato,leyenda,monto,fcobro,fpago,estado,recargo,folio,anio,numcontratoresp,idpago_vinc,categoria,repetido) VALUES('$numcontrato','$leyenda_recargo',$monto_recargo,CURDATE(),CURDATE(),0,0.00,0,$anio,NULL,NULL,$categoria_recargo,$cuenta)";

					if ($y->q($q)) {
						$deuda_actual += $monto_recargo;
					} else {
						$y->_logFallback('DEBUG_SURCHARGE', $q, "Falla en anio $aniorecargo");
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

			$ctos_sinc = [];
			if ($categoriaval == 6 || strpos(strtoupper($leyendaval), 'FALTA ASAMBLEA') !== false) {
				// Asamblea: sp_sinc_asamblea_puntual sincroniza todos los contratos del usuario
				$res_u = $y->q("select numusuario from contrato where numcontrato = '$idc'");
				list($numusuario) = $y->fetch_array($res_u);
				// Primero pagar el cargo del contrato principal (usando ID atómico)
				$y->q("CALL sp_pagar_cargo($id_cargoval, '$idc', \"$leyendaval\", $repetidoval, $folio_sig, '$idc', $monto_val, @filas)");
				// Sincronizar el resto de contratos del mismo usuario
				$y->q("CALL sp_sinc_asamblea_puntual($numusuario, \"$leyendaval\", 0, @filas_sinc)");
				// Bitácora de sincronización en cada contrato afectado
				$res_sinc = $y->q("SELECT l.numcontrato FROM ligacargos l JOIN contrato c ON l.numcontrato=c.numcontrato WHERE c.numusuario=$numusuario AND l.leyenda=\"$leyendaval\" AND l.categoria=6 AND l.folio=$folio_sig AND l.numcontrato != '$idc'");
				while ($row_sinc = $y->fetch_array($res_sinc)) $ctos_sinc[] = $row_sinc['numcontrato'];
				if (!empty($ctos_sinc)) {
					$todos_ctos = array_merge([$idc], $ctos_sinc);
					sort($todos_ctos, SORT_NUMERIC);
					$ctos_str = implode(', ', $todos_ctos);
					foreach ($ctos_sinc as $cto_sinc) {
						$cto_sinc_esc = $y->real_escape_string($cto_sinc);
						$sinc_despues = $y->real_escape_string("Sincronizado por pago en cto $idc | Concepto: $leyendaval ($ctos_str) | Folio: $folio_sig");
						$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Sincronización Asamblea', 'estado=0', '$sinc_despues', '$cto_sinc_esc')");
					}
				}
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
		$sinc_nota = !empty($ctos_sinc) ? ' | Asamblea sincronizada en cto(s): ' . implode(', ', $ctos_sinc) : '';
		$post_esc = $y->real_escape_string("Adeudos: $n_post | Deuda: \$$tot_post | Cargos liquidados: $cargos_liq$sinc_nota");

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
	$cargos_aplicados_detalle = array();
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
					$tipo_tarifa = ($es_comercial == 1) ? 'Comercial' : 'Normal';
					$cargos_aplicados_detalle[$numcontrato][] = "$leyenda \$$monto ($tipo_tarifa)";
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

		// Registrar en cambios por cada contrato afectado (visible en historial individual)
		foreach ($contratos_lista_audit as $cto_audit) {
			$res_pa = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$cto_audit'");
			$pa = $y->fetch_array($res_pa);
			$detalle_cto = isset($cargos_aplicados_detalle[$cto_audit])
				? implode(', ', $cargos_aplicados_detalle[$cto_audit])
				: $leyendas_esc;
			$snap_cto = "$detalle_cto | Adeudos: " . intval($pa['n']) . " | Deuda: \$" . number_format(floatval($pa['total']), 2);
			$snap_cto_esc = $y->real_escape_string($snap_cto);
			$detalle_esc = $y->real_escape_string("Cargos: $detalle_cto");
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
			       VALUES(NOW(), 'Aplicacion manual de cargos',
			       '$detalle_esc',
			       '$snap_cto_esc',
			       '$cto_audit')");
		}
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

	// Sanitización estricta de entrada (Poka-yoke)
	$leyenda = strtoupper(trim(strip_tags((string)$leyenda)));
	$cat = intval($cat);
	$monto = floatval($monto);
	$mensual = intval($mensual);
	$anio = intval($anio);
	$aniocobro = intval($aniocobro);
	$automatico = intval($automatico);
	$monto_comercial = floatval($monto_comercial);
	$multa = (!isset($multa)) ? 0 : intval($multa);
	$repetir = (!isset($repetir)) ? 0 : intval($repetir);
	$metros = (!isset($metros)) ? 0 : intval($metros);

	// POKA-YOKE: Forzar categorías para conceptos administrativos fijos
	if (strpos($leyenda, 'CAMBIO DE PROPIETARIO') !== false) {
		$cat = 19;
	} elseif (strpos($leyenda, 'CONSTANCIA') !== false) {
		$cat = 21;
	} elseif (strpos($leyenda, 'MULTA POR DESPERDICIO') !== false) {
		$cat = 20;
	} elseif (strpos($leyenda, 'CANCELACION DE TOMA') !== false || strpos($leyenda, 'CANCELACIÓN DE TOMA') !== false) {
		$cat = 22;
	}


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

	// FIX: El flag de recargo puede venir como 'recargo' o 'multa' desde el formulario
	$flag_recargo = (isset($recargo) && $recargo == 1) ? 1 : $multa;
	// GUARD: recargo=1 solo válido para cat. AGUA(2) y DRENAJE(3); cualquier otra categoría lo fuerza a 0
	if ($cat !== 2 && $cat !== 3) $flag_recargo = 0;

	$q = "insert into cargos values(null, '$leyenda', $monto, $flag_recargo, '', $mensual, $cat, 1, $aniocobro, $repetir, $metros, $automatico, $monto_comercial)";


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

	// Sanitización estricta de entrada (Poka-yoke)
	$num = intval($num);
	$leyenda = strtoupper(trim(strip_tags((string)$leyenda)));
	$cat = intval($cat);
	$monto = floatval($monto);
	$mensual = intval($mensual);
	$anio = intval($anio);
	$aniocobro = intval($aniocobro);
	$automatico = intval($automatico);
	$monto_comercial = floatval($monto_comercial);
	$multa = (!isset($multa)) ? 0 : intval($multa);
	$repetir = (!isset($repetir)) ? 0 : intval($repetir);
	$metros = (!isset($metros)) ? 0 : intval($metros);

	// POKA-YOKE: Forzar categorías para conceptos administrativos fijos
	if (strpos($leyenda, 'CAMBIO DE PROPIETARIO') !== false) {
		$cat = 19;
	} elseif (strpos($leyenda, 'CONSTANCIA') !== false) {
		$cat = 21;
	} elseif (strpos($leyenda, 'MULTA POR DESPERDICIO') !== false) {
		$cat = 20;
	} elseif (strpos($leyenda, 'CANCELACION DE TOMA') !== false || strpos($leyenda, 'CANCELACIÓN DE TOMA') !== false) {
		$cat = 22;
	}


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

	// FIX: El flag de recargo puede venir como 'recargo' o 'multa' desde el formulario
	$flag_recargo = (isset($recargo) && $recargo == 1) ? 1 : $multa;
	// GUARD: recargo=1 solo válido para cat. AGUA(2) y DRENAJE(3); cualquier otra categoría lo fuerza a 0
	if ($cat !== 2 && $cat !== 3) $flag_recargo = 0;

	$q = "update cargos set nombre='$leyenda', monto=$monto, monto_comercial=$monto_comercial, recargo=$flag_recargo, categoria=$cat, anio=$aniocobro, repetir=$repetir, metros=$metros, automatico=$automatico where numconsec=$num";


	if ($y->q($q)) {
		$salida .= "Se ha modificado el cargo $leyenda.<br>";
		
		// Sincronización de Saldo para cargos no pagados (estado = 0)
		$res_pendientes = $y->q("SELECT l.numcontrato, l.repetido, c.tipo, c.agua, c.drenaje, c.metros as metros_cto
								 FROM vw_ligacargos_pendientes l
								 JOIN contrato c ON l.numcontrato = c.numcontrato
								 WHERE l.leyenda='$leyenda'");
		
		$actualizados = 0;
		$ctos_actualizados = array();
		while ($p = $y->fetch_array($res_pendientes)) {
			$nc = $p['numcontrato'];
			$rep = $p['repetido'];
			$metros_cto = $p['metros_cto'];

			$r_t = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$nc'");
			list($es_com) = $y->fetch_array($r_t);

			$nuevo_monto = 0;

			// Recalcular basado en la nueva tarifa — Suma por Unidad de Toma
			if ($cat == 2 || $cat == 3) {
				$res_tomas = $y->q("SELECT tipo FROM contrato_toma WHERE numcontrato='$nc' AND " . ($cat == 2 ? 'tiene_agua=1 AND estado_agua=1' : 'tiene_drenaje=1 AND estado_drenaje=1'));
				while ($t = $y->fetch_array($res_tomas)) {
					$es_com_t = ($t['tipo'] == 1);
					$m_base = ($es_com_t && $monto_comercial > 0) ? $monto_comercial : ($es_com_t ? $monto * 2 : $monto);
					$nuevo_monto += $m_base;
				}
			} else {
				$nuevo_monto = ($es_com == 1 && $monto_comercial > 0) ? $monto_comercial : (($es_com == 1) ? $monto * 2 : $monto);
			}

			if ($metros == 1 && $nuevo_monto > 0) {
				$nuevo_monto = $nuevo_monto * $metros_cto;
			}

			if ($nuevo_monto > 0) {
				$y->q("UPDATE ligacargos SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
				$y->q("UPDATE ligacargos_historico SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND categoria=$cat AND repetido=$rep AND estado=0");
				$tipo_cto = ($es_com == 1) ? 'Comercial' : 'Normal';
				$ctos_actualizados[] = "cto $nc: \$$nuevo_monto ($tipo_cto)";
				$actualizados++;
			}
		}

		if ($actualizados > 0) {
			$salida .= "Se sincronizó el saldo retroactivamente en <b>$actualizados</b> contratos con este cargo pendiente.<br>";
			$antes_str = "Tarifas anteriores: Normal \$$monto, Comercial: \$$monto_comercial";
			$despues_str = "Propagado a $actualizados contrato(s): " . implode(', ', $ctos_actualizados);
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
<summary>File: `Unknown file` (L109-139)</summary>

**Path:** `Unknown file`

```
			$res_deuda = $y->q("SELECT IFNULL(SUM(monto),0) FROM vw_ligacargos_pendientes WHERE numcontrato='$numcontrato'");
			list($deuda_actual) = $y->fetch_array($res_deuda);
			$deuda_actual = floatval($deuda_actual);

			for ($i = 1; $i <= $meses; $i++) {
				if ($umbral_bomba_enable == 1 && $deuda_actual >= $umbral_bomba && $umbral_bomba > 0) {
					break; // Límite Bomba de Recargos alcanzado
				}
				$leyenda_recargo = "RECARGO $nom_meses[$mesrecargo] $aniorecargo - $leyenda";
				$tabla_dest = ($aniorecargo <= 2025) ? "ligacargos_historico" : "ligacargos";
				
				// Idempotencia: no duplicar si el recargo ya existe (protege contra refresh y re-activaciones)
				$chk_rec = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda_recargo' AND numcontrato='$numcontrato' LIMIT 1");
				if ($y->num_rows($chk_rec) == 0) {
					// REGLA F05: ligacargos.recargo es neutralizado (0.00). La Fuente de Verdad es la Categoría.
					$q = "INSERT INTO $tabla_dest (numcontrato,leyenda,monto,fcobro,fpago,estado,recargo,folio,anio,numcontratoresp,idpago_vinc,categoria,repetido) VALUES('$numcontrato','$leyenda_recargo',$monto_recargo,CURDATE(),CURDATE(),0,0.00,0,$anio,NULL,NULL,$categoria_recargo,$cuenta)";

					if ($y->q($q)) {
						$deuda_actual += $monto_recargo;
					} else {
						$y->_logFallback('DEBUG_SURCHARGE', $q, "Falla en anio $aniorecargo");
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
```

</details>

---

## Agent Response

### Thinking

**Analyzing Bomb Limit Logic**

I've verified the "Límite Bomba" code's logic. It correctly checks if the bomb limit is enabled and if the current debt exceeds the bomb threshold (which must also be positive). If these conditions are met, the code breaks, effectively enforcing the bomb limit as expected.


**Clarifying Age Filters**

I'm now focusing on the 'max_anios' variable, which I've determined acts as an age filter, preventing surcharges on debts older than a specified period. This is distinct from the bomb threshold ('reversal_threshold'), which halts further accumulation based on the current debt. Both factors play a role in limiting potential debt, one by time and the other by monetary value. I'll extract some more specific information to highlight for the user.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.023898810s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

si, añadeles esas dos nuevos anexos.

<details>
<summary>Context</summary>

**Active File:** `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`
**Language:** markdown
</details>

---

## Agent Response

### Thinking

**Adding Annexes to the Document**

I'm currently focused on incorporating two key annexes into `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`. The first, "Anexo B: Mecanismos de Protección Financiera," is taking shape, focusing on financial protection mechanisms. Simultaneously, I'm developing the "Glosario de Parámetros Críticos," which will serve as the second annex.




### Actions

**Tool:** `view_file`
**File:** `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.341818433s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Cartera Vencida — Modelo, Cálculo y Reportes

> **Audiencia:** Contador y Operador de la Webapp Agua V2
> **Última actualización:** 2026-05-11
> **Rama:** `feature/upgrade-v2-win-xampp`

---

## 1. Definición y Contexto

La **Cartera Vencida** representa la suma de todos los adeudos de un usuario (contrato) que no han sido liquidados y cuyo año de cargo es **anterior al ejercicio fiscal de consulta**. Es decir: dinero que ya debió haberse cobrado en períodos anteriores y aún está pendiente.

> **No confundir con:** Los adeudos del año en curso (ejercicio corriente), que son independientes aunque también sean deudas pendientes. El sistema los separa con precisión.

---

## 2. Modelo de Cálculo

### 2.1 Variables y Parámetros Clave

| Variable | Descripción | Ejemplo |
|---|---|---|
| `anio_ref` | **Año fiscal de referencia.** Define la frontera entre corriente y vencido. Se toma del año de la fecha de inicio del período analizado. Puede sobrescribirse con `?anio_corte=YYYY`. | `2026` |
| `anio` (del cargo) | Ejercicio fiscal al que pertenece cada cargo en la base de datos. | `2024`, `2025` |
| `estado` (del cargo) | `0` = pendiente de pago; `1` = pagado. | |
| `estado` (del contrato) | `1` = Activo; `2` = Suspensión Temporal; `3` = Suspensión Administrativa; `4` = **Suspensión Definitiva** | |
| `estado` (del usuario) | `2` = No Localizado (C.N.L.) | |

### 2.2 Regla de Pertenencia a Cartera Vencida

Un cargo pertenece a la Cartera Vencida si cumple **todas** las condiciones:

```
cargo.estado = 0                         →  aún no pagado
cargo.anio < anio_ref                    →  de un ejercicio anterior
contrato.estado ≠ 4                      →  contrato NO en Suspensión Definitiva
categoria NOT IN (6,19,20,21,22)         →  concepto cobrable periódico (ver tabla §2.4)
```

### 2.3 Fuente de Datos (Vistas Canónicas — Host C V2)

Host C opera con la tabla `ligacargos` partida en dos para optimizar rendimiento:

| Vista | Contenido | Cuándo se usa |
|---|---|---|
| `vw_ligacargos_all` | Activa (≥2026) + histórico (≤2025), todos los estados | Concentrado de Caja (cobra **pagados** `estado=1`) |
| `vw_ligacargos_pendientes` | Activa + histórico, solo `estado=0` | Cartera Vencida (busca **no pagados**) |

---

### 2.4 Tabla de Categorías — Inclusiones y Exclusiones en Cartera

#### 17 Categorías INCLUIDAS en Cartera Vencida

Son los conceptos de cobro periódico o acumulativo que generan deuda real cobrable:

| # | ID | Nombre Largo (Catálogo) | Nombre Corto | Notas |
|---|---|---|---|---|
| 1 | 1 | CUOTA FIJA DE AGUA | CUOTA/FJA | Cuota base mensual |
| 2 | 2 | COBRO DE AGUA POTABLE | AGU/POT | Cuota diferenciada por volumen |
| 3 | 3 | COBRO DE DRENAJE | DRN | Derechos de conexión/uso |
| 4 | 4 | COBRO POR CUOTAS ESPECIALES | CUO/ESP | Trámites especiales |
| 5 | 5 | COBRO POR REPARACIONES | REP | Multas ordinarias/reparaciones |
| 6 | 7 | COBRO POR METROS LINEALES | MTS/LIN | Servicios proporcionales |
| 7 | 8 | COBRO POR CONTRATOS NUEVOS (AGUA) | CTO/NVO | Conexión nueva agua |
| 8 | 9 | COBRO POR REPOSICIÓN DE CREDENCIAL | REP/CRD | |
| 9 | 10 | COBRO POR COOPERACIONES | COOP | Otro ingreso cooperativo |
| 10 | **11** | **COBRO DE RECARGOS NORMALES** | **REC/NRM** | **Recargos de años anteriores = deuda real cobrable ✓** |
| 11 | 12 | COBRO POR SANCIONES | SANC | |
| 12 | 13 | COBRO POR CANCELACIÓN DE SERVICIO | CANC/SRV | |
| 13 | 14 | COBRO POR RECONEXIÓN DE SERVICIO | RCON | |
| 14 | 15 | COBRO POR CONEXIONES | CON | |
| 15 | **16** | **COBRO DE RECARGOS DE AGUA** | **REC/AGU** | **Recargos de años anteriores = deuda real cobrable ✓** |
| 16 | **17** | **COBRO DE RECARGOS DE DRENAJE** | **REC/DRN** | **Recargos de años anteriores = deuda real cobrable ✓** |
| 17 | 18 | MANTENIMIENTO | MTTO | |

> **¿Por qué se incluyen los recargos (11, 16, 17)?** Los recargos de ejercicios anteriores
> son deuda vencida real y cobrable. Su inclusión garantiza que la columna **R.CART.** del
> concentrado de caja cuadre a **$0 de diferencia** (ver §2.5).

#### 5 Categorías EXCLUIDAS de Cartera Vencida

| # | ID | Nombre Largo (Catálogo) | Nombre Corto | Razón de Exclusión |
|---|---|---|---|---|
| 1 | **6** | COBRO POR FALTAS DE ASAMBLEA | ASAM/FLT | Se sincroniza automáticamente por usuario. No es cargo periódico individual por contrato. Sin `anio` fijo (acumulativo). |
| 2 | **19** | COBRO POR CAMBIO DE PROPIETARIO | CB/PROP | Concepto único V2 — trámite administrativo, no cuota periódica |
| 3 | **20** | MULTA POR DESPERDICIO DE AGUA | MLT/DESP | Concepto único V2 — sanción puntual |
| 4 | **21** | EXPEDICIÓN DE CONSTANCIA DE NO ADEUDO | CNT/NADO | Concepto único V2 — trámite puntual |
| 5 | **22** | REPARACIÓN DE FUGAS (EXCAVACIÓN Y CANCEL.) | CNC/FUGA | Concepto único V2 — servicio puntual |

> **Total del catálogo:** 22 categorías (IDs 1–22).
> **Incluidas:** 17 (toda categoría que NO esté en la lista de exclusiones).
> **Excluidas:** 5 (IDs 6, 19, 20, 21, 22).

---

### 2.5 El Cuadre de Caja a $0 — ¿Qué Significa?

En el **Concentrado de Corte de Caja** cada fila de pago (folio) tiene un total horizontal:

```
TOTAL_FILA = Σ(todas las categorías año corriente) + R.CART.
```

Al sumar todos los folios del período, la suma de columnas debe ser **idéntica** al total general:

```
Σ(R.CART.) + Σ(cat_2) + Σ(cat_3) + ... + Σ(cat_N) = TOTAL_TODO
```

Si los recargos de años anteriores (cat 11, 16, 17) se **excluyeran** de R.CART. pero el pago
los incluyera en el folio, quedarían "flotando" sin columna asignada → el total de la fila
superaría la suma de columnas → **descuadre visible en rojo** en la interfaz.

Incluirlos en R.CART. asegura: diferencia = **$0** en todos los períodos validados.

---

## 3. Representación por Reporte

### 3.1 Resumen Comparativo

| Reporte | Nombre en Menú | ¿Qué muestra? | Filtro de Año | Cartera Vencida | Exclusiones canónicas |
|---|---|---|---|---|---|
| `carteravencida.php` | **Cartera Vencida (Adeudos por Año)** | Listado de contratos con adeudo pendiente en un año fiscal específico. | `?anio=YYYY` (default: año actual) | Es el **reporte principal** de cartera: muestra la deuda NO pagada del año solicitado | ✅ `NOT IN (6,19-22)`, `c.estado≠4`, `u.estado≠2` |
| `listadeudores.php` | **Listado de Deudores** | Total de deuda acumulada por contrato, **sin separar años**. Incluye deuda corriente + vencida en un solo monto. | Sin filtro de año | No desglosa cartera vencida vs. corriente; muestra el total pendiente integral | ✅ `NOT IN (6,19-22)`, `c.estado≠4`, `u.estado≠2` |
| `concentradocortecaja.php` | **Corte de Caja — Por Fechas** | Reporte detallado por folio de pago: cada fila = un pago con desglose por categoría + cartera recuperada | Columna `R.CART.` usa `anio < anio_ref` | Columna **R.CART. (`<$anio_ref`)**: monto *cobrado* en el período que correspondía a deuda de años anteriores | ✅ `NOT IN (6,19-22)` en la columna R.CART. |
| `concentradocortecajaresumen.php` | **Resumen de Caja** | Documento oficial con firmas. Ingresos agrupados por concepto + egresos + existencia en banco | Línea con `(Años anteriores a $anio_ref)` | Línea **"RECUPERACIÓN DE CARTERA VENCIDA (Años anteriores a YYYY) (N folios)"** | ✅ `NOT IN (6,19-22)` en la línea de cartera |

> **Diferencia clave entre reportes:**
> - `carteravencida.php` y `listadeudores.php` muestran **deuda NO pagada** (pendiente, `estado=0`).
> - `concentradocortecaja.php` y `concentradocortecajaresumen.php` muestran **deuda YA cobrada** (pagada, `estado=1`) en el período, desglosando cuánto de ese cobro era cartera de años anteriores.

---

## 4. Mejoras por Realizar (Backlog)

### `[GAP-CALC-FUTURE]` — Cargos con Año Futuro No Aparecen en Ninguna Columna

**Contexto:** Si un usuario paga por adelantado cargos del año siguiente (ej. paga 2027 en
2026), el monto no cae en ninguna columna del concentrado detallado: ni corriente (`anio=anio_ref`)
ni R.CART. (`anio<anio_ref`). El total de la fila sería mayor que la suma de sus columnas →
**descuadre visual en rojo** en ese folio específico (total general sigue siendo correcto).

**Mejora sugerida:** Añadir columna `ANTICIPOS` que capture `anio > anio_ref AND estado=1`.

---

### `[IMPROVEMENT-CONSOLIDATED-CV]` — No Existe Vista de Deuda Histórica Total

**Contexto:** `carteravencida.php` muestra la deuda pendiente de **un año a la vez**. No existe
reporte que consolide la deuda vencida de **todos los ejercicios anteriores** por contrato.
El contador debe generar el reporte año por año y sumar manualmente.

**Mejora sugerida:** Crear un reporte consolidado o añadir modo `?anio=todos` al reporte
actual que muestre el acumulado histórico con desglose por ejercicio.

---

### `[GAP-NO-LOC-RECOVERY]` — Deuda de Usuarios No Localizados en Limbo Informativo

**Contexto:** Los usuarios en Estado 2 (No Localizados, `u.estado=2`) son excluidos del total de Cartera
Vencida. En el Concentrado Detallado aparecen como **C.N.L.** (Cartera No Localizada) y **no contabilizan
en el TOTAL**. No existe reporte dedicado que muestre el monto total de C.N.L. ni su evolución.

**Mejora sugerida:** Añadir fila informativa "CARTERA NO LOCALIZABLE (C.N.L.)" al pie del
Resumen de Caja y del reporte de Cartera Vencida, marcada como **NO suma al total** pero visible
para seguimiento gerencial.

---

### `[ISSUE-CONCEPTUAL-ENCUADRE]` — Definición del Filtro Canónico para Futuros Desarrollos

**Contexto:** Para que un cargo sea considerado parte de la Cartera Vencida en cualquier reporte
del sistema, debe satisfacer la siguiente condición. Se documenta aquí para que cualquier
futuro desarrollo aplique exactamente el mismo filtro y no introduzca divergencias:

| Condición | Significado |
|---|---|
| `cargo.estado = 0` | El cargo está **pendiente** de pago (no cobrado aún). Estado `1` = ya pagado. |
| `contrato.estado ≠ 4` | El contrato **no** está en Suspensión Definitiva. Estado 4 = baja permanente; su deuda fue depurada y ya no es cobrable. |
| `categoria ≠ 6` | **Faltas de Asamblea:** gestión colectiva automática, no cargo individual por contrato. |
| `categoria ≠ 19` | **Cambio de Propietario:** trámite único administrativo, no cuota recurrente. |
| `categoria ≠ 20` | **Multa por Desperdicio:** sanción puntual por evento, no periódica. |
| `categoria ≠ 21` | **Constancia de No Adeudo:** trámite puntual de servicio, cobro único. |
| `categoria ≠ 22` | **Reparación de Fugas:** servicio puntual por evento de infraestructura. |
| `cargo.anio < anio_ref` | El cargo pertenece a un ejercicio **anterior** al año de referencia. |

**Mejora sugerida:** Encapsular este filtro en una Vista SQL para que todos los reportes
tengan una única fuente de verdad y no sea necesario mantener la constante de exclusión
sincronizada manualmente en múltiples archivos.

---

## 5. Tabla de Congruencia Cruzada

Los siguientes totales **deben coincidir** para el mismo período entre reportes:

| Métrica | `concentradocortecaja.php` | `concentradocortecajaresumen.php` | Validación |
|---|---|---|---|
| Total folios del período | `COUNT(DISTINCT folio)` al pie | Folios agrupados en totales | ✅ Idénticos |
| Monto por categoría (ej. Agua) | Columna AGU/POT, solo `anio=anio_ref` | Línea "COBRO DE AGUA POTABLE $anio" | ✅ Idénticos |
| Monto R.CART. | Columna `R.CART. <$anio_ref` | Línea "RECUPERACIÓN CARTERA VENCIDA" | ✅ Idénticos |
| Exclusiones de cartera | `NOT IN (6,19,20,21,22)` | `NOT IN (6,19,20,21,22)` — misma constante | ✅ Homologados |
| Cuadre horizontal | Σ columnas = TOTAL → diferencia $0 | N/A (resumen vertical) | ✅ Validado 5+ períodos |

---

*Documento generado: 2026-05-11 | Rama: `feature/upgrade-v2-win-xampp`*

---

## 6. Anexo: Ejemplos Prácticos de Lectura (Casos Reales)

Para facilitar la comprensión del contador y el operador, se presentan tres escenarios reales extraídos del período **29/09/2025 al 04/01/2026** con un año de corte (`anio_ref`) de **2025**.

### Escenario A: Pago 100% Corriente (Sin Cartera)
*   **Datos:** CTO 1041, Folio 24017 (14/10/2025).
*   **Monto:** $1,140.00 | **R.CART:** $0.00 (Vacío).
*   **¿Qué sucedió?** El usuario pagó su Anualidad de Agua 2025 ($600) y 9 recargos correspondientes a meses del 2025 ($540). Como todos los cargos pertenecen al año 2025 (mismo año que el corte), el sistema los coloca en sus columnas específicas y deja la cartera vacía.

### Escenario B: Pago 100% Cartera (Deuda Vieja)
*   **Datos:** CTO 1163, Folio 24086 (17/12/2025).
*   **Monto:** $1,230.00 | **R.CART:** $1,230.00.
*   **¿Qué sucedió?** El usuario pagó adeudos de 2022, 2023 y 2024. Al ser todos los años anteriores al 2025, el sistema agrupa el 100% del pago en la columna **R.CART.** No se pagó nada del ejercicio 2025 en este folio.

### Escenario C: Análisis de Productividad del Período
*   **Ingreso Total captado:** $110,344.00
*   **Recuperación de Cartera (R.CART):** $23,900.00
*   **Lectura Contable:** Durante estos ~3 meses, el **21.6%** de los ingresos provinieron de la cobranza de deuda histórica (morosidad recuperada), mientras que el **78.4%** restante ($86,444) correspondió a pagos del ejercicio corriente 2025.

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
**Created:** 11 May 2026, 12:35 pm

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 219bd295-172b-4c03-a3df-83f565d88963: Validating Full-Pipeline-Sync Integrity
- Created: 2026-05-09T05:39:34Z
- Last modified: 2026-05-10T22:20:43Z

### USER Objective:
Hardening Agua V2 Production Resilience

Objective: Finalize the migration and stabilization of the Agua V2 webapp in the Host C production environment.
Goals:
1. Implement autonomous UPS fail-safe monitoring with non-blocking shutdown procedures.
2. Automate background service startup sequences and centralized log management for the Kiosko-mode environment.
3. Redesign the Annual Consolidation (Split) interface to provide a pro-active, error-proof administrative dashboard.
4. Validate system resilience through simulated power failure testing and ensure audit integrity across all server operations.

## Conversation 65980880-a19d-4db2-82b2-19454270eff9: Validating Database Connectivity
- Created: 2026-05-08T04:39:13Z
- Last modified: 2026-05-09T05:27:52Z

### USER Objective:
Testing UPS Infrastructure Scripts

Objective: Validate the operational safety of the Agua V2 server's power management and deployment automation in Host C.

Goals:
1. Develop a controlled testing methodology to simulate UPS power failure scenarios without requiring actual hardware power-offs.
2. Verify the end-to-end integration of monitoring, alert, and shutdown scripts (`monitor-ups.ps1`, `shutdown-server.ps1`, and `stop-webapps.ps1`).
3. Ensure the system demonstrates graceful shutdown, robust database backup generation, and automated startup recovery.
4. Execute staged testing scenarios to confirm that system integrity is maintained during power-loss transitions.

## Conversation 4261727a-9250-4b18-a666-5b474f1c4a4c: Identifying Broken Ubuntu Packages
- Created: 2026-04-28T18:06:17Z
- Last modified: 2026-05-09T05:19:39Z

### USER Objective:
System Maintenance And Cleanup

Objective: Systematically clean and optimize the Ubuntu 22 environment to eliminate broken dependencies, stale configuration files, and unused resources.

Goals:
1. Purge residual 'rc' packages and outdated kernel components to reclaim system storage and stabilize package management.
2. Identify and prune invalid '.desktop' shortcut entries that point to non-existent binaries.
3. Validate the integrity of the critical Whisper-cpp/Voxd/CUDA stack to ensure zero-impact maintenance.
4. Synchronize and secure the 'ga-cl-ia' documentation repository through automated git recovery and sync protocols.
5. Enhance the existing cleanup script to include automated identification of newer broken entries and stale snap revisions.

## Conversation 3d0ec69e-8bdd-40fe-a2ee-0c7e71a92060: Migrating Disk Usage Ubuntu
- Created: 2026-05-06T03:39:39Z
- Last modified: 2026-05-09T03:55:59Z

### USER Objective:
Optimizing Ubuntu Disk Usage

Main Objective: Reclaim storage space and improve system performance by auditing and removing redundant software, large temporary files, and obsolete developer tools.

Goals:
1. Reorganize VirtualBox virtual machine storage to utilize high-speed NVMe partitions.
2. Perform a comprehensive purge of legacy Oracle Middleware, .NET SDKs, Liquibase instances, and their associated system environment variables.
3. Consolidate and clean up redundant tools like OnlyOffice and WebLogic Remote Console.
4. Audit and sanitize the user's `~/.bashrc` profile to remove references to deprecated software paths, ensuring a clean and efficient shell environment.

## Conversation f056b1a8-79e6-4c2a-95f5-54a33ea06e98: Explaining Financial Reporting Logic
- Created: 2026-05-07T23:30:40Z
- Last modified: 2026-05-09T03:35:54Z

### USER Objective:
Blindando Categorización Agua V2

Objective: Eradicate Category Zero errors and ensure data integrity in the Agua V2 Host C environment by hardening the application and migration pipeline.

Goals:
1. Implement Poka-Yoke guards in PHP (`cargos.php`) to force correct category assignment (19-22) for administrative charges, overriding user input errors.
2. Automate the sanitization of the master `cargos` catalog within the `10_pipeline_saneamiento.sql` pipeline to prevent historical category corruption post-sync.
3. Validate that all administrative categories (Change of Owner, Fines, Constancias) are correctly mapped and immune to legacy `0` or `1` artifacts.
4. Establish a fail-safe synchronization pattern that ensures all new transactions originate with production-ready metadata, reducing reliance on manual post-hoc SQL patches.

## Conversation bcf279c3-7e58-4790-9c85-a35ebec1c331: Automating Windows Deployment Scripts
- Created: 2026-05-06T00:58:39Z
- Last modified: 2026-05-09T00:27:19Z

### USER Objective:
Automating Agua V2 Windows Deployment

Main Objective: Complete the Agua V2 appliance hardening for Windows 10 Host C to ensure a fully autonomous, production-ready server environment.

Goals:
1. Finalize storage-agnostic infrastructure through centralized configuration ($TargetDrive).
2. Refactor bash deployment scripts to prepare a clean, directory-structured 'agua' webapp package for seamless extraction.
3. Optimize the Windows environment into a Kiosko appliance with automated startup/shutdown and non-intrusive UI/UX.
4. Centralize all deployment assets and operational documentation for the production release (Pase a Producción).
5. Ensure robust system security and stability through automated GPO integration, UPS monitoring, and Chrome Kiosko enforcement.

## Conversation 70b5094f-e7ed-44ff-b37e-6634cd67ee3f: Auditing Git Sync Script
- Created: 2026-05-06T04:38:01Z
- Last modified: 2026-05-06T04:59:45Z

### USER Objective:
Auditing Git Sync Script

Main Objective:
Analyze the safety and integrity of the `sync with link de chatledger-entre main y rama git.sh` script on the Ubuntu 22.04 host to ensure it functions correctly without causing system corruption or repository data loss.

Goals:
1. Verify the script's logic regarding file migration, symbolic link creation, and `.gitignore` management to prevent accidental data deletion.
2. Evaluate potential race conditions or error states if the script is re-run (idempotency checks).
3. Ensure the script correctly handles directory transitions between the local repository and the external `STORAGE_DIR` without breaking the application's reliance on `.chatledger`.
4. Assess the risk of Git state inconsistencies (e.g., cached vs. ignored files) during the synchronization process.

## Conversation 25b74c07-23d4-48e6-b039-435b579b0cf6: Sourcing Water Delivery System Repositories
- Created: 2026-05-05T21:11:02Z
- Last modified: 2026-05-05T21:12:16Z

### USER Objective:
Sourcing Water Delivery System Repositories

Main Objective:
Identify and source existing, publicly available repository examples of water delivery/distribution management systems to serve as a baseline for a PHP/PostgreSQL POC.

Goals:
1. Locate repositories containing full-scope management features including inventory (garrafones), logistics (routes/schedules), vehicle tracking, and personnel management.
2. Evaluate these repositories as data and architectural inputs to facilitate the migration of the user's current "Agua" webapp system into a modernized PHP/PostgreSQL environment.
3. Provide direct links to relevant projects to enable the user to conduct an analysis of business logic and schema structures for the upcoming migration.

## Conversation 89bc16ba-c2d5-462e-9435-d8421190f457: Kiosk Mode Browser Automation
- Created: 2026-04-30T15:35:02Z
- Last modified: 2026-05-01T05:21:04Z

### USER Objective:
Kiosk Mode Browser Automation

Main Objective:
Automate the deployment of the "Agua" web application in a "Kiosk" or "App" mode using Google Chrome.

Goals:
1. Create a PowerShell script (`.ps1`) that launches the specific URL `http://localhost/agua/login/index.php` in a stripped-down Chrome window without navigation bars, tabs, or address bars.
2. Ensure the resulting script file is placed on the user's desktop for quick, one-click access.
3. Configure the browser flags (specifically `--app` or `--kiosk`) to ensure a distraction-free, application-like experience suitable for the local web deployment.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 11 May 2026, 12:35 pm

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
**Created:** 11 May 2026, 12:35 pm

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
**Created:** 11 May 2026, 12:35 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

---

*Generated by Chatledger for Antigravity*