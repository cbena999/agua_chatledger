# Validating Agua Testing Protocols

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `bda614f5-7517-4918-85cc-4962ef191aa5` |
| **Cascade ID** | `42a2fe65-353b-453e-a2c9-f555583cc739` |
| **Type** | Agent Conversation |
| **Total Steps** | 129 |
| **Started** | 14 Apr 2026, 8:05 pm |

---

## User Request

Pruebas
Con base al codigo fuente de la webapp, bd awa host c; y el Runbook.
Tambien toma este script de pruebas y guiame a las preguntas y dudas te vaya yo planteando.
/opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion/Plan de Pruebas — Sprint Post-Correcciones.md
_
D1. PRUEBAS 1 — UI y Funcionales/P3 — Verificar totales cargos/recargos en pantalla/
No comprendo como probar esto: Verificar que la FALTA ASAMBLEA (categoría 6, estado=-1) no suma en ningún total.
_

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 77ef1511-74ab-40a2-ae47-02749135d6f9: 
- Created: 2026-04-14T06:25:52Z
- Last modified: 2026-04-14T06:39:29Z

## Conversation 88e34e15-a3be-4f0e-b30e-534bc4a2df7b: Swapping User Contract IDs
- Created: 2026-04-13T21:01:39Z
- Last modified: 2026-04-14T01:45:27Z

### USER Objective:
Sanitizing Agua User Data

The user's objective is to resolve systemic data inconsistencies by consolidating duplicate user records (Zenón Martínez López and Martín Hernández Castro) and sanitizing "phantom" debts on contracts in definitive suspension (Estado 4). The goal is to ensure data integrity by reassigning contracts to standardized user IDs and executing a targeted SQL migration script on the Host C environment, while hardening the UI in `ficha.php` to prevent unauthorized modifications to suspended contracts.

## Conversation 0ff85a52-5ca7-406e-ab9c-c459b96c204c: Validating Multas Sync Logic
- Created: 2026-04-13T20:47:25Z
- Last modified: 2026-04-13T20:55:42Z

### USER Objective:
Validating Multas Sync Logic

The user's objective is to verify the architectural integrity of the `operaciones_multas_sync.php` script within the Host C environment. Specifically, the user needs to confirm if the script correctly utilizes both `ligacargos` tables (active and historical) or the consolidated `vw_ligacargos_all` view to ensure comprehensive data coverage for all multas operations, preventing data omissions or inconsistencies during synchronization tasks.

## Conversation fbb0e790-a6c6-4799-8517-eb607b5a8861: Recovering Audit File Logic
- Created: 2026-04-13T00:15:55Z
- Last modified: 2026-04-13T00:22:49Z

### USER Objective:
Recovering Audit File Logic

The user's objective is to locate and retrieve the most recent version of the file `auditoria_recargos_suspendidos.php` from the repository history to analyze its historical purpose and functionality. The goal is to determine how this file relates to the recent stabilization efforts of the Agua V2 system, specifically regarding financial sanitation, audit trails, and contract status transitions, ensuring that any necessary logic is preserved or integrated into the current development environment.

## Conversation b5b0a269-ff39-4387-ad94-d5f2fead4c34: Resolving Contract Status Transitions
- Created: 2026-04-12T17:57:18Z
- Last modified: 2026-04-12T20:40:08Z

### USER Objective:
Stabilizing Contract State Transitions

The user's objective is to finalize the stabilization of contract status transitions in the Agua V2 system by enforcing strict business rules, hardening backend logic, and implementing UI/UX protections. Key goals include auditing state transition logic, formalizing these constraints in the project's Runbook, and establishing a robust "Escudo de Integridad" using Git Hooks and Ground Truth synchronization to prevent future data inconsistencies and architectural drift across development environments.

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

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 14 Apr 2026, 8:05 pm

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
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, bash_command_reminder

</details>

---

## Agent Response

### Thinking

**Prioritizing Specific Tools**

I'm now focusing on tool selection, emphasizing specific tools over general ones. My goal is to maximize efficiency, so I am always aiming to use the least generalized tool possible for a given task. I'm prioritizing the `view_file` tool over a terminal command if I simply need to read a file's content, for example.


**Refining Tool Choice**

I'm now implementing strict tool selection rules to optimize workflow. I must avoid `cat` for file creation/appending and will default to `grep_search` instead of `grep` within bash commands. I will never use `ls`, `cat`, `grep`, or `sed` for their basic functionalities. Before execution, I need to list all relevant tools for a given task and can only execute them if they're the best fit. I'm focusing on the provided test objective and incorporating source code, database, and Runbook for analysis.




### Actions

**Tool:** `view_file`
**File:** `Plan de Pruebas — Sprint Post-Correcciones.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.443312505s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
---

## **PRUEBAS 1 — UI y Funcionales**

---

### **P3 — Verificar totales cargos/recargos en pantalla**

**Módulo:** Ficha de contrato / Cartera vencida

**Corrección origen:** `concentradocortecaja.php` — conteo de folios únicos con array-set; `carteravencida.php` — filtros canónicos `AND c.estado != 4`, excluir categorías `[6, 16, 17, 19–22]`

**Datos de prueba — ya en Host C:**

| Campo | Valor |
| ----- | ----- |
| Contrato | **649** — jesús lópez garcía |
| Estado contrato | 1 (ACTIVO) |
| URL Host C | `http://192.168.1.128:7001/agua` |

**Situación en BD:**

* `id=136718` — ANUALIDAD AGUA 2026, `estado=0` (pendiente), `monto=$600`, `folio=0`  
* `id=136719` — ANUALIDAD AGUA 2026, `estado=1` (pagado), `monto=$1,200`, `folio=24422`  
* `id=136720` — ANUALIDAD AGUA 2026, `estado=1` (pagado), `monto=$1,200`, `folio=24422` ← mismo folio que 136719  
* `id=136734` — ANUALIDAD DRENAJE 2026, `estado=0`, `monto=$220`  
* `id=136735` — ANUALIDAD DRENAJE 2026, `estado=1`, `monto=$440`, `folio=24422`  
* `id=136757` — FALTA ASAMBLEA 04 ENE 2026, `estado=-1` (cancelado)

**Pasos:**

1. Ir a ficha del contrato **649** en Host C  
2. En la sección de cargos 2026, verificar que el total de **pendientes** muestre solo `$820` ($600 agua \+ $220 drenaje)  
3. En el reporte de **cartera vencida**, verificar que contrato 649 aparezca con deuda \= `$820`, **no** con los duplicados de folio 24422  
4. Verificar que la **FALTA ASAMBLEA** (categoría 6, `estado=-1`) **no** suma en ningún total  
5. Abrir `concentradocortecaja.php` con un período que incluya folio `24422` → el folio debe contarse **una sola vez** aunque tenga 2 registros pagados (ids 136719 y 136720\)

**Resultado esperado:** Sin duplicados de folio; multa y recargos excluidos de cartera

---

### **P4 — Verificar rojo-cursiva en cancelados**

**Módulo:** Ficha de contrato — tabla de cargos/ligacargos

**Corrección origen:** `views/contratos/ficha.php` — aplicar clase CSS a registros con `estado=-1`

**Datos de prueba — ya en Host C:**

| Contrato | Usuario | Elemento cancelado | id | Estado |
| ----- | ----- | ----- | ----- | ----- |
| **649** | jesús lópez garcía | FALTA ASAMBLEA 04 ENE 2026 | 136757 | \-1 |
| **1006** | julio cesar olivo reyes | FALTA ASAMBLEA 04 ENE 2026 | 1602 | \-1 |
| **1407** | juan mendoza mendoza | RECARGO ENE 2026 \- ANUALIDAD AGUA | 48081 | \-1 |
| **1407** | juan mendoza mendoza | RECARGO ENE 2026 \- ANUALIDAD DRENAJE | 48082 | \-1 |
| **1407** | juan mendoza mendoza | RECARGO FEB 2026 \- ANUALIDAD AGUA | 48083 | \-1 |
| **1407** | juan mendoza mendoza | RECARGO FEB 2026 \- ANUALIDAD DRENAJE | 48084 | \-1 |
| **1407** | juan mendoza mendoza | RECARGO MAR 2026 \- ANUALIDAD AGUA | 48085 | \-1 |
| **1407** | juan mendoza mendoza | RECARGO MAR 2026 \- ANUALIDAD DRENAJE | 48086 | \-1 |

**Pasos:**

1. Abrir ficha contrato **649** en Host C  
2. Verificar que la fila con `id=136757` (FALTA ASAMBLEA) aparece en **rojo e itálica**  
3. Abrir ficha contrato **1407**  
4. Verificar que los 6 recargos de ENE/FEB/MAR 2026 (ids 48081–48086) aparecen en **rojo e itálica**  
5. Verificar que los cargos **pendientes** (estado=0) de contrato 1407 aparecen en color normal

**Resultado esperado:** Solo `estado=-1` renderiza en rojo/itálica; `estado=0` y `estado=1` sin ese estilo

---

### **P1-prueba — Reasignar cargo con `id_cargo` PK como discriminador**

**Módulo:** Ficha de contrato → botón "Regresar cargo cancelado"

**Corrección origen:** `paxscript.js` \+ `ruteador.php` \+ `cargos.php` — antes usaba solo `leyenda` para identificar el cargo, ahora pasa `id_cargo` PK

**Datos de prueba — ya en Host C:**

Contrato **649** tiene duplicado real de leyenda:

| id | leyenda | estado | monto | folio |
| ----- | ----- | ----- | ----- | ----- |
| 136718 | ANUALIDAD DEL AGUA 2026 | **0** (pendiente) | $600 | 0 |
| 136719 | ANUALIDAD DEL AGUA 2026 | 1 (pagado) | $1,200 | 24422 |
| 136720 | ANUALIDAD DEL AGUA 2026 | 1 (pagado) | $1,200 | 24422 |

Y además tiene un cancelado que se puede usar para reasignar:

| id | leyenda | estado |
| ----- | ----- | ----- |
| 136757 | FALTA ASAMBLEA 04 ENE 2026 | \-1 (cancelado) |

**Pasos:**

1. Abrir ficha contrato **649** en Host C  
2. Localizar la fila `id=136757` (FALTA ASAMBLEA, cancelada/rojo)  
3. Hacer clic en el botón **"Regresar"** (o equivalente) de esa fila específica  
4. Verificar en la red del browser (F12 → Network) que el POST incluye el parámetro `id_cargo=136757` (no solo `leyenda`)  
5. Verificar que **únicamente** el registro `id=136757` cambia a `estado=0`; los ids 136718/136719/136720 no se modifican  
6. **Caso negativo:** Si existiera un bug antiguo (solo por leyenda), podría afectar todos los registros con la misma leyenda. Confirmar que NO ocurre

**Resultado esperado:** Solo el cargo con PK exacto se reactiva; el POST lleva `id_cargo`

---

### **P5-prueba — Flujo amnistía en reactivación (Estado 2 → 1\)**

**Módulo:** Cambio de estado — transición SUSPENSIÓN TEMPORAL → ACTIVO

**Corrección origen:** `contratos.php` — al reactivar desde Estado 2, se cancelan automáticamente los recargos de años anteriores al actual (Regla C06)

**Datos de prueba — ya en Host C:**

**Opción A — Contrato 1007** (fernando olivo reyes, estado=2):

* Único cargo en ligacargos activa: `id=1774`, FALTA ASAMBLEA 04 ENE 2026, `estado=0`, cat=6  
* Recargos históricos en `ligacargos_historico`: **ninguno pendiente** (ya saneados por D7)  
* Nota: Tiene recargos en histórico de contratos 310/405 con recargos 2011 pendientes — pero son **otro** usuario

**Opción B (mejor para amnistía) — Contrato 310** (ursula martínez hernández, estado=3):

* Tiene cargo activo: `id=93912`, FALTA ASAMBLEA 04 ENE 2026, `estado=0`, cat=6  
* Estado 3 → la amnistía **NO debe aplicar** (regla C06: solo desde Estado 2\)

**Opción C — Contratos 405** (gaudencia acevedo reyes, estado=3):

* Tiene cargo activo: `id=77626`, FALTA ASAMBLEA 04 ENE 2026, `estado=0`, cat=6

**Problema detectado:** Los contratos en Estado 2 disponibles (1006, 1007, 1022…) tienen sus recargos en histórico ya saneados por D7 durante el sync, por lo que no tienen recargos pendientes en activa. Para la prueba de amnistía **con recargos reales a cancelar**, se necesita un contrato en Estado 2 con recargos pendientes año \< 2026\.

**Pasos — sub-caso A (verificar que NO aplica amnistía desde Estado 3):**

1. Abrir ficha contrato **310** (ursula martínez hernández, Estado 3\) en Host C  
2. Intentar cambiar estado a **1 (ACTIVO)**  
3. Verificar que el sistema muestra advertencia o **no ofrece la opción** de ir a Estado 1 directamente desde Estado 3 (debe pasar por Estado 1 vía ruta correcta o ser rechazado)  
4. Si permite, verificar que los recargos pendientes **NO** son cancelados (amnistía solo aplica desde Estado 2\)

**Pasos — sub-caso B (amnistía real desde Estado 2):**

1. Abrir ficha contrato **1007** (fernando olivo reyes, Estado 2\) en Host C  
2. Cambiar estado a **1 (ACTIVO)**  
3. Verificar en BD (o en la ficha) que:  
   * Los recargos de años anteriores a 2026 quedan con `estado=-1` si existían pendientes  
   * La anualidad 2026 permanece pendiente (no se cancela)  
   * Se genera registro en tabla `cambios` con el motivo del cambio de estado

**Resultado esperado:** Amnistía solo desde Estado 2; Estado 3 no la dispara; auditoría en `cambios`

---

### **P6 — Verificar que cargos monto negativo no rompen reportes *(derivada de corrección)***

**Módulo:** Cartera vencida / Concentrado caja

**Origen:** `11_validate_integridad.sql` detectó B4 — 33 cargos con monto negativo en `vw_ligacargos_all`

**Pasos:**

1. Abrir `carteravencida.php` en Host C  
2. Verificar que los totales de deuda son **positivos** y razonables (no aparece suma negativa)  
3. Abrir `concentradocortecaja.php` con período 2024–2026  
4. Verificar que los totales del encabezado coinciden con la suma de la lista

---

### **P7 — Transición prohibida Estado 2 ↔ 3 sin pasar por 1 *(derivada de regla C07)***

**Módulo:** Cambio de estado

**Datos de prueba:** Contrato **310** (Estado 3\) o contrato **1007** (Estado 2\)

**Pasos:**

1. Desde contrato **1007** (Estado 2), verificar que el selector de estado **no muestra Estado 3** directamente  
2. Desde contrato **310** (Estado 3), verificar que el selector **no muestra Estado 2** directamente  
3. Intentar via POST directo (Postman/curl) la transición 2→3 y verificar rechazo en backend

---

### **P8 — Historial auditoría con `normalizarLeyenda()` *(derivada de corrección)***

**Módulo:** `historial_auditoria.php`

**Corrección origen:** Antes usaba `LIKE '%ID $id%'` sin normalizar; ahora construye filtro exacto

**Datos de prueba:**

* Usuario **591** (juan mendoza mendoza) — tiene contratos 1406 y 1407

**Pasos:**

1. Abrir historial de auditoría del usuario **591**  
2. Verificar que aparecen los eventos de los contratos 1406 y 1407  
3. Verificar que no aparecen falsos positivos (otros usuarios cuyo ID contiene "591" como subcadena)

---

## **PRUEBAS 2 — Saneamiento (Scripts SQL)**

**Estado actual:** BD Host A sincronizada con B (ejecutado hoy). Las siguientes pruebas requieren crear datos de prueba en Host A y sincronizar a C. **Aún no ejecutar — solo listado de casos.**

---

### **S1 — Exención recargos primer año (`10b_saneamiento_exencion_recargos.sql`)**

**Verifica:** Contratos nuevos con `exento_recargo_primer_anio=1` no deben tener recargos pendientes del año de creación

**Caso de prueba a crear en Host A:**

* Crear contrato nuevo con `fecha=2026-01-01`, `exento_recargo_primer_anio=1`  
* Insertar manualmente 2 recargos 2026 con `estado=0` (cat 16 y 17\)  
* Ejecutar `10b_saneamiento_exencion_recargos.sql` en Host C tras sync  
* **Verificar:** Los 2 recargos pasan a `estado=-1`; se crea registro en `cambios`  
* **Caso negativo:** El mismo contrato con recargo año 2027 → **no** debe cancelarse

### **S2 — Folios mixtos (pagado \+ cancelado mismo folio) — tabla activa (`10_pipeline_saneamiento.sql` Paso 2\)**

**Verifica:** Si un folio tiene simultáneamente `estado=1` y `estado=-1`, el Paso 2 hereda `fpago` correcto

**Caso de prueba a crear en Host A:**

* Insertar 2 registros en ligacargos mismo contrato, mismo folio \>0, uno `estado=1` con `fpago=fecha_real`, otro `estado=-1` con `fpago=NULL`  
* Sincronizar A→C  
* Ejecutar pipeline  
* **Verificar:** El registro `estado=-1` hereda el `fpago` del pagado; Paso 5 retorna 0 folios mixtos residuales

### **S3 — Folios mixtos en histórico (`10_pipeline_saneamiento.sql` Paso 2-C)**

**Igual que S2 pero en `ligacargos_historico`**

* Datos de prueba vendrán de Host B (registros legados con folio mixto real — 8 folios detectados en la ejecución de hoy)  
* Usar folio **192** (años 2005\) que ya mostró 6 pagados \+ 10 cancelados en el output del pipeline  
* **Verificar:** 17 filas reparadas (ya ocurrido hoy); la prueba valida que tras nuevo sync el resultado sea idéntico

### **S4 — Sincronización multas asamblea (`sp_sinc_asamblea_bulk`) — Paso 3**

**Verifica:** Si usuario tiene N contratos y en uno pagó la multa de asamblea, los otros contratos del mismo usuario con esa multa pendiente se sincronizan

**Caso de prueba:**

* Usar usuario **591** (juan mendoza mendoza) — tiene contratos 1406 y 1407 en Host C  
* Crear multa asamblea pendiente (cat=6) en contrato 1406 con la misma leyenda que una pagada en 1407  
* Ejecutar sp\_sinc\_asamblea\_bulk en C  
* **Verificar:** La multa pendiente en 1406 pasa a `estado=-1` (sincronizada)

### **S5 — Saneamiento D7: cargos pendientes en contratos SDF (`03_sync_host_a.sql`)**

**Verifica:** Los contratos con `estado=4` no deben tener `ligacargos.estado=0` tras el sync

**Caso de prueba a crear en Host A:**

* Tomar un contrato real `estado=4` existente en Host A (39 contratos SDF)  
* Insertar manualmente 1 cargo pendiente (`estado=0`) en ese contrato  
* Ejecutar sync B→A (el D7 debe cancelarlo)  
* **Verificar:** El cargo queda `estado=-1`; se inserta registro en `cambios` con batch\_id=0

### **S6 — Normalización folios NULL → 0 (D6 de `03_sync_host_a.sql`)**

**Verifica:** Ligacargos con `folio IS NULL` se normalizan a `folio=0` durante el post-proceso

**Caso de prueba:**

* Insertar en Host A un registro con `folio=NULL`  
* Ejecutar sync B→A (D6 se aplica en `03_sync_host_a.sql`)  
* **Verificar:** El folio queda en `0`, no en NULL

### **S7 — Discriminador `categoria` vs campo `recargo` como filtro (`04_views.sql` \+ pipeline)**

**Verifica:** Las vistas y el pipeline usan `categoria IN (16,17)` para identificar recargos, NO `recargo > 0`

**Caso de prueba:**

* Crear en Host A un cargo con `categoria=2` (anualidad) pero con `recargo=60.00` (monto no-cero)  
* Sincronizar a C  
* **Verificar:** Ese cargo **no** aparece como recargo en las vistas; `vw_ligacargos_pendientes` lo clasifica como anualidad  
* Crear cargo con `categoria=16` y `recargo=0.00`  
* **Verificar:** Sí aparece como recargo (discriminador es `categoria`, no el campo `recargo`)

### **S8 — Categorías V2 (19–22) en reclasificación (`07_patch_categorias_v2.sql` \+ Paso 3-B pipeline)**

**Verifica:** Las categorías CAMBIO PROPIETARIO (19), MULTA DESPERDICIO (20), CONSTANCIA NO ADEUDO (21), CANCELACION FUGA (22) existen y los ligacargos con esas leyendas son reclasificados

**Caso de prueba:**

* Insertar en Host A un cargo con leyenda `'CONSTANCIA'` y `categoria=NULL`  
* Sincronizar a C  
* Ejecutar Paso 3-B del pipeline  
* **Verificar:** El cargo queda con `categoria=21`; aparece en `categorias` de Host C

### **S9 — Validación B4 (montos negativos no rompen integridad) — `11_validate_integridad.sql`**

**Verifica:** Los 33 registros con `monto < 0` detectados son manejados correctamente; el sistema no suma montos negativos en cartera

**Caso de prueba (sin crear datos):**

* Ejecutar directamente en Host C: `SELECT id, numcontrato, leyenda, monto, estado, categoria FROM vw_ligacargos_all WHERE monto < 0 LIMIT 10`  
* Identificar si son estados `-2`/`-3` (legado) o registros válidos  
* **Verificar:** No afectan la suma de `vw_ligacargos_pendientes` (estado=0)

---

## **Resumen de prerequisitos**

| Prueba | Datos en Host C | Crear en Host A | Sync requerido |
| ----- | ----- | ----- | ----- |
| P3 | ✓ Contrato 649 | No | No |
| P4 | ✓ Contratos 649, 1006, 1407 | No | No |
| P1 | ✓ Contrato 649 (ids 136718–136757) | No | No |
| P5-A | ✓ Contratos 310, 1007 | No | No |
| P5-B | Parcial — sin recargos pendientes en Estado 2 | **Sí** | **Sí** |
| P6 | ✓ Datos actuales | No | No |
| P7 | ✓ Contratos 310, 1007 | No | No |
| P8 | ✓ Usuario 591 | No | No |
| S1–S9 | No | **Sí** | **Sí** |

---

**Pruebas 1 (P3, P4, P1, P6, P7, P8):** Ejecutables ahora en `http://192.168.1.128:7001/agua`

**P5-B y Pruebas 2 (S1–S9):** Indicame cuándo proceder — crearé los datos en Host A con respaldo previo y sincronizaré a C.


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
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, bash_command_reminder

</details>

---

## Agent Response

### Thinking

**Prioritizing Tool Usage**

I'm now focusing on tool selection, emphasizing specific tools over general ones where possible. The goal is to optimize efficiency by leveraging tools tailored to particular tasks, like viewing files. This strategy promises a more targeted and less error-prone approach to problem-solving, which I will continue to refine and implement moving forward.


**Refining Tool Choices**

I'm now prioritizing the application of specific tools, which I will apply across modules Módulo 1 and Módulo 2 to fulfill the requirements of the "P3" test case and verify the "FALTA ASAMBLEA" condition, which has category 6 and state -1, doesn't get included. I'm focusing on excluding the use of `cat`, `ls`, `grep` and `sed` except when absolutely needed.


**Mapping UI Navigation**

I'm now mapping out the UI navigation for the user, starting with the "Ficha de Contrato 649" which can be accessed via `http://192.168.1.128:7001/agua`. I'm verifying the steps to check the "Cartera Vencida" report and ensuring that "FALTA ASAMBLEA" (category 6, state -1) is excluded from any totals. I'm focusing on providing the exact URLs.


**Verifying Debt Totals**

I'm now focused on verifying debt totals for contract 649 across multiple reports, specifically the "Ficha" and "Cartera Vencida". The goal is to confirm that the "FALTA ASAMBLEA" fine, which has a cancelled state (-1), is excluded from these calculations. I'm cross-referencing the "Cargos" table in the "Ficha" with the "Cartera Vencida" report to confirm this exclusion. I'm also planning to check the code to see where these totals are calculated.



**Confirming Total Exclusions**

I'm now focusing on verifying that cancelled charges (`estado=-1`) are correctly excluded from debt totals, specifically within "Cartera Vencida." I'm using `grep_search` to check "Ficha" and other relevant files, but the immediate approach is UI-focused, guiding the user through the test case P3 in Spanish. I will be sure to confirm the math. I'll need to locate the "Total Pendiente" or similar total logic in ficha.php to assist with debugging if a problem comes up.


**Validating UI Totals**

I'm now focusing on validating totals within the UI for contract 649, specifically targeting the "Ficha del Contrato" section. I will start by verifying the cancellation status of "FALTA ASAMBLEA" charge (ID 136757). Following that, I need to confirm the "Total" calculation at the bottom of the table, by ensuring that the "FALTA ASAMBLEA" charge is excluded from the total, making sure it reflects $820, validating both UI and report functionality.


**Verifying Cartera Vencida Report**

I'm now focused on directly verifying the "Cartera Vencida" report in the UI for contract 649, confirming the "Deuda Total" is $820. I will navigate to `reportes/carteravencida.php`, generate the report, and locate the row for Jesús López García. The goal is to ensure the cancelled "FALTA ASAMBLEA" charge is excluded, confirming data integrity in the report. This validation tests for past SQL summation issues.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 16.330707756s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 14 Apr 2026, 8:05 pm

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
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, bash_command_reminder

</details>

---

## Agent Response

### Thinking

**Prioritizing Tool Usage**

I'm now focusing on tool selection, emphasizing specific tools over general ones where possible. The goal is to optimize efficiency by leveraging tools like 'view_file' directly, rather than resorting to broader, less direct methods. I'm aiming for targeted actions.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.350199836s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

## User Request

 P4 — Verificar rojo-cursiva en cancelados/649 jesús lópez garcía FALTA ASAMBLEA 04 ENE 2026 No aparece en rojo-cursiva, pero otro si. Analiza fix e informa me.

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
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, bash_command_reminder

</details>

---

## Agent Response

### Thinking

**Prioritizing Tool Usage**

I'm now focusing on tool selection, emphasizing specific tools over general ones where possible. The goal is to optimize efficiency by leveraging tools like 'view_file' directly, rather than resorting to broader, less direct methods. I'm aiming for targeted actions.


**Refining Tool Choice**

I'm now integrating stricter tool usage rules to enhance efficiency and maintain code clarity. I am going to analyze the issue with contract 649, specifically the 'FALTA ASAMBLEA' record's display within the UI, focusing on the lack of red-italic formatting. The file in question is `views/contratos/ficha.php`, and associated CSS elements. My investigation will involve meticulous tool application to pinpoint the source of this visual discrepancy.




### Actions

**Tool:** `view_file`
**File:** `ficha.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.339460408s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php if ($salidanotas): ?>
    <div id='notasCto'>
        <ul style='border:0px; margin-left: 24px; margin-top:40px; margin-right:25px; height:105px; padding-left:0px; overflow:auto;'>
            <?php foreach ($notas as $n): ?>
                <li style='list-style:none; margin-left:0px;' class='<?= ($n['estado'] == 0 ? "liactiva" : "lidesactiva") ?>'>
                    <b><?= $n['fecha'] ?></b>
                    <?php if ($n['estado'] == 0): ?>
                        [ <a href='#' onclick="eliminaNota('<?= $n['id'] ?>')">&times;</a> ]
                    <?php endif; ?>
                    <br><?= $this->e($n['texto']) ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
<?php endif; ?>

<h1>Datos del Contrato #<?= $id ?><?= $numcontratoletras ?> <a href='#'
        onclick="if(confirm('Se perder&aacute;n los cambios al cargar los datos del contrato nuevamente.\n\n¿Desea continuar?'))cargaDatosContrato('<?= $id ?>');"><img
            src='web-assets/img/reciclar.png' border='0'></a></h1>
<hr>
<?php if(isset($faltan_cargos) && count($faltan_cargos) > 0): ?>
    <div style='color: #856404; background-color: #fff3cd; padding: 10px; border: 1px solid #ffeeba; border-radius: 5px; margin-bottom: 15px;'>
        <b>Aviso:</b> Faltan por registrar en el cat&aacute;logo los siguientes cargos anuales: <?= implode(', ', $faltan_cargos) ?>
    </div>
<?php endif; ?>
<div id='infocto' style='padding-left:10px;'>
    <div style='display: flex; flex-direction: row; align-items: flex-start; gap: 30px; margin-bottom: 15px;'>
        <div>
            A nombre de <b class='mayusculas'><?= $this->e($nombre) ?> | <?= $numusuario ?><?php if ($estado_usr == 2): ?> <span style='color: #c0392b; font-size: 11px;'>(USUARIO NO LOCALIZADO)</span><?php endif; ?></b><br>Direcci&oacute;n en <b
                class='mayusculas'><?= $this->e($domicilio) ?></b>.<br><br>
            Estado del contrato: 
            <?php 
                $color = '#f8db70'; $border = '#d4b238'; $text = '#333';
                if ($estado == 4) { $color = '#f8d7da'; $border = '#f5c6cb'; $text = '#721c24'; }
                if ($estado == 1) { $color = '#d4edda'; $border = '#c3e6cb'; $text = '#155724'; }
            ?>
            <span class='mayusculas' style='background-color: <?= $color ?>; font-weight: bold; padding: 2px 10px; border-radius: 20px; color: <?= $text ?>; font-size: 13px; border: 1px solid <?= $border ?>; box-shadow: 0 2px 4px rgba(0,0,0,0.1);'>
                <?= (isset($tiposdeestado[(string)$estado]) ? $tiposdeestado[(string)$estado] : $estado) ?>
            </span>
            &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Metros lineales: <b class='mayusculas'><?= $metros ?> mts.</b><br>
        </div>
        <div style='display: flex; flex-direction: row; gap: 10px; align-items: flex-start; justify-content: flex-start;'>
            <div style='display: flex; flex-direction: column; gap: 8px;'>
                <?php if ($estado != 4): ?>
                <a class='liga opcion' href='#'
                    onclick="$('#infocto').hide(); $('#notasCto').toggle(); $('#formato').slideToggle('fast');" style='margin:0;'>Modificar
                    informaci&oacute;n de este contrato</a>
                <?php endif; ?>
                <a class='liga opcion' href='#'
                    onclick="if(confirm('¿Est&aacute; seguro que quiere cargar la informaci&oacute;n del usuario?'))cargaDatosUsuario(<?= $numusuario ?>);" style='margin:0;'>Cargar
                    informaci&oacute;n del usuario</a>
            </div>
            <div style='display: flex; flex-direction: column; gap: 8px;'>
                <a class='liga opcion' href='reportes/credencial.php?id=<?= $id ?>' target='_blank' style='margin:0;'>Ver Credencial</a>
                <a class='liga opcion' href='reportes/historial_auditoria.php?id=<?= $id ?>' target='_blank' style='margin:0;'>Movimientos</a>
            </div>
        </div>
    </div>
    
    <div style='display: flex; gap: 20px; margin-top: 10px; align-items: stretch; flex-wrap: wrap;'>
        <?php foreach ($tomas as $n => $t): ?>
            <div style='border:1px solid #ddd; padding:8px; border-radius:5px; background:#fff; min-width:200px;'>
                <b style='color:#0056b3;'><?= ($n==1?'1ra.':'2da.') ?> Toma (<?= ($t['tipo']==1?'Comercial':'Normal') ?>)</b><br>
                <small>
                    Agua: <b><?= ($t['tiene_agua'] ? ($t['estado_agua'] ? 'Conectada' : 'Desconectada') : 'No cuenta') ?></b><br>
                    Drenaje: <b><?= ($t['tiene_drenaje'] ? ($t['estado_drenaje'] ? 'Conectado' : 'Desconectado') : 'No cuenta') ?></b>
                </small>
            </div>
        <?php endforeach; ?>
    </div>
    <div id='nara'></div><br>
</div>

<?php if ($estado == 4): ?>
    <div style='background-color: #f8d7da; color: #721c24; padding: 15px; border: 1px solid #f5c6cb; border-radius: 8px; margin: 10px 0; display: flex; align-items: center; gap: 15px;'>
        <img src='web-assets/img/bloqueado.png' style='width: 32px; height: 32px; opacity: 0.7;'>
        <div>
            <b style='font-size: 16px;'>Contrato Protegido (Suspensi&oacute;n Definitiva)</b><br>
            De acuerdo a la Regla C02, este contrato no permite modificaciones operativas ni administrativas.
        </div>
    </div>
<?php endif; ?>

<style>
    .toma-card { transition: transform 0.2s, box-shadow 0.2s; box-shadow: 0 4px 6px rgba(0,0,0,0.05); }
    .toma-card:hover { transform: translateY(-3px); box-shadow: 0 8px 15px rgba(0,0,0,0.1); }
    .status-badge { display: inline-block; padding: 2px 8px; border-radius: 12px; font-size: 10px; font-weight: bold; text-transform: uppercase; }
    .status-active { background: #e3f2fd; color: #1976d2; }
    .status-cut { background: #ffebee; color: #c62828; }
</style>

<div id='formato' style='display:none; width: 100%; margin: 5px 0;'>
    <form id='datoscto' name='datoscto'>
        <input type='hidden' value='<?= $id ?>' name='id' id='id'>
        <div style='display: flex; gap: 40px; align-items: flex-start;'>
            <!-- Left Column: Main Form Fields -->
            <div style='flex: 0 0 500px;'>
                <table width='100%'>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' width='160px' valign='top'><input type='hidden' value='guardaDatosContrato' id='opc' name='opc'>
                            A nombre de:</td>
                        <td class='mayusculas' valign='top'><b><?= $this->e($nombre) ?> | <?= $numusuario ?><?php if ($estado_usr == 2): ?> <span style='color: #c0392b; font-size: 11px;'>(USUARIO NO LOCALIZADO)</span><?php endif; ?></b><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>Domicilio:</td>
                        <td valign='top'><input class='mayusculas' type='text' value='<?= $this->e($domicilio) ?>' name='domicilio'
                                id='domicilio' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>M&aacute;s datos:<br><small style='color: grey;'>Notas sobre conflictos, quejas, etc.</small></td>
                        <td valign='top'><textarea class='mayusculas' name='masdatos' id='masdatos' style='width: 100%;' rows=3 <?= ($estado==4?'disabled':'') ?>><?= $this->e($masdatos) ?></textarea><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>Observaciones:<br><small style='color: grey;'>Ubicaci&oacute;n entre calles, medidas, etc.</small></td>
                        <td valign='top'><textarea class='mayusculas' name='observaciones' id='observaciones' style='width: 100%;' rows=3 <?= ($estado==4?'disabled':'') ?>><?= $this->e($observaciones) ?></textarea><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>Indicador:</td>
                        <td valign='top'><input class='mayusculas' type='text' name='numcontratoletras' id='numcontratoletras' value='<?= $this->e($numcontratoletras) ?>' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>Metros lineales:</td>
                        <td valign='top'><input class='mayusculas' type='text' value='<?= $metros ?>' name='metros' id='metros' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br></td>
                    </tr>
                    <?php if ($estado != 4): ?>
                    <tr>
                        <td colspan='2' style='padding-top: 4px; padding-bottom: 6px;'>
                            <input type='submit' value='Guardar Cambios' onclick="return validaContrato();"
                                   style='background: #28a745; color: white; border: none; padding: 7px 18px;
                                          border-radius: 6px; font-weight: bold; cursor: pointer; font-size: 13px;
                                          box-shadow: 0 2px 5px rgba(40,167,69,0.25); white-space: nowrap;
                                          transition: background 0.2s; width: 100%;'
                                   onmouseover="this.style.background='#218838'"
                                   onmouseout="this.style.background='#28a745'">
                        </td>
                    </tr>
                    <?php endif; ?>
                </table>
            </div>

            <!-- Right Column: Tomas -->
            <div style='flex: 1; overflow: hidden; padding-top: 10px;'>
                <div style='margin-bottom:10px;'>
                    Tomas:&nbsp;&nbsp;Cantidad de tomas:&nbsp;
                    <select name='num_tomas' id='num_tomas' onchange='actualizaTomas(this.value, <?= $num_tomas ?>)' <?= ($estado==4?'disabled':'') ?>>
                        <?php for($i=1; $i<=$max_tomas; $i++): ?>
                            <option value='<?= $i ?>' <?= ($num_tomas==$i?'selected':'') ?>><?= $i ?> Toma<?= ($i>1?'s':'') ?></option>
                        <?php endfor; ?>
                    </select>
                </div>
                <div id='tomas_container' style='display: flex; flex-wrap: nowrap; gap: 15px; overflow-x: auto;'>
                    <?php for($n=1; $n<=$max_tomas; $n++): 
                            $t = isset($tomas[$n]) ? $tomas[$n] : array('tipo'=>0, 'tiene_agua'=>0, 'tiene_drenaje'=>0, 'estado_agua'=>1, 'estado_drenaje'=>1);
                            $ca = ($estado == intval($cfg['estado_activo']));
                    ?>
                        <div id='toma_card_<?= $n ?>' class='toma-card' style='border:1px solid #ccc; padding:10px; border-radius:8px; min-width:300px; width:300px; <?= ($n>$num_tomas?'display:none;':'') ?> background:#f9f9f9;'>
                            <h3 style='margin-top:0; border-bottom:1px solid #ddd; padding-bottom:5px;'><?= ($n==1?'1ra.':'2da.') ?> Toma</h3>
                            
                            <div style='margin-bottom:10px;'>
                                <b>Tipo:</b><br>
                                <input type='radio' name='tomas[<?= $n ?>][tipo]' id='t_tipo_<?= $n ?>_0' value='0' <?= ($t['tipo']==0?'checked':'') ?> onchange='cambiaTipo(<?= $n ?>, 0, tarifas)' <?= ($estado==4?'disabled':'') ?>> <label for='t_tipo_<?= $n ?>_0'>Normal</label>&nbsp;&nbsp;
                                <input type='radio' name='tomas[<?= $n ?>][tipo]' id='t_tipo_<?= $n ?>_1' value='1' <?= ($t['tipo']==1?'checked':'') ?> onchange='cambiaTipo(<?= $n ?>, 1, tarifas)' <?= ($estado==4?'disabled':'') ?>> <label for='t_tipo_<?= $n ?>_1'>Comercial</label>
                            </div>

                            <div style='margin-bottom:10px; border:1px dashed #bbb; padding:5px; background:#fff;'>
                                <input type='checkbox' name='tomas[<?= $n ?>][tiene_agua]' id='t_agua_<?= $n ?>' value='1' <?= ($t['tiene_agua']?'checked':'') ?> onchange='actualizaInterfazTomas(<?= $n ?>, "agua")' <?= ($estado==4?'disabled':'') ?>> 
                                <label for='t_agua_<?= $n ?>'><b>Infraestructura: Cuenta con toma</b></label>
                                
                                <div id='cont_estado_agua_<?= $n ?>' style='margin-top:5px; font-size:11px; <?= ($t['tiene_agua']?'':'display:none;') ?>'>
                                    Servicio: 
                                    <input type='radio' name='tomas[<?= $n ?>][estado_agua]' id='e_agua_<?= $n ?>_1' value='1' <?= ($t['estado_agua']?'checked':'') ?> <?= ($estado==4?'disabled':'') ?>> <label for='e_agua_<?= $n ?>_1'>Activo</label>
                                    <input type='radio' name='tomas[<?= $n ?>][estado_agua]' id='e_agua_<?= $n ?>_0' value='0' <?= (!$t['estado_agua']?'checked':'') ?> <?= ($estado==4?'disabled':'') ?>> <label for='e_agua_<?= $n ?>_0'>Suspendido (Corte)</label>
                                </div>
                                <div id='desc_agua_<?= $n ?>' style='margin-top:5px; font-size:11px; color:#999; <?= (!$t['tiene_agua']?'':'display:none;') ?>'>
                                    Servicio: <i>Sin instalaci&oacute;n física</i>
                                </div>

                                <div id='ref_agua_<?= $n ?>' style='font-size:10px; color:#666; margin-top:3px; border-top:1px dotted #ccc; padding-top:2px;'>
                                    <?= $tarifas_referencia['agua']['leyenda'] ?>: <b>$<?= number_format($t['tipo']==1 ? $tarifas_referencia['agua']['comercial'] : $tarifas_referencia['agua']['normal'], 2) ?></b>
                                </div>
                            </div>

                            <div style='border:1px dashed #bbb; padding:5px; background:#fff;'>
                                <input type='checkbox' name='tomas[<?= $n ?>][tiene_drenaje]' id='t_drenaje_<?= $n ?>' value='1' <?= ($t['tiene_drenaje']?'checked':'') ?> onchange='actualizaInterfazTomas(<?= $n ?>, "drenaje")' <?= ($estado==4?'disabled':'') ?>> 
                                <label for='t_drenaje_<?= $n ?>'><b>Instalaci&oacute;n: Cuenta con descarga</b></label>

                                <div id='cont_estado_drenaje_<?= $n ?>' style='margin-top:5px; font-size:11px; <?= ($t['tiene_drenaje']?'':'display:none;') ?>'>
                                    Servicio: 
                                    <input type='radio' name='tomas[<?= $n ?>][estado_drenaje]' id='e_drenaje_<?= $n ?>_1' value='1' <?= ($t['estado_drenaje']?'checked':'') ?> <?= ($estado==4?'disabled':'') ?>> <label for='e_drenaje_<?= $n ?>_1'>Activo</label>
                                    <input type='radio' name='tomas[<?= $n ?>][estado_drenaje]' id='e_drenaje_<?= $n ?>_0' value='0' <?= (!$t['estado_drenaje']?'checked':'') ?> <?= ($estado==4?'disabled':'') ?>> <label for='e_drenaje_<?= $n ?>_0'>Suspendido (Corte)</label>
                                </div>
                                <div id='desc_drenaje_<?= $n ?>' style='margin-top:5px; font-size:11px; color:#999; <?= (!$t['tiene_drenaje']?'':'display:none;') ?>'>
                                    Servicio: <i>Sin descarga instalada</i>
                                </div>

                                <div id='ref_drenaje_<?= $n ?>' style='font-size:10px; color:#666; margin-top:3px; border-top:1px dotted #ccc; padding-top:2px;'>
                                    <?= $tarifas_referencia['drenaje']['leyenda'] ?>: <b>$<?= number_format($t['tipo']==1 ? $tarifas_referencia['drenaje']['comercial'] : $tarifas_referencia['drenaje']['normal'], 2) ?></b>
                                </div>
                            </div>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
        </div>
        <script>
            var tarifas = <?= json_encode($tarifas_referencia) ?>;

            function validaContrato() {
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
                    data: { opc: 'validaTomasSync', usuario: '<?= $numusuario ?>', contrato: '<?= $id ?>', domicilio: $('#domicilio').val(), num_tomas: num_tomas },
                    success: function(resp) {
                        if(resp.trim() !== 'OK') {
                            alert(resp);
                            ok_tomas = false;
                        }
                    }
                });
                if (!ok_tomas) return false;

                return confirm('¿Est\u00e1 seguro que desea actualizar la informaci\u00f3n?');
            }
            
            $(document).ready(function(){
                $('#domicilio').on('blur', function(){
                    if($(this).val().length > 20) {
                        $.ajax({
                            url: 'ruteador.php',
                            type: 'POST', async: true,
                            data: { opc: 'validaTomasSync', usuario: '<?= $numusuario ?>', contrato: '<?= $id ?>', domicilio: $(this).val(), num_tomas: $('#num_tomas').val() || 1 },
                            success: function(resp) {
                                if(resp.trim() !== 'OK') {
                                    alert("Aviso Domicilio: " + resp);
                                }
                            }
                        });
                    }
                });
            });
        </script>
        <div style='display: flex; align-items: center; justify-content: space-between;
                    padding: 8px 0; border-top: 1px solid #eee; margin-top: 6px; gap: 20px;'>

            <!-- Panel Solo Lectura: Resumen actual de tomas (referencia para el cajero) -->
            <div id='panel_tomas_ref' style='background: #f0f4ff; border: 1px solid #b8cdf8;
                  border-radius: 8px; padding: 12px 18px; flex: 1; font-size: 12px; color: #333;'>
                <b style='font-size: 13px; color: #2c5282;'>&#128202; Estado actual de tomas</b>
                <div style='display: flex; gap: 16px; margin-top: 8px; flex-wrap: wrap;'>
                    <?php foreach ($tomas as $n => $t): ?>
                    <div style='background: #fff; border: 1px solid #d0d9ff; border-radius: 6px;
                                padding: 8px 14px; min-width: 160px;'>
                        <b style='color: #4a6fa5;'><?= ($n==1?'1ra.':'2da.') ?> Toma</b>
                        <span style='font-size: 10px; color: #777; margin-left: 4px;'>
                            (<?= ($t['tipo']==1 ? 'Comercial' : 'Normal') ?>)
                        </span><br>
                        <span style='color: <?= ($t['tiene_agua'] && $t['estado_agua'] ? "#155724" : "#721c24") ?>;'>
                            &#128167; Agua: <b><?= ($t['tiene_agua'] ? ($t['estado_agua'] ? 'Conectada' : 'Desconectada') : 'Sin instalación') ?></b>
                        </span><br>
                        <span style='color: <?= ($t['tiene_drenaje'] && $t['estado_drenaje'] ? "#155724" : "#721c24") ?>;'>
                            &#128295; Drenaje: <b><?= ($t['tiene_drenaje'] ? ($t['estado_drenaje'] ? 'Conectado' : 'Desconectado') : 'Sin descarga') ?></b>
                        </span>
                    </div>
                    <?php endforeach; ?>
                    <?php if (empty($tomas)): ?>
                    <div style='color: #856404; font-style: italic;'>Sin tomas registradas para este contrato.</div>
                    <?php endif; ?>
                </div>
            </div>

            <!-- Panel de tomas: se muestra siempre debajo del formulario -->

        </div>
    </form>
    <div id='aviso'></div>
    <div id='nara'></div>
</div>
<hr>

<h2>Acciones sobre el presente contrato</h2><br>
<p>
<div style='display: flex; flex-wrap: wrap; gap: 10px; align-items: center;'>
    <a class='liga opcion' style='margin:0;' href='reportes/contratoinfo2.php?numcontrato=<?= $id ?>&orden=1' target='_blank'>Informe de Cuenta</a>
    <a class='liga opcion' style='margin:0;' href='reportes/contratoinfo2.php?numcontrato=<?= $id ?>&orden=4' target='_blank'>Informe por fecha de pago</a>
    <?php if ($estado != 4): ?>
    <a class='liga opcion anotacioncto' style='margin:0;' href='#' onclick="$('#realizaranotacion').toggle(); $('#textoz').focus();">Hacer una anotaci&oacute;n</a>
    <a class='liga opcion propietariocto' style='margin:0;' href='#' onclick="$('#cambiarprop').toggle(); $('#nuevonombre').focus();">Cambio de propietario</a>
    <a class='liga opcion estadocto' style='margin:0;' href='#' onclick="$('#cambioestado').toggle();">Cambio de estado</a>
    <?php else: ?>
    <span class='liga opcion disabled' style='margin:0; opacity: 0.5; cursor: not-allowed;' title='Contrato Protegido (SDF)'>Hacer una anotaci&oacute;n</span>
    <span class='liga opcion disabled' style='margin:0; opacity: 0.5; cursor: not-allowed;' title='Contrato Protegido (SDF)'>Cambio de propietario</span>
    <a class='liga opcion estadocto' style='margin:0; background: #f8d7da; color: #721c24; border-color: #f5c6cb;' href='#' onclick="$('#cambioestado').toggle();">Consultar Estatus SDF</a>
    <?php endif; ?>
    <?php if (in_array($estado, [1, 2, 3])): ?>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#agregacargo').toggle();">Agregar cargos</a>
    <?php endif; ?>
    <?php if ($estado != 4): ?>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#cargoscancelados').toggle();">Cargos Cancelados</a>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#notascargoscancelados').toggle();">Notas Cargos Cancelados</a>
    <?php endif; ?>
    <a class='liga opcion' style='margin:0; border-left: 3px solid #6c757d;' href='admin/saneamiento/bitacora_detalle.php?id=<?= $id ?>' target='_blank'>Cargos Depurados</a>
</div>
    <div id='nara'></div><br>


<div id='realizaranotacion' class='divanotacioncto' style='display:none;'>
    <hr>
    <h2>Agregar una nota al contrato</h2>
    <form id='agregarNota' name='agregarNota'>
        <input type=hidden name='opc' value='agregaNota'>
        <input type=hidden name='contrato' id='contrato' value='<?= $id ?>'>
        <input type='text' name='texto' id='textoz' size=40 class='mayusculas' autocomplete=off>
        <input type='submit' class='anotacioncto' value='Agregar'>
    </form><br>
</div>

<div id='cambiarprop' class='divpropietariocto' style='display:none;'>
    <hr>
    <h2>Cambio de Propietario</h2>
    <form id='propietario' name='propietario' style='margin-left: 20px;'>
        <input type=hidden name='opc' id='opc' value='cambiandopropietario'>
        <input type=hidden name='contrato' id='contrato' value='<?= $id ?>'>
        <input type=hidden name='usuario' id='usuario' value='<?= $numusuario ?>'>
        B&uacute;squeda: <input type='text' id='nuevonombre' name='nuevonombre' style='width:190px'
            onkeyup="$('#submitusuario').attr('disabled', 'disabled'); buscaUsuarioCambio(this.value);"
            autocomplete=off><br><br>
        <select name='nuevousuario' id='usuarios' size=5 onclick="$('#submitusuario').removeAttr('disabled');">
        </select>
        <br><br>
        <input id='submitusuario' class='propietariocto' type='submit' value='Asignar nuevo propietario' disabled>
    </form><br>
</div>

<div id='cambioestado' class='divestadocto' style='display:none;'>
    <hr>
    <h2>Cambiar estado del contrato</h2>
    <?php if ($estado == 4): ?>
        <div style='background-color: #f8d7da; color: #721c24; padding: 10px; border: 1px solid #f5c6cb; border-radius: 4px; margin-bottom: 15px;'>
            <b>¡Atención!</b> Este contrato se encuentra en estado de <b>Suspensión Definitiva</b> y no se permite su cambio a ningún otro estado.
        </div>
    <?php endif; ?>
    <form id='cambiaestado' name='cambiaestado' style='margin-left:10px;margin-right:10px;'>
        <input type=hidden name='opc' value='cambiaestado' id='opc'>
        <input type=hidden name='contrato' id='contrato' value='<?= $id ?>'>
        <fieldset style='float: left; width:400px;'>
            <legend>Estados</legend>
            <dl>
                <dt><input type=radio name='estado' value=1 <?= ($estado == 1 ? "checked" : "") ?> <?= ($estado == 4 ? "disabled" : "") ?>><label>Activo</label>
                <dd>Se tiene la obligaci&oacute;n de pagar los servicios de agua potable y drenaje con los que cuente.
                <dt><input type=radio name='estado' value=2 <?= ($estado == 2 ? "checked" : "") ?> <?= ($estado == 4 || $estado == 3 ? "disabled" : "") ?>><label>Suspensi&oacute;n
                        Temporal</label>
                <dd>Solo en <b><?= array("","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")[intval($cfg['susptemp_mes_permitido'])] ?></b> del a&ntilde;o en curso se puede solicitar esta suspensi&oacute;n, para evitar
                    pagar servicios el a&ntilde;o siguiente. <?php if($estado == 3): ?><br><small style='color:#c0392b;'><b>Bloqueado:</b> Regularice a Activo antes de cambiar tipo de suspensi&oacute;n.</small><?php endif; ?>
                <dt><input type=radio name='estado' value=3 <?= ($estado == 3 ? "checked" : "") ?> <?= ($estado == 4 || $estado == 2 ? "disabled" : "") ?>><label>Suspensi&oacute;n
                        Administrativa</label>
                <dd>Cuando luego de una revisi&oacute;n ocular, se corrobore que no hay toma en el lugar y faltaba darlo de
                    baja. <?php if($estado == 2): ?><br><small style='color:#c0392b;'><b>Bloqueado:</b> Regularice a Activo antes de cambiar tipo de suspensi&oacute;n.</small><?php endif; ?>
                <dt><input type=radio name='estado' value='4' <?= ($estado == 4 ? "checked" : "") ?>><label>Suspensi&oacute;n
                        Definitiva</label>
                <dd>Eliminaci&oacute;n de los servicios as&iacute; como del contrato.
            </dl>
        </fieldset>
        <fieldset style='float: left; width:400px; text-align: right;'>
            <legend>Aplicar Acci&oacute;n</legend>
            <span id='llaves1'>
                Llave del Presidente:<br><input type='password' size=10 name='presidente' class='derecha'
                    autocomplete=off><br>
                Llave del Tesorero:<br><input type='password' size=10 name='tesorero' class='derecha'
                    autocomplete=off><br>
                Raz&oacute;n del cambio de estado:<br><textarea name='texto' id='texto' cols=30 rows=4></textarea>
            </span>
            <div id='nara'></div>
            <input type='submit' class='estadocto' value='Cambiar estado' <?= ($estado == 4 ? "disabled" : "") ?>>
            <div id='nara'></div><span id='sig1'></span>
        </fieldset>
    </form>
    <div id='nara'></div><br>
</div>

<div id='agregacargo' class='divcargoscto' style='display:none;'>
    <hr>
    <h2>Agregar cargos al contrato</h2>
    <div id='existentes' class='panel300' style='height:170px'>
        <div id='okas'
            style='width:280px; font-size: 11px; min-height: 18px; text-align: center; color: #fff; text-transform: uppercase; text-align:center; font-weight:bold; position: absolute; left:0px; padding-top:4px; background: rgba(0,0,0,0.7);'>
            Cargo: <input type='text' class='mayusculas' value='' id='buscacargo' name='buscacargo' autocomplete=off>
        </div>
        <br><br>
        <table width=100% id='cargosfuente'>
            <?php foreach ($cargos_fuente as $cf): ?>
                <tr class='renglon clicable' <?= ($cf['recargo'] != 0 ? " style='color:#900;'" : "") ?>
                    onclick="<?= ($cf['mensualidades'] == 1 ? "mens('{$cf['monto']}|{$cf['recargo']}|{$cf['anio']}|{$cf['categoria']}|{$cf['repetir']}', '{$cf['nombrec']}', '" . number_format($cf['monto'], 2, '.', ',') . "','{$cf['numconsec']}','{$cf['metros2']}')" : "$('#mensuales').html(''); agregacargo('{$cf['nombrec']}|{$cf['monto']}|{$cf['recargo']}|{$cf['anio']}|{$cf['categoria']}|{$cf['repetir']}','" . number_format($cf['monto'], 2, '.', ',') . "',{$cf['numconsec']},'{$cf['metros2']}');") ?>">
                    <td class='mayusculas'><?= $this->e($cf['nombrec']) ?> <?= ($cf['mensualidades'] == 1 ? "(&times; mes)" : "") ?></td>
                    <td nowrap class='derecha' style='width: auto;'>$<?= number_format($cf['monto'], 2, '.', ',') ?><?= ($cf['metros2'] == 1 ? "/mt" : "") ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
    <form id='agregarCargoX' name='agregarCargoX' style='margin-left:10px; margin-right:10px;'>
        <input type=hidden name='opc' value='aplicacargosauno'>
        <input type=hidden name='contrato' id='contrato' value='<?= $id ?>'>
        <div id='poraplicar'
            style='margin-left: 10px; height:170px; width:300px; overflow-y:scroll; overflow-x:hidden; float: left; position: relative;'>
            <div id='okas'
                style='width:280px; font-size: 11px; min-height: 18px; height:auto; text-align: center; color: #fff; text-align:center; font-weight:bold; position: absolute; left:0px; padding-top:4px; background: rgba(0,0,0,0.7);'>
                <span class='mayusculas'>Cargos por aplicar</span> <a class='liguita' href='#'
                    onclick="$('#cargostabla').html('')">Limpiar</a>
                <div id='nara'></div>
                <div id='mensuales' style='text-align:left; height:auto; clear:both;'></div>
            </div>
            <br><br>
            <table id='cargostabla' width=100%></table>
        </div>
        <div id='aplicando' style='margin-left: 10px; height:170px; width:300px; float: left; position: relative;'>
            <input type='submit' class='cargoscto' value='Aplicar a este contrato'>
            <div id='aplicando_notificacion' style='margin-top:10px;'></div>
        </div>
    </form><br>
    <div id='nara'></div>
</div>

</p>

<?php if ($npagos != 0): ?>
    <?= $this->insert('contratos/adeudo_tabla', ['npagos' => $npagos, 'adeudos' => $adeudos, 'id' => $id, 'total' => $total, 'recargos' => $recargos, 'foliotope' => $foliotope]) ?>
<?php endif; ?>

<?php if ($npagosc != 0): ?>
    <div id='cargoscancelados' class='divcargoscto' style='display:none; height: 350px; overflow-y: scroll;'>
        <hr>
        <h2><?= $npagosc ?> Cargos Cancelados</h2>
        <table width=50% style='margin-left: 40px' cellspacing=0>
            <tr>
                <th width=200px>Cargo</th>
                <th width=50px>Monto</th>
                <th width=50px>Acci&oacute;n</th>
            </tr>
            <?php foreach ($cancelados as $cc): ?>
                <tr class='renglon'>
                    <td class='mayusculas'><?= ($cc['recargo'] ? "<i class='rojo'>" : "") ?><?= $this->e($cc['leyenda']) ?><?= ($cc['repetido'] == 0 ? "" : " (r{$cc['repetido']})") ?><?= ($cc['recargo'] ? "</i>" : "") ?>
                    </td>
                    <td class='derecha'>$<?= number_format($cc['monto'], 2, '.', ',') ?></td>
                    <td class='derecha'><a href='#'
                            onclick="if(confirm('&iquest;Desea restituir este cargo cancelado a pendiente?\n\n<?= $this->e($cc['leyenda']) ?> ($ <?= number_format($cc['monto'], 2, '.', ',') ?>)')) { regresarCargoCancelado('<?= $id ?>', '<?= $this->e($cc['leyenda']) ?>', '<?= $cc['repetido'] ?>', '<?= intval($cc['id_cargo']) ?>'); } return false;">Reasignar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
<?php endif; ?>

<?php if ($nnotas != 0): ?>
    <div id='notascargoscancelados' class='divcargoscto' style='display:none; height: 350px; overflow-y: scroll;'>
        <hr>
        <h2>Hist&oacute;rico de Cargos Cancelados (<?= $nnotas ?>)</h2><br>
        <table width=65% style='margin-left: 40px' cellspacing=0>
            <tr>
                <th width=200px>Cargos Cancelados</th>
                <th width=50px>Raz&oacute;n de la Cancelaci&oacute;n</th>
            </tr>
            <?php foreach ($notas_cancelacion as $nc): ?>
                <tr class='renglon'>
                    <td class='mayusculas' width=220px><?= $this->e($nc['despues']) ?></td>
                    <td class='derecha' width=150px;><?= $this->e($nc['antes']) ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
<?php endif; ?>

<?php if ($otros_contratos): ?>
    <hr>
    <h2>Existe<?= (count($otros_contratos) > 1 ? "n otros" : "") ?> <?= count($otros_contratos) ?> contrato<?= (count($otros_contratos) > 1 ? "s" : "") ?> del mismo usuario</h2>
    <p>
        <?php $z = 1; ?>
        <?php foreach ($otros_contratos as $oc): ?>
            <div id='ficha'>
                <div id='numcontrato'><a href='#'
                        onclick="if(confirm('¿Est&aacute;s seguro de querer cargar otro contrato?')){cargaDatosContrato('<?= $oc['contrato'] ?>'); return false;}"><?= $oc['contrato'] ?></a>
                </div>
                <div id='direccion'>
                    <small><b>Estatus:</b> <?= isset($tiposdeestado[(string)$oc['estado']]) ? $tiposdeestado[(string)$oc['estado']] : $oc['estado'] ?></small><br>
                    <small><?= $this->e(substr($oc['domicilio'], 0, 50)) ?><?= (strlen($oc['domicilio']) > 50 ? " (...)" : "") ?></small>
                </div>
            </div>
            <?= ($z % 3 == 0 ? "<div id=nara></div>" : "") ?>
            <?php $z++; ?>
        <?php endforeach; ?>
    </p>
    <div id='nara'></div>
<?php endif; ?>

<div id='nara'></div>
<script>
    guardaDatosContrato()
</script>

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
**Created:** 14 Apr 2026, 8:21 pm

---

## User Request

Continue

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

### Thinking

**Prioritizing Tool Usage**

I'm now focusing on tool selection, emphasizing specific tools over general ones where possible. The goal is to optimize efficiency by leveraging tools like 'view_file' directly, rather than resorting to broader, less direct methods. I'm aiming for targeted actions.


**Analyzing Code Flow**

I've shifted my focus to the code's data flow, particularly in `views/contratos/ficha.php`. Now, I'm analyzing how `$this->insert('contratos/adeudo_tabla', ...)` renders the table data. This involves identifying the conditions controlling the "rojo-cursiva" visual element, which is likely tied to a variable like `$estado`. I'm using an analytical approach, aiming to pinpoint the exact location for the necessary fix within the rendering logic, and making sure to avoid incorrect tool use as I proceed with analysis.




### Actions

**Tool:** `view_file`
**File:** `adeudo_tabla.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.936646773s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<hr>
<h2>
    <?= $npagos ?> adeudos del contrato
</h2>
<form id='pagos' name='pagos' method='post'>
    <input type='hidden' name='opc' id='opc' value='pago'>
    <input type='hidden' name='idc' id='idc' value='<?= $id ?>'>
    <table width=100%>
        <tr>
            <td colspan=3>
                <input type='checkbox'
                    onclick="checked_status=this.checked; valor=0; $('input[id=pago]').each(function(i){this.checked=checked_status; valor+=(this.checked)?parseFloat($('input[id=monto]').get(i).value):0; $('#totalmarcado').val(valor.toFixed(2));});">Todos
            </td>
        </tr>
        <?php
        $nfilas = ceil($npagos / 3);
        for ($i = 0; $i < $nfilas; $i++):
            ?>
            <tr>
                <?php for ($j = 0; $j < 3; $j++): ?>
                    <?php
                    $idx = $i + ($j * $nfilas);
                    $resulta = isset($adeudos[$idx]) ? $adeudos[$idx] : null;
                    if ($resulta):
                        $leyenda = $resulta['leyenda'];
                        $monto = $resulta['monto'];
                        $recargo = $resulta['recargo'];
                        $repetir = $resulta['repetido'];
                        $categoria = $resulta['categoria'];
                        ?>
                        <td valign=top width=30px class='derecha'>
                            <input type='checkbox' id=pago name='pago[]' style='margin:0px;'
                                value="<?= $this->e($leyenda) ?>|<?= $monto ?>|<?= $repetir ?>|<?= $categoria ?>"
                                onclick="valor=0; $('input[id=pago]').each(function(i){valor+=($('input[id=pago]').get(i).checked)?parseFloat($('input[id=monto]').get(i).value):0;}); $('#totalmarcado').val(valor.toFixed(2));">
                            <input type='hidden' id='monto' name='monto[]' value='<?= $monto ?>'>
                        </td>
                        <td class='mayusculas' width=220px>
                            <?= ($recargo ? "<i class='rojo'>" : "") ?>
                            <?= $this->e($leyenda) ?>
                            <?= ($repetir == 0 ? "" : " (r$repetir)") ?>
                            <?= ($recargo ? "</i>" : "") ?>
                        </td>
                        <td class='derecha' width=50px;>$
                            <?= number_format($monto, 2, '.', ',') ?>
                        </td>
                    <?php else: ?>
                        <td valign=top width=30px class='derecha'>&nbsp;</td>
                        <td class='mayusculas' width=220px>&nbsp;</td>
                        <td class='derecha' width=50px;>&nbsp;</td>
                    <?php endif; ?>
                <?php endfor; ?>
            </tr>
        <?php endfor; ?>
    </table>
    <div id='infodeudas' style='padding-left: 10px;'>
        <table border=0>
            <tr>
                <td>
                    <fieldset>
                        <legend>Montos</legend>
                        <table>
                            <tr>
                                <td height=16 width=200px class='derecha'>Total de cargos:</td>
                                <td class='derecha'><b>$
                                        <?= number_format($total, 2, '.', ',') ?>
                                    </b></td>
                            </tr>
                            <tr>
                                <td height=16 class='derecha'>Total de recargos:</td>
                                <td class='derecha'><b>$
                                        <?= number_format($recargos, 2, '.', ',') ?>
                                    </b></td>
                            </tr>
                            <tr>
                                <td height=16 class='derecha'>Total selecci&oacute;n:</td>
                                <td class='derecha'><input class='grande dinero derecha' type='text' value='0'
                                        id='totalmarcado' name='totalmarcado' readonly size=6></td>
                            </tr>
                            <tr>
                                <td height=16 class='derecha'>No. consecutivo de recibo:</td>
                                <td class='derecha'><input class='derecha' type='text' value='<?= $foliotope ?>'
                                        id='recibo' name='recibo' size=8></td>
                            </tr>
                        </table>
                    </fieldset>
                </td>
                <td class='derecha' rowspan=5 width=300px id='cancelacargos'>
                    <fieldset>
                        <legend>Opciones</legend>
                        <a href='#' class='liga' onclick="a_pago();" id='botonpagar'>Pagar cargos
                            seleccionados</a><br><br>
                        <a href='#' class='liga2' onclick="a_cancelar();" id='botoncancelar'>Cancelar cargos
                            seleccionados</a><br><br>
                        <span id='llaves' style='display:none;'>
                            Llave del Presidente:<br><input type='password' size=10 name='presidente' class='derecha'
                                autocomplete=off><br>
                            Llave del Tesorero:<br><input type='password' size=10 name='tesorero' class='derecha'
                                autocomplete=off><br>
                            Raz&oacute;n de la cancelaci&oacute;n:<br><textarea name='texto' id='texto' cols=30
                                rows=4></textarea>
                        </span>
                    </fieldset>
                </td>
                <td class='derecha' rowspan=5 width=300px>
                    <fieldset>
                        <legend>Confirmaci&oacute;n</legend><span id='sig'></span>
                    </fieldset>
                </td>
            </tr>
        </table>
    </div>
</form>
```

</details>

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
**Created:** 14 Apr 2026, 8:22 pm

---

## User Request

Continue

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
**Created:** 14 Apr 2026, 8:22 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 8:22 pm

---

## User Request

Continue

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
**Created:** 14 Apr 2026, 8:22 pm

---

## User Request

Continue

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

### Thinking

**Prioritizing Tool Usage**

I'm now focusing on tool selection, emphasizing specific tools over general ones where possible. The goal is to optimize efficiency by leveraging tools like 'view_file' directly, rather than resorting to broader, less direct methods. I'm aiming for targeted actions.


**Refining Tool Application**

I'm now prioritizing direct tool usage, particularly *grep_search*, over less efficient alternatives. My analysis focuses on the specific UI test P4, its related code and the suggested fix within the `views/contratos/ficha.php` and `views/contratos/adeudo_tabla.php` files. The goal is to avoid unnecessary calls to generic commands.


**Analyzing Color Application**

I've discovered the "Cargos Cancelados" section within `ficha.php` applies red italics only to "recargos". However, "FALTA ASAMBLEA", which is a category 6 penalty, is not classified as a "recargo". Therefore, the current code logic is incorrectly applying the style. The test plan confirms that the correct approach involves CSS classes to specify the visual state, not hardcoded HTML elements. I need to modify the code to align with the intended logic to ensure the correct styling.


**Clarifying Test Implementation**

I'm now zeroing in on the discrepancy between the desired CSS class application for `estado = -1` records and the existing code. My analysis indicates that the `ficha.php` and `adeudo_tabla.php` files currently style only `recargo` values with red italics. The test explicitly requests the application of CSS classes to all records with `estado=-1`, regardless of whether they are a 'recargo'. This is likely the intended logic. It seems I need to adjust the code to use a CSS class for styling, not a conditional `<i>` tag based on a "recargo" flag. My focus is now the `ficha.php` file, and later the `adeudo_tabla.php` file, and their incorrect styling conditions.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 9.878363252s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 14 Apr 2026, 8:23 pm

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<bash_command_reminder> CRITICAL INSTRUCTION 1: You may have access to a variety of tools at your disposal. Some tools may be for a specific task such as 'view_file' (for viewing contents of a file). Others may be very broadly applicable such as the ability to run a command on a terminal. Always prioritize using the most specific tool you can for the task at hand. Here are some rules: (a) NEVER run cat inside a bash command to create a new file or append to an existing file. (b) ALWAYS use grep_search instead of running grep inside a bash command unless  absolutely needed.  (c) DO NOT use ls for listing, cat for viewing, grep for finding, sed for replacing. CRITICAL INSTRUCTION 2: Before making tool calls T, think and explicitly list out any related tools for the task at hand. You can only execute a set of tools T if all other tools in the list are either more generic or cannot be used for the task at hand. ALWAYS START your thought with recalling critical instructions 1 and 2. In particular, the format for the start of your thought block must be '...94>thought\nCRITICAL INSTRUCTION 1: ...\nCRITICAL INSTRUCTION 2: ...'. </bash_command_reminder>
<failed_tool_calls_reminder>
As a reminder, the following tool calls did not succeed since the last planner response:
Tool mcp_bdawahost-c_query: Status CORTEX_STEP_STATUS_ERROR
</failed_tool_calls_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** bash_command_reminder, failed_tool_calls_reminder

</details>

---

## Agent Response

### Thinking

**Prioritizing Tool Usage**

I'm now focusing on tool selection, emphasizing specific tools over general ones where possible. The goal is to optimize efficiency by leveraging tools tailored to particular tasks, like viewing files. This strategy promises a more targeted and less error-prone approach to problem-solving, which I will continue to refine and implement moving forward.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.901275803s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 14 Apr 2026, 8:23 pm

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
**Created:** 14 Apr 2026, 8:23 pm

---

## User Request

Continue

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 8:23 pm

---

## User Request

Continue

---

## Agent Response

### Thinking

Now I have the key data I need to diagnose the bug. Let me analyze:

- `id=136757` (FALTA ASAMBLEA, contrato 649): `estado=-1`, `categoria=6`, `recargo=1.00`
- `id=48081` (RECARGO ENE 2026, contrato 1407): `estado=-1`, `categoria=16`, `recargo=0.00`

In `adeudo_tabla.php` (line 38), the rojo/cursiva style is applied based on `$recargo`:
```php
<?= ($recargo ? "<i class='rojo'>" : "") ?>


```

And in `ficha.php` (line 456), same logic for the Cargos Cancelados section:
```php
<?= ($cc['recargo'] ? "<i class='rojo'>" : "") ?>
```

The issue is clear: the styling checks whether `recargo` is non-zero, but it should be checking `estado=-1` instead. So `id=48081` with `recargo=0.00` doesn't get styled red even though it's marked as deleted, while `id=136757` gets styled because its recargo value is 1.00.

But wait—the test plan says the FALTA ASAMBLEA entry shouldn't appear in red-cursiva. That's because `adeudo_tabla.php` only displays charges with `estado=0` (pending), so the FALTA ASAMBLEA with `estado=-1` wouldn't show up there at all. It would only appear in the Cargos Cancelados section of `ficha.php`, where the same recargo-based styling is being applied incorrectly. El problema está en la lógica de `ficha.php` que determina cuándo mostrar el estilo rojo e itálica para los cargos cancelados. Necesito verificar si la condición `recargo` está siendo evaluada correctamente para ambos casos, o si hay algo diferente en cómo se renderizan los registros 136757 versus los del contrato 1407. El problema real es que la lógica debería verificar directamente si `estado=-1` en lugar de depender del campo `recargo`, que podría no estar siendo retornado correctamente por la consulta de cancelados. Necesito revisar el controlador para entender cómo se están cargando esos registros.

### Actions

**Tool:** `grep_search`
**Query:** `cancelados`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 23.633470295s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 14 Apr 2026, 8:26 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
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
	// Categorías de recargo según config_sistema (16=agua, 17=drenaje).
	// El campo ligacargos.recargo contiene el monto del recargo (float), NO es bandera booleana.
	// La clasificación cargo/recargo se determina por categoria, no por el campo recargo.
	$cat_recargo_agua   = intval(obtenerValorSeguro($cfg, 'recargo_categoria_agua',   16));
	$cat_recargo_drenaje = intval(obtenerValorSeguro($cfg, 'recargo_categoria_drenaje', 17));
	$res = $y->q("SELECT leyenda, monto, recargo, repetido, categoria FROM vw_ligacargos_pendientes WHERE numcontrato='$id' ORDER BY anio");
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
	// id_cargo: PK de la tabla origen — usado en regresarCargoCancelado como discriminador definitivo
	$resc = $y->q("SELECT leyenda, monto, recargo, repetido, categoria, es_recargo_moratorio,
	               COALESCE(
	                 (SELECT id FROM ligacargos WHERE numcontrato='$id' AND leyenda=v.leyenda AND repetido=v.repetido AND estado=-1 LIMIT 1),
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
		$q = "UPDATE contrato SET estado=$estado WHERE numcontrato='$contrato'";
		$y->q($q);
		if (intval($estado) === 4) {
			$y->q("UPDATE contrato_toma SET estado_agua=0, estado_drenaje=0 WHERE numcontrato='$contrato'");
			$y->q("UPDATE contrato SET agua=0, drenaje=0 WHERE numcontrato='$contrato'");
			
			// Forzar paridad financiera (cancelar cargos anuales)
			_sincronizaParidadFinanciera($contrato, $y);
		} else if (intval($estado) === 1) {
		    $nombres_estado = array(
		        1 => 'ACTIVO',
		        2 => 'SUSPENSIÓN TEMPORAL',
		        3 => 'SUSPENSIÓN ADMINISTRATIVA',
		        4 => 'SUSPENSIÓN DEFINITIVA'
		    );
		    $nombre_origen = isset($nombres_estado[intval($estado_actual)]) ? $nombres_estado[intval($estado_actual)] : "ESTADO $estado_actual";

		    if (intval($estado_actual) === 2) {
		        // Regla C06: Amnistía aplica — reactivación desde Suspensión Temporal
		        _amnistiaRecargosHistoricos($contrato, $y);
		        $nota_amnistia = 'Amnistía C06 aplicada: recargos históricos de años anteriores cancelados.';
		    } else {
		        // Estado 3 → 1: NO aplica amnistía — adeudo íntegro conservado
		        $nota_amnistia = 'Sin amnistía C06: adeudo íntegro conservado (viene de Suspensión Administrativa).';
		    }
		    // Restaurar paridad del año actual en ambos casos
		    _sincronizaParidadFinanciera($contrato, $y);

		    $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Cambio de estado: $nombre_origen → ACTIVO', 'Estado [$estado_actual] $nombre_origen. Motivo: $texto', 'Estado [1] ACTIVO. $nota_amnistia', '$contrato')");
		} else {
		    // Transiciones a estado 2 (SUSP. TEMPORAL) o 3 (SUSP. ADMINISTRATIVA)
		    $nombres_estado_else = array(
		        1 => 'ACTIVO',
		        2 => 'SUSPENSIÓN TEMPORAL',
		        3 => 'SUSPENSIÓN ADMINISTRATIVA',
		        4 => 'SUSPENSIÓN DEFINITIVA'
		    );
		    $nombre_origen_else  = isset($nombres_estado_else[intval($estado_actual)]) ? $nombres_estado_else[intval($estado_actual)] : "ESTADO $estado_actual";
		    $nombre_destino_else = isset($nombres_estado_else[intval($estado)])        ? $nombres_estado_else[intval($estado)]        : "ESTADO $estado";
		    $nota_suspension = (intval($estado) === 2)
		        ? 'Facturación congelada. Anualidad vigente cancelada (C06 pendiente al reactivar).'
		        : 'Suspensión sancionatoria. Adeudo íntegro conservado. Sin amnistía C06 al reactivar.';
		    $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Cambio de estado: $nombre_origen_else → $nombre_destino_else', 'Estado [$estado_actual] $nombre_origen_else. Motivo: $texto', 'Estado [$estado] $nombre_destino_else. $nota_suspension', '$contrato')");
		}
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
```

</details>

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 14 Apr 2026, 8:26 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `output.txt`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
[
  {
    "leyenda": "FALTA ASAMBLEA 04 ENE 2026",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "AGUA POTABLE AÑO 2000",
    "estado": -1,
    "categoria": 2,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 24 SEPT 2006",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "AGUA POTABLE AÑO 2007    ",
    "estado": -1,
    "categoria": 2,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 1 JUL 2007",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 23 SEP 2007",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2007",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "FALTA ASAMBLEA 27 SEP 2009",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 29 NOV 2009",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 ABRIL",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 AGOSTO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 DICIEMBRE",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 ENERO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 FEBRERO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 JULIO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 JUNIO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 MARZO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 MAYO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 NOVIEMBRE",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 OCTUBRE",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2009 SEPTIEMBRE",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "FALTA ASAMBLEA 11 ABR 2010",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 26 SEP 2010",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 27 JUN 2010",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 28 NOV 2010",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEAS 23 MAY 2010",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2010 ABRIL",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2010 ENERO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2010 FEBRERO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "RECARGOS ANUAL AGUA 2010 MARZO",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "AGUA POTABLE ANUALIDAD 2011",
    "estado": -1,
    "categoria": 2,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "ALCANTARILLADO AÑO 2011",
    "estado": -1,
    "categoria": 3,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 25 SEP 2011",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 26 JUN 2011",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 27 MAR 2011",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 27 NOV 2011",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "RECARGO ANUAL DEL AGUA 2011",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "AGUA POTABLE AÑO 2012",
    "estado": -1,
    "categoria": 2,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "ALCANTARILLADO AÑO 2012",
    "estado": -1,
    "categoria": 3,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 24 JUN 2012",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 25 MAR 2012",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 25 NOV 2012",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 30 SEP 2012",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "RECARGO ANUAL DEL AGUA 2012",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "AGUA POTABLE ANUAL 2013 ",
    "estado": -1,
    "categoria": 2,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 14 ABR 2013",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 20 OCT 2013",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 29 SEP 2013",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 30 JUN 2013",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 9 JUN 2013",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "RECARGO ANUAL DEL AGUA 2013",
    "estado": -1,
    "categoria": 16,
    "es_recargo_moratorio": 1
  },
  {
    "leyenda": "ANUALIDAD DEL DRENAJE 2014",
    "estado": -1,
    "categoria": 3,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "RECARGO DE LA COOP./COMPRA DE UNA BOMBA NUEVA DIC",
    "estado": -1,
    "categoria": 11,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "RECARGO DE LA COOP./COMPRA DE UNA BOMBA NUEVA OCT",
    "estado": -1,
    "categoria": 11,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 29 NOV 2015",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 03 JUN 2018",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 09 DIC 2018",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 24 JUN 2018",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 25 MAR 2018",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 26 AGO 2018 ",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 30 SEP 2018",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 24 MAR 2019",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 29 SEP 2019",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 30 JUN 2019",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 01 DIC 2019",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 08 DIC 2019",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 20 JUN 2021",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 17 DIC 2023",
    "estado": -1,
    "categoria": 1,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 18 DIC 2022",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 25 SEP 2022",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 27 MAR 2022",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 02 JUL 2023",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 24 SEP 2023",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 26 MAR 2023",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "falta asamblea 11 feb 2024",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 15 DIC 2024",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 24 MAR 2024",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 29 SEP 2024",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 30 JUN 2024 ",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 28 SEP 2025",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 29 JUN 2025",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  },
  {
    "leyenda": "FALTA ASAMBLEA 30 MAR 2025",
    "estado": -1,
    "categoria": 6,
    "es_recargo_moratorio": 0
  }
]
```

</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

Si

---

## Agent Response

### Thinking

The fix is simple - in ficha.php line 456, change the condition for rojo/cursiva so that ALL cancelled cargo entries (estado=-1) always display in red/italic, not just those where recargo field is truthy.

Let me look at lines 454-462 of ficha.php to apply the fix precisely.

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 7.988093831s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 14 Apr 2026, 8:32 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

 P1-prueba — Reasignar cargo con id_cargo PK como discriminador /
Hice un movimiento de regresar a activo el cargo: FALTA ASAMBLEA 04 ENE 2026
y encontre otro bug: al darle click al boton Movimintos (historial_auditoria.php?id=649), este no muestra el movimiento , a ese reporte añadir mas datos como el 136757, etc. del ejemplo: FALTA ASAMBLEA 04 ENE 2026
Revisa y corrige.

<details>
<summary>Context</summary>

**Active File:** `ficha.php`
**Language:** php
</details>

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

### Thinking

**Prioritizing Tool Specificity**

I'm focusing intently on tool specificity. I'm actively avoiding generic commands. I’ve recognized the need to use grep_search instead of `grep` and similar dedicated utilities. I'm steering clear of `cat`, `ls`, and their generic counterparts, committed to using only the best specific tools. I will continue to focus on this, and improve my efficiency.




### Actions

**Tool:** `grep_search`
**Query:** `regresarCargoCancelado`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.957466603s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 14 Apr 2026, 8:46 pm

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

### Actions

**Tool:** `view_file`
**File:** `cargos.php`

**Tool:** `view_file`
**File:** `historial_auditoria.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.1 Pro (Low)
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
				if ($aniorecargo == $anio) {
					$q = "INSERT INTO ligacargos (numcontrato,leyenda,monto,fcobro,fpago,estado,recargo,folio,anio,numcontratoresp,idpago_vinc,categoria,repetido) VALUES('$numcontrato','$leyenda_recargo',$monto_recargo,CURDATE(),CURDATE(),0,$recargo,'',$anio,'',NULL,$categoria_recargo,$cuenta)";
					$y->q($q);
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

	$y->q("update egresos set estado=-1, motivoelimina='$motivo' where id='$id'");

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

		foreach ($pago as $ref => $val) {
			$lm = explode('|', $val);
			$repetidoval = intval($lm[2]);
			$categoriaval = isset($lm[3]) ? intval($lm[3]) : 0;
			$leyendaval = $lm[0];
			$monto_val = floatval($lm[1]);

			if ($categoriaval == 6 || strpos(strtoupper($leyendaval), 'FALTA ASAMBLEA') !== false) {
				// Asamblea: sp_sinc_asamblea_puntual sincroniza todos los contratos del usuario
				$res_u = $y->q("select numusuario from contrato where numcontrato = '$idc'");
				list($numusuario) = $y->fetch_array($res_u);
				// Primero pagar el cargo del contrato principal
				$y->q("CALL sp_pagar_cargo('$idc', \"$leyendaval\", $repetidoval, $folio_sig, '$idc', $monto_val, @filas)");
				// Sincronizar el resto de contratos del mismo usuario
				$y->q("CALL sp_sinc_asamblea_puntual($numusuario, \"$leyendaval\", 0, @filas_sinc)");
			} else {
				$y->q("CALL sp_pagar_cargo('$idc', \"$leyendaval\", $repetidoval, $folio_sig, '', $monto_val, @filas)");
			}
		}
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
			$x = "";
			foreach ($pago as $valor) {
				$lm = explode('|', $valor);
				$rep_val = isset($lm[2]) ? intval($lm[2]) : 0;
				$y->q("CALL sp_cancelar_cargo('$idc', \"" . $lm[0] . "\", $rep_val, @filas)");
				$x .= ((strlen($x) > 0) ? ", " : "") . $lm[0] . (($lm[2] == 0) ? "" : " (r$lm[2])") . " (\$" . $lm[1] . ")";
			}
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'cancelacion', '$texto', '$x', '$idc')");
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
				if ($repetir == 0)
					$q = "INSERT INTO ligacargos (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, 0)";
				else {
					$res = $y->q("SELECT COUNT(l.numcontrato) FROM vw_ligacargos_all l WHERE l.leyenda = '$leyenda' AND l.numcontrato = '$numcontrato'");
					list($cuenta) = $y->fetch_array($res);
					$q = "INSERT INTO ligacargos (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, $cuenta)";
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
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Sincr. masiva de Adeudos - $leyenda', '$antes_str', '$despues_str', '-MASIVO-')");
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

	$res = $y->q("select nombre from categorias_egresos");
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

	// Resolver id_categoria desde categorias_egresos (mejora diseño Host C)
	$res_cat = $y->q("SELECT id FROM categorias_egresos WHERE nombre = '$cat' LIMIT 1");
	$row_cat = $y->fetch_array($res_cat);
	$id_cat = $row_cat ? intval($row_cat['id']) : null;
	$id_cat_sql = ($id_cat !== null) ? $id_cat : 'NULL';
	$q = "INSERT INTO egresos (id, leyenda, monto, categoria, fecha, estado, motivoelimina, detalle, recibe, id_categoria)
	      VALUES (null, '$nombre', $monto, '$cat', now(), 0, '', '$nombredetalle', '$recibe', $id_cat_sql)";

	if ($y->q($q)) {
		$titulo = 'Registrado';
		$mensaje = "Se ha registrado el egreso de \$" . number_format($monto, 2, '.', ',') . ".";
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
	$y = new Conexion();
	$y->conectarBaseDatos();

	// Reglas C02/F02: Prohibido restituir cargos en contratos en Suspensión Definitiva
	$res_est = $y->q("SELECT estado FROM contrato WHERE numcontrato = '$contrato'");
	list($edo_actual) = $y->fetch_array($res_est);
	if (intval($edo_actual) === 4) {
		return; // Bloqueado silenciosamente — la vista ya restringe visualmente esta acción
	}

	$id_cargo = intval($id_cargo);
	if ($id_cargo > 0) {
		// Fix definitivo P1: discriminar por PK — inmune a variaciones de texto
		$y->q("UPDATE ligacargos SET estado = 0 WHERE id = $id_cargo AND numcontrato = '$contrato'");
		$y->q("UPDATE ligacargos_historico SET estado = 0 WHERE id = $id_cargo AND numcontrato = '$contrato'");
	} else {
		// Fallback: normalización de texto (cuando id_cargo no disponible)
		$leyenda_norm = normalizarLeyenda($leyenda);
		$y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato = '$contrato' AND UPPER(TRIM(leyenda)) = '$leyenda_norm' AND repetido = $repetido");
		$y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato = '$contrato' AND UPPER(TRIM(leyenda)) = '$leyenda_norm' AND repetido = $repetido");
	}

	$texto_cargo  = $leyenda . ($repetido > 0 ? " (r$repetido)" : "");
	$operador     = (isset($_SESSION['usuario']) && $_SESSION['usuario'] !== '') ? $_SESSION['usuario'] : 'cajero';
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
	        VALUES(NOW(),
	               'Reasignacion de cargo cancelado',
	               'Cargo en estado CANCELADO (-1)',
	               'Cargo restituido a PENDIENTE (0): $texto_cargo | Operador: $operador',
	               '$contrato')");
}

?>
```

</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/**
 * historial_auditoria.php — Reporte Detallado de Auditoría por Contrato
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

// Consultar historial de cambios — sin LIKE, búsqueda por contratos del usuario
$q_cambios = "SELECT fecha, descripcion, antes, despues
              FROM cambios
              WHERE numcontrato = '$id'
              OR (numcontrato = '' AND descripcion LIKE 'Declaratoria No Localizado ID $numusuario.%')
              ORDER BY fecha DESC, id DESC";
$res_cambios = $y->q($q_cambios);
$total_cambios = $y->num_rows($res_cambios);

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Historial de Auditoría - Contrato #<?= $id ?></title>
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
                <h1>Historial de Auditoría</h1>
                <div style="font-size: 0.9rem; color: var(--text-muted);">Trazabilidad completa del contrato</div>
            </div>
            <button class="no-print" onclick="window.print()" style="padding: 8px 16px; border-radius: 6px; background: var(--primary); color: white; border: none; cursor: pointer; font-weight: 600; font-family: inherit;">Imprimir Reporte</button>
        </header>

        <div class="contract-card">
            <div class="data-item">
                <label>Contribuyente</label>
                <span><?= htmlspecialchars($info['nombre']) ?></span>
                <small style="color: var(--text-muted);"><?= htmlspecialchars($info['domicilio']) ?></small>
            </div>
            <div class="data-item" style="text-align: right;">
                <label>Número de Contrato</label>
                <span style="font-size: 1.5rem; color: var(--primary);">#<?= $id ?></span>
                <div>
                    <span class="badge <?= ($info['estado'] == 1 ? 'badge-active' : 'badge-other') ?>">
                        <?= $estados_map[$info['estado']] ?>
                    </span>
                </div>
            </div>
        </div>

        <?php if ($total_cambios > 0): ?>
            <div class="timeline">
                <?php 
                $meses = array("01"=>"Enero","02"=>"Febrero","03"=>"Marzo","04"=>"Abril","05"=>"Mayo","06"=>"Junio","07"=>"Julio","08"=>"Agosto","09"=>"Septiembre","10"=>"Octubre","11"=>"Noviembre","12"=>"Diciembre");
                while ($c = $y->fetch_array($res_cambios)): 
                    $time = strtotime($c['fecha']);
                    $fecha_larga = date('d', $time) . " de " . $meses[date('m', $time)] . " de " . date('Y', $time) . " " . date('H:i', $time) . " hrs.";
                ?>
                    <div class="timeline-item">
                        <div class="timeline-content">
                            <div class="timeline-date"><?= $fecha_larga ?></div>
                            <div class="timeline-desc"><?= $c['descripcion'] ?></div>
                            <?php if (!empty($c['antes']) || !empty($c['despues'])): ?>
                                <div class="timeline-diff">
                                    <div class="diff-side">
                                        <span class="diff-label">Estado Anterior</span>
                                        <span class="diff-val"><?= ($c['antes'] ?: '—') ?></span>
                                    </div>
                                    <div class="diff-side">
                                        <span class="diff-label">Estado Nuevo</span>
                                        <span class="diff-val" style="color: #059669; font-weight: 600;"><?= ($c['despues'] ?: '—') ?></span>
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

- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 8:46 pm

---

## User Request

Continue

<details>
<summary>Context</summary>

**Active File:** `ficha.php`
**Language:** php
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 77ef1511-74ab-40a2-ae47-02749135d6f9: 
- Created: 2026-04-14T06:25:52Z
- Last modified: 2026-04-14T06:39:29Z

## Conversation 88e34e15-a3be-4f0e-b30e-534bc4a2df7b: Swapping User Contract IDs
- Created: 2026-04-13T21:01:39Z
- Last modified: 2026-04-14T01:45:27Z

### USER Objective:
Sanitizing Agua User Data

The user's objective is to resolve systemic data inconsistencies by consolidating duplicate user records (Zenón Martínez López and Martín Hernández Castro) and sanitizing "phantom" debts on contracts in definitive suspension (Estado 4). The goal is to ensure data integrity by reassigning contracts to standardized user IDs and executing a targeted SQL migration script on the Host C environment, while hardening the UI in `ficha.php` to prevent unauthorized modifications to suspended contracts.

## Conversation 0ff85a52-5ca7-406e-ab9c-c459b96c204c: Validating Multas Sync Logic
- Created: 2026-04-13T20:47:25Z
- Last modified: 2026-04-13T20:55:42Z

### USER Objective:
Validating Multas Sync Logic

The user's objective is to verify the architectural integrity of the `operaciones_multas_sync.php` script within the Host C environment. Specifically, the user needs to confirm if the script correctly utilizes both `ligacargos` tables (active and historical) or the consolidated `vw_ligacargos_all` view to ensure comprehensive data coverage for all multas operations, preventing data omissions or inconsistencies during synchronization tasks.

## Conversation fbb0e790-a6c6-4799-8517-eb607b5a8861: Recovering Audit File Logic
- Created: 2026-04-13T00:15:55Z
- Last modified: 2026-04-13T00:22:49Z

### USER Objective:
Recovering Audit File Logic

The user's objective is to locate and retrieve the most recent version of the file `auditoria_recargos_suspendidos.php` from the repository history to analyze its historical purpose and functionality. The goal is to determine how this file relates to the recent stabilization efforts of the Agua V2 system, specifically regarding financial sanitation, audit trails, and contract status transitions, ensuring that any necessary logic is preserved or integrated into the current development environment.

## Conversation b5b0a269-ff39-4387-ad94-d5f2fead4c34: Resolving Contract Status Transitions
- Created: 2026-04-12T17:57:18Z
- Last modified: 2026-04-12T20:40:08Z

### USER Objective:
Stabilizing Contract State Transitions

The user's objective is to finalize the stabilization of contract status transitions in the Agua V2 system by enforcing strict business rules, hardening backend logic, and implementing UI/UX protections. Key goals include auditing state transition logic, formalizing these constraints in the project's Runbook, and establishing a robust "Escudo de Integridad" using Git Hooks and Ground Truth synchronization to prevent future data inconsistencies and architectural drift across development environments.

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

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 14 Apr 2026, 8:46 pm

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

- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 8:46 pm

---

## User Request

continua.

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

- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 8:51 pm

---

## User Request

Continue

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

- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 8:51 pm

---

## User Request

Continua.

---

## Agent Response

### Thinking

**Investigating Report Discrepancy**

Okay, I've confirmed the bug related to the missing movement history for reassigned cancelled cargo "FALTA ASAMBLEA 04 ENE 2026" (id 136757) on contract 649. The `historial_auditoria.php` report isn't updating correctly. My next step will be tracing the reassignment process's code execution to pinpoint where the audit trail is being dropped or incorrectly written. I suspect a logic error in the reassignment handling.


**Tracing Code Execution**

I'm now tracing the code execution within `regresarCargoCancelado` in `includes/negocio/cargos.php`, particularly focusing on how changes are logged. The `INSERT` statement in line 714 appears to correctly capture the reassignment event, including the contract number. It seems the issue isn't at the point of the log statement, but rather the querying of the `cambios` table, now my focus. I'll need to analyze how `historial_auditoria.php` retrieves and filters these changes.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.453531708s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 14 Apr 2026, 9:02 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `ruteador.php`

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
header('Content-Type: text/html; charset=UTF-8');
session_start();

require_once('login/usuario.php');
require_once('login/crud_usuario.php');
require_once('includes/numeros.php');
require_once('config/Conexion.php');

// Archivos de lógica de negocio
require_once('vendor/autoload.php');
require_once('includes/negocio/usuarios.php');
require_once('includes/negocio/contratos.php');
require_once('includes/negocio/cargos.php');
require_once('includes/negocio/sistema.php');

$templates = new League\Plates\Engine(__DIR__ . '/views');

// Sanitizar y exponer solo variables conocidas — evita que extract() sobreescriba $templates, $link, etc.
$_allowed_vars = [
    'opc','dato','cadena','cadenaCalle','id','id_usuario','num','contrato','usuario',
    'nuevousuario','nombre','domicilio','telefono','email','masdatos','tipo','agua',
    'drenaje','num_tomas','numcontratoletras','metros','tomas','observaciones','idcontrato',
    'texto','estado','presidente','tesorero','idc','pago','totalmarcado','recibo',
    'marca','estado1','estado2','estado3','estado4','query','dren','c','cargo',
    'leyenda','cat','otracategoria','monto','mensual','anio','recargo','interes',
    'multa','aniocobro','repetir','monto_comercial','automatico','repetido','folio','id_cargo',
    'nombredetalle','recibe','passpresidente_nueva','passpresidente_anterior',
    'passtesorero_nueva','passtesorero_anterior','nombrepresidente','nombrevicepresidente',
    'nombresecretario','nombretesorero','nombrevocal1','nombrevocal2','nombrevocal3',
    'nombrevocal4','nombrepresidentev','nombresecretariov','nombreusuario','passusuario',
    'no_localizado','usuariologin','passwordlogin',
];
$_input = array_merge($_GET, $_POST);
foreach ($_allowed_vars as $_key) {
    if (isset($_input[$_key])) {
        $$_key = is_array($_input[$_key])
            ? $_input[$_key]
            : str_replace("'", "\'", $_input[$_key]);
    }
}
unset($_allowed_vars, $_input, $_key);

$opc = isset($opc) ? $opc : '';

if ($opc != 'login') {
    if (!isset($_SESSION['usuario'])) {
        print "<script>window.location='login/index.php'</script>";
    }
}

switch ($opc) {
    case 'menu':
        print menu($dato);
        break;
    case 'login':
        login($usuariologin, $passwordlogin);
        break;
    case 'busquedaUsuario':
        print busquedaUsuario($cadena);
        break;
    case 'busquedaUsuarioCalle':
        print busquedaUsuarioCalle($cadenaCalle);
        break;
    case 'busquedaContrato':
        print busquedaContrato($cadena);
        break;
    case 'cargaUsuario':
        print cargaUsuario($id);
        break;
    case 'cargaContrato':
        print cargaContrato($id);
        break;
    case 'cargaSnapshot':
        print cargaSnapshot($id);
        break;
    case 'cargaDomiciliosUsr':
        print cargaDomiciliosUsr($id_usuario);
        break;
    case 'nuevoUsuario':
        print nuevoUsuario();
        break;
    case 'nuevoContrato':
        print nuevoContrato();
        break;
    case 'cargaCargos':
        print cargaCargos();
        break;
    case 'cargaCargosEsp':
        print cargaCargosEsp($cadena);
        break;
    case 'guardaUsuario':
        $no_localizado = (isset($no_localizado) ? $no_localizado : 0);
        print guardaUsuario($id, $nombre, $domicilio, $telefono, $email, $masdatos, $no_localizado);
        break;
    case 'guardaNuevoUsuario':
        print guardaNuevoUsuario($nombre, $domicilio, $telefono, $email, $masdatos);
        break;
    case 'guardaDatosContrato':
        $tipo = isset($tipo) ? $tipo : 0;
        $agua = isset($agua) ? $agua : 0;
        $drenaje = isset($drenaje) ? $drenaje : 0;
        $num_tomas = (isset($num_tomas) ? intval($num_tomas) : null);
        $numcontratoletras = (isset($numcontratoletras) ? $numcontratoletras : "");
        $tomas_data = (isset($tomas) ? $tomas : array());
        print guardaContrato($id, $domicilio, $tipo, $agua, $drenaje, $masdatos, $observaciones, $numcontratoletras, $metros, $tomas_data, $num_tomas);
        break;
    case 'guardaNuevoContrato':
        $tipo = isset($tipo) ? $tipo : 0;
        $agua = isset($agua) ? $agua : 0;
        $drenaje = isset($drenaje) ? $drenaje : 0;
        $tomas_data = (isset($tomas) ? $tomas : array());
        $num_tomas = (isset($num_tomas) ? $num_tomas : 1);
        print guardaNuevoContrato($idcontrato, $nuevousuario, $domicilio, $tipo, $agua, $drenaje, $masdatos, $observaciones, $metros, $tomas_data, $num_tomas);
        break;
    case 'validaTomasSync':
        $num_tomas = (isset($num_tomas) ? $num_tomas : 1);
        $contrato = (isset($contrato) ? $contrato : null);
        print validaTomasSync($usuario, $domicilio, $num_tomas, $contrato);
        break;
    case 'buscausuariocambio':
        print buscaUsuarioCambio($texto);
        break;
    case 'cambiandopropietario':
        print cambiapropietario($contrato, $usuario, $nuevousuario);
        break;
    case 'pagacargos':
        print pagacancelacargos($opc, $idc, $pago, $presidente, $tesorero, $texto, $totalmarcado, $recibo);
        break;
    case 'cambiaestado':
        print cambiaestado($contrato, $presidente, $tesorero, $texto, $estado);
        break;
    case 'cancelacargos':
        print pagacancelacargos($opc, $idc, $pago, $presidente, $tesorero, $texto, $totalmarcado, $recibo);
        break;
    case 'buscaCto':
        $marca = (isset($marca) ? $marca : 0);
        $estado1 = (isset($estado1) ? $estado1 : 0);
        $estado2 = (isset($estado2) ? $estado2 : 0);
        $estado3 = (isset($estado3) ? $estado3 : 0);
        $estado4 = (isset($estado4) ? $estado4 : 0);
        print cargaresultados($query, $usuario, $agua, $dren, $marca, $estado1, $estado2, $estado3, $estado4);
        break;
    case 'agregaNota':
        print creaNota($contrato, $texto);
        break;
    case 'eliminaNota':
        print eliminaNota($id);
        break;
    case 'eliminaEgreso':
        print eliminaEgreso($id, $motivo);
        break;
    case 'mandatodo':
        $c = (isset($c) ? $c : null);
        $cargo = (isset($cargo) ? $cargo : array());
        print aplicacargos($c, $cargo);
        break;
    case 'aplicacargosauno':
        $cargo = (isset($cargo) ? $cargo : array());
        print aplicacargos($contrato, $cargo);
        break;
    case 'agregaNuevoCargo':
        $mensual = (isset($mensual) ? $mensual : 0);
        $automatico = (isset($automatico) ? $automatico : 0);
        $anio = (isset($anio) ? $anio : date("Y"));
        $aniocobro = (($aniocobro == "" || $aniocobro == null) ? 0 : $aniocobro);
        $recargo = (isset($recargo) ? $recargo : 0);
        $interes = (isset($interes) ? $interes : 0);
        $multa = (isset($multa) ? $multa : 0);
        $repetir = (isset($repetir) ? $repetir : 0);
        $metros = (isset($metros) ? $metros : 0);
        $monto_comercial = (isset($monto_comercial) ? $monto_comercial : 0);
        print creaCargo($leyenda, $cat, $otracategoria, $monto, $mensual, $anio, $recargo, $interes, $multa, $aniocobro, $repetir, $metros, $automatico, $monto_comercial);
        break;
    case 'modificaCargo':
        $mensual = (isset($mensual) ? $mensual : 0);
        $automatico = (isset($automatico) ? $automatico : 0);
        $anio = (isset($anio) ? $anio : date("Y"));
        $aniocobro = (($aniocobro == "" || $aniocobro == null) ? 0 : $aniocobro);
        $recargo = (isset($recargo) ? $recargo : 0);
        $interes = (isset($interes) ? $interes : 0);
        $multa = (isset($multa) ? $multa : 0);
        $repetir = (isset($repetir) ? $repetir : 0);
        $metros = (isset($metros) ? $metros : 0);
        $monto_comercial = (isset($monto_comercial) ? $monto_comercial : 0);
        print modificaCargo($num, $leyenda, $cat, $otracategoria, $monto, $mensual, $anio, $recargo, $interes, $multa, $aniocobro, $repetir, $metros, $automatico, $monto_comercial);
        break;
    case 'listados':
        print listados();
        break;
    case 'configuracion':
        print configuracion();
        break;
    case 'asistencias':
        print asistencias();
        break;
    case 'contrasenas':
        print contrasenas();
        break;
    case 'registrousuarios':
        print registrousuarios();
        break;
    case 'usuariosEspeciales':
        print usuariosEspeciales();
        break;
    case 'egresos':
        print egresos();
        break;
    case 'asamblea':
        print abriendoarchivo();
        break;
    case 'registraegreso':
        print registraegreso($folio, $nombre, $cat, $monto, $nombredetalle, $recibe);
        break;
    case 'registracontrasenap':
        print registrapasspresidente($passpresidente_nueva, $passpresidente_anterior);
        break;
    case 'registrafirmantes':
        print registrafirmantes($nombrepresidente, $nombrevicepresidente, $nombresecretario, $nombretesorero, $nombrevocal1, $nombrevocal2, $nombrevocal3, $nombrevocal4, $nombrepresidentev, $nombresecretariov);
        break;
    case 'registrousers':
        print registrausuario($nombreusuario, $passusuario);
        break;
    case 'registracontrasenat':
        print registrapasstesorero($passtesorero_nueva, $passtesorero_anterior);
        break;
    case 'mostrarCargo':
        print mostrarCargo($num);
        break;
    case 'ocultarCargo':
        print ocultarCargo($num);
        break;
    case 'modificarCargo':
        print modificarCargo($num);
        break;
    case 'eliminarCargo':
        print eliminarCargo($num);
        break;
    case 'regresarCargoCancelado':
        $id_cargo = isset($id_cargo) ? intval($id_cargo) : 0;
        print regresarCargoCancelado($contrato, $leyenda, $repetido, $id_cargo);
        break;
    case 'salir':
        salir();
        break;
    case 'archivo':
        $target_path = "";
        $target_path .= basename("lastassambly");

        if (move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
            if (chmod($target_path, 0644))
                echo "El archivo ha sido guardado. Espere para su procesamiento.";
        } else {
            echo "Hubo un error al cargar el archivo de la asamblea. Intente de nuevo.";
        }
        break;
    default:
        print "<h1>Salida por default</h1><pre>";
        print_r($_POST);
        print "</pre>";
        break;
}
?>
```

</details>

---

## Agent Response

### Thinking

**Verifying Parameter Passing**

I've confirmed that `ruteador.php` is correctly calling `regresarCargoCancelado` with the appropriate arguments, which is a key checkpoint. The challenge now seems to lie in older versions of the codebase where `id_cargo` might not be correctly passed or utilized, potentially causing the movement to be hidden. Alternatively, the issue might stem from a bug within `regresarCargo`.


**Analyzing Function Execution**

I'm now examining `regresarCargoCancelado` in `includes/negocio/cargos.php`. Line 703 shows it updates `ligacargos`, and line 704 updates `ligacargos_historico`, both using `$id_cargo` and `$contrato`.  Lines 714-719 log a detailed change entry. The `$id_cargo` parameter seems crucial for identifying the cargo to be 'un-canceled', which makes debugging parameter passing more important.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.975162372s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 14 Apr 2026, 9:02 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 9:02 pm

---

## User Request

Continue

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 9:02 pm

---

## User Request

COntinua.

---

## User Request

COntinua.

---

## User Request

 P1-prueba — Reasignar cargo con id_cargo PK como discriminador /
Hice un movimiento de regresar a activo el cargo: FALTA ASAMBLEA 04 ENE 2026
y encontre otro bug: al darle click al boton Movimintos (historial_auditoria.php?id=649), este no muestra el movimiento , a ese reporte añadir mas datos como el 136757, etc. del ejemplo: FALTA ASAMBLEA 04 ENE 2026
Revisa y corrigelos.

---

## Agent Response

### Thinking

**Analyzing Report Anomalies**

I've pinpointed a discrepancy in the "Movimientos" report (historial_auditoria.php). It's not reflecting the re-assignment of a cancelled cargo, specifically "P1-prueba." My initial investigation suggests the `regresarCargoCancelado` function, within `includes/negocio/cargos.php`, is responsible for logging these changes in `cambios`, but it appears there's a disconnect. I'm focusing on that function for now.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.925775168s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 14 Apr 2026, 10:11 pm

---

## Agent Response

### Thinking

**Investigating The Negative**

The log entry remains absent, which is puzzling given the user's report of a successful cargo update. I'm focusing now on why the logging function failed to capture the event, despite evidence that the database alteration occurred. It may suggest a timing issue or a conditional logic bypass within the logging process.




### Actions

**Tool:** `mcp_bdawahost-c_describe_table`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.819092101s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 14 Apr 2026, 10:11 pm

---

## Agent Response

### Thinking

**Analyzing the Schema & Code**

I've confirmed the schema appears sound. Now, I'm re-examining the `regresarCargoCancelado` code, specifically lines 714-717 to understand the database insertion logic. My focus is the `INSERT` statement for the `cambios` table, and how it handles the 'Reasignacion de cargo cancelado' description.


**Refining the Logging Approach**

I've got a better understanding now. The `str_replace` in `ruteador.php` handles some escaping, which is good. The issue probably isn't the `batch_id` as it allows NULLs. The key here seems to be improving the log message to include the `id_cargo` given the user's request. I'll need to update the `INSERT` statement in `regresarCargoCancelado` to include that. Also, I will cross-reference with `reportes/historial_auditoria.php` to ensure the report will display the expanded log entry without issues.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.111602955s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 14 Apr 2026, 10:11 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 14 Apr 2026, 10:11 pm

---

---

*Generated by Chatledger for Antigravity*