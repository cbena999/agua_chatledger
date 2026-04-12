# Resolving Contract Status Transitions

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `f48c1504-10de-4255-8c0f-13183a1f3da0` |
| **Cascade ID** | `b5b0a269-ff39-4387-ad94-d5f2fead4c34` |
| **Type** | Agent Conversation |
| **Total Steps** | 44 |
| **Started** | 12 Apr 2026, 11:57 am |
| **Completed** | 12 Apr 2026, 12:00 pm |

---

## User Request

Busca en converaciones pasadas entre 5 y el 11 abril, sobre lo que solicite y lograste resolver en este tema:  6 casos , incluidos este: CASO 1) Cuando un contrato está en ACTIVO y de manera manual el administrador le asigna el estatus de  SUSPENCION TEMPORAL.
Usa tu Runbook.

<details>
<summary>Context</summary>

**Active File:** `CLAUDE.md`
**Language:** markdown
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 3c27fe1d-5e68-4e45-9952-5f80cd857141: Migrating Menu to Options Page
- Created: 2026-04-12T00:55:48Z
- Last modified: 2026-04-12T07:09:02Z

### USER Objective:
Stabilizing Agua Data Migration

The user's objective is to finalize the full-stack data migration to the V2 MariaDB environment by validating critical financial reports, ensuring procedural integrity across split-schema tables (Active vs. Historical), and confirming that all analytical queries correctly utilize the consolidated `vw_ligacargos_all` view to maintain fiscal accuracy.

## Conversation 641d61c3-6a67-4219-9eb6-f0ca8f22ce82: Validating Automated Debt Sanitation
- Created: 2026-04-11T17:24:33Z
- Last modified: 2026-04-12T00:50:57Z

### USER Objective:
Stabilizing Agua Administrative Infrastructure

The user's objective is to finalize the structural stabilization of the Agua web application following a major directory reorganization. Key goals include:
1. Ensuring full navigation consistency and asset loading (CSS/JS) across all relocated administrative modules by correcting relative paths.
2. Implementing a comprehensive set of compatibility redirects in the `admin/` root directory to prevent 404 errors for legacy bookmarks and system links.
3. Standardizing the UI by adding missing "Return to Menu" navigation links to all administrative reports and control panels.
4. Validating that all financial sanitation and reporting tools remain fully functional and secure within their new subdirectories (`saneamiento`, `operaciones`, `reportes`).

## Conversation 67884311-645c-4f5a-ae15-979d81d75006: Fixing Duplicate Contract Notes
- Created: 2026-04-10T02:43:06Z
- Last modified: 2026-04-11T06:03:31Z

### USER Objective:
Stabilizing Agua Fiscal Sanitation

The user's objective is to complete the stabilization of the Agua web application by implementing a robust, auditable financial sanitation system. Key goals include:
1. Finalizing the consolidation of reporting architecture by retiring legacy files and enforcing V2 standards.
2. Developing an administrative "Saneamiento Administrativo" control panel with mandatory filters (status, period, category) to perform surgical, non-destructive fiscal adjustments.
3. Implementing a "Batch ID" system for all mass sanitation operations to ensure full auditability and traceability in the `cambios` table.
4. Hardening the data synchronization pipeline (Host B to C) to automatically sanitize "Estado 4" (Definitive Suspension) contracts while reserving manual control for other statuses.
5. Refining the sanitation bitácora to provide professional, printable audit trails for financial adjustments.

## Conversation a966039d-cd86-440d-b61b-0788fab82e28: Agua Contract Logic Stabilization
- Created: 2026-04-10T16:49:29Z
- Last modified: 2026-04-10T21:59:03Z

### USER Objective:
Stabilizing Agua Contract Logic

The user's objective is to stabilize the Agua web application by implementing automated financial saneamiento, enforcing strict contract state transitions, and improving auditability. Key goals include:
1. Implementing the "Amnistía de Recargos" (Regla C06) for contract reactivation to prevent punitive debt accumulation.
2. Strengthening audit trails in `regresarCargoCancelado` (Regla F03) with operator logging and state validation.
3. Enhancing the UI with a read-only infrastructure reference panel for contract edits.
4. Formalizing a standardized session closure and documentation protocol (Regla 09) to ensure all verified changes are automatically committed to the `agua_chatledger` repository, maintaining architectural consistency across both Gemini and Claude Code environments.

## Conversation 24485b9b-f530-4a20-8ea3-585e551c238f: Stabilizing User Search Filters
- Created: 2026-04-09T04:59:38Z
- Last modified: 2026-04-10T02:20:05Z

### USER Objective:
Stabilizing Agua Financial Saneamiento

The user's objective is to stabilize the Agua web application by refactoring contract status logic and implementing a robust, web-based financial saneamiento system. Key goals include:
1. Implementing defensive coding to enforce logical contract state transitions and prevent "Avalancha Punitiva" and "Deuda Zombi".
2. Developing a centralized, parameter-driven administrative dashboard (`admin/saneamiento/`) for historical data cleanup (2018-2026), specifically targeting "Cargos Fantasma".
3. Ensuring all saneamiento operations include audit trails and rollback capabilities via a new `batch_id` column to maintain fiscal integrity during the migration to the V2 schema.
4. Organizing project assets and infrastructure within a dedicated `feature/saneamiento-v2` branch to ensure consistency with Host C migration requirements while maintaining a clean, modular codebase.

## Conversation bdc4ae35-3174-4334-aa14-a427816e51bc: Migrating Assembly V2 Webapp
- Created: 2026-04-08T17:39:02Z
- Last modified: 2026-04-09T04:20:54Z

### USER Objective:
Finalizing Asamblea V2 Attendance Integration

The user's objective is to finalize the standalone 'Asamblea V2' module by ensuring the attendance registration and reporting workflows are fully functional and compatible with the legacy system. Key goals include:
1. UI/UX Refinement: Improving the admin grid layout and action button styling.
2. Data Integrity: Ensuring multi-contract users are correctly grouped in the attendance list and ticket generation, while maintaining the legacy TXT report format for compatibility with the existing `asistencias.php` import process.
3. System Synchronization: Verifying that the generated attendance TXT files remain compatible with the legacy `core.php` processing logic to prevent integration errors.
4. Architectural Consolidation: Maintaining the `agua_chatledger` repository as the definitive source of truth for all project documentation and configuration, utilizing symlinks to ensure consistency across development environments.

## Conversation aaee12b1-ccf8-44bc-b37a-b2cd531092cf: Stabilizing Host C Application Reports
- Created: 2026-04-08T04:34:54Z
- Last modified: 2026-04-08T06:52:29Z

### USER Objective:
Stabilizing Agua Application Migration

The user's objective is to finalize the stabilization of the Agua web application on the Host C environment by completing a comprehensive audit of legacy code patterns, refactoring deprecated PHP functions to ensure compatibility with PHP 7.4/8.x, and removing obsolete legacy libraries to streamline the codebase. The goal is to ensure full operational integrity with MariaDB 10.4 by verifying that all administrative reports and CRUD operations correctly utilize the V2 split-schema views.

## Conversation 3b5dff64-1c3c-474c-9796-423733a337f5: Tracking Contract Status Changes
- Created: 2026-04-03T04:29:44Z
- Last modified: 2026-04-08T05:18:33Z

### USER Objective:
Tracking Contract Status Changes

The user's objective is to audit the recent status change history for contract #1167, associated with user JOSE GUADALUPE RIOS MALDONADO (userId 1329). The goal is to query the database—specifically checking the `cambios` or relevant audit tables—to determine if the contract's status has been modified recently and, if so, to retrieve the specific details of that transition.

## Conversation 8c334798-0ddd-466f-b9a2-ec9516a28366: Optimizing MariaDB Slow Query Logging
- Created: 2026-04-07T22:04:49Z
- Last modified: 2026-04-08T02:03:21Z

### USER Objective:
Optimizing Contract Data Performance

The user's objective is to resolve performance latency in the `ficha.php` contract view on the Host C environment. The goal is to optimize the database queries—specifically those involving `vw_ligacargos_all` and `cargos`—by refactoring the underlying SQL logic within `includes/negocio/contratos.php` to leverage the previously implemented covering indexes, ensuring faster data retrieval for contract records and associated financial history.

## Conversation eec1714b-ec56-4b11-8988-005796c7496e: Counting Users On Host C
- Created: 2026-04-08T01:08:50Z
- Last modified: 2026-04-08T01:26:02Z

### USER Objective:
Counting Users On Host C

The user's objective is to determine the total number of records in the `users` table on the Host C database environment. This involves connecting to the MariaDB instance (port 7002) on Host C and executing a `SELECT COUNT(*) FROM users;` query to retrieve the current count.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 12 Apr 2026, 11:57 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Pinpointing Relevant Data**

I'm now focusing on identifying the relevant data points within conversations from April 5th to 11th, 2026. The search revolves around "6 casos," and conversations where a contract is described as "ACTIVO," but is manually set to "SUSPENCION TEMPORAL" by the administrator. I'm prioritizing direct mentions of those exact terms to ensure accuracy.


**Analyzing Runbook Application**

I'm now investigating "Usa tu Runbook" within the context of the identified date range. My attention is drawn to conversation `24485b9b-f530-4a20-8ea3-585e551c238f` which mentions "Avalancha Punitiva" and "Deuda Zombi". The goal is to determine if this runbook directly addresses preventing those issues within the "6 casos" and contract status context. I am cross-referencing this against the GEMINI.md and relevant agent rules.




### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/.gemini/antigravity/brain/`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 5.230897472s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `brain` (55 items)</summary>

**Path:** `home/carlos/.gemini/antigravity/brain`

| Name | Type | Size |
|------|------|------|
| `017ab363-a10a-47cf-bba0-a80243dc2be6` | Directory | - |
| `04e85e13-ed07-4863-ae80-0a3e46d05184` | Directory | - |
| `05741a04-7ae7-4cd8-ad22-09a26456307c` | Directory | - |
| `07ca549e-fe78-4d59-bf6c-f42130c20d54` | Directory | - |
| `0f31832c-c1d6-4c72-b792-6ea5589911bc` | Directory | - |
| `141497a9-4e6b-4b5b-97f6-56293c5273c7` | Directory | - |
| `24485b9b-f530-4a20-8ea3-585e551c238f` | Directory | - |
| `2efef4ff-9a00-49e5-bcbb-31f503c35747` | Directory | - |
| `2f9d864e-a0de-436d-9cbd-fb1e1d80bdbe` | Directory | - |
| `3032b7c2-1f26-4551-90d0-d74f62791010` | Directory | - |
| `37097dc4-9d53-4f5b-a2df-d7fbe2745ebf` | Directory | - |
| `3b5dff64-1c3c-474c-9796-423733a337f5` | Directory | - |
| `3c27fe1d-5e68-4e45-9952-5f80cd857141` | Directory | - |
| `3c3268b3-45f1-473c-a16a-6ed74294a223` | Directory | - |
| `3ebcbf60-6822-43b1-a39a-261c83016221` | Directory | - |
| `43acb21e-274c-4bf9-a214-17f11d2170ba` | Directory | - |
| `4917ec7e-5fe1-4170-bdee-3b519f250f4e` | Directory | - |
| `506da3cb-13e0-4d4f-a935-c6849c3e5239` | Directory | - |
| `53272a82-9ae1-4f85-9930-e36204f92811` | Directory | - |
| `59553a8d-6563-45c6-a60c-ad5419a39237` | Directory | - |
| `600478d8-f8cf-40e8-b600-e6a8a6ba5ae1` | Directory | - |
| `641d61c3-6a67-4219-9eb6-f0ca8f22ce82` | Directory | - |
| `67884311-645c-4f5a-ae15-979d81d75006` | Directory | - |
| `69871dbe-3949-4faf-943f-1460b82e231a` | Directory | - |
| `69f984b6-7f41-482e-ac6f-78853b857322` | Directory | - |
| `79bc04fe-a16a-428f-b525-aa6e272bde07` | Directory | - |
| `8c334798-0ddd-466f-b9a2-ec9516a28366` | Directory | - |
| `924c6732-19b9-42d2-81c0-fdcaef12cfba` | Directory | - |
| `925b313d-5f27-4c70-8c99-ece139e02b90` | Directory | - |
| `9335c917-6c5b-446c-b549-678ed0a9ba3d` | Directory | - |
| `99fbd70d-bd11-43d7-8f09-1f70e1f78a4c` | Directory | - |
| `9dfc5b5c-816f-4860-acbb-688e9222f44e` | Directory | - |
| `a966039d-cd86-440d-b61b-0788fab82e28` | Directory | - |
| `aaee12b1-ccf8-44bc-b37a-b2cd531092cf` | Directory | - |
| `b0370f9e-e9c8-4daa-96fd-dcfcff5f1f9f` | Directory | - |
| `b3c89c5c-7011-48ea-9768-3c3016bb2df3` | Directory | - |
| `b5b0a269-ff39-4387-ad94-d5f2fead4c34` | Directory | - |
| `bdc4ae35-3174-4334-aa14-a427816e51bc` | Directory | - |
| `bdd09126-8b74-43cd-bcdc-39c977638cec` | Directory | - |
| `c0e4ec54-b756-4c8e-93a3-be7c9c8d1c27` | Directory | - |
| `c6b679b6-5c97-4619-b40d-df62de40e841` | Directory | - |
| `cca30e85-e17b-47d6-9058-49a7205b417b` | Directory | - |
| `cd32d797-4937-45fa-9748-010475e00de2` | Directory | - |
| `d0a59907-65fa-4f88-8f9e-e38f996ec9ea` | Directory | - |
| `e35e982b-d9eb-449d-8c90-e3947753795a` | Directory | - |
| `ea669f88-ab22-4487-bc4d-217b5c14bee6` | Directory | - |
| `ea9d5f04-bdae-4455-935b-167dc8a65232` | Directory | - |
| `eb67f826-0508-44d9-a943-589c291d1256` | Directory | - |
| `ec248308-ecfa-458d-a121-3b4cf5dfe0b1` | Directory | - |
| `ee5f6be3-a723-44d4-a81d-c6a72e3570c9` | Directory | - |
| `eec1714b-ec56-4b11-8988-005796c7496e` | Directory | - |
| `f6b072b8-4809-491e-aede-c114864f3832` | Directory | - |
| `f7e3d66a-32b4-4408-b5e7-81800a54b171` | Directory | - |
| `fea7390d-bec9-48e7-b408-fa60e5753421` | Directory | - |
| `tempmediaStorage` | Directory | - |

</details>

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Pinpointing the timeframe**

Okay, I've got a list of conversation IDs and I'm narrowing them down. I need to specifically identify the IDs that fall between April 5th and 11th. I've already confirmed the conversation from April 11th is present. I'm cross-referencing this against the dataset, carefully sifting through the conversation history to make sure I don't miss any that fit this precise range.




### Actions

**Tool:** `grep_search`
**Query:** `CASO 1`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.834654472s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 12 Apr 2026, 11:57 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Investigating Potential Causes**

I'm currently exploring why the initial "CASO 1" grep command yielded no results. I suspect encoding discrepancies or variations like "CASO 1)" or even "SUSPENCION TEMPORAL" might be the issue. The user's input, containing "SUSPENCION TEMPORAL" (with a "C"), is also being considered as a possible clue. I'm focusing on these string variations and related factors.




### Actions

**Tool:** `grep_search`
**Query:** `SUSPEN`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.775399699s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 12 Apr 2026, 11:57 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/.gemini/antigravity/brain/24485b9b-f530-4a20-8ea3-585e551c238f/`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `24485b9b-f530-4a20-8ea3-585e551c238f` (25 items)</summary>

**Path:** `home/carlos/.gemini/antigravity/brain/24485b9b-f530-4a20-8ea3-585e551c238f`

| Name | Type | Size |
|------|------|------|
| `.system_generated` | Directory | - |
| `analisis_estados_contrato.md` | File | 3830 bytes |
| `analisis_estados_contrato.md.metadata.json` | File | 231 bytes |
| `analisis_estados_contrato.md.resolved` | File | 3830 bytes |
| `analisis_estados_contrato.md.resolved.0` | File | 3830 bytes |
| `analisis_tomas.md` | File | 3343 bytes |
| `analisis_tomas.md.metadata.json` | File | 225 bytes |
| `analisis_tomas.md.resolved` | File | 3343 bytes |
| `analisis_tomas.md.resolved.0` | File | 3343 bytes |
| `implementation_plan.md` | File | 2561 bytes |
| `implementation_plan.md.metadata.json` | File | 389 bytes |
| `implementation_plan.md.resolved` | File | 2561 bytes |
| `implementation_plan.md.resolved.0` | File | 4975 bytes |
| `implementation_plan.md.resolved.1` | File | 5400 bytes |
| `implementation_plan.md.resolved.2` | File | 4506 bytes |
| `implementation_plan.md.resolved.3` | File | 3987 bytes |
| `implementation_plan.md.resolved.4` | File | 3629 bytes |
| `implementation_plan.md.resolved.5` | File | 2985 bytes |
| `implementation_plan.md.resolved.6` | File | 2561 bytes |
| `scratch` | Directory | - |
| `task.md` | File | 1074 bytes |
| `task.md.metadata.json` | File | 224 bytes |
| `task.md.resolved` | File | 1074 bytes |
| `task.md.resolved.0` | File | 1074 bytes |
| `task.md.resolved.1` | File | 1074 bytes |

</details>

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

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
| **C06** | **Amnistía de Recargos en Reactivación**: Al pasar un contrato de cualquier estado suspendido a `1 (ACTIVO)`, los recargos de años anteriores al año en curso se cancelan automáticamente (`estado=-1`). Solo permanece vigente la deuda del año actual. Implementado en `_amnistiaRecargosHistoricos()` (contratos.php) + `_sincronizaParidadFinanciera()`. | Implementada |

### 📂 Módulo 02: Facturación, Cargos y Recargos
| ID | Regla | Estado |
|:---:|---|:---:|
| **F01** | Solo contratos en estados `1 (ACTIVO)`, `2 (SUSPENSIÓN TEMPORAL)` y `5 (SUSPENSIÓN ADMINISTRATIVA)` generan recargos automáticos. | Crítica |
| **F02** | Cargos manuales a contratos en `4 (SUSPENSIÓN DEFINITIVA)` están prohibidos. | Crítica |
| **F03** | **Auditoría de Reasignación de Cargos**: `regresarCargoCancelado()` valida estado del contrato (bloquea en estado 4) y registra la identidad del operador (`$_SESSION['usuario']`) en la tabla `cambios`. Requiere confirmación de usuario en la UI. | Implementada |
| **F04** | El cálculo de la deuda debe ser atómico (Cargos + Recargos = Deuda Total). | Validada |

### 📂 Módulo 03: Usuarios y Segmentación
| ID | Regla | Estado |
|:---:|---|:---:|
| **U01** | Usuario estado `2` = **No Localizado**. Excluido de búsquedas estándar. | Implementada |
| **U02** | Clasificación de "Usuarios Especiales": Aquellos sin contratos vinculados o con todos en suspensión definitiva. | Reporte V2 |

### 📂 Módulo 04: Pagos, Caja y Folios
| ID | Regla | Estado |
|:---:|---|:---:|
| **P01** | Cada pago debe generar un folio único e incremental que vincule a `ligacargos`. | Validada |
| **P02** | Los folios de pago manuales no deben solaparse con folios de contratos nuevos. | En Revisión |

### 📂 Módulo 05: Reportes y Validación de Datos
| ID | Regla | Estado |
|:---:|---|:---:|
| **R01** | Sincronización estricta entre sumatoria de listas y totales de encabezado en todos los reportes operativos. | Auditoría |

---

## 🔍 Bitácora de Descubrimiento (Pendientes de Validar)
Espacio para anotar comportamientos detectados en el código legado o procedimientos manuales que deben formalizarse como reglas:
1.  **[D001]**: Investigar el trigger exacto de `calcula_recargos.php` para definir la fecha de corte mensual.
2.  **[D002]**: Validar la lógica de "Metros Lineales" y su impacto en la deuda histórica.
3.  **[D003]**: Determinar si existen descuentos automáticos por "Pronto Pago" no documentados.

---
**Nota para todos los agentes IA (Claude Code y Antigravity/Gemini)**: Al explorar el código, si descubres una nueva restricción o lógica condicional, agrégala aquí con un ID incremental y su módulo correspondiente.

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
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Analyzing Business Rules Gaps**

I've been examining the business rules file, Regla 02. While it references rules like C06 and F01, particularly concerning amnesties and surcharges, it does not provide the explicit "6 casos" list of status transitions that the user is looking for. This presents a potential gap that needs further investigation.




### Actions

**Tool:** `view_file`
**File:** `analisis_estados_contrato.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.908245213s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Análisis Estructural: 6.6) Cambios de Estado del Contrato

Este documento presenta la auditoría a las reglas de negocio desencadenadas al modificar el **Estatus Operativo** de los contratos (Estados 1 al 4, más anulaciones).

## 1. Escenario No Automatizado vs. V2

### 1.1) Escenario Manual (Responsabilidad del Cajero)
Bajo el escenario no automatizado (código legado sin triggers financieros):
- **A Suspensión Temporal (2) o Administrativa (3):** El cajero marca la bandera en sistema y se asegura que el año posterior no se genere deuda.
- **A Suspensión Definitiva (4):** El cajero marca "Definitiva" y, **por deber estricto**, tendría que ir a la lista de "Cargos del Contrato" de ese colono a purgar (`cancelar`) manual e individualmente toda la deuda pendiente, para que el contrato se cierre financieramente en ceros o quede congelado.
- **Transición de Regreso a Activo (1):** Al reactivarse de un estado temporal, si el motor de generación falla, el administrador tendría la orden de abrir el catálogo de tarifas y añadir la *Anualidad del Agua* manualmente al mes de reactivación.

### 1.2) Conflictos e Issues bajo la Nueva BD (V2)
Depender de este escenario manual arruina las proyecciones de flujo de caja del rediseño:
- En V2, el historial de pagos y adeudos fue dividido estructuralmente (`ligacargos` y `ligacargos_historico`). Depender del cajero para purgar expedientes genera un alto riesgo de latencia de datos. Eventualmente el sistema proyectará deudas de contratos "que ya no existen" como ingresos prometidos, volviendo completamente inexactos los cortes anuales y asambleas.  

---

## 2. Análisis Histórico (2018 - Presente)

### 2.1) Comportamiento Registrado y Base de Datos Histórica
Extraje la data cruda del sistema (desde 2018 al 2026). Los cambios de estado fueron los más abundantes, destacando una clara tendencia hacia la **Suspensión Definitiva** como cierre protocolario.
- He detectado un histórico de **31 contratos** que fueron exitosamente trancisionados de Activo a la fase de **[4] Suspensión Definitiva**.
- Los cambios flotantes entre Suspensiones Temporales [2] fueron altos y funcionales, pero se utilizaban con mucha frecuencia administrativa.

### 2.2) El Gran Issue Generado en el Tiempo (La Falla de Cierre Económico)
Indagué si los administradores cumplían con su tarea de purga manual al mandar un contrato a *Suspensión Definitiva*. Descubrí una laguna arquitectónica severa:
- Cambiar el contrato al estado **4 (Definitiva)** ejecuta `UPDATE contrato_toma SET estado=0...` (desconectando el tubo lógicamente).
- Sin embargo, **jamás invoca una cancelación de los deudas circulantes de ese año**, ni el operador cajero lo hizo de manera manual.
- Esto creó el concepto de la **Deuda Zombi**: El contrato moría permanentemente de la gestión del comité, pero su recibo de ANUALIDAD actual se quedaba fosilizado con el `estado = 0` (pendiente a cobrar) para toda la eternidad. 

### 2.3) El Grave Impacto a la Cartera Vencida (Datos Reales)
Corrí un cruce de datos en `ligacargos_historico` y `vw_ligacargos_all` aislando esos **31 contratos** pasados a Suspensión Definitiva.

- **Cargos No Purgados:** Encontré **132 recibos impagos** que siguen vivos y acumulando polvo de esos contratos zombificados.
- **Inflación Financiera Verificada:** Estos recibos erróneos inyectan un saldo fantasma que suma la cantidad exacta de **$43,180.00 MXN**.
- **Consecuencia en los Reportes:** Hoy por hoy, tu reporte general de *Cartera Vencida* está diciéndote que te deben $43,180 pesos de ciudadanos que probablemente ya ni siquiera habitan el recinto o cuyos medidores fueron expropiados y arrancados permanentemente. Esta inflación resta credibilidad a las proyecciones financieras que se deban presentar en las Asambleas de Egresos.

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
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Identifying Missing Cases**

I've been analyzing the provided document (`analisis_estados_contrato.md`) and it seems to address the "Deuda Zombi" issue, but it doesn't quite map to the user's expected "6 casos." I'm specifically looking for instances of the six cases, including the initial case they provided. The document likely discusses relevant topics, but doesn't explicitly categorize them the way we need.




### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/.gemini/antigravity/brain/a966039d-cd86-440d-b61b-0788fab82e28/`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.721639548s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `a966039d-cd86-440d-b61b-0788fab82e28` (9 items)</summary>

**Path:** `home/carlos/.gemini/antigravity/brain/a966039d-cd86-440d-b61b-0788fab82e28`

| Name | Type | Size |
|------|------|------|
| `.system_generated` | Directory | - |
| `implementation_plan.md` | File | 12515 bytes |
| `implementation_plan.md.metadata.json` | File | 664 bytes |
| `implementation_plan.md.resolved` | File | 12515 bytes |
| `implementation_plan.md.resolved.0` | File | 12515 bytes |
| `walkthrough.md` | File | 2170 bytes |
| `walkthrough.md.metadata.json` | File | 397 bytes |
| `walkthrough.md.resolved` | File | 2170 bytes |
| `walkthrough.md.resolved.0` | File | 2170 bytes |

</details>

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `implementation_plan.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Plan de Implementación: Amnistía, Auditoría y Panel de Tomas en Edición

## Contexto

Las 3 mejoras planteadas para la sesión de hoy atacan: (1) una brecha financiera en la reactivación de contratos, (2) un punto ciego de auditoría en la restitución de cargos, y (3) una mejora de UX en el formulario de edición. Todas trabajan sobre los archivos del **Host A** (`feature/upgrade-v2-win-xampp`), que es la guía estructural oficial.

---

> [!NOTE]
> **Nombre corto para las reglas de oro distribuidas en `.agents/rules/`:**  
> Puedes referirte a ese conjunto como **"las Reglas"** o más concisamente **"el Runbook"**  
> (del término SRE: documento operativo de referencia rápida). Queda como `Runbook` del proyecto.

---

## Ítem 1 — Amnistía de Recargos en Reactivación

### Diagnóstico actual

En `cambiaestado()` (líneas 276-278 de `contratos.php`), al pasar un contrato a estado `1 (ACTIVO)`, se llama `_sincronizaParidadFinanciera()`, la cual:
- **Restaura** el cargo anual del año en curso (correcto).
- **No hace nada** sobre los recargos acumulados de años anteriores. Esos "recargos fantasma" siguen con `estado=0` (pendientes), generando una avalancha punitiva sobre el usuario que paga para reactivarse.

La regla discutida en la sesión anterior (conversación `24485b9b`) establece: **al reactivar, solo deben quedar vigentes los cargos del año actual**; los recargos de años pasados deben congelarse/cancelarse.

### Propuesta

Añadir una nueva función auxiliar `_amnistiaRecargosHistoricos($contrato, $y)` que, al detectar una transición → estado `1`, cancele (estado=-1) todos los registros en `ligacargos` con `recargo=1` y `anio < año_actual` que estén pendientes (`estado=0`). La cancelación debe ser atómica y registrada en `cambios`.

> [!IMPORTANT]
> Esta función se llama **únicamente** cuando el estado destino es `1` y el estado anterior **NO** era `1` (es decir, genuina reactivación). No debe dispararse si el contrato ya estaba activo.

### Archivos a modificar

#### [MODIFY] [contratos.php](file:///opt/lampp/htdocs/agua/includes/negocio/contratos.php)

- **Línea 276-278**: Dentro del `else if (intval($estado) === 1)`, añadir llamada a `_amnistiaRecargosHistoricos()` **antes** de `_sincronizaParidadFinanciera()`.
- Al final del archivo (antes del `?>`): agregar la nueva función `_amnistiaRecargosHistoricos()`.

**Lógica de la función nueva:**
```php
function _amnistiaRecargosHistoricos($contrato, $y) {
    $anio_actual = date('Y');
    // Cancelar recargos de años anteriores que estén PENDIENTES
    $filas = $y->q(
        "UPDATE ligacargos
            SET estado = -1
          WHERE numcontrato = '$contrato'
            AND recargo = 1
            AND anio < $anio_actual
            AND estado = 0"
    );
    // Registrar en historial
    $afectadas = $y->affected_rows(); // o mysqli_affected_rows
    if ($afectadas > 0) {
        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
               VALUES(NOW(), 'Amnistia de Recargos en Reactivacion',
                      'Recargos historicos pendientes (anio < $anio_actual)',
                      'Se cancelaron $afectadas recargos de anios anteriores al reactivar el contrato', '$contrato')");
    }
}
```

> [!WARNING]
> También hay que aplicar la amnistía en `vw_ligacargos_pendientes` — pero como esa vista lee directamente de `ligacargos` + `ligacargos_historico`, con actualizar `ligacargos` y `ligacargos_historico` (igual que hace `sp_cancelar_cargo`) es suficiente. Verificar si el SP es más conveniente que el UPDATE directo para mantener consistencia con el esquema V2.

#### [MODIFY] [02-reglas-negocio.md](file:///opt/lampp/htdocs/agua/.agents/rules/02-reglas-negocio.md)

Agregar nueva regla formalizada:
```
| **C06** | **Amnistía de Recargos en Reactivación**: Al pasar un contrato de cualquier estado suspendido a Estado 1 (ACTIVO), los recargos de años anteriores al año actual se cancelan automáticamente. Solo permanece vigente la deuda del año en curso. | Implementada |
```

---

## Ítem 2 — Punto Ciego de Auditoría en `regresarCargoCancelado`

### Diagnóstico actual

La función `regresarCargoCancelado()` en `cargos.php` (líneas 668-678) **ya tiene** un `INSERT INTO cambios` (línea 677) — esto es positivo y estaba bien. Sin embargo, el punto ciego real identificado es doble:

1. **No valida el estado del contrato**: Un cajero puede restituir un cargo cancelado a un contrato en `estado=4 (SUSPENSIÓN DEFINITIVA)`, lo cual viola la Regla **C02** y la **F02**.
2. **No valida quién puede hacerlo**: La función no exige contraseña ni rol. Cualquier operador con acceso puede reasignar cargos silenciosamente (aunque el log existe, no hay barrera de autorización).
3. **Historico no sincronizado con SP**: Actualmente hace UPDATE directo en lugar de usar el SP `sp_cancelar_cargo`, rompiendo la atomicidad con `ligacargos_historico`.

### Propuesta

Modificar `regresarCargoCancelado()` para:
1. **Validar estado del contrato**: Si es `4`, retornar error visible.
2. **Añadir campo `operador`** al log en `cambios` (en el campo `despues`, incluir quién ejecutó la acción — por ahora, usando `$_SESSION` o un parámetro).
3. Mantener el UPDATE directo en ambas tablas (como ya lo hace), pero añadir la verificación de estado.

> [!NOTE]
> No se propone requerir contraseña en esta iteración para no romper el flujo actual de UX. La validación de estado es el fix mínimo viable.

### Archivos a modificar

#### [MODIFY] [cargos.php](file:///opt/lampp/htdocs/agua/includes/negocio/cargos.php)

Modificar `regresarCargoCancelado()` (líneas 668-678):

```php
function regresarCargoCancelado($contrato, $leyenda, $repetido) {
    $y = new Conexion();
    $y->conectarBaseDatos();

    // NUEVA VALIDACIÓN: Prohibido en Suspensión Definitiva (Regla C02/F02)
    $res_est = $y->q("SELECT estado FROM contrato WHERE numcontrato = '$contrato'");
    list($edo) = $y->fetch_array($res_est);
    if (intval($edo) === 4) {
        return; // Silencioso o retornar mensaje de error según llamador
    }

    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato = '$contrato' AND leyenda = '$leyenda' AND repetido = $repetido");
    $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato = '$contrato' AND leyenda = '$leyenda' AND repetido = $repetido");
    
    $texto_cargo = $leyenda . ($repetido > 0 ? " (r$repetido)" : "");
    $operador = isset($_SESSION['usuario']) ? $_SESSION['usuario'] : 'cajero';
    $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
           VALUES(NOW(), 'Reasignacion de cargo cancelado',
                  'Cargo en estado CANCELADO (-1)',
                  'Cargo restituido a PENDIENTE (0): $texto_cargo | Operador: $operador',
                  '$contrato')");
}
```

#### [MODIFY] [ficha.php (view)](file:///opt/lampp/htdocs/agua/views/contratos/ficha.php)

En la sección "Cargos Cancelados" (línea ~411), modificar el `onclick` del botón "Reasignar" para mostrar un `confirm()` de confirmación antes de ejecutar, y actualizar el DOM con feedback visual:

```javascript
onclick="if(confirm('¿Desea restituir este cargo cancelado a pendiente?')) {
    regresarCargoCancelado('<?= $id ?>', '<?= htmlspecialchars($cc['leyenda'], ENT_QUOTES) ?>', '<?= $cc['repetido'] ?>');
} return false;"
```

---

## Ítem 3 — Panel de Referencia de Tomas en la Edición del Contrato

### Diagnóstico actual

El formulario de edición (`#formato` en `ficha.php`, líneas 92-253) tiene dos columnas:
- Izquierda: campos del contrato (domicilio, masdatos, observaciones, etc.)
- Derecha: cards editables de tomas (con checkboxes y radios)

El cajero, al editar, no tiene una referencia visual clara de cómo están las tomas **actualmente** antes de modificar. Debe recordarlo de memoria o cerrar el formulario.

La solicitud es: **justo a la izquierda del botón "Guardar Cambios"**, al final del formulario, agregar un panel de **solo lectura** con los datos actuales de las tomas (1ra y/o 2da).

### Propuesta

Modificar el bloque `<div style='text-align: center; padding-top: 30px;'>` (líneas 245-249) para agregar, **a su izquierda**, un `div` con la información de lectura de tomas en layout flex row. Así el botón queda a su derecha.

La estructura general del nuevo bloque (reemplazando el div del botón actual):

```html
<div style="display: flex; align-items: center; justify-content: space-between; 
            padding: 20px 0; border-top: 1px solid #eee; margin-top: 20px; gap: 20px;">

    <!-- Panel Solo Lectura: Resumen de Tomas -->
    <div id="panel_tomas_ref" style="background: #f0f4ff; border: 1px solid #b8cdf8;
          border-radius: 8px; padding: 12px 18px; flex: 1; font-size: 12px; color: #333;">
        <b style="font-size: 13px; color: #2c5282;">📊 Estado actual de tomas (referencia)</b>
        <div style="display: flex; gap: 20px; margin-top: 8px; flex-wrap: wrap;">
            <?php foreach ($tomas as $n => $t): ?>
            <div style="background: #fff; border: 1px solid #d0d9ff; border-radius: 6px; 
                        padding: 8px 12px; min-width: 160px;">
                <b style="color: #4a6fa5;"><?= ($n==1?'1ra.':'2da.') ?> Toma</b>
                <span style="font-size: 10px; color: #777; margin-left: 5px;">
                    (<?= ($t['tipo']==1 ? 'Comercial' : 'Normal') ?>)
                </span><br>
                <span style="color: <?= ($t['tiene_agua'] && $t['estado_agua'] ? '#155724' : '#721c24') ?>;">
                    💧 Agua: <b><?= ($t['tiene_agua'] ? ($t['estado_agua'] ? 'Conectada' : 'Desconectada') : 'Sin instalación') ?></b>
                </span><br>
                <span style="color: <?= ($t['tiene_drenaje'] && $t['estado_drenaje'] ? '#155724' : '#721c24') ?>;">
                    🔧 Drenaje: <b><?= ($t['tiene_drenaje'] ? ($t['estado_drenaje'] ? 'Conectado' : 'Desconectado') : 'Sin descarga') ?></b>
                </span>
            </div>
            <?php endforeach; ?>
            <?php if (empty($tomas)): ?>
            <div style="color: #856404;">Sin tomas registradas.</div>
            <?php endif; ?>
        </div>
    </div>

    <!-- Botón Guardar -->
    <?php if ($estado != 4): ?>
    <div style="flex-shrink: 0;">
        <input type="submit" value="Guardar Cambios" onclick="return validaContrato();"
               style="background: #28a745; color: white; border: none; padding: 12px 28px;
                      border-radius: 8px; font-weight: bold; cursor: pointer; font-size: 16px;
                      box-shadow: 0 4px 6px rgba(40,167,69,0.25); white-space: nowrap;">
    </div>
    <?php endif; ?>
</div>
```

### Archivos a modificar

#### [MODIFY] [ficha.php (view)](file:///opt/lampp/htdocs/agua/views/contratos/ficha.php)

- Reemplazar las líneas 245-249 (bloque del botón "Guardar Cambios") con el nuevo layout flex row que incluye el panel de referencia a la izquierda y el botón a la derecha.

---

## Orden de Ejecución

| # | Tarea | Archivo | Riesgo |
|:---:|---|---|:---:|
| 1 | Añadir `_amnistiaRecargosHistoricos()` y su llamada en `cambiaestado()` | `contratos.php` | Medio |
| 2 | Registrar Regla C06 en el Runbook | `02-reglas-negocio.md` | Bajo |
| 3 | Añadir validación de estado en `regresarCargoCancelado()` + log de operador | `cargos.php` | Bajo |
| 4 | Añadir `confirm()` en botón "Reasignar" del view | `ficha.php` | Bajo |
| 5 | Agregar panel de tomas (solo lectura) al lado del botón Guardar | `ficha.php` | Bajo |

---

## Plan de Verificación

### Ítem 1 — Amnistía
1. Poner un contrato en estado `2` o `3` que tenga recargos de años anteriores pendientes (se puede buscar en Host A).
2. Cambiar estado a `1` (Activo).
3. Verificar en `vw_ligacargos_pendientes` que los recargos de años < año_actual ya no aparecen.
4. Verificar en `cambios` que existe el registro de amnistía.

### Ítem 2 — Auditoría
1. Intentar "reasignar" un cargo cancelado en un contrato en estado `4` → debe bloquearse.
2. En un contrato activo, reasignar un cargo y verificar que `cambios` incluye la referencia al operador.

### Ítem 3 — Panel de Tomas
1. Abrir un contrato con 1ra y 2da toma desde Host A o Host C.
2. Hacer clic en "Modificar información de este contrato".
3. Verificar que el panel de referencia aparece correctamente al lado izquierdo del botón Guardar.
4. Confirmar que es visualmente solo lectura (sin inputs editables).

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
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Refining the Implementation Plan**

I'm revisiting the `implementation_plan.md` file linked to `a966039d-cd86-440d-b61b-0788fab82e28`. It's almost there, but needs clarification. Currently, "Item 1: Amnistía" just references a previous discussion. I'll need to specify "6 casos" and the user's specific mentions.




### Actions

**Tool:** `grep_search`
**Query:** `CASO 1`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.988286727s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 12 Apr 2026, 11:59 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `implementation_plan.md.resolved.0`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Análisis Técnico: Efectos Secundarios en Tomas y Cambios de Estado (Agua V2)

A continuación presento la auditoría arquitectónica sobre los casos límite que has planteado en el sistema Agua V2 (Host C).

## 1. Módulo 6.5) Tomas y datos de las tomas

### a) Cambios en reducción o incremento de cantidad de tomas
**Comportamiento Actual:** 
Si un contrato tiene 1 toma y ya pagó su *Anualidad 2026*, y en noviembre solicita una 2da toma extra, el sistema actualiza `contrato_toma` para reflejar la existencia de dos infraestructuras.
- **Issue Oculto (Fuga de Cobro):** El motor (`cargaContrato`) no genera una deuda suplementaria. El sistema busca que no exista un cargo llamado *ANUALIDAD DEL AGUA 2026*, pero como el pago de la primera toma ya existe con ese mismo nombre en el historial, la validación se "salta" el cargo, dejando la segunda toma gratis lo que resta del año.
- **Solución Propuesta:** Separar e individualizar las leyendas de cobro por toma (ej. `ANUALIDAD DEL AGUA 2026 - TOMA 1`, `... TOMA 2`) o implementar un proceso suplementario de prorrateo manual al agregar tomas físicas.

### b) Cambios de Estado (Conectado / Desconectado y viceversa)
**Comportamiento Actual:**
Si desconectas la toma de agua, el sistema cancela exitosamente la Anualidad Actual pasándola a `estado = -1`. 
- **Issue Crítico Oculto (Reconexión):** Si un mes después vuelves a "Conectar" la toma (*Reconexión*), el individuo tendrá agua gratis por el resto del año. 
- **¿Por qué?** Porque la función que debe auto-generar la anualidad hace esta validación: `SELECT COUNT(*) FROM vw_ligacargos_all WHERE leyenda='ANUALIDAD...'`. Como `vw_ligacargos_all` incluye TODOS los estados (incluso el `-1` cancelado), la validación arroja que *el cargo ya existe* y no lo reintegra.
- **Solución Propuesta:** Omitir los cargos cancelados en la validación autogeneradora (`vw_ligacargos_all WHERE estado != -1`).

---

## 2. Módulo 6.6) Cambios de estado del contrato

Es crucial entender que el único estado que suspende el bloqueo de recargos mensuales automáticos es el Estado 4 (Suspensión Definitiva). En los estados 2 y 3 los recargos siguen creciendo.

| Transición | Impacto Actual en la BD | Issue Detectado |
| :--- | :--- | :--- |
| **CASO 1: ACTIVO → TEMPORAL (2)** | Congela auto-generación del año siguiente. | **Ninguno (Regla Correcta).** Los recibos vigentes (ej. generados en enero) prevalecen para cobrarse, respetando la regla "Se solicita para evitar pagar el año *siguiente*". |
| **CASO 2: TEMPORAL → ACTIVO (1)** | Rehabilita facturación. | **Ninguno.** Al recargarse, inyecta los cobros perdonados correspondientes al año en curso. |
| **CASO 3: ACTIVO →. ADMINISTRATIVA (3)** | No desconecta tomas físicas automáticamente. Evita facturación futura. | **Ninguno (Comportamiento esperado).** La revisión ocular suspende pagos futuros, pero las tomas en BD se conservan por si hay reconexión rápida, debiendo ser desconectadas a mano si aplica. |
| **CASO 4: ADMIN. → ACTIVO (1)** | Rehabilita facturación. | **El mismo de la Reconexión.** Si los cargos de la anualidad actual fueron cancelados manualmente antes, no se repondrán porque el historial retiene la leyenda cancelada en `vw_ligacargos_all`. |
| **CASO 5: TEMPORAL ↔ ADMIN.** | Mismos efectos que anteriores. | **Ninguno.** Salta el motor de generación. |
| **CASO 6: ACTIVO → DEFINITIVA (4)** | Detiene incrementos e inyecta `UPDATE contrato_toma... estado_agua=0`. | **Issue Crítico Oculto.** El cambio a `estado 4`, aunque apaga flag de agua vía SQL, **NO invoca la función `_quitaCargoAnual()`**. Esto causa que el contrato pase a "Definitiva" pero deje sus recibos de Anualidad actual en `estado=0` esperando ser pagados. |

> [!CAUTION]
> **Issue Central de los Estados:** Las transiciones hacia "Suspensión Definitiva" apagan el estatus pero olvidan cancelar económicamente el cobro de consumo remanente que quedó vivo bajo el contrato. El contrato muere pero la deuda vigente nunca se purga.

---

## Modificaciones Técnicas a Realizar (Plan de Acción Propuesto)

Para estabilizar estos huecos de lógica financiera:

1. **Bugfix de Reconexiones (Pérdida en `cargaContrato`):** Refactorizar el query que busca duplicidad de anualidad de `vw_ligacargos_all` a `vw_ligacargos_all WHERE estado != -1` en `includes/negocio/contratos.php`.
2. **Bugfix de Suspensión Definitiva:** En el switch/if interno de `cambiaEstado()`, invocar mandatoriamente `_quitaCargoAnual('AGUA')` y `_quitaCargoAnual('DRENAJE')` cuando el operador elija el Radio Button 4 (Suspensión Definitiva).
3. (Opcional, requiere decisión tuya) **Bugfix de Adición de Tomas Nuevas:** Si un usuario pagó su Anualidad, pero agrega una 2da toma en mayo, ¿El sistema debe ignorarlo (regla de gracia) o se debe programar generar un recibo extra de nombre distinto para la toma 2?

Dime si apruebas estas 2 (o 3) refactorizaciones para solventar los escenarios.

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
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Locating Key Information**

I've pinpointed "6 casos" within `implementation_plan.md.resolved.0` of conversation `24485b9b-f530-4a20-8ea3-585e551c238f`. The initial finding focuses on "CASO 1: ACTIVO → TEMPORAL (2)," which pertains to freezing an auto.


**Analyzing Case Updates**

I've got a clearer picture of the cases now. I see **CASE 2: TEMPORAL → ACTIVO (1)** involves reactivating billing and injecting forgiven charges. **CASE 3: ACTIVO → ADMIN. (3)** prevents future billing without physical disconnection. I'm also examining the implications of **CASE 6: ACTIVO → DEFINITIVA (4)** and its critical issue with missing annual charge removal, which you mentioned as solved.




### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.583911317s
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

		$rescargos = $y->q("SELECT nombre, monto, monto_comercial, recargo, anio, categoria, repetir, metros FROM cargos WHERE estado=1 AND automatico=1 AND anio >= $aniocontrato ORDER BY nombre");

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
						$q = "INSERT INTO ligacargos (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, 0)";
						$y->q($q);
						calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, 0, $y, $mescontrato, $cfg);
					}
				} else {
					$resautomatico = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato'");
					list($cuenta) = $y->fetch_array($resautomatico);
					$q = "INSERT INTO ligacargos (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, $cuenta)";
					$y->q($q);
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg);
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

	// --- Adeudos ---
	$res = $y->q("SELECT leyenda, monto, recargo, repetido, categoria FROM vw_ligacargos_pendientes WHERE numcontrato='$id' ORDER BY anio");
	$npagos = $y->num_rows($res);
	$adeudos = array();
	$total = 0;
	$recargos = 0;
	while ($resulta = $y->fetch_array($res)) {
		$adeudos[] = $resulta;
		$total   += ($resulta['recargo']) ? 0 : $resulta['monto'];
		$recargos += ($resulta['recargo']) ? $resulta['monto'] : 0;
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
	$resc = $y->q("SELECT leyenda, monto, recargo, repetido FROM vw_ligacargos_all WHERE numcontrato='$id' AND estado=-1 ORDER BY fcobro");
	$npagosc = $y->num_rows($resc);
	$cancelados = array();
	while ($cc = $y->fetch_array($resc)) {
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
		'faltan_cargos'       => _verificaAnualidades($y)
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
		$q = "UPDATE contrato SET estado=$estado WHERE numcontrato='$contrato'";
		$y->q($q);
		if (intval($estado) === 4) {
			$y->q("UPDATE contrato_toma SET estado_agua=0, estado_drenaje=0 WHERE numcontrato='$contrato'");
			$y->q("UPDATE contrato SET agua=0, drenaje=0 WHERE numcontrato='$contrato'");
			
			// Forzar paridad financiera (cancelar cargos anuales)
			_sincronizaParidadFinanciera($contrato, $y);
		} else if (intval($estado) === 1) {
		    // Regla C06: Amnistía de Recargos en Reactivación
		    // Cancelar recargos históricos de años anteriores antes de restaurar paridad
		    _amnistiaRecargosHistoricos($contrato, $y);
		    // Si regresa a Activo, asegurar paridad del año actual
		    _sincronizaParidadFinanciera($contrato, $y);
		}
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Cambio de estado de contrato', '$texto', 'Se asigna el estado del contrato $contrato a [$estado]', '$contrato')");
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
		$salida .= "<script>cargaDatosContrato('$contrato');</script>";
	}
	return $salida;
}


function eliminaNota($id)
{
	$y = new Conexion();
	$y->conectarBaseDatos();
	list($contrato) = $y->fetch_array($y->q("SELECT contrato FROM notas WHERE id='$id'"));
	$y->q("UPDATE notas SET estado=-1 WHERE id='$id'");
	return "<script>cargaDatosContrato('$contrato');</script>";
}

function cambiapropietario($contrato, $usuario, $nuevousuario)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$res = $y->q("UPDATE contrato SET numusuario='$nuevousuario' WHERE numcontrato='$contrato'");
	if ($res) {
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Cambio de propietario del contrato $contrato', 'Usuario=$usuario', 'Usuario=$nuevousuario', '$contrato')");
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
    			    
    			    if ($ant_t_agua != $t_agua) {
    			        $str_a = $ant_t_agua ? 'Existente' : 'Inexistente';
    			        $str_n = $t_agua ? 'Existente' : 'Inexistente';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Infrastructura Agua Toma $n','$str_a','$str_n','$id')");
    			    }
    			    if ($ant_t_drenaje != $t_drenaje) {
    			        $str_a = $ant_t_drenaje ? 'Existente' : 'Inexistente';
    			        $str_n = $t_drenaje ? 'Existente' : 'Inexistente';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Infrastructura Drenaje Toma $n','$str_a','$str_n','$id')");
    			    }
    			    if ($ant_tipo != $tipo_t) {
    			        $str_a = $ant_tipo == 1 ? 'Comercial' : 'Normal';
    			        $str_n = $tipo_t == 1 ? 'Comercial' : 'Normal';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Cambio de Tarifa Toma $n','$str_a','$str_n','$id')");
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
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Actualizaci&oacute;n del contrato $id', '$regAntes', '$regDespues', '$id')");
		}
		$y->q("UPDATE contrato SET $full_update WHERE numcontrato='$id'");
		
		// Sincronización de Paridad Físico-Financiera
		_sincronizaParidadFinanciera($id, $y);
		
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
	
	// Sincronizar AGUA
	$leyenda_a = "ANUALIDAD DEL AGUA $anio";
	if ($n_agua > 0) {
	    // Si hay toma física pero el cargo está cancelado (-1), restaurarlo a pendiente (0)
	    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND estado = -1");
	} else {
	    // Si no hay toma física pero el cargo está pendiente (0), cancelarlo (-1)
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND estado = 0");
	}
	
	// Sincronizar DRENAJE
	$leyenda_d = "ANUALIDAD DEL DRENAJE $anio";
	if ($n_drenaje > 0) {
	    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND estado = -1");
	} else {
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND estado = 0");
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

	$pendientes = $y->q("SELECT leyenda, repetido, categoria, monto as monto_actual FROM ligacargos WHERE numcontrato='$numcontrato' AND estado=0 AND categoria IN (2,3)");
	
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
		        $y->q("UPDATE ligacargos SET monto=$nuevo_monto WHERE numcontrato='$numcontrato' AND leyenda='$leyenda' AND repetido=$rep AND estado=0");
		        $y->q("UPDATE ligacargos_historico SET monto=$nuevo_monto WHERE numcontrato='$numcontrato' AND leyenda='$leyenda' AND repetido=$rep AND estado=0");
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
	$y->q("UPDATE contrato_toma SET $campo=$nuevo_estado WHERE numcontrato='$numcontrato' AND num_toma=$num_toma");

    $desc_ev = ($nuevo_estado == 0) ? 'desconectado' : 'conectado';
    $antes_ev = ($nuevo_estado == 0) ? 'conectado' : 'desconectado';
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Cambio Rapido de Conexion $servicio toma $num_toma','$antes_ev','$desc_ev','$numcontrato')");

	// Sincronizar campos legacy y Paridad Financiera (esto restaurará o cancelará cargos automáticamente)
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($tot_a) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($tot_d) = $y->fetch_array($r_d);
	$y->q("UPDATE contrato SET agua=$tot_a, drenaje=$tot_d WHERE numcontrato='$numcontrato'");
	
	_sincronizaParidadFinanciera($numcontrato, $y);

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
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Analyzing Implementation in Code**

I've located the "6 casos" within the brain's conversational data and validated their implementation in `contratos.php`. I've confirmed Case 1, `ACTIVO → TEMPORAL (2)`, where I see the freeze on auto-generation for the subsequent year in effect. Now, I'm working through the rest.


**Mapping State Transitions**

I've mapped the state transitions, starting with cases 1 through 6. I've focused on how each state change impacts billing and future actions. I've documented the implementation of "Regla C06 (Amnistía)" in TEMPORAL -> ACTIVO (1), and have confirmed it cancels prior year's charges. Further, I've confirmed that the "Depuración SDF Automática" prevents future billing increments. I am still working on the last few state transitions.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 9.051195226s
- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 12 Apr 2026, 11:59 am

---

## Agent Response

### Thinking

**Correcting Filepath Error**

I seem to have made a mistake in the file pathing; I accidentally wrote the artifact to the workspace. The instructions clearly state that artifacts should reside within the app data directory. I must correct my directory path now, and try again, keeping in mind the guidance: "artifacts must be in /home/carlos/.gemini/antigravity/brain/b5b0a269-ff39-4387-ad94-d5f".




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 5.529871486s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 12 Apr 2026, 11:59 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. After your research is complete, ask the user any open questions using the ask_question tool. Don't use the tool to ask trivial questions like 'should I proceed?'.
3. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
4. After receiving approval, begin execution. Create and update the task artifact as you work.
5. Verify any work that you have done.
6. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Documenting Status Transitions**

I've documented the six identified cases of contract status transitions and the corresponding solutions within `resumen-casos-estados.md`. The cases have been fully mapped and explained, ready for analysis.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.898981543s
- **Model:** Gemini 3 Flash
</details>

---

---

*Generated by Chatledger for Antigravity*