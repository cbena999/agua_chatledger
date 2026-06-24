# Stabilizing Historical Surcharge Engine

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `a9736f88-0b85-46a5-9fb8-2df24cfd9b19` |
| **Cascade ID** | `e0cf52cb-6d53-4322-8e81-b011a534320b` |
| **Type** | Agent Conversation |
| **Total Steps** | 102 |
| **Started** | 23 June 2026, 10:40 am |
| **Completed** | 23 June 2026, 11:17 am |

---

## User Request

Estabilización y pruebas en fix-issue-01.

Con base a la conversación:  ID interno: 95cd3afb-e633-4867-ab82-e080dc81ed68
Continuemos con la sesión de la reparación del JIT de recargos del año 2000, ID 95cd3afb-e633...".
En especifico como parte del cuestionamiento estas afirmaciones dijiste ayer:

1) Win7: 
core.php exactamente en la Línea 337, encontrarás esta consulta SQL del sistema original:
php
$rescargos=$y->q("select nombre, monto, recargo, anio, categoria, repetir, metros from cargos where estado=1 and automatico=1 AND anio >= $aniocontrato order by nombre");

2) host c (win10)
El commit b30ab80 tiene fecha del 15 de junio de 2026 a las 20:30:21 (hora local).  Donde tu  en una sesión de la semana pasada mientras reparábamos los huecos del motor, introdujiste (y yo no revise, confie) el límite en DURO: 2006 intentando proteger el sistema de timeouts masivos al leer contratos viejos, sin darnos cuenta de que estábamos enmascarando los adeudos anteriores que la línea 337 del Host B ya estaba ocultando de por sí.
_
ENtonces a hora analiza a profundida y Compara contra lo que en esa linea de:
 generaCargosAutomaticos (Ignora los años antes de 2006 ($anio_inicio_fact = 2006), Ignora los cargos desactivados (estado = 1 AND automatico = 1). En tu catálogo de Host C, "AGUA POTABLE AÑO 2000" está en estado = 0.));

 lo que se tenia entre el 23 mayo y el 14 junio , pues es la version que esta en producción; de donde el operador reporto el issue ORIGINAL de donde partio el fix-issue-01; sobre que varios contratos morosos estaban arrojando menores adudos en produccion (bd awa host c), Vs su acceso de lectura del sistema congelado host b.
EL proposito es analiza esas lineas torcidas con antelación, luego se subio algo y esta en prod y luego del 15 junio a ayer se tenia en codigo duro 2006; para saber cual sera las correciones en los archivos PHP IMPLICADOS, para no solo abordar lo especifico sino ver mas haya e identificar los impactos y arregarlos con coherencia, solidez de que tengamos una version estable al issue que estamos resolviendo hace dia; y que resulta y resulta en inyecciones de mas bug de una creciente bola de nieve que ya perdi proporcion y no se si hay mas cosas mal hechas en el sentido de coherencia global.

<details>
<summary>Context</summary>

**Active File:** `settings.json`
**Language:** jsonc

**Open Files:**
- `05_seed_data.sql`
- `chatledger_validate.sh`
- `run_patch_host_c.ps1`
- `check_connectivity.sh`
- `05_stored_procedures.sql`
- `04_stored_procedures.sql`
- `Tecnica_Infraestructura_Despliegue_Comandas_VOSK.html`
- `comparativa_mora.php`
- `modificar.php`
- `configuracion.php`
- `cargos.php`
- `pending.md`
- `.mcp.json`
- `PLAN_MORA_ROTATIVA_20_ANIOS.md`
- `settings.json`
- `AUDITORIA_MORA_ROTATIVA_20_ANIOS_V2.md`
- `01_normalizar_catalogo.sql`
- `transiciones_estado_contratos.md`
- `sw.js`
- `01_auth_schema.sql`
- `Tecnica_Modelo_Datos_Comandas_VOSK.html`
- `.gitignore`
- `imprimir_credencial.php`
- `GUIA_CATALOGO_CARGOS.md`
- `06_indexes.sql`
- `Tecnica_Arquitectura_Voz_Comandas_VOSK.html`
- `Funcional_Flujos_Trabajo_Comandas_VOSK.html`
- `Especificacion_Tecnica_Comandas_VOSK.html`
- `00_database.sql`
- `workspace.json`
- `credencial.php`
- `08_saneamiento_catalogo.sql`
- `Issues_Resueltos_Sincronizacion_64_Contratos_20260615.md`
- `Especificacion_Funcional_Comandas_VOSK.html`
- `GEMINI.md`
- `VERIFICACION_MANUAL_MORA_20_ANIOS.md`
- `SKILL.md`
- `Configuring_MCP_Server_Development_Branches_d5c83311e744.md`
- `05_validation_20_anios.sql`
- `run_patch_host_c.sh`
- `pending.md`
- `03_transactional_schema.sql`
- `02_core_schema.sql`
- `demo-cliente-rest-bar-tiendita-expendios.html`
- `credenciales_comparativa.txt`
- `.gitignore`
- `adeudo_tabla.php`
- `catalogo.php`
- `contratos.php`
- `setup.sh`
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 95cd3afb-e633-4867-ab82-e080dc81ed68: Verifying Aguav2 Mora Engine
- Created: 2026-06-20T16:44:18Z
- Last modified: 2026-06-23T07:05:02Z

### USER Objective:
Reconciling Historical Surcharge Engine

Objective: Eliminate the parity gap and stabilize the JIT surcharge calculation engine on Host C to create a reliable, audit-ready financial system.

Goals:
1. Identify and remove hardcoded date thresholds (e.g., the 2006 limit) currently suppressing historical debt generation.
2. Synchronize the Host C JIT motor with the production database by forcing correct execution flows in `contratos.php` and `cargos.php`.
3. Stabilize the financial calculation output by configuring the "Mora Rotativa" limits (10-year window/Bomba threshold) to prevent runaway debt totals.
4. Perform final validation to ensure that all 27 years of historical records are correctly processed and reflected in the user interface without system timeouts or data corruption.

## Conversation 41b07588-7f6a-4d9e-aae7-f48df7d15e55: Restoring Historical Surcharge Plan
- Created: 2026-06-19T17:34:28Z
- Last modified: 2026-06-20T05:14:37Z

### USER Objective:
Finalizing Mora Engine Audit

**USER Objective:**
Finalize the architectural reconciliation and audit readiness of the 20-year rotational mora engine on Host C to ensure a Single Source of Truth.

**Goals:**
1. Execute the final normalization and structural integrity fixes across the Host C database environment.
2. Finalize documentation (`PLAN_MORA_ROTATIVA_20_ANIOS.md` and `VERIFICACION_MANUAL_MORA_20_ANIOS.md`) as authoritative guides for production deployment.
3. Quantify financial gaps and reconcile differences between legacy Host B and Host C to prove accuracy in historical surcharge calculations and debt base validity.
4. Align administrative audit tools (`comparativa_mora.php`) to the new V2 JIT motor logic to support financial reporting and decision-making by the water committee.

## Conversation 68c13890-5673-4043-8ab3-ef3fd55a487d: Expanding Historical Mora Calculations
- Created: 2026-06-19T01:43:46Z
- Last modified: 2026-06-19T06:57:46Z

### USER Objective:
Optimizing Historical Surcharge Engine

USER Objective:
Refactor the JIT surcharge engine to handle multi-decadal debt calculations (2005–2026) using a 10-year rotational window and Batch Insert/Auto-Heal architecture without destructive database deletions.

Goals:
1. Implement a Batch Insert pattern in `calcula_recargos()` to optimize performance and prevent timeouts.
2. Refactor the JIT motor to use a rolling 10-year window that dynamically omits older records from active calculation without deleting them from the database.
3. Integrate an "Acordeón Visual" UI strategy in `adeudo_tabla.php` to allow flexible, fraccionado payment of historical surcharges while maintaining a clean administrative interface.
4. Update `configuracion.php` to provide dynamic synchronization between the mora catalog and the 10-year threshold.
5. Investigate and resolve the parity discrepancy between Host B and Host C regarding surcharge counts (e.g., Contract 161) by auditing the view definitions and JIT
<truncated 22 bytes>

## Conversation 62cf2a4a-a2b1-4ede-9f66-88c4e6b9937b: Mora aguav2 - todos los años.
Realiza prueba de conectividad via mcp y mysql client.
Insumos: Usa G
<truncated 1031 bytes>
- Created: 2026-06-19T01:36:53Z
- Last modified: 2026-06-19T01:40:28Z

## Conversation 8a2778b8-300b-46e8-9020-16cf387f47c8: Financial Audit Reconciliation Tool
- Created: 2026-06-18T01:04:14Z
- Last modified: 2026-06-18T20:12:13Z

### USER Objective:
Auditing Surcharge Logic Parity

USER Objective:
Finalize the forensic audit and validation of the V2 motor's surcharge logic to ensure data parity between the legacy Host B and the current Host C environment.

Goals:
1. Verify the accuracy of historical surcharge generation against legacy benchmarks to confirm Host C acts as a true, audit-ready Single Source of Truth.
2. Validate the behavior of the "Just-in-Time" surcharge calculation engine regarding contract state transitions and configuration adjustments.
3. Consolidate technical findings and business rules into the official project documentation (`matriz_mora_host_b_vs_c.md`) to inform the finance committee of systemic protections and automated safeguards.
4. Maintain strict "Poka-Yoke" architectural integrity, ensuring no unauthorized service charges generate interest, while preserving the system's ability to handle contract re-activation scenarios securely.

## Conversation 3b0c24ca-fb4b-4fe6-88ac-8cd1f50f58b4: Designing Restaurant PWA Mockups
- Created: 2026-06-18T17:14:52Z
- Last modified: 2026-06-18T17:41:30Z

### USER Objective:
Designing Restaurant PWA Mockups

Main Objective: Create and refine four functional UI/UX mockups (2 PWA, 2 WebApp) for a restaurant voice-command system, adhering to technical specifications and business rules.

Goals:
1. Develop responsive, modern mockups in Spanish featuring both dark and light theme toggling.
2. Integrate standard navigation components, including hamburger menus and session management (login/logout) across all interfaces.
3. Utilize CSS Glassmorphism and JavaScript for interactive prototypes (mic animations, KDS status timers).
4. Organize assets within the project directory structure to serve as the baseline for system implementation.

## Conversation 81bd4812-ff4f-4429-848e-880e057acf4a: Production Infrastructure Connectivity Validation
- Created: 2026-06-18T16:46:03Z
- Last modified: 2026-06-18T16:52:40Z

### USER Objective:
Validating Infrastructure And Connectivity

Objective: Finalize the infrastructure validation and synchronization for the Host C production environment.

Goals:
1. Conduct connectivity diagnostics across Hosts A, B, and C to verify database and HTTP service accessibility using the updated `check_connectivity.sh` script.
2. Confirm the successful implementation of "Issue 01" (Historical Mora Normalization) and "Issue 02" (Cross-Contract ID Collision Fix) in Host C.
3. Validate database integrity using post-patch verification SQL scripts, ensuring all ledger discrepancies and historical records are corrected.
4. Harmonize infrastructure documentation by updating the connectivity diagnostic tool to dynamically reference the Single Source of Truth (`.mcp.json`) for IP and port configurations.

## Conversation 1c29b575-6c98-4211-b06d-48d956d621c8: Refining Credencial Report Generation
- Created: 2026-06-18T13:45:53Z
- Last modified: 2026-06-18T13:47:13Z

### USER Objective:
Refining Credencial Report Generation

Main Objective: Modify the `credencial.php` script to enhance report formatting and output constraints.

Goals:
1. Apply bold styling to the contract numbers rendered beneath the two barcodes in the generated credential image.
2. Restrict the "Copias en hoja" selection menu and the resulting print preview output to exactly two copies.

## Conversation 231de7fa-7f0d-4180-b42a-f73d56dd41ee: Reconciling Cross-Linked Financial Receipts
- Created: 2026-06-17T22:06:01Z
- Last modified: 2026-06-18T00:21:59Z

### USER Objective:
Reconciling Financial Ledger Discrepancies

USER Objective:
Finalize the audit and reconciliation of financial records between Host B and Host C to ensure account parity for contracts 648 (Alfonso Torres) and 725 (Edgar Hernández) following the collision bug.

Goals:
1. Validate that the account states (debt/paid status) for 648 and 725 in Host C accurately mirror the benchmark records from Host B.
2. Confirm that the data curation executed in the previous session successfully isolated these contracts from Alejandro Espinosa's (646) transactions.
3. Provide final verification that all third-party records are pristine, completing the forensic audit process.

## Conversation 37c0af77-ff98-45c9-9f38-1435d8640499: Stabilizing Financial Payment Records
- Created: 2026-06-16T18:01:24Z
- Last modified: 2026-06-18T00:02:41Z

### USER Objective:
Finalizing Financial Data Reconciliation

Objective: Stabilize financial records and eliminate cross-contract ledger discrepancies resulting from transaction collisions.

Goals:
1. Finalize the forensic audit of affected contracts (317, 705) to ensure total data parity between legacy and V2 environments.
2. Automate the financial gap closure (cierre de gap) for contract 705 by integrating a permanent SQL patch into the automated deployment orchestration.
3. Validate total ledger integrity, ensuring receipts for impacted clients are re-processed correctly and system-wide accounting is audit-ready.
4. Prepare the finalized "Issue 02" patch for deployment in the production Host C environment.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 23 June 2026, 10:40 am

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

**Prioritizing Specialized Tools**

I'm focused on moving beyond generic Linux commands. My aim is to leverage tools specifically designed for the task at hand. Instead of relying on `cat` for file creation or `ls` for directory listing, I'll favor dedicated, purpose-built utilities, especially tools such as `grep_search`. I'm starting to see how this approach improves efficiency and reduces potential errors.


**Refining Tool Usage**

I'm now zeroing in on dedicated tools: I am transitioning to use `grep_search` and `view_file` to understand the code context, using `sed` for targeted replacements and `read_file_content` to access file content more directly, and I may use some of the `mcp_bdawahost-X_query` utilities to dig into the databases. This is a big step to a more surgical and precise code analysis.


**Investigating Git History**

I'm now diving into the Git history for crucial context. The focus is on the commit `b30ab80`, dated June 15, 2026, which contains the modification to `generaCargosAutomaticos` and the associated SQL query. I will use `run_command` with `git log` and `git show` to extract all the related information and understand the code changes.




### Actions

**Tool:** `grep_search`
**Query:** `2006`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.761941521s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 June 2026, 10:40 am

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

I'm focusing intently on tool specificity. I've internalized the directives. For file creation or appending, using `cat` within a bash command is now strictly forbidden, I must opt for other tools. Also, I'm now committed to employing `grep_search` directly, instead of embedding `grep` in a bash command. `ls` is also no longer considered for listing tasks.


**Refining Tool Usage**

I'm now prioritizing the tools for their specific tasks. `grep_search` is my go-to for finding information. I'll use `view_file` to inspect content and `run_command` for executing Git commands, like `git show` and `git log`, focusing on dates and commit IDs. I've also learned `sed` for replacements and `cat` for viewing. I've been given information about commit `b30ab80` and the files of interest. I will investigate these thoroughly.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.615237025s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:40 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.


**Refining Tool Usage**

I'm now prioritizing `cat` only for viewing, `grep` for finding, and `sed` for replacing. The relevant tools for the immediate task are `mcp_bdawa2host-c_query`, `read_file_content`, and `replace_file_content`. I have reviewed the `git show b30ab80` commit, noting the code change related to the SQL query and the introduction of a year limit check. I also confirmed how the original query looked, before the changes, and noted the difference in `anio` logic.




### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.488047100s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file` (L851-1650)</summary>

**Path:** `Unknown file`

```

            // 4. Limpiar tabla histórica (Esquema V2)
            $y->q("UPDATE ligacargos_historico SET estado = -1, fcobro = NOW() WHERE numcontrato = '$id' AND estado = 0");
        }
        return; // Terminar aquí para SDF
    }

    // --- LÓGICA DE PARIDAD NORMAL (Estados 1, 2, 3) ---

    $cfg_par = cargaConfig($y);
    $max_anios_par = intval(obtenerValorSeguro($cfg_par, 'paridad_anios_max_recargo', 0));
    $anio_limite   = ($max_anios_par > 0) ? ($anio - $max_anios_par) : 0;

    // Conteo físico activo
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1 AND estado_agua=1");
	list($n_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($n_drenaje) = $y->fetch_array($r_d);

	$acciones_paridad = array();

	// Sincronizar AGUA (categoria=2)
	$leyenda_a = "ANUALIDAD DEL AGUA $anio";
	if ($n_agua > 0) {
	    // POKA-YOKE: Solo restaurar si NO existe ya una activa o pagada (evita duplicados si el usuario agregó manuales y canceló el exceso)
	    $res_act = $y->q("SELECT id_cargo FROM vw_ligacargos_all WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado >= 0 LIMIT 1");
	    if ($y->num_rows($res_act) == 0) {
	        $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = -1 LIMIT 1");
	        $af_ra1 = $y->affected_rows();
	        $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = -1 LIMIT 1");
	        $af_ra2 = $y->affected_rows();
	        if ($af_ra1 > 0 || $af_ra2 > 0) {
	            $acciones_paridad[] = "Restaurada: $leyenda_a";
	        }
	    }
	} else {
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = 0");
	    $af_a1 = $y->affected_rows();
	    $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = 0");
	    $af_a2 = $y->affected_rows();
	    if ($af_a1 > 0 || $af_a2 > 0) {
	        $acciones_paridad[] = "Cancelada (sin toma activa): $leyenda_a";
	    } else {
	        $acciones_paridad[] = "Sin cambio (ya cancelada): $leyenda_a";
	    }
	}

	// Sincronizar DRENAJE (categoria=3)
	$leyenda_d = "ANUALIDAD DEL DRENAJE $anio";
	if ($n_drenaje > 0) {
	    // POKA-YOKE: Solo restaurar si NO existe ya una activa o pagada
	    $res_act_d = $y->q("SELECT id_cargo FROM vw_ligacargos_all WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado >= 0 LIMIT 1");
	    if ($y->num_rows($res_act_d) == 0) {
	        $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = -1 LIMIT 1");
	        $af_d1 = $y->affected_rows();
	        $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = -1 LIMIT 1");
	        $af_d2 = $y->affected_rows();
	        if ($af_d1 > 0 || $af_d2 > 0) {
	            $acciones_paridad[] = "Restaurada: $leyenda_d";
	        }
	    }
	} else {
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = 0");
	    $af_d1 = $y->affected_rows();
	    $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = 0");
	    $af_d2 = $y->affected_rows();
	    if ($af_d1 > 0 || $af_d2 > 0) {
	        $acciones_paridad[] = "Cancelada (sin toma activa): $leyenda_d";
	    } else {
	        $acciones_paridad[] = "Sin cambio (ya cancelada): $leyenda_d";
	    }
	}

	// Registrar paridad en cambios si hubo modificaciones
	if (count($acciones_paridad) > 0) {
	    // Verificar si el contrato tiene deuda histórica para determinar si el guard aplica realmente
	    $r_hist = $y->q("SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='$id' AND estado=0");
	    list($n_hist) = $y->fetch_array($r_hist);
	    if ($max_anios_par > 0 && $n_hist > 0) {
	        $limite_txt = "Recargos bloqueados para anio < $anio_limite (paridad_anios_max_recargo=$max_anios_par)";
	    } elseif ($max_anios_par > 0) {
	        $limite_txt = "Guard activo (paridad_anios_max_recargo=$max_anios_par) — sin deuda historica que limitar";
	    } else {
	        $limite_txt = "Sin limite de antiguedad de recargos";
	    }
	    // Conteo físico instalado (tiene_agua/drenaje=1) vs activo (estado_agua/drenaje=1)
	    $r_ai = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1");
	    list($n_agua_inst) = $y->fetch_array($r_ai);
	    $r_di = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1");
	    list($n_drenaje_inst) = $y->fetch_array($r_di);

	    $agua_txt    = ($n_agua_inst > 0 && $n_agua == 0)    ? "$n_agua (instalada pero corte fisico)" : "$n_agua";
	    $drenaje_txt = ($n_drenaje_inst > 0 && $n_drenaje == 0) ? "$n_drenaje (instalado pero corte fisico)" : "$n_drenaje";

	    $acciones_esc = $y->real_escape_string(implode(' | ', $acciones_paridad));
	    $limite_esc   = $y->real_escape_string($limite_txt);
	    $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
	           VALUES(NOW(), 'Paridad Anualidades (Motor C04)',
	           '$acciones_esc',
	           'Tomas agua: $agua_txt | Tomas drenaje: $drenaje_txt | $limite_esc',
	           '$id')");
	}

	// Recalibrar montos de cargos PENDIENTES basados en el nuevo número de tomas y tipo
	_sincronizaDeudaPendienteContrato($id, $y);
}

function _sincronizaDeudaPendienteContrato($numcontrato, $y)
{
	// Snapshot PRE para auditoría
	$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
	$pre = $y->fetch_array($res_pre);
	$n_pre   = intval($pre['n']);
	$tot_pre = number_format(floatval($pre['total']), 2);

	$res_cto = $y->q("SELECT metros, MONTH(fecha) as mescontrato FROM contrato WHERE numcontrato='$numcontrato'");
	list($metros_cto, $mescontrato) = $y->fetch_array($res_cto);

	// Configuración necesaria para recargos
	$res_cfg = $y->q("SELECT clave, valor FROM config_sistema");
	$cfg = array();
	while (list($k, $v) = $y->fetch_array($res_cfg)) { $cfg[$k] = $v; }

	// Sincronizar montos de cargos PENDIENTES (estado = 0)
	// LÓGICA HÍBRIDA: El monto base es NO-RETROACTIVO (protege el pasado).
	// Los recargos son RETROACTIVOS (mantienen la mora al día para todos los años).
	$anio_actual = date('Y');
	$res_pend = $y->q("SELECT id_cargo, leyenda, categoria, repetido, anio, monto FROM vw_ligacargos_pendientes WHERE numcontrato='$numcontrato' AND categoria IN (2,3)");
	
	$actualizados = 0;
	$mora_actualizada = 0;
	while ($cp = $y->fetch_array($res_pend)) {
		$id_lc = $cp['id_cargo'];
		$monto_viva = floatval($cp['monto']);
		$leyenda = $cp['leyenda'];
		$cat = $cp['categoria'];
		$rep = $cp['repetido'];
		$anio_cargo = $cp['anio'];
		
		$res_cat = $y->q("SELECT monto, monto_comercial, metros, recargo FROM cargos WHERE nombre='$leyenda' AND categoria=$cat LIMIT 1");
		if ($y->num_rows($res_cat) > 0) {
			list($monto_n, $monto_c, $aplica_metros, $val_rec) = $y->fetch_array($res_cat);
			
			$monto_total = 0;
			$res_tomas = $y->q("SELECT tipo FROM contrato_toma WHERE numcontrato='$numcontrato' AND " . ($cat == 2 ? 'tiene_agua=1 AND estado_agua=1' : 'tiene_drenaje=1 AND estado_drenaje=1'));
			while ($t = $y->fetch_array($res_tomas)) {
				$es_com = ($t['tipo'] == 1);
				$m_base = ($es_com && $monto_c > 0) ? $monto_c : ($es_com ? $monto_n * 2 : $monto_n);
				$monto_total += $m_base;
			}
			
			
			// REGLA DE ORO: Solo actualizar el monto base si es del año actual o futuro
			if ($monto_total > 0 && $anio_cargo >= $anio_actual) {
				$y->q("UPDATE ligacargos SET monto=$monto_total WHERE id=$id_lc");
				$y->q("UPDATE ligacargos_historico SET monto=$monto_total WHERE id=$id_lc");
				$monto_viva = $monto_total; // El recargo se basará en el nuevo monto
				$actualizados++;
			}
			
			// SIEMPRE recalcular recargos asociados para mantener la deuda viva (Regla F05)
			calcula_recargos($numcontrato, $leyenda, $monto_viva, $val_rec, $anio_cargo, $cat, $rep, $y, $mescontrato, $cfg);
			$mora_actualizada++;
		}
	}
	
	if ($mora_actualizada > 0) {
		// Snapshot POST para auditoría
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
		$post = $y->fetch_array($res_post);
		$n_post  = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);
		$delta_m = floatval($post['total']) - floatval($pre['total']);
		$ajuste_txt = ($delta_m >= 0) ? "+$" . number_format($delta_m, 2) : "-$" . number_format(abs($delta_m), 2);

		$antes_txt   = "Adeudos: $n_pre | Deuda: \$$tot_pre";
		$despues_txt = "Adeudos: $n_post | Deuda: \$$tot_post | Ajuste Base: $ajuste_txt | $actualizados base recalibrados, $mora_actualizada moras procesadas por motor";
		
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Calibracion automatica de Deudas (Lógica Híbrida)', 
		       '$antes_txt', '$despues_txt', '$numcontrato')");
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

	// Sanitización estricta Poka-yoke para inputs de texto
	$id = trim(strip_tags((string)$id));
	$usr = trim(strip_tags((string)$usr));
	$domicilio = _normalizaDomicilio(strip_tags((string)$domicilio));
	$masdatos = trim(strip_tags((string)$masdatos));
	$observaciones = trim(strip_tags((string)$observaciones));
	$metros = intval($metros);

	$num_t = intval($num_tomas);
	if ($num_t < 1) $num_t = 1;

	// Validar restricción: máx 2 tomas por usuario mismo domicilio
	$dom_sql_c = _normalizaDomicilioSQL('c.domicilio');
	$dom_esc   = $y->real_escape_string($domicilio);
	$dom_sql_v = _normalizaDomicilioSQL("'$dom_esc'");
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_sql_c = $dom_sql_v AND c.estado != 4");
	list($tomas_existentes) = $y->fetch_array($res_count);

	if ($tomas_existentes + $num_t > 2) {
		return "<script>alert('Restriccion de Tomas: El usuario ya cuenta con $tomas_existentes toma(s) en el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio.'); window.history.back();</script>";
	}

	// Validar restricción: máx domicilios distintos por usuario (configurable)
	$max_dom = intval(obtenerValorSeguro($cfg, 'max_domicilios_por_contrato', 3));
	$res_doms = $y->q("SELECT COUNT(DISTINCT $dom_sql_c) FROM contrato c WHERE c.numusuario='$usr' AND c.estado != 4");
	list($doms_actuales) = $y->fetch_array($res_doms);
	// Verificar si el domicilio nuevo es realmente distinto a los existentes
	$res_dom_existe = $y->q("SELECT COUNT(*) FROM contrato c WHERE c.numusuario='$usr' AND $dom_sql_c = $dom_sql_v AND c.estado != 4");
	list($dom_ya_existe) = $y->fetch_array($res_dom_existe);
	if (!$dom_ya_existe && $doms_actuales >= $max_dom) {
		return "<script>alert('Restriccion de Domicilios: El usuario ya tiene $doms_actuales domicilio(s) registrado(s). El maximo permitido es $max_dom. Si se trata de un domicilio diferente, contacte al administrador.'); window.history.back();</script>";
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

	$dom_esc_vs  = $y->real_escape_string(_normalizaDomicilio($domicilio));
	$dom_sql_cvs = _normalizaDomicilioSQL('c.domicilio');
	$dom_sql_vvs = _normalizaDomicilioSQL("'$dom_esc_vs'");

	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_sql_cvs = $dom_sql_vvs AND c.estado != 4 " . $cond_id);
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

/**
 * Comprueba si un contrato era elegible para facturación en un año histórico
 * basándose en su estado auditado en la tabla de cambios.
 */
function _esContratoFacturableEnAnio($numcontrato, $anio, $conexion, $fecha_contrato) {
    $fecha_limite = "$anio-12-31 23:59:59";
    $res = $conexion->q("SELECT despues FROM cambios 
                         WHERE numcontrato = '$numcontrato' 
                           AND (descripcion LIKE 'Cambio de estado:%' OR descripcion = 'Cambio de estado de contrato')
                           AND fecha <= '$fecha_limite' 
                         ORDER BY fecha DESC, id DESC LIMIT 1");
    if ($conexion->num_rows($res) > 0) {
        list($despues_txt) = $conexion->fetch_array($res);
        if (preg_match('/estado.*?\[(-?1|[2-4])\]/i', $despues_txt, $matches)) {
            $estado_historico = intval($matches[1]);
            // Solo facturan los estados 1 (Activo) y 3 (Suspensión Administrativa)
            return ($estado_historico === 1 || $estado_historico === 3);
        }
    }
    $anio_creacion = intval(date('Y', strtotime($fecha_contrato)));
    return ($anio_creacion <= $anio);
}

function generaCargosAutomaticos($numcontrato, $y)
{
	// Configuración necesaria
	$res_cfg = $y->q("SELECT clave, valor FROM config_sistema");
	$cfg = array();
	while (list($k, $v) = $y->fetch_array($res_cfg)) {
		$cfg[$k] = $v;
	}

	// Snapshot PRE para auditoría
	$res_gca_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
	$gca_pre = $y->fetch_array($res_gca_pre);
	$gca_n_pre  = intval($gca_pre['n']);
	$gca_t_pre  = floatval($gca_pre['total']);
	$cargos_insertados = array();

	// Datos del contrato (incluyendo fecha completa para auditoría)
	$res_cto = $y->q("SELECT metros, fecha, MONTH(fecha) as mescontrato FROM contrato WHERE numcontrato='$numcontrato'");
	list($metros, $fecha_contrato, $mescontrato) = $y->fetch_array($res_cto);

	// Consultar tomas activas para calcular montos correctamente
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($n_tomas_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($n_tomas_drenaje) = $y->fetch_array($r_d);
	$r_tc = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
	list($es_comercial) = $y->fetch_array($r_tc);

	$anio_actual_fact = intval(date('Y'));
	$anio_inicio_fact = intval(date('Y', strtotime($fecha_contrato)));
	if ($anio_inicio_fact < 2006) $anio_inicio_fact = 2006; // Límite de seguridad de la BD

	$rescargos = $y->q("SELECT nombre, monto, monto_comercial, recargo, anio, categoria, repetir, metros FROM cargos WHERE estado=1 AND automatico=1 AND (anio = 0 OR (anio >= $anio_inicio_fact AND anio <= $anio_actual_fact)) ORDER BY nombre");

	while ($a = $y->fetch_array($rescargos)) {
		$leyenda    = $a['nombre'];
		$monto_n    = floatval($a['monto']);
		$monto_c    = floatval($a['monto_comercial']);
		$recargo    = $a['recargo'];
		$anio       = $a['anio'];
		$categoria  = $a['categoria'];
		$repetir    = $a['repetir'];
		$aplicametros = $a['metros'];

		// --- GUARD DE AUDITORÍA HISTÓRICA ---
		$anio_cargo_real = ($anio == "0") ? intval(date('Y')) : intval($anio);
		if ($anio_cargo_real > 0 && $anio_cargo_real < $anio_actual_fact) {
			if (!_esContratoFacturableEnAnio($numcontrato, $anio_cargo_real, $y, $fecha_contrato)) {
				continue; // El contrato no estaba activo, saltar generación de este cargo
			}
		}

		// --- NUEVO MODELO: Suma por Unidad de Toma ---
		$monto = 0;
		if ($categoria == 2 || $categoria == 3) {
			$res_tomas = $y->q("SELECT tipo FROM contrato_toma WHERE numcontrato='$numcontrato' AND " . ($categoria == 2 ? 'tiene_agua=1 AND estado_agua=1' : 'tiene_drenaje=1 AND estado_drenaje=1'));
			while ($t = $y->fetch_array($res_tomas)) {
				$es_com = ($t['tipo'] == 1);
				$m_base = ($es_com && $monto_c > 0) ? $monto_c : ($es_com ? $monto_n * 2 : $monto_n);
				$monto += $m_base;
			}
		} else {
			// Para otros cargos (multas, etc), se usa la lógica anterior de 'Max Tipo' si aplica, o tarifa base
			$r_tc = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
			list($es_com_max) = $y->fetch_array($r_tc);
			$monto = ($es_com_max == 1 && $monto_c > 0) ? $monto_c : (($es_com_max == 1) ? $monto_n * 2 : $monto_n);
		}

		if ($aplicametros == 1)
			$monto = $monto * $metros;
		
		if ($anio == "0")
			$anio = date('Y');

		$aplicar_cargo = ($monto > 0);
		// Si es agua/drenaje pero el monto dio 0 (sin tomas activas), no aplicar
		if (($categoria == 2 || $categoria == 3) && $monto == 0) $aplicar_cargo = false;

		if ($aplicar_cargo == true) {
			if ($repetir == 0) {
				$chk = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato' LIMIT 1");
				if ($y->num_rows($chk) == 0) {
					$tabla_dest = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos";
					$q = "INSERT INTO $tabla_dest (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, 0)";
					$y->q($q);
					$cargos_insertados[] = "$leyenda (\$$monto)";
				}
				calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, 0, $y, $mescontrato, $cfg);
			} else {
				$chk_rep = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato' AND anio=$anio LIMIT 1");
				if ($y->num_rows($chk_rep) == 0) {
					$resautomatico = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato'");
					list($cuenta) = $y->fetch_array($resautomatico);
					$tabla_dest = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos";
					$q = "INSERT INTO $tabla_dest (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, $cuenta)";
					$y->q($q);
					$cargos_insertados[] = "$leyenda (\$$monto)";
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg);
				} else {
					$resautomatico = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato'");
					list($cuenta) = $y->fetch_array($resautomatico);
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg);
				}
			}
		}
	}

	// Registrar en cambios si se insertaron cargos base nuevos
	if (count($cargos_insertados) > 0) {
		$res_gca_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
		$gca_post = $y->fetch_array($res_gca_post);
		$gca_n_post = intval($gca_post['n']);
		$gca_t_post = floatval($gca_post['total']);
		$delta_gca  = $gca_n_post - $gca_n_pre;
		$lista_esc  = $y->real_escape_string(implode(', ', $cargos_insertados));
		$pre_esc    = $y->real_escape_string("Adeudos: $gca_n_pre | Deuda: \$" . number_format($gca_t_pre, 2));
		$post_esc   = $y->real_escape_string("Adeudos: $gca_n_post | Deuda: \$" . number_format($gca_t_post, 2) . " | +$delta_gca cargos base insertados");
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
		       VALUES(NOW(), 'Facturacion automatica al reactivar',
		       '$pre_esc',
		       'Cargos nuevos: $lista_esc | $post_esc',
		       '$numcontrato')");
	}
}

/**
 * _getReversal() — Verifica si existe un REVERSAL_SNAPSHOT pendiente para el contrato
 * y si la deuda total >= $15,000. Retorna null si no aplica, o array con los datos
 * del snapshot para que la vista pueda mostrar el botón "Revertir transición".
 *
 * @param string $numcontrato
 * @param float  $deuda_total  Total pendiente ($total + $recargos) calculado en cargaContrato
 * @param object $y            Conexión activa
 * @return array|null
 */
function _getReversal($numcontrato, $deuda_total, $y)
{


	// Buscar el REVERSAL_SNAPSHOT más reciente no revertido para este contrato
	$res = $y->q("SELECT id, fecha, antes FROM cambios
	              WHERE numcontrato = '$numcontrato'
	                AND descripcion = 'REVERSAL_SNAPSHOT'
	                AND despues = 'PENDIENTE'
	              ORDER BY id DESC LIMIT 1");
	if ($y->num_rows($res) == 0) {
		return null;
	}
	$row = $y->fetch_array($res);

	// Verificar si es el movimiento más reciente de estado (para evitar reversas anacrónicas)
	$res_check = $y->q("SELECT id FROM cambios 
	                   WHERE numcontrato = '$numcontrato' 
	                     AND descripcion LIKE 'Cambio de estado:%' 
	                   ORDER BY id DESC LIMIT 1");
	$last_move = $y->fetch_array($res_check);
	if ($last_move && $last_move['id'] > $row['id']) {
		// Existe un cambio de estado posterior al snapshot
		return null;
	}

	$data = json_decode($row['antes'], true);
	if (!$data) {
		return null;
	}

	return array(
		'cambio_id'       => intval($row['id']),
		'fecha'           => $row['fecha'],
		'estado_origen'   => intval($data['estado_origen']),
		'estado_destino'  => intval($data['estado_destino']),
		'n_lc_nuevos'     => count($data['lc_ids_nuevos']),
		'n_hist_amnist'   => count($data['hist_ids_amnist']),
		'deuda_pre'       => floatval($data['deuda_pre']),
		'deuda_post'      => floatval($data['deuda_post'])
	);
}

/**
 * revertirTransicion() — Revierte el último cambio de estado usando el REVERSAL_SNAPSHOT.
 * Deshace exactamente lo que hizo cambiaestado():
 *  - Restaura contrato.estado al valor origen
 *  - Cancela los cargos generados (lc_ids_nuevos: estado=0 → estado=-1)
 *  - Restaura los cargos amnistiados (hist_ids_amnist: estado=-1 → estado=0)
 * Registra todo en cambios y marca el snapshot como REVERTIDO.
 */
function revertirTransicion($contrato)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$contrato = intval($contrato);

	// 1. Obtener el snapshot pendiente más reciente
	$res = $y->q("SELECT id, fecha, antes FROM cambios
	              WHERE numcontrato = '$contrato'
	                AND descripcion = 'REVERSAL_SNAPSHOT'
	                AND despues = 'PENDIENTE'
	              ORDER BY id DESC LIMIT 1");

	if ($y->num_rows($res) == 0) {
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Sin reversión disponible',
			'mensaje' => 'No existe una transición de estado pendiente de revertir para este contrato.'
		));
	}

	$row        = $y->fetch_array($res);
	$snap_id    = intval($row['id']);
	$data       = json_decode($row['antes'], true);

	if (!$data) {
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Error',
			'mensaje' => 'El snapshot de reversión está corrupto. Contacte al administrador.'
		));
	}

	$estado_origen     = intval($data['estado_origen']);
	$estado_destino    = intval($data['estado_destino']);
	$lc_ids_nuevos     = array_map('intval', (array)$data['lc_ids_nuevos']);
	$lc_ids_cancelados   = array_map('intval', (array)(isset($data['lc_ids_cancelados'])   ? $data['lc_ids_cancelados']   : array()));
	$hist_ids_amnist     = array_map('intval', (array)$data['hist_ids_amnist']);
	$hist_ids_nuevos_hist = array_map('intval', (array)(isset($data['hist_ids_nuevos_hist']) ? $data['hist_ids_nuevos_hist'] : array()));
	$tomas_pre           = (array)(isset($data['tomas_pre']) ? $data['tomas_pre'] : array());
	$serv_pre          = (isset($data['serv_pre']) ? $data['serv_pre'] : array('a' => 1, 'd' => 1));
	$deuda_pre         = floatval($data['deuda_pre']);
	$deuda_post        = floatval($data['deuda_post']);

	// Nombres de estado para la bitácora
	$nombres_estado = array(
		1 => 'ACTIVO', 2 => 'SUSPENSIÓN TEMPORAL',
		3 => 'SUSPENSIÓN ADMINISTRATIVA', 4 => 'SUSPENSIÓN DEFINITIVA'
	);
	$nom_origen  = isset($nombres_estado[$estado_origen])  ? $nombres_estado[$estado_origen]  : "ESTADO $estado_origen";
	$nom_destino = isset($nombres_estado[$estado_destino]) ? $nombres_estado[$estado_destino] : "ESTADO $estado_destino";

	// ── Snapshot financiero PRE-reversa ──────────────────────────────────────
	$res_snap = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato='$contrato'");
	$snap_pre = $y->fetch_array($res_snap);
	$n_pre_rev  = intval($snap_pre['n']);
	$tot_pre_rev = number_format(floatval($snap_pre['total']), 2);

	// ── 2. Restaurar estado del contrato y servicios ─────────────────────────
	$agua_pre = intval($serv_pre['a']);
	$dren_pre = intval($serv_pre['d']);
	$y->q("UPDATE contrato SET estado=$estado_origen, agua=$agua_pre, drenaje=$dren_pre WHERE numcontrato='$contrato'");

	// ── 3. Restaurar estado físico de las tomas ─────────────────────────────
	$n_tomas_rest = 0;
	if (!empty($tomas_pre)) {
		foreach ($tomas_pre as $tp) {
			$tid = intval($tp['id']);
			$tea = intval($tp['ea']);
			$ted = intval($tp['ed']);
			$y->q("UPDATE contrato_toma SET estado_agua=$tea, estado_drenaje=$ted WHERE id=$tid AND numcontrato='$contrato'");
			$n_tomas_rest++;
		}
	}

	// ── 4. Cancelar cargos generados por el cambio de estado ─────────────────
	$n_cancelados = 0;
	$n_paid = 0;
	if (!empty($lc_ids_nuevos)) {
		$ids_str = implode(',', $lc_ids_nuevos);
		
		// Verificar si alguno ya fue pagado
		$res_paid = $y->q("SELECT COUNT(*) FROM ligacargos WHERE numcontrato='$contrato' AND id IN ($ids_str) AND estado=1");
		list($n_paid) = $y->fetch_array($res_paid);

		$y->q("UPDATE ligacargos SET estado=-1 WHERE numcontrato='$contrato' AND id IN ($ids_str) AND estado=0");
		$n_cancelados = count($lc_ids_nuevos) - $n_paid;
	}

	// ── 5a. Restaurar cargos amnistiados en histórico (de -1 a 0) ───────────
	$n_restaurados = 0;
	if (!empty($hist_ids_amnist)) {
		$ids_hist_str = implode(',', $hist_ids_amnist);
		$y->q("UPDATE ligacargos_historico SET estado=0 WHERE numcontrato='$contrato' AND id IN ($ids_hist_str) AND estado=-1");
		$n_restaurados = count($hist_ids_amnist);
	}

	// ── 5b. Restaurar cargos cancelados por paridad en activa (de -1 a 0) ───
	$n_reactivados = 0;
	if (!empty($lc_ids_cancelados)) {
		$ids_cxl_str = implode(',', $lc_ids_cancelados);
		$y->q("UPDATE ligacargos SET estado=0 WHERE numcontrato='$contrato' AND id IN ($ids_cxl_str) AND estado=-1");
		$n_reactivados = count($lc_ids_cancelados);
	}

	// ── 5c. Cancelar recargos históricos nuevos (calcula_recargos anio<=2025) ─
	// Punto ciego anterior: calcula_recargos() inserta recargos cat 16/17 en
	// ligacargos_historico con estado=0 — no quedaban en lc_ids_nuevos (activa).
	$n_hist_cancelados = 0;
	if (!empty($hist_ids_nuevos_hist)) {
		$ids_hn_str = implode(',', $hist_ids_nuevos_hist);
		$y->q("UPDATE ligacargos_historico SET estado=-1 WHERE numcontrato='$contrato' AND id IN ($ids_hn_str) AND estado=0");
		$n_hist_cancelados = count($hist_ids_nuevos_hist);
	}

	// ── Snapshot financiero POST-reversa ─────────────────────────────────────
	$res_snap2 = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato='$contrato'");
	$snap_post = $y->fetch_array($res_snap2);
	$n_post_rev  = intval($snap_post['n']);
	$tot_post_rev = number_format(floatval($snap_post['total']), 2);

	// ── 6. Registrar en bitácora ──────────────────────────────────────────────
	$fecha_snap_esc = $y->real_escape_string($row['fecha']);
	$nom_orig_esc   = $y->real_escape_string($nom_origen);
	$nom_dest_esc   = $y->real_escape_string($nom_destino);
	
	$nota_pago = ($n_paid > 0) ? " | ¡AVISO! $n_paid cargos nuevos ya estaban pagados y NO se revirtieron." : "";

	$antes_rev = "Estado [$estado_destino] $nom_dest_esc. " .
	             "Adeudos: $n_pre_rev | Deuda: \$$tot_pre_rev. " .
	             "Revirtiendo transición del $fecha_snap_esc.";
	$despues_rev = "Estado [$estado_origen] $nom_orig_esc restaurado exactamente. " .
	               "Adeudos: $n_post_rev | Deuda: \$$tot_post_rev. " .
	               "Cargos nuevos cancelados: $n_cancelados. " .
	               "Recargos históricos cancelados: $n_hist_cancelados. " .
	               "Cargos amnistiados restaurados: $n_restaurados. " .
	               "Cargos de paridad reactivados: $n_reactivados. " .
	               "Tomas restauradas: $n_tomas_rest." . $nota_pago .
	               " | Deuda: \$" . number_format($deuda_post, 2) .
	               " → \$" . number_format($deuda_pre, 2) . " (deuda original).";


	$antes_esc   = $y->real_escape_string($antes_rev);
	$despues_esc = $y->real_escape_string($despues_rev);

	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
	       VALUES(NOW(), 'Reversión de Transición de Estado', '$antes_esc', '$despues_esc', '$contrato')");

	// ── 6. Marcar el snapshot como REVERTIDO ─────────────────────────────────
	$y->q("UPDATE cambios SET despues='REVERTIDO' WHERE id=$snap_id");

	return "<script>cargaDatosContrato('$contrato');</script>";
}

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

### Thinking

**Prioritizing Tool Specificity**

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.


**Refining Tool Usage**

I'm now emphasizing specific tools for viewing, finding, and replacing content, employing `cat`, `grep`, and `sed` respectively. I'm focusing on these tools and integrating the related tools for this specific task: `mcp_bdawa2host-c_query`, `read_file_content`, `replace_file_content`, and `run_command`. I'm also reviewing `includes/negocio/contratos.php`, specifically line 1343 and the code changes made before my commit. I'm noting the changes in the logic for selecting data based on the 'anio' column in the `cargos` table.




### Actions

**Tool:** `view_file`
**File:** `cargos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.131715261s
- **Model:** Gemini 3.1 Pro (High)
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
	$max_anios = intval(isset($cfg['paridad_anios_max_recargo']) ? $cfg['paridad_anios_max_recargo'] : 0);
	$ignorar_fantasma = intval(isset($cfg['paridad_ignorar_fpago_fantasma']) ? $cfg['paridad_ignorar_fpago_fantasma'] : 1);
	$umbral_bomba_enable = intval(isset($cfg['reversal_threshold_enable']) ? $cfg['reversal_threshold_enable'] : 0);
	$umbral_bomba = floatval(isset($cfg['reversal_threshold']) ? $cfg['reversal_threshold'] : 15000);

	// Guard G01: El flag recargo=0 en tabla cargos significa que el concepto no devenga mora
	if (intval($recargo) === 0) {
		return;
	}

	// Guard G02: Exclusión absoluta de cualquier categoría diferente de 2 (AGUA) o 3 (DRENAJE)
	if ($categoria != 2 && $categoria != 3) {
		return;
	}

	// EXENCIÓN RECARGOS PRIMER AÑO Y VALIDACIÓN DE ESTADO
	$res_exencion = $y->q("SELECT YEAR(fecha) as anio_creacion, exento_recargo_primer_anio, estado FROM contrato WHERE numcontrato='$numcontrato'");
	list($anio_creacion, $exento_recargo, $edo_cto) = $y->fetch_array($res_exencion);

	// REGLA F01 / SDF: No generar recargos si el contrato está en Suspensión Definitiva (estado 4)
	if (intval($edo_cto) === 4) {
		return;
	}
	// REGLA F01 / C06: No generar recargos en Suspensión Temporal (estado 2).
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

		$monto_recargo = ($monto * $porcentaje) / 100;

		$categoria_recargo = ($categoria == 2) ? $cat_agua : $cat_drenaje;

		// FILTRO: antigüedad máxima (Ventana Rotativa) — no generar recargos sobre deudas más viejas que N años
		if ($max_anios > 0 && $anio < ($anio_numero - $max_anios)) {
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

		// Validar si el cargo original ya está pagado
		$respagado = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato=$numcontrato AND estado=1");
		list($pagado) = $y->fetch_array($respagado);

		if ($pagado == 0) {
			// Cargar deuda actual de una sola vez
			$res_deuda = $y->q("SELECT IFNULL(SUM(monto),0) FROM vw_ligacargos_pendientes WHERE numcontrato='$numcontrato'");
			list($deuda_actual) = $y->fetch_array($res_deuda);
			$deuda_actual = floatval($deuda_actual);

			// OPTIMIZACIÓN EXTREMA / IDEMPOTENCIA O(1):
			// Obtener de un solo golpe TODOS los recargos generados previamente para este contrato y leyenda base
			$hash_recargos = [];
			$leyenda_esc = str_replace(['%', '_'], ['\%', '\_'], $y->real_escape_string($leyenda));
			$chk_rec_todos = $y->q("SELECT leyenda FROM vw_ligacargos_all WHERE numcontrato='$numcontrato' AND leyenda LIKE 'RECARGO % $leyenda_esc'");
			while ($row_rec = $y->fetch_array($chk_rec_todos)) {
				$hash_recargos[$row_rec['leyenda']] = true;
			}

			$batch_actual = [];
			$batch_historico = [];

			for ($i = 1; $i <= $meses; $i++) {
				if ($umbral_bomba_enable == 1 && $deuda_actual >= $umbral_bomba && $umbral_bomba > 0) {
					break; // Límite Bomba de Recargos alcanzado
				}
				$leyenda_recargo = "RECARGO $nom_meses[$mesrecargo] $aniorecargo - $leyenda";

				// Idempotencia O(1) usando el Hash Map en memoria
				if (!isset($hash_recargos[$leyenda_recargo])) {
					$insert_values = "('$numcontrato','$leyenda_recargo',$monto_recargo,CURDATE(),CURDATE(),0,0.00,0,$anio,NULL,NULL,$categoria_recargo,$cuenta)";
					
					if ($aniorecargo <= 2025) {
						$batch_historico[] = $insert_values;
					} else {
						$batch_actual[] = $insert_values;
					}
					$deuda_actual += $monto_recargo;
				}

				if (++$mesrecargo > 12) {
					$mesrecargo = 1;
					$aniorecargo++;
				}
			}

			// BATCH INSERT DUAL: Ejecutar inserciones agrupadas por tabla destino
			$fields = "(numcontrato,leyenda,monto,fcobro,fpago,estado,recargo,folio,anio,numcontratoresp,idpago_vinc,categoria,repetido)";
			
			if (count($batch_historico) > 0) {
				$q_hist = "INSERT INTO ligacargos_historico $fields VALUES " . implode(",", $batch_historico);
				if (!$y->q($q_hist)) {
					$y->_logFallback('ERROR_BATCH_HIST', $q_hist, "Falla Batch Historico Cto $numcontrato");
				}
			}

			if (count($batch_actual) > 0) {
				$q_act = "INSERT INTO ligacargos $fields VALUES " . implode(",", $batch_actual);
				if (!$y->q($q_act)) {
					$y->_logFallback('ERROR_BATCH_ACT', $q_act, "Falla Batch Actual Cto $numcontrato");
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
	$monto_e = number_format($ant['monto'], 2);
	$cat_e = $ant['categoria'];

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
	if (empty($estados))
		$estados = "0"; // Fallback to avoid empty IN clause
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
		$n_pre = intval($pre['n']);
		$tot_pre = number_format(floatval($pre['total']), 2);

		foreach ($pago as $ref => $val) {
			$lm = explode('|', $val);
			$id_cargoval = intval($lm[0]);
			$leyendaval = $lm[1];
			$monto_val = floatval($lm[2]);
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
				while ($row_sinc = $y->fetch_array($res_sinc))
					$ctos_sinc[] = $row_sinc['numcontrato'];
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
		$n_post = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);
		$cargos_liq = $n_pre - $n_post;
		$pre_esc = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");
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
		if (md5($rp) == $contrasena_presidente && md5($rt) == $contrasena_tesorero) {
			$cfg = cargaConfig($y);
			$min_car = intval(isset($cfg['cancelacion_min_caracteres']) ? $cfg['cancelacion_min_caracteres'] : 20);
			if (strlen($texto) > $min_car) {
				// ═══ Snapshot financiero PRE-cancelación ═══
				$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$idc'");
				$pre = $y->fetch_array($res_pre);
				$n_pre = intval($pre['n']);
				$tot_pre = number_format(floatval($pre['total']), 2);

				$x = "";
				foreach ($pago as $valor) {
					$lm = explode('|', $valor);
					$id_c_val = intval($lm[0]);
					$leyenda_esc = $y->real_escape_string($lm[1]);
					$monto_c = floatval($lm[2]);
					$rep_val = isset($lm[3]) ? intval($lm[3]) : 0;

					$res_id_act = $y->q("SELECT id, folio FROM ligacargos WHERE id = $id_c_val LIMIT 1");
					$res_id_his = $y->q("SELECT id, folio FROM ligacargos_historico WHERE id = $id_c_val LIMIT 1");
					$row_id = $y->fetch_array($res_id_act) ?: $y->fetch_array($res_id_his);
					$id_str = $row_id ? " [ID: {$row_id['id']}" . ($row_id['folio'] > 0 ? " | Folio: {$row_id['folio']}" : "") . "]" : " [ID: $id_c_val]";

					$y->q("CALL sp_cancelar_cargo($id_c_val, '$idc', '$leyenda_esc', $rep_val, @filas)");
					$x .= ((strlen($x) > 0) ? ", " : "") . $lm[1] . (($lm[3] == 0) ? "" : " (r$lm[3])") . " (\$" . $lm[2] . ")" . $id_str;
				}
				// Detección robusta de operador
				$ses_usr = isset($_SESSION['usuario']) ? $_SESSION['usuario'] : null;
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
				$n_post = intval($post['n']);
				$tot_post = number_format(floatval($post['total']), 2);
				$cargos_canc = $n_pre - $n_post;
				$monto_canc = number_format(floatval($pre['total']) - floatval($post['total']), 2);

				$texto_esc = $y->real_escape_string($texto);
				$x_esc = $y->real_escape_string($x);
				$pre_esc = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");
				$post_esc = $y->real_escape_string("Adeudos: $n_post | Deuda: \$$tot_post | Cancelados: $cargos_canc (-\$$monto_canc)");
				$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'cancelacion', '$texto_esc. $pre_esc', '$x_esc | $post_esc', '$idc')");
				return "<script>cargaDatosContrato('$idc');</script>";
			} else {
				return $templates->render('sistema/mensaje', [
					'titulo' => 'Error',
					'mensaje' => 'Debe escribir a detalle el porqu&eacute; de la cancelaci&oacute;n de estos cargos (m&iacute;nimo ' . $min_car . ' caracteres).'
				]);
			}

		} else {
			return $templates->render('sistema/mensaje', [
				'titulo' => 'Error',
				'mensaje' => 'Las contrase&ntilde;as no son las correctas.'
			]);
		}
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

			$es_libre = false;
			if (strpos($leyenda, '(LIBRE)') !== false) {
				$es_libre = true;
				$leyenda = trim(str_replace('(LIBRE)', '', $leyenda));
			}

			// Lógica de multiplicación por toma y tipo (Normal/Comercial)
			if (!$es_libre) {
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
			}

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

			// POKA-YOKE FINANCIERO: Bloquear duplicidad manual de anualidades ya asignadas o pagadas
			// Excepción: conceptos (LIBRE) con repetir=1 son repetibles por diseño (monto variable por caso)
			if ($aplicar_cargo && ($categoria == 2 || $categoria == 3) && !($es_libre && $repetir == 1)) {
				$res_f = $y->q("SELECT id_cargo FROM vw_ligacargos_all WHERE numcontrato='$numcontrato' AND leyenda='$leyenda' AND estado >= 0 LIMIT 1");
				if ($y->num_rows($res_f) > 0) {
					$aplicar_cargo = false;
					$alertas[] = "El contrato <b>$numcontrato</b> ya cuenta con el cargo <b>$leyenda</b> (Activo/Pagado).";
				}
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
		foreach ($cargo as $l_in) {
			$a_l = explode('|', $l_in);
			$lista_labels[] = $a_l[0];
		}
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
	$leyenda = strtoupper(trim(strip_tags((string) $leyenda)));
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

	// VALIDACIÓN DE PALABRAS PERMITIDAS EN ANUALIDADES (CATEGORÍAS 2 Y 3 CON AÑO > 0)
	if (($cat === 2 || $cat === 3) && $aniocobro > 0) {
		$palabras_validas = ['ANUALIDAD', 'ANULIDAD', 'AGUA', 'DRENAJE', 'ALCANTARILLADO', 'TIPO', 'C', 'COMERCIAL', '2DA', '2A', '2ª', 'SEGUNDA', 'TOMA', 'DESCARGA', 'DEL', 'DE', 'Y', 'EL', 'LA', 'AL'];
		
		// Limpiar y separar en palabras individuales
		$leyenda_limpia = preg_replace('/[^A-Z0-9\s]/', ' ', strtoupper($leyenda));
		$palabras = array_filter(explode(' ', $leyenda_limpia));
		
		foreach ($palabras as $palabra) {
			$palabra = trim($palabra);
			if ($palabra === '') continue;
			
			// Si no es un número (año) y tiene más de 2 caracteres, debe estar en la lista permitida
			if (!is_numeric($palabra) && strlen($palabra) > 2) {
				if (!in_array($palabra, $palabras_validas)) {
					return $templates->render('sistema/mensaje', [
						'titulo' => 'Error de Validación',
						'mensaje' => "No se pudo crear el cargo. El nombre contiene el término no permitido: <b>$palabra</b>.<br>Para cargos anuales de Agua/Drenaje, solo se permiten términos oficiales (Anualidad, Agua, Drenaje, Comercial, Toma, Descarga).<br><br><a href='javascript:history.back();' style='display:inline-block; padding:8px 16px; background:#0674B7; color:#fff; text-decoration:none; border-radius:4px; margin-top:10px;'>Volver</a>"
					]);
				}
			}
		}
	}

	// NORMALIZACIÓN POKA-YOKE DE ANUALIDADES (CATEGORÍAS 2 Y 3 CON AÑO > 0)
	if (($cat === 2 || $cat === 3) && $aniocobro > 0) {
		$es_comercial = (strpos($leyenda, 'TIPO (C)') !== false || strpos($leyenda, 'TIPO C') !== false || strpos($leyenda, 'COMERCIAL') !== false || strpos($leyenda, 'TIPO(C)') !== false);
		$es_segunda = (strpos($leyenda, '2DA') !== false || strpos($leyenda, '2ª') !== false || strpos($leyenda, 'SEGUNDA') !== false);

		if ($cat === 2) {
			if ($es_segunda) {
				$leyenda = "ANUALIDAD DE AGUA $aniocobro (2DA. TOMA)";
			} elseif ($es_comercial) {
				$leyenda = "ANUALIDAD DEL AGUA $aniocobro TIPO (C)";
			} else {
				$leyenda = "ANUALIDAD DEL AGUA $aniocobro";
			}
		} elseif ($cat === 3) {
			if ($es_segunda) {
				$leyenda = "ANUALIDAD DEL DRENAJE $aniocobro (2DA. DESCARGA)";
			} elseif ($es_comercial) {
				$leyenda = "ANUALIDAD DEL DRENAJE $aniocobro TIPO (C)";
			} else {
				$leyenda = "ANUALIDAD DEL DRENAJE $aniocobro";
			}
		}
	}

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
	if ($cat !== 2 && $cat !== 3)
		$flag_recargo = 0;

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
	$leyenda = strtoupper(trim(strip_tags((string) $leyenda)));
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

	// VALIDACIÓN DE PALABRAS PERMITIDAS EN ANUALIDADES (CATEGORÍAS 2 Y 3 CON AÑO > 0)
	if (($cat === 2 || $cat === 3) && $aniocobro > 0) {
		$palabras_validas = ['ANUALIDAD', 'ANULIDAD', 'AGUA', 'DRENAJE', 'ALCANTARILLADO', 'TIPO', 'C', 'COMERCIAL', '2DA', '2A', '2ª', 'SEGUNDA', 'TOMA', 'DESCARGA', 'DEL', 'DE', 'Y', 'EL', 'LA', 'AL'];
		
		// Limpiar y separar en palabras individuales
		$leyenda_limpia = preg_replace('/[^A-Z0-9\s]/', ' ', strtoupper($leyenda));
		$palabras = array_filter(explode(' ', $leyenda_limpia));
		
		foreach ($palabras as $palabra) {
			$palabra = trim($palabra);
			if ($palabra === '') continue;
			
			// Si no es un número (año) y tiene más de 2 caracteres, debe estar en la lista permitida
			if (!is_numeric($palabra) && strlen($palabra) > 2) {
				if (!in_array($palabra, $palabras_validas)) {
					return $templates->render('sistema/mensaje', [
						'titulo' => 'Error de Validación',
						'mensaje' => "No se pudo modificar el cargo. El nombre contiene el término no permitido: <b>$palabra</b>.<br>Para cargos anuales de Agua/Drenaje, solo se permiten términos oficiales (Anualidad, Agua, Drenaje, Comercial, Toma, Descarga).<br><br><a href='javascript:history.back();' style='display:inline-block; padding:8px 16px; background:#0674B7; color:#fff; text-decoration:none; border-radius:4px; margin-top:10px;'>Volver</a>"
					]);
				}
			}
		}
	}

	// NORMALIZACIÓN POKA-YOKE DE ANUALIDADES (CATEGORÍAS 2 Y 3 CON AÑO > 0)
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

### Thinking

**Prioritizing Tool Specificity**

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.


**Refining Tool Usage**

I'm now integrating specialized tools for each function: `cat` for viewing, `grep` for finding, and `sed` for replacing. This aligns with the necessary tools for the task at hand: `mcp_bdawa2host-c_query`, `read_file_content`, `replace_file_content`, and `run_command`. I'm also now analyzing the commit `b30ab80`, as it looks like I may have found an issue around historical base charges being missed!


**Analyzing Host B's Data**

Okay, I see the core issue now. Host B's query in `core.php` line 337 only selects active charges (`estado=1`). This means that debts with `estado=0` are naturally skipped by `generaCargosAutomaticos`, resulting in missing debts, as the user stated! I'm now checking the `git log` for `includes/negocio/contratos.php` around the May 23 - June 14 timeframe, looking for changes, specifically around any adjustments to the `anio` condition which may explain the missed debts. It's likely related to this condition: `anio = $anio_actual`.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.634857013s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:41 am

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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.056068124s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:42 am

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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.076294178s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:42 am

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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.000915733s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:42 am

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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.000423318s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:42 am

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

**Prioritizing Specialized Tools**

I'm focused on emphasizing the use of specific, purpose-built tools. Avoiding bash alternatives like `cat` for file operations is key. I'm prioritizing specialized alternatives like `grep_search`. I'm also avoiding the generic use of `ls`, `cat`, and `grep`, as well as `sed`, to keep things focused.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.035431490s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:42 am

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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.014746179s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:43 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.


**Refining Tool Usage**

I'm now prioritizing `cat` strictly for viewing, `grep` for finding, and `sed` for replacing. I've also identified related tools like `mcp_bdawa2host-c_query`, `read_file_content`, `replace_file_content`, and `run_command` as crucial for the task at hand. I'm focusing on the code change in `contratos.php` that addresses cargo generation, specifically Rule C06. This involves an update regarding automatic charges and ensuring proper handling of valid contract dates and amnesties.


**Analyzing Date Logic Flaws**

I'm now zeroing in on a critical date-related flaw. The update restricted cargo generation to the current year and generics, completely ignoring historical missing charges. The subsequent "fix," introduced a hard-coded 2006 limit, which is problematic and likely incorrect. I need to understand this `anio_inicio_fact` calculation and why it was implemented this way, and understand the logic behind this limit.




### Actions

**Tool:** `mcp_bdawa2host-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.430034569s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 23 June 2026, 10:43 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.016294500s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:43 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.070170281s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:43 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.


**Refining Tool Usage**

I'm now carefully selecting tools for each specific task. I'm focusing on using `cat` strictly for viewing file contents. I'm leveraging `grep` for finding specific patterns, and using `sed` for file content replacements. Crucially, I'm integrating tools like `mcp_bdawa2host-c_query`, `read_file_content`, `replace_file_content`, and `run_command` directly for related tasks. I've realized the critical implications of the `estado` filter in charge generation.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.529617871s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 10:43 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.


**Analyzing Database State**

I'm now analyzing the database state, specifically the `cargos` table and the `estado` field. The inconsistency of the `estado` values across different years is striking. I see years with `estado=1` like 2005, 2008(1), and 2012(1) mixed with `estado=0` years like 2000-2004 and others. The JIT engine relies on `estado=1 AND automatico=1`, which leads to the current "bolas de nieve" issue where it skips calculations for years marked as disabled. I'm focusing on the root cause: operator choices. Related tools I'll need are `mcp_bdawa2host-c_query`, `read_file_content`, `replace_file_content`, and `run_command`. I intend to focus on `cat` for viewing files, `grep` for finding specific information, and `sed` for replacing text.


**Investigating Charge Generation**

I'm now investigating charge generation logic and its historical impact. I've found that commit `1e86ad6` in April 2026 disabled historical charge generation, creating parity gaps between systems. On June 15, commit `b30ab80` tried to restore it, adding a hardcoded limit of 2006, which wasn't the root cause. This hardcoded limit masks database flags. The fix involves removing this hardcode in `contratos.php`, and enabling generation from `$anio_inicio_fact`.




### Actions

**Tool:** `view_file`
**File:** `01_normalizar_catalogo.sql`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.289958447s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 01_normalizar_catalogo.sql - Parche para Normalización Integral de Catálogo de Cargos (2006-2026)
-- =============================================================================
USE `awa`;

-- 1. Eliminar cargos duplicados o redundantes para evitar violaciones de la Unique Key uk_nombre_anio
DELETE FROM cargos WHERE numconsec IN (
    494, 493, 501,                                 -- 2017
    449, 437, 450, 438, 451, 452,                  -- 2016
    394, 395,                                      -- 2014
    341, 377, 354, 359, 342, 379, 378, 352, 353, 358, -- 2013
    294, 297, 308, 306, 314, 307,                  -- 2012
    273, 272, 365, 275, 230, 221, 220, 191, 104, 232, -- 2011
    142, 148, 178, 211, 231, 364, 150, 172, 173, 146, -- 2010
    124, 362,                                      -- 2009
    82,                                            -- 2008
    78, 361,                                       -- 2007
    20, 360                                        -- 2006
);

-- 2. Limpieza de espacios en blanco generales
UPDATE cargos SET nombre = TRIM(REPLACE(nombre, '  ', ' ')) WHERE categoria IN (2, 3);
UPDATE cargos SET nombre = TRIM(nombre) WHERE categoria IN (2, 3);

-- 3. Sanitizar Nombres de Anualidades de Agua (Categoría 2)
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2026' WHERE nombre = 'ANUALIDAD DEL AGUA 2026' AND anio = 2026;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2025' WHERE nombre = 'ANUALIDAD DEL AGUA 2025' AND anio = 2025;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2024' WHERE nombre = 'ANUALIDAD DEL AGUA 2024' AND anio = 2024;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2023' WHERE nombre = 'ANUALIDAD DEL AGUA 2023' AND anio = 2023;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2022' WHERE nombre = 'ANUALIDAD DEL AGUA 2022' AND anio = 2022;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2021' WHERE nombre = 'ANUALIDAD DEL AGUA 2021' AND anio = 2021;

-- 2020
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2020' WHERE nombre = 'ANUALIDAD DEL AGUA 2020' AND anio = 2020;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2020 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL AGUA  TIPO (C) 2020' OR nombre = 'ANULIDAD DEL AGUA 2020 TIPO (C)' OR nombre = 'ANUALIDAD DEL AGUA 2020 TIPO (C)';

-- 2019
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2019' WHERE nombre = 'ANUALIDAD DEL AGUA 2019' AND anio = 2019;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2019 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL AGUA 2019 TIPO C' AND anio = 2019;

-- 2018
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2018' WHERE nombre = 'ANUALIDAD DEL AGUA 2018' AND anio = 2018;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2018 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL AGUA 2018 TIPO (C)' AND anio = 2018;

-- 2017
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2017' WHERE (nombre = 'ANUALIDAD DE AGUA 2017 2017' OR nombre = 'ANUALIDAD DEL AGUA 2017') AND anio = 2017;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2017 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL AGUA 2017 TIPO (C)' AND anio = 2017;

-- 2016
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2016' WHERE (nombre = 'ANUALIDAD DEL AGUA  2016' OR nombre = 'ANUALIDAD DEL AGUA 2016') AND anio = 2016;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2016 TIPO (C)' WHERE (nombre = 'ANUALIDAD DEL AGUA  TIPO (C) 2016' OR nombre = 'ANUALIDAD DEL AGUA 2016 TIPO (C) 2015') AND anio = 2016;

-- 2015
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2015' WHERE nombre = 'ANUALIDAD DEL AGUA AÑO 2015' AND anio = 2015;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2015 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL AGUA AÑO 2015 TIPO (C)' AND anio = 2015;

-- 2014
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2014' WHERE (nombre = 'ANUALIDAD DEL AGUA 2014 2014' OR nombre = 'ANUALIDAD DEL AGUA 2014') AND anio = 2014;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2014 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL AGUA 2014 (TIPO C)' AND anio = 2014;

-- 2013
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2013' WHERE (nombre = 'AGUA POTABLE AÑO 2013' OR nombre = 'AGUA POTABLE ANUAL 2013' OR nombre = 'ANUALIDAD DEL AGUA 2013') AND anio = 2013;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2013 TIPO (C)' WHERE (nombre = 'AGUA POTABLE 2013 TIPO C' OR nombre = 'ANUALIDAD DEL AGUA 2013 (TIPO C)' OR nombre = 'PAGO ANUAL DEL AGUA DEL AÑO 2013 (C)') AND anio = 2013;

-- 2012
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2012' WHERE (nombre = 'AGUA POTABLE AÑO 2012' OR nombre = 'ANUALIDAD DEL  AGUA 2012' OR nombre = 'ANUALIDAD DEL AGUA 2012' OR nombre = 'ANUALIDAD DELAGUA POTALE 2012') AND anio = 2012;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2012 TIPO (C)' WHERE (nombre = 'AGUA POTABLE 2012 TIPO C' OR nombre = 'AGUA POTABLE ANUALIDAD 2012' OR nombre = 'ANUALIDAD DEL AGUA 2012 TIPO (C)') AND anio = 2012;

-- 2011
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2011' WHERE (nombre = 'ANUALIDAD DEL SERVICIO DE AGUA 2011' OR nombre = 'AGUA POTABLE 2011' OR nombre = 'AGUA POTABLE ANUALIDAD 2011' OR nombre = 'PAGO ANUAL DEL AGUA 2011' OR nombre = 'PAGO ANUAL DEL SERVICIO DE AGUA 2011' OR nombre = 'ANUALIDAD DEL AGUA 2011') AND anio = 2011;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2011 TIPO (C)' WHERE (nombre = 'AGUA POTABLE ANUALIDAD 2011 TIPO (C)' OR nombre = 'ANUALIDAD AGUA 2011 TIPO C' OR nombre = 'TARIFA FAMILIAR AGUA 2011' OR nombre = 'TIPO (C) AGUA 2011') AND anio = 2011;

-- 2010
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2010' WHERE (nombre = 'AGUA ANUAL DEL AÑO 2010' OR nombre = 'AGUA POTABLE 2010' OR nombre = 'AGUA POTABLE ANUALIDAD 2010') AND anio = 2010;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2010 TIPO (C)' WHERE (nombre = 'AGUA POTABLE AÑO 2010 TIPO (C)' OR nombre = 'AGUA POTABLE AÑO 2010 TIPO(C' OR nombre = 'AGUA POTABLE AÑOA 2010 TIPO (C)' OR nombre = 'TARIFA COMERCIAL AGUA 2010 (C)' OR nombre = 'TARIFA FAMILIAR AGUA 2010') AND anio = 2010;

-- 2009
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2009' WHERE (nombre = 'AGUA POTABLE 2009' OR nombre = 'AGUA POTABLE ANUALIDAD 2009') AND anio = 2009;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2009 TIPO (C)' WHERE (nombre = 'AGUA POTABLE AÑO 2009 TIPO (C)' OR nombre = 'TARIFA FAMILIAR AGUA 2009') AND anio = 2009;

-- 2008
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2008' WHERE (nombre = 'AGUA POTABLE AÑO 2008' OR nombre = 'ANUALIDAD DEL AGUA 2008') AND anio = 2008;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2008 TIPO (C)' WHERE (nombre = 'AGUA POTABLE AÑO 2008 TIPO (C)' OR nombre = 'TARIFA FAMILIAR AGUA 2008') AND anio = 2008;

-- 2007
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2007' WHERE (nombre = 'AGUA POTABLE 2007' OR nombre = 'AGUA POTABLE AÑO 2007' OR nombre = 'ANUALIDAD DEL AGUA 2007') AND anio = 2007;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2007 TIPO (C)' WHERE (nombre = 'AGUA POTABLE AÑO 2007 TIPO(C)' OR nombre = 'TARIFA FAMILIAR AGUA 2007') AND anio = 2007;

-- 2006
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2006' WHERE (nombre = 'AGUA POTABLE 2006' OR nombre = 'ANUALIDAD DEL AGUA 2006') AND anio = 2006;
UPDATE cargos SET nombre = 'ANUALIDAD DEL AGUA 2006 TIPO (C)' WHERE (nombre = 'TARIFA FAMILIAR AGUA 2006') AND anio = 2006;


-- 4. Sanitizar Nombres de Anualidades de Drenaje (Categoría 3)
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2026' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2026' AND anio = 2026;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2025' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2025' AND anio = 2025;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2024' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2024' AND anio = 2024;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2023' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2023' AND anio = 2023;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2022' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2022' AND anio = 2022;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2021' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2021' AND anio = 2021;

-- 2020
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2020' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2020' AND anio = 2020;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2020 (2DA. DESCARGA)' WHERE (nombre = 'anualidad de drenaje 2020 2da. descarga' OR nombre = 'ANUALIDAD DEL DRENAJE 2020 2DA. DESCARGA') AND anio = 2020;

-- 2019
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2019' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2019' AND anio = 2019;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2019 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2019 TIPO C' AND anio = 2019;

-- 2018
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2018' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2018' AND anio = 2018;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2018 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2018 TIPO (C)' AND anio = 2018;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2018 (2DA. DESCARGA)' WHERE (nombre = 'ANUALIDAD DE DRENAJE 2018 2DA. DESCARGA' OR nombre = 'ANUALIDAD DEL DRENAJE 2018 2DA. DESCARGA') AND anio = 2018;

-- 2017
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2017' WHERE (nombre = 'ANUALIDAD DEL DRENAJE 2017 2017' OR nombre = 'ANUALIDAD DEL DRENAJE 2017') AND anio = 2017;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2017 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2017 TIPO (C)' AND anio = 2017;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2017 (2DA. DESCARGA)' WHERE (nombre = 'ANUALIDAD 2DA. DESCARGA DE DRENAJE 2017' OR nombre = 'ANUALIDAD DEL DRENAJE 2017 (2DA. DESCARGA)') AND anio = 2017;

-- 2016
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2016' WHERE nombre = 'ANUALIDAD DEL DRENAJE 2016' AND anio = 2016;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2016 TIPO (C)' WHERE (nombre = 'ANUALIDAD DEL DRENAJE  TIPO (C) 2016' OR nombre = 'ANUALIDAD DEL DRENAJE 2016 TIPO (C)') AND anio = 2016;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2016 (2DA. DESCARGA)' WHERE nombre = '2DA DESCARGA DE DRENAJE 2016' AND anio = 2016;

-- 2015
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2015' WHERE nombre = 'ANUALIDAD DEL DRENAJE AÑO 2015' AND anio = 2015;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2015 TIPO (C)' WHERE nombre = 'ANUALIDAD DEL DRENAJE AÑO 2015 TIPO (C)' AND anio = 2015;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2015 (2DA. DESCARGA)' WHERE nombre = '2DA DESCARGA DE DRENAJE AÑO 2015' AND anio = 2015;

-- 2014
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2014' WHERE (nombre = 'ANUALIDAD DEL DRENAJE 2014 2014' OR nombre = 'ANUALIDAD DEL DRENAJE 2014') AND anio = 2014;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2014 (2DA. DESCARGA)' WHERE nombre = '2DA DESCARGA DE DRENAJE 2014' AND anio = 2014;

-- 2013
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2013' WHERE (nombre = 'ALCANTARILLADO AÑO 2013.' OR nombre = 'ANUALIDAD DEL DRENAJE DEL AÑO 2013' OR nombre = 'DRENAJE ANUAL AÑO 2013' OR nombre = 'ANUALIDAD DEL DRENAJE 2013') AND anio = 2013;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2013 TIPO (C)' WHERE (nombre = 'ALCANTARILLADO 2013 TIPO C' OR nombre = 'ANUALIDAD DEL DRENAJE 2013 TIPO C.' OR nombre = 'PAGO ANUAL DE ALCANTARILLADO AÑO 2013 (C)') AND anio = 2013;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2013 (2DA. DESCARGA)' WHERE (nombre = 'ALCANTARILLADO 2013 (2DA DESCARGA)' OR nombre = 'DRENAJE ANUAL 2013 (2DA. DESCARGA)') AND anio = 2013;

-- 2012
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2012' WHERE (nombre = 'ALCANTARILLADO AÑO 2012' OR nombre = 'ANUALIDAD DEL DRENAJE 2012') AND anio = 2012;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2012 TIPO (C)' WHERE (nombre = 'ALCANTARILLADO 2012 TIPO C') AND anio = 2012;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2012 (2DA. DESCARGA)' WHERE (nombre = '2DA DESCARGA DE DRENAJE 2012.' OR nombre = 'ALCANTARILLADO 2012 (2DA DESCARGA)') AND anio = 2012;

-- 2011
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2011' WHERE (nombre = 'ALCANTARILLADO AÑO 2011' OR nombre = 'ANUALIDAD DEL DRENAJE 2011') AND anio = 2011;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2011 TIPO (C)' WHERE (nombre = 'ALCANTARILLADO AÑO 2011 TIPO (C)') AND anio = 2011;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2011 (2DA. DESCARGA)' WHERE (nombre = 'ALCANTARILLADO AÑO 2011 (2ª DESCARGA)' OR nombre = 'ALCANTARILLADO 2011(2º DESCARGA)') AND anio = 2011;

-- 2010
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2010' WHERE (nombre = 'ALCANTARILLADA DEL AÑO 2010' OR nombre = 'ALCANTARILLADO AÑO   2010' OR nombre = 'ALCANTARILLADO AÑO 2010') AND anio = 2010;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2010 TIPO (C)' WHERE (nombre = 'ALCANTARILLADO AÑO 2010 COMERCIAL TIPO (C)' OR nombre = 'ALCANTARILLADO AÑO 2010 TIPO (C)' OR nombre = 'ALCANTARILLDO 2010 TIPO COMERCIAL') AND anio = 2010;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2010 (2DA. DESCARGA)' WHERE (nombre = 'ALCANTARILLADO AÑO 2010 (2ª DESCARGA)') AND anio = 2010;

-- 2009
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2009' WHERE (nombre = 'ALCANTARILLADO AÑO 2009') AND anio = 2009;

-- 2008
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2008' WHERE (nombre = 'ALCANTARILLADO AÑO 2008') AND anio = 2008;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2008 TIPO (C)' WHERE (nombre = 'TARIFA FAMILIAR ALCANTARILLADO 2008') AND anio = 2008;

-- 2007
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2007' WHERE (nombre = 'ALCANTARILLADO AÑO 2007') AND anio = 2007;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2007 TIPO (C)' WHERE (nombre = 'TARIFA FAMILIAR ALCANTARILLADO 2007') AND anio = 2007;

-- 2006
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2006' WHERE (nombre = 'ALCANTARILLADO AÑO 2006') AND anio = 2006;
UPDATE cargos SET nombre = 'ANUALIDAD DEL DRENAJE 2006 TIPO (C)' WHERE (nombre = 'TARIFA FAMILIAR ALCANTARILLADO 2006') AND anio = 2006;

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

### Thinking

**Prioritizing Tool Specificity**

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.


**Refining Tool Usage**

I'm now refining tool usage; `cat` for viewing, `grep` for finding, and `sed` for replacing is the new mantra. Related tools for the task are: `mcp_bdawa2host-c_query`, `read_file_content`, `replace_file_content`, and `run_command`. The `01_normalizar_catalogo.sql` script cleaned names and duplicates but didn't update `estado = 1`. I will determine if we should update `estado = 1` for relevant entries. The user's request focuses on analyzing "torcidas lineas," identifying impacts, and ensuring a stable solution to a growing bug issue that is leading to new bugs.


**Clarifying Bug Timeline**

I'm now clarifying the timeline of the "líneas torcidas" bug. Legacy Host B silently ignored old debts due to `estado=0`. V2 March 14 inherited the bug. The "fix" on April 23 introduced a massive regression, killing historical debt generation. June 15 tried to fix April 23, but it was incorrect. The code changes need to be made in the PHP files.


**Isolating the Root Cause**

I'm isolating the root cause by examining the PHP files, specifically `includes/negocio/contratos.php`. I have zeroed in on line 1341, where a hardcoded 2006 limit exists for `anio_inicio_fact`. I'm going to remove this hardcode, replacing it with a dynamic limit based on the configuration of the rotating debt engine (if applicable). Otherwise, I'll allow the system to naturally regulate the generation using the catalog and the change history. This should solve the issue.




### Actions

**Tool:** `grep_search`
**Query:** `2006`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 7.083021265s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 June 2026, 10:44 am

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 95cd3afb-e633-4867-ab82-e080dc81ed68: Verifying Aguav2 Mora Engine
- Created: 2026-06-20T16:44:18Z
- Last modified: 2026-06-23T07:05:02Z

### USER Objective:
Reconciling Historical Surcharge Engine

Objective: Eliminate the parity gap and stabilize the JIT surcharge calculation engine on Host C to create a reliable, audit-ready financial system.

Goals:
1. Identify and remove hardcoded date thresholds (e.g., the 2006 limit) currently suppressing historical debt generation.
2. Synchronize the Host C JIT motor with the production database by forcing correct execution flows in `contratos.php` and `cargos.php`.
3. Stabilize the financial calculation output by configuring the "Mora Rotativa" limits (10-year window/Bomba threshold) to prevent runaway debt totals.
4. Perform final validation to ensure that all 27 years of historical records are correctly processed and reflected in the user interface without system timeouts or data corruption.

## Conversation 41b07588-7f6a-4d9e-aae7-f48df7d15e55: Restoring Historical Surcharge Plan
- Created: 2026-06-19T17:34:28Z
- Last modified: 2026-06-20T05:14:37Z

### USER Objective:
Finalizing Mora Engine Audit

**USER Objective:**
Finalize the architectural reconciliation and audit readiness of the 20-year rotational mora engine on Host C to ensure a Single Source of Truth.

**Goals:**
1. Execute the final normalization and structural integrity fixes across the Host C database environment.
2. Finalize documentation (`PLAN_MORA_ROTATIVA_20_ANIOS.md` and `VERIFICACION_MANUAL_MORA_20_ANIOS.md`) as authoritative guides for production deployment.
3. Quantify financial gaps and reconcile differences between legacy Host B and Host C to prove accuracy in historical surcharge calculations and debt base validity.
4. Align administrative audit tools (`comparativa_mora.php`) to the new V2 JIT motor logic to support financial reporting and decision-making by the water committee.

## Conversation 68c13890-5673-4043-8ab3-ef3fd55a487d: Expanding Historical Mora Calculations
- Created: 2026-06-19T01:43:46Z
- Last modified: 2026-06-19T06:57:46Z

### USER Objective:
Optimizing Historical Surcharge Engine

USER Objective:
Refactor the JIT surcharge engine to handle multi-decadal debt calculations (2005–2026) using a 10-year rotational window and Batch Insert/Auto-Heal architecture without destructive database deletions.

Goals:
1. Implement a Batch Insert pattern in `calcula_recargos()` to optimize performance and prevent timeouts.
2. Refactor the JIT motor to use a rolling 10-year window that dynamically omits older records from active calculation without deleting them from the database.
3. Integrate an "Acordeón Visual" UI strategy in `adeudo_tabla.php` to allow flexible, fraccionado payment of historical surcharges while maintaining a clean administrative interface.
4. Update `configuracion.php` to provide dynamic synchronization between the mora catalog and the 10-year threshold.
5. Investigate and resolve the parity discrepancy between Host B and Host C regarding surcharge counts (e.g., Contract 161) by auditing the view definitions and JIT
<truncated 22 bytes>

## Conversation 62cf2a4a-a2b1-4ede-9f66-88c4e6b9937b: Mora aguav2 - todos los años.
Realiza prueba de conectividad via mcp y mysql client.
Insumos: Usa G
<truncated 1031 bytes>
- Created: 2026-06-19T01:36:53Z
- Last modified: 2026-06-19T01:40:28Z

## Conversation 8a2778b8-300b-46e8-9020-16cf387f47c8: Financial Audit Reconciliation Tool
- Created: 2026-06-18T01:04:14Z
- Last modified: 2026-06-18T20:12:13Z

### USER Objective:
Auditing Surcharge Logic Parity

USER Objective:
Finalize the forensic audit and validation of the V2 motor's surcharge logic to ensure data parity between the legacy Host B and the current Host C environment.

Goals:
1. Verify the accuracy of historical surcharge generation against legacy benchmarks to confirm Host C acts as a true, audit-ready Single Source of Truth.
2. Validate the behavior of the "Just-in-Time" surcharge calculation engine regarding contract state transitions and configuration adjustments.
3. Consolidate technical findings and business rules into the official project documentation (`matriz_mora_host_b_vs_c.md`) to inform the finance committee of systemic protections and automated safeguards.
4. Maintain strict "Poka-Yoke" architectural integrity, ensuring no unauthorized service charges generate interest, while preserving the system's ability to handle contract re-activation scenarios securely.

## Conversation 3b0c24ca-fb4b-4fe6-88ac-8cd1f50f58b4: Designing Restaurant PWA Mockups
- Created: 2026-06-18T17:14:52Z
- Last modified: 2026-06-18T17:41:30Z

### USER Objective:
Designing Restaurant PWA Mockups

Main Objective: Create and refine four functional UI/UX mockups (2 PWA, 2 WebApp) for a restaurant voice-command system, adhering to technical specifications and business rules.

Goals:
1. Develop responsive, modern mockups in Spanish featuring both dark and light theme toggling.
2. Integrate standard navigation components, including hamburger menus and session management (login/logout) across all interfaces.
3. Utilize CSS Glassmorphism and JavaScript for interactive prototypes (mic animations, KDS status timers).
4. Organize assets within the project directory structure to serve as the baseline for system implementation.

## Conversation 81bd4812-ff4f-4429-848e-880e057acf4a: Production Infrastructure Connectivity Validation
- Created: 2026-06-18T16:46:03Z
- Last modified: 2026-06-18T16:52:40Z

### USER Objective:
Validating Infrastructure And Connectivity

Objective: Finalize the infrastructure validation and synchronization for the Host C production environment.

Goals:
1. Conduct connectivity diagnostics across Hosts A, B, and C to verify database and HTTP service accessibility using the updated `check_connectivity.sh` script.
2. Confirm the successful implementation of "Issue 01" (Historical Mora Normalization) and "Issue 02" (Cross-Contract ID Collision Fix) in Host C.
3. Validate database integrity using post-patch verification SQL scripts, ensuring all ledger discrepancies and historical records are corrected.
4. Harmonize infrastructure documentation by updating the connectivity diagnostic tool to dynamically reference the Single Source of Truth (`.mcp.json`) for IP and port configurations.

## Conversation 1c29b575-6c98-4211-b06d-48d956d621c8: Refining Credencial Report Generation
- Created: 2026-06-18T13:45:53Z
- Last modified: 2026-06-18T13:47:13Z

### USER Objective:
Refining Credencial Report Generation

Main Objective: Modify the `credencial.php` script to enhance report formatting and output constraints.

Goals:
1. Apply bold styling to the contract numbers rendered beneath the two barcodes in the generated credential image.
2. Restrict the "Copias en hoja" selection menu and the resulting print preview output to exactly two copies.

## Conversation 231de7fa-7f0d-4180-b42a-f73d56dd41ee: Reconciling Cross-Linked Financial Receipts
- Created: 2026-06-17T22:06:01Z
- Last modified: 2026-06-18T00:21:59Z

### USER Objective:
Reconciling Financial Ledger Discrepancies

USER Objective:
Finalize the audit and reconciliation of financial records between Host B and Host C to ensure account parity for contracts 648 (Alfonso Torres) and 725 (Edgar Hernández) following the collision bug.

Goals:
1. Validate that the account states (debt/paid status) for 648 and 725 in Host C accurately mirror the benchmark records from Host B.
2. Confirm that the data curation executed in the previous session successfully isolated these contracts from Alejandro Espinosa's (646) transactions.
3. Provide final verification that all third-party records are pristine, completing the forensic audit process.

## Conversation 37c0af77-ff98-45c9-9f38-1435d8640499: Stabilizing Financial Payment Records
- Created: 2026-06-16T18:01:24Z
- Last modified: 2026-06-18T00:02:41Z

### USER Objective:
Finalizing Financial Data Reconciliation

Objective: Stabilize financial records and eliminate cross-contract ledger discrepancies resulting from transaction collisions.

Goals:
1. Finalize the forensic audit of affected contracts (317, 705) to ensure total data parity between legacy and V2 environments.
2. Automate the financial gap closure (cierre de gap) for contract 705 by integrating a permanent SQL patch into the automated deployment orchestration.
3. Validate total ledger integrity, ensuring receipts for impacted clients are re-processed correctly and system-wide accounting is audit-ready.
4. Prepare the finalized "Issue 02" patch for deployment in the production Host C environment.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 23 June 2026, 10:44 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.




### Actions

**Tool:** `grep_search`
**Query:** `anio = 0 OR anio`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.076175422s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 June 2026, 10:44 am

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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.




### Actions

**Tool:** `grep_search`
**Query:** `anio = 0 OR`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.071907543s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 23 June 2026, 10:44 am

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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.


**Refining Code Changes**

I'm now zeroing in on code modifications, specifically removing the hardcoded 2006 limit in `contratos.php`. The catalog's `estado=0` entries already filter out unwanted years in the SQL query. My focus is on ensuring the changes restore parity with Host B's prior behavior, incorporating Poka-Yoke and Batch Inserts. I am looking carefully at the user's explicit request to analyze and compare against the earlier code version. I'm focusing on the `generaCargosAutomaticos` function's behavior between May 23rd and June 14th.


**Analyzing Production Discrepancies**

I'm now investigating the discrepancies in overdue contracts between production (Host C) and the frozen Host B system. The hardcoded 2006 limit in `contratos.php` needs removal. I'm focusing on tracing how that limit, combined with the current data, led to reduced debts, which is the root cause. I am currently considering the larger system to ensure that these issues are fixed and that the fixes have stability.


**Eliminating Unnecessary Limits**

I'm now zeroing in on the 2006 limit removal. My understanding is that the system's inherent mechanisms, including batch inserts and database flags, offer sufficient safeguards. I've analyzed the May 23 - June 14 version, which demonstrated the detrimental impact of the `anio` condition and how it stopped historical charge generation. I'm confident that eliminating this arbitrary limit is the correct and robust solution to the production discrepancies. My focus is now on executing this removal within `includes/negocio/contratos.php`.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 6.081917437s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 June 2026, 10:44 am

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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.


**Detailing Bug Timeline**

I'm now putting together a detailed explanation for the user. I plan to empathize with their frustration regarding the "snowball effect". I'll clearly describe the chronology of the bug. Specifically, I will address the Host B baseline, and then the change introduced between April 23 and June 14, which created the generation of historical missing base charges.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.912934742s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

## User Request

Actualiza tu GEMINI.md, para regla ya no se debe ejecutar usar nunca mas este: Full-Pipeline-Sync bash desde el 23 mayo, debido a que es uso para esa fecha de setup/migración de entre host b, host y hacia host c (pase a producción).
- Resume cuales archivos de la web app conforman toda la solución para el fix-issue-01.
- Analiza y alinea todos los archivos sql , bash orquestador y .ps1, con forme a la solucion definitiva dicha, /opt/lampp/htdocs/agua/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/
- Actualiza PLAN_MORA_ROTATIVA_20_ANIOS.md/5. Orquestación del Despliegue (run_patch_host_c.sh)   sobre la descripción de lo que hace cada archivos de la solución tanto los propios del directorio fix-issue-01 , como ahora incluye los de la webapp que fueron modificados para conformas la solución integral del fix-issue-01.
- Analiza a fondo los docs MD PLAN_MORA_ROTATIVA_20_ANIOS.md y VERIFICACION_MANUAL_MORA_20_ANIOS.md para actualices y realinees lo necesario desde mas contexto para la solucion a la "bola de nieve" y su solución , en las secciones que correspondan.

<details>
<summary>Context</summary>

**Active File:** `contratos.php`
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

**Prioritizing Specialized Tools**

I'm now completely focused on prioritizing specialized tools over generic ones. I won't use `cat` to create or append files, avoiding that entirely. I'll stick with `grep_search` and ditch `grep` within bash. Listing, viewing, and finding are all covered by specific tools I will use instead of `ls`, `cat`, and `grep`, respectively.


**Refining Specific Tool Usage**

I'm now integrating `sed` for replacements and expanding my specialized toolset with `replace_file_content`, `view_file`, and `list_dir`.  I'm also updating `GEMINI.md` to clearly state that `Full-Pipeline-Sync` is no longer in use, focusing on its migration-only role. I'll summarize the solution files for `fix-issue-01` and update several documentation files (`PLAN_MORA...`, `VERIFICACION...`) with the new files.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.479358712s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 23 June 2026, 11:07 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.




### Actions

**Tool:** `view_file`
**File:** `GEMINI.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.043483076s
- **Model:** Gemini 3.1 Pro (High)
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
- Schema v2 completo + webapp PHP 7.4 adaptada en `main` (ex-`feature/upgrade-v2-win-xampp`, renombrada 2026-05-25)
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

**Estabilización Financiera y Cartera Vencida (2026-05-11):**
*   **Modelo de Cartera Homologado**: Se formalizó el cálculo de Cartera Vencida (17 categorías incluidas, 5 excluidas) asegurando el cuadre a $0 en el reporte de caja mediante la inclusión de recargos históricos (11, 16, 17) en R.CART.
*   **UI/UX de Reportes**: Renombrado de botones de acceso y encabezados en `carteravencida.php` y `concentradocortecaja.php` para mayor claridad del operador (`RECUP. CARTERA <$anio_ref`).
*   **Fuente de Verdad**: Documento maestro creado en `docs-dev/doc-estabilizacion/CARTERA_VENCIDA_MODELO_Y_REPORTES.md`.

**Hitos de Estabilización y Hardening (2026-05-11 - Sesión 2):**
*   **Conectividad Host C**: Restaurada tras apertura de Firewall en puerto **7002** (MariaDB) y **7001** (Apache). (La IP y credenciales han sido delegadas al SSOT maestro).
*   **Auto-Elevación Poka-Yoke**: Todos los scripts de PowerShell (`.ps1`) ahora cuentan con lógica de auto-elevación a Administrador, eliminando errores de permisos del operador.
*   **Configuración de Firewall**: Nuevo script `setup-firewall.ps1` integrado en el instalador maestro para automatizar la apertura de puertos en Windows 10.
*   **Detección Robusta de Monitor**: El script `status-webapps.ps1` ahora detecta el Monitor UPS incluso si los permisos de visibilidad de procesos están restringidos.
*   **Fix Kiosko Chrome**: Ajuste de rutas para el acceso directo de Google Chrome, garantizando compatibilidad con instalaciones de 64 bits.

**Optimización de Homónimos y UI (2026-05-12):**
*   **Manejo Estructural de Duplicados**: Se implementó la columna `id_homonimo_padre` en la tabla `usuario` para rastrear duplicados sin alterar el campo `nombre`. Se revirtieron todas las concatenaciones sucias (ej. `[DUPLICADO DE...]`) en la base de datos.
*   **Semaforización de Usuarios**: El motor de búsqueda en "Nuevo Contrato" y "Cambio de Propietario" ahora incluye un semáforo visual (🟢, 🟡, 🔴) basado en el estado de los contratos de los homónimos detectados.
*   **Detección Robusta**: La lógica de búsqueda fue blindada para ignorar acentos y sufijos temporales, asegurando la visibilidad total de registros suspendidos o duplicados.
*   **Pipeline Clean-up**: El script `10c_saneamiento_duplicados.sql` fue refactorizado para usar el nuevo estándar estructural.

**Pipeline B→A→C Estabilizado y Semáforos UI (2026-05-12 — Sesión 4):**
*   **Ejecución Full-Pipeline-Sync**: Completado exitosamente — 1,409 usuarios, 1,410 contratos, 200,921 ligacargos (split 7,105 activos / 193,816 histórico). Todos los checks de integridad en ✅.
*   **Hardening de Schema Base**: La columna `id_homonimo_padre` se integró permanentemente en `02_schema_tablas_base.sql`. El parche temporal `12_add_homonimo_padre.sql` fue eliminado. El pipeline es ahora idempotente ante DROP DATABASE.
*   **Fix QA Pipeline**: `12_validate_pipeline.sql` actualizado para validar el vínculo estructural (`id_homonimo_padre`) en lugar de buscar sufijos sucios `[DUPLICADO...]` en el nombre.
*   **Fix Visibilidad Homónimos**: `includes/negocio/usuarios.php` — la cláusula `HAVING` fue extendida para incluir usuarios con vínculo estructural (`id_homonimo_padre > 0`), evitando que homónimos sin contratos quedaran ocultos en el buscador.
*   **Paleta de Colores Semáforo (UI definitiva)**: `views/usuarios/options.php` — 🟣 Lila `#ede0ff` para **cualquier usuario sin contratos** (independiente de homónimo); 🟢🟡🔴 semáforos solo para homónimos con contratos. Sin color = usuario normal con contratos.
*   **Fix Auth `cambiaestado()`**: `includes/negocio/contratos.php` — verificación de contraseñas (presidente/tesorero) añadida antes de ejecutar el cambio de estado, siguiendo el mismo patrón de `cancelarCargos()`.
*   **Documentación**: `analisis_paridad_3hosts.md` actualizado con la paleta de colores definitiva. `ISSUES_Y_BACKLOG.md` extraído de `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`.

**Unificación de Infraestructura e IPs (2026-05-12 — Sesión 5):**
*   **Single Source of Truth (SSOT)**: Se centralizó la configuración de red y credenciales de bases de datos para los tres entornos. La **única fuente de verdad** para las IPs, puertos, usuarios y passwords de Host A, Host B y Host C es ahora el archivo `/home/carlos/GitHub/agua_chatledger/.mcp.json`. Queda estrictamente prohibido el uso de IPs *hardcodeadas* (como `192.168.1.84` o `192.168.1.81`) en scripts y documentos.

**Estabilización de Usuario No Localizado y Seguridad (2026-05-13 — Sesión 1):**
*   **Flujo NL Cascada**: Se estabilizó la declaratoria de "Usuario No Localizado", asegurando la suspensión masiva (Estado 4 - SDF) de todos sus contratos vinculados.
*   **Hardening Poka-Yoke**: Refactorización de `usuarios.php` y `contratos.php` para usar `password_verify()` y `trim()`, eliminando errores por espacios accidentales y permitiendo el uso de hashes Bcrypt modernos.
*   **Fix UI Reversión**: Se corrigió el bug de visibilidad que ocultaba el botón de reversión en contratos con Suspensión Definitiva. El botón es ahora permanente ante snapshots válidos.
*   **Restablecer Usuario**: Nueva funcionalidad añadida para revertir manualmente el estado de un usuario NL a Activo, permitiendo correcciones administrativas sin bloqueos.
*   **Auditoría de Contraseñas**: Análisis de gaps realizado en el módulo de Comité; identificado riesgo de visibilidad de contraseñas nuevas y falta de doble confirmación.

**Producción Final y Hardening Host C (2026-05-13 — Sesión 2):**
*   **Poka-Yoke de Duplicados**: Implementado bloqueo estructural en `views/usuarios/options.php`. Los registros con `id_homonimo_padre > 0` aparecen ahora deshabilitados (`disabled`) con icono 🚫 y redirección al ID Maestro, previniendo la fragmentación de datos en Nuevos Contratos y Cambios de Propietario.
*   **Protección de Directorio**: Scripts `protect-folder.ps1` y `unprotect-folder.ps1` desplegados para blindar la raíz del sistema mediante reglas NTFS Deny. Se han actualizado para heredar dinámicamente la ruta desde `config.ps1`, corrigiendo el error de ruta inexistente.
*   **Dashboard de Consolidación**: Integración de acceso directo a **App Asambleas** en la ficha de Configuración y Saneamiento, utilizando rutas relativas para portabilidad entre hosts.
*   **Hardening UPS**: El tiempo de gracia en batería fue ajustado a **5 minutos** en `config.ps1`, optimizando el margen de seguridad para el cierre de la base de datos.
*   **Control de Chrome**: Identificado el pipeline de congelamiento de versiones en `setup-kiosk-shortcut.ps1` y su reversión en `revert-chrome-updates.ps1`.

**Estabilización de Interfaz, Saneamiento y Asamblea (2026-05-14):**
*   **Fix "Lila" Universal**: Se expandió la lógica de semaforización en `options.php` para incluir a usuarios con historial (contratos en SDF) como candidatos a color Lila. Esto asegura que placeholders con historia previa sean identificables en búsquedas de ítem único.
*   **Saneamiento Zenón (1590 Master)**: Se consolidó al usuario Zenón Martínez López bajo el ID **1590** (que contiene los datos de contacto y notas), reasignándole los contratos **1378** y **391**. El ID 1057 quedó vinculado como duplicado estructural.
*   **Filtros Especiales**: Se añadieron opciones de filtrado granular ("Sin nombre, con dir." y "Sin nombre ni dir.") en el tablero de Usuarios Especiales.
*   **Hardening Shutdown**: Se implementó manejo de errores robusto en `shutdown-server.ps1` y `stop-webapps.ps1`.
*   **Optimización Ticket Asamblea**: 
    *   Ficha de ticket ahora se cierra automáticamente tras imprimir o al hacer clic fuera (con auto-foco en buscador).
    *   Formato optimizado para impresoras térmicas (Courier New, márgenes mínimos, sin corchetes en contratos).
    *   **Ajuste Final (v2.1)**: Fuentes escaladas (Nombre 19px, Registro 17px, Comité 13px), todo justificado a la izquierda, y márgenes de impresión negativos (-4mm) para ahorro extremo de papel.
    *   Periodo de gracia de **7 días** para reabrir asambleas cerradas.
*   **Validación Full-Pipeline-Sync**: Ejecución verificada en Host C — 100% de paridad (200,931 cargos), saneamiento de folios mixtos (8 reparados) y consolidación real de Zenón confirmada.

**Estabilización de UI, Cobros Libres y Control UPS (2026-05-16):**
*   **Ajuste Libre de Cobros (LIBRE)**: Se implementó un flujo flexible donde cualquier cargo de catálogo que incluya la bandera `(LIBRE)` en su nombre disparará un *prompt* interactivo para que el operador defina el monto. El backend en `cargos.php` limpia la etiqueta y exenta el cargo de multiplicadores automáticos (comercial/metros) garantizando cuadres limpios.
*   **Monitor UPS Condicional**: El "Vigilante" de fallos eléctricos (`monitor-ups.ps1`) ahora respeta la directiva `monitoreo_ups=1|0` del archivo `configuracion.txt`. Si se desactiva, el servidor inicia de forma normal sin invocar el bucle de ping ni detonar apagados automatizados (ideal para pruebas o escenarios sin UPS conectado al router).
*   **Transparencia en Hardening NTFS**: Se ajustaron los mensajes de salida de `protect-folder.ps1` y `unprotect-folder.ps1` para reflejar y confirmar su capacidad nativa de blindar `xampp`, `aguav2` y `aguav2-2026` simultáneamente contra borrados **y renombrados**, dando plena certidumbre al operador.
*   **Semaforización "Lila" Poka-Yoke**: Corrección en `nuevo.php` y `options.php` para asegurar que el `<select>` principal adopte el color visual de estado (Lila, Verde, Amarillo) del usuario seleccionado. Además, se refinó la regla Lila para incluir apropiadamente a usuarios históricos (con todos sus contratos en Estado 4), permitiendo actualizar sus nombres *Placeholder* de inmediato en la ficha de Nuevo Contrato.

**Homologación de Catálogo, Reportes y Pipeline (2026-05-16 — Sesión 2):**
*   **Ordenamiento de Reportes de Caja**: `concentradocortecajaresumen.php` refactorizado con array `$orden_impresion` que impone la jerarquía oficial de conceptos: Agua → Drenaje → Recargos → Servicios → Cartera → Trámites → Sanciones.
*   **Sufijo A/D en Etiquetas**: Los conceptos de Reconexión y Cancelación de Servicio actualizados a "...A/D" en `concentradocortecaja.php` (glosario), `concentradocortecajaresumen.php` ($etiquetas), la tabla `categorias` en Host C (IDs 13 y 14) y en `08_saneamiento_catalogo.sql`.
*   **Conceptos `(LIBRE)` en Pipeline**: Los dos conceptos `DIFERENCIA CAMBIO TOMA AGUA/DRENAJE (LIBRE)` — creados directamente en Host C — se agregaron a `08_saneamiento_catalogo.sql` con `INSERT IGNORE` para garantizar su presencia en cualquier rebuild del pipeline. Regla: `recargo=0`, `monto=0`, `anio=0`.
*   **Homologación de Categorías (BD + Pipeline)**: Todos los nombres de la tabla `categorias` fueron homologados contra los `$etiquetas[]` de los reportes PHP. El Paso 3-B de `10_pipeline_saneamiento.sql` fue corregido: `REPLACE INTO` → `INSERT...ON DUPLICATE KEY UPDATE` (para respetar FK), + bloque `UPDATE` para IDs 1-18 con nombres completos y oficiales (ej. `MULTA POR DESPERDICIO DE AGUA`, `CONSTANCIA DE NO ADEUDO`, `REPARACION DE FUGAS`).
*   **Guía del Catálogo de Cargos**: Nuevo documento `docs-dev/doc-estabilizacion/GUIA_CATALOGO_CARGOS.md` — referencia completa para operadores sobre: anatomía de un cargo, reglas por campo, cuándo usar `(LIBRE)` vs `repetir=1` (R(N)), conceptos por año, y catálogo de issues conocidos.
*   **Homologación de MDs**: Nombres de categorías 13, 14, 20, 21, 22 actualizados en `CARTERA_VENCIDA_MODELO_Y_REPORTES.md` y `REPORTES_CAJA_CARTERA_DECLARACION.md` para alinearlos con los nombres canónicos de la BD.

**Validación Pipeline Final y Blindaje (2026-05-18):**
*   **Validación Full-Pipeline-Sync**: Confirmada la ejecución exitosa del pipeline completo hacia Host C. Datos migrados sin configuración drift: 1,409 usuarios, 201,130 cargos (7,207 activos / 193,923 históricos). Tablas Poka-Yoke intactas (`id_homonimo_padre` y bandera `repetir=1` en cobros LIBRE).
*   **Manuales Operativos Creados**: Se generaron los documentos `doc_cajero_transiciones_estado.md`, `doc_tesorero_corte_cartera.md` y `doc_ejecutivo_comite.md` detallando las reglas de paridad, el modelo homologado de Cartera Vencida y la matriz de los 6 casos de transición de estados de contrato.
*   **Blindaje Extremo NTFS**: Se actualizó `protect-folder.ps1` para aplicar bloqueos `(DE, DC)` directamente a la carpeta `$desktop\aguaV2` en lugar de solo a los `.lnk` internos. Esto impide el arrastre a papelera y borrado de los atajos administrativos.

**Sincronización B→A y Hardening MySQL (2026-05-19):**
*   **Fix Truncamiento de Datos**: Se identificó y resolvió una pérdida silenciosa de datos en la migración Host B → Host A causada por el límite `max_allowed_packet` (1MB). El script `run_sync.sh` fue endurecido con los parámetros extendidos (`--max_allowed_packet=512M`, `--net_buffer_length=10M`).
*   **Auditoría y Paridad**: Se generaron reportes para identificar los contratos omitidos y se ejecutó un Full Sync restaurando la paridad estructural completa entre los Hosts A, B y C.

**Normalización de Calles y Reporte de Impresión de Credenciales (2026-05-20):**
*   **Agrupamiento de Calles Robusto**: Se implementó una lógica de agrupamiento por expresiones regulares en `listadeudoresxc.php` para normalizar acentos, números ordinales y calificativos de dirección en las calles, evitando truncamiento de palabras clave como "NORTE".
*   **Impresión de Credenciales en Lote**: Se diseñó un nuevo visualizador tamaño Carta en `imprimir_credencial.php` que acomoda hasta 3 credenciales de `8.8 x 5.8 cm` por cara con guías de corte y línea discontinua de doblez central. Integrado mediante popup en `ficha.php`.

**Optimización de Impresión de Reportes y Rotación de Respaldos (2026-05-21):**
*   **Aprovechamiento de Papel en Reportes**: Se incrementó la capacidad de registros por página de **42 a 46** en 5 reportes críticos (`listacontratosestado.php`, `listacontratos.php`, `listacontratosnuevos.php`, `listausuarios.php`, y `listadeudores.php`). Esto optimiza el uso de la hoja tamaño Carta reduciendo las hojas impresas sin riesgo de desborde por nombres o domicilios largos.
*   **Rotación de Respaldos de BD (PowerShell)**: Se implementó un algoritmo de rotación basado en cantidad (máximo 7 respaldos más recientes) tanto en `start-webapps.ps1` como en `stop-webapps.ps1`. Esto evita que las múltiples pruebas de apagado/encendido del operador saturen el disco con más de 7 archivos de respaldo (data-*.zip), reemplazando el filtrado temporal estático de 7 días.

**Seguridad y Autocompletado de Credenciales (2026-05-22):**
*   **Desactivación de Autocompletado en Login**: Se agregaron los atributos HTML `autocomplete="off"` en el `<form>` y en el input de usuario, y `autocomplete="new-password"` en el input de contraseña de `login/index.php`. Esto mitiga el comportamiento agresivo de autocompletado en navegadores modernos (Chrome/Firefox/Edge), manteniendo los campos limpios y evitando riesgos de seguridad por credenciales recordadas.

**Habilitación HTTPS y Nginx en OCI VM (2026-05-23):**
*   **Certificado Let's Encrypt**: Solicitud y activación exitosa de SSL para `www.caelitandem.lat` vía Certbot + plugin Nginx. Redirect 301 HTTP → HTTPS configurado limpiamente.
*   **Auto-Renovación Blindada**: Script `/home/ubuntu/scripts/renew-certs.sh` + cron `/etc/cron.d/certbot-custom` (3:00 AM diario). Timer `certbot.timer` de systemd verificado activo.
*   **Alcance**: Todos los sitios del OCI VM (www, kanboard, n8n, oken8n) ahora operan en HTTPS con renovación automática. Esta configuración es del servidor CaeliTandem, **no del proyecto Agua**.

**Documentación de Entrega Sistema Agua V2 (2026-05-21—22):**
*   **Manual Técnico-Operativo**: Generado `Manual_Entrega_Sistema_Recaudacion_Agua_V2.pdf` (HTML + PDF) vía script Python. Incluye arquitectura MVC, diagramas, catálogos y manuales por rol.
*   **Apéndices**: Código fuente de `configuracion.php` y paleta de colores semáforo del buscador integrados como apéndices formales del documento de entrega.

**Iniciación Repositorio emp_devhj_sw / CaeliTandem (2026-05-25):**
*   **Nuevo Repo**: Inicializado `/home/carlos/GitHub/emp_devhj_sw/caelitandem_home` para el proyecto CaeliTandem SEO, separado del proyecto Agua.
*   **Script dos-repos-branch-git.sh**: Creado en `docs-dev/scripts/` como guía de referencia del flujo canónico de commits para ambos repos (agua + agua_chatledger). **No es un script ejecutable automatizado**, sino documentación operativa del flujo Git de cierre de sesión.

**Última actualización**: 2026-06-22



> [!IMPORTANT]
> **Terminología de Sesión**:
> - **Ground Truth**: Denominación del contexto maestro para **Claude**.
> - **Runbook**: Denominación del contexto maestro (GEMINI.md + .agents/) para **Gemini**.

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

### Thinking

**Prioritizing Tool Specificity**

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.


**Refining Tool Usage**

I'm now prioritizing `grep` for finding, and `sed` for replacing text. I've also identified a related tool, `replace_file_content`, which I will utilize. Additionally, I'm working on updating `GEMINI.md`, specifically to indicate that `Full-Pipeline-Sync` should never be used again, after the 23rd of May, 2026. This change is crucial. I'm going to replace the existing text with specific language that emphasizes its deprecated status. I believe this change will clarify its function.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.025655673s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 June 2026, 11:07 am

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

**Prioritizing Specialized Tools**

I'm now completely focused on prioritizing specialized tools over generic ones. I won't use `cat` to create or append files, avoiding that entirely. I'll stick with `grep_search` and ditch `grep` within bash. Listing, viewing, and finding are all covered by specific tools I will use instead of `ls`, `cat`, and `grep`, respectively.




### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.000386549s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>Directory: `fix-issue-01` (11 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01`

| Name | Type | Size |
|------|------|------|
| `01_normalizar_catalogo.sql` | File | 13962 bytes |
| `02_normalizacion_estructural_v2.sql` | File | 3821 bytes |
| `03_normalizar_cuentas_usuarios.sql` | File | 21231 bytes |
| `04_mora_rotativa_20_anios.sql` | File | 3856 bytes |
| `05_validation_20_anios.sql` | File | 2122 bytes |
| `AUDITORIA_MORA_ROTATIVA_20_ANIOS_V2.md` | File | 7724 bytes |
| `PLAN_MORA_ROTATIVA_20_ANIOS.md` | File | 16334 bytes |
| `VERIFICACION_MANUAL_MORA_20_ANIOS.md` | File | 10415 bytes |
| `docs-01` | Directory | - |
| `run_patch_host_c.ps1` | File | 5715 bytes |
| `run_patch_host_c.sh` | File | 3149 bytes |

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

**Prioritizing Specialized Tools**

I'm now zeroing in on the principle of using specialized tools over general ones. Instead of relying on `cat` for file creation or appending, I'm focusing on alternatives. For example, I'm exploring how to implement file operations via `grep_search` and other commands instead of `grep`. I am trying to minimize usage of `ls`, `cat`, and `grep`, for example.




### Actions

**Tool:** `view_file`
**File:** `PLAN_MORA_ROTATIVA_20_ANIOS.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.073472346s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Plan Maestro y de Implementación: Mora Rotativa 20 Años (V2)

## 📌 1. Visión y Single Source of Truth
El motor de mora de 20 años ("Motor JIT") establece a la base de datos como única fuente de la verdad para el cálculo de recargos históricos. Operará exclusivamente en **Host C** mediante un modelo "Just-in-Time" que genera los cargos moratorios *al momento de consultar* la deuda de un contrato, evitando sobrecargas cron o batches destructivos.

Esta **Versión 2** del plan introduce correcciones estructurales para blindar el motor contra falsos positivos, garantizar el éxito del "Gap de 80 Contratos Crónicos" mediante idempotencia blindada y corregir errores de configuración (off-by-one) en paneles administrativos.

---

## 🏗️ 2. Arquitectura de Datos y Saneamiento Estructural

El histórico de deuda puede abarcar desde 2006 hasta el presente. Debido al volumen masivo, se emplea un modelo de partición dual (`ligacargos` y `ligacargos_historico`).

### 2.1 Re-Categorización y Normalización Poka-Yoke
Para que la consulta global del Motor JIT sea segura, el catálogo base de Host C ha sido saneado de raíz. **La regla estructural inquebrantable es**: *Cualquier cobro que NO sea una anualidad base, NO debe pertenecer a la categoría 2 (Agua) ni 3 (Drenaje).*

**Impacto del Saneamiento Estructural (Protección a 57 Contratos):**
1. **Re-categorización de Falsos Positivos:** Se identificaron cargos en Host B como "MENSUALIDAD..." o "REHABILITACION..." erróneamente clasificados como Categoría 2. Se re-categorizaron a Cat 1 (General) y Cat 5 (Reparaciones). Esto protege a **52 contratos** de generar una deuda espuria de mora mensual que habría ascendido a más de $1,440 MXN por contrato.
2. **Normalización Definitiva de Leyendas:** Se estandarizaron leyendas legacy (`AGUA POTABLE AÑO 2006` -> `ANUALIDAD DEL AGUA 2006`) tanto en el catálogo como en los historiales de deuda. Esto protege a **12 contratos** asegurando el éxito de la comparación de strings en el mecanismo de idempotencia.

### 2.2 La Ventana Rotativa y Vista "Auto-Heal"
**Fórmula Continua:** `[Año Inicial = Año Actual - paridad_anios_max_recargo]`

Se emplea la vista no destructiva `vw_ligacargos_pendientes` que une los saldos deudores de ambas particiones. Esta vista incluye filtros dinámicos que leen `config_sistema` para aplicar amnistía masiva por año *sin borrar datos físicos*. Si un recargo sale de la ventana de 20 años, simplemente se "apaga" de la vista, logrando saneamiento sin pérdida forense.

---

## ⚙️ 3. El Motor "Just-in-Time" y sus Blindajes

El motor se inyecta en `calcula_recargos()` (dentro de `cargos.php`) y se rige por cuatro reglas reforzadas:

### Regla 1: Inmunidad y Guardias de Estado
El motor **NO SE EJECUTA** y realiza retorno temprano (`return`) si el contrato está en:
- `Estado 4` (Suspensión Definitiva / Baja)
- `Estado 2` (Suspensión Temporal)
- Tiene exención activa en su año de creación (`$exento_recargo == 1`).

### Regla 2: Idempotencia Segura O(1) (El Gap de los 80 Contratos)
El "Gap de 80 Contratos Crónicos" describe a usuarios que ya tienen recargos históricos pagados/cancelados. Para no duplicarles la mora al pasar al nuevo motor, el JIT lee todos sus recargos existentes de un golpe en un **Hash Map** en memoria.
- **Seguridad V2:** La leyenda a buscar se sanitiza mediante `$y->real_escape_string()` y escapando wildcards de SQL (`%`, `_`) con `str_replace`, asegurando que ninguna leyenda especial rompa el `LIKE` y arruine la idempotencia.

### Regla 3: Batch Dual In-Memory
Para evitar *N+1 queries*, si el contrato requiere 50 recargos, se generan en memoria y se insertan en una sola instrucción transaccional masiva, discriminando destino:
- Año ≥ 2026 ➔ Array para inserción en `ligacargos`
- Año ≤ 2025 ➔ Array para inserción en `ligacargos_historico`

### Regla 4: Límite Bomba (Threshold)
Si la deuda base del contrato supera `$umbral_bomba` (ej. $14,000 MXN) y la regla está activa (`umbral_bomba_enable = 1`), el motor interrumpe la iteración (`break`) protegiendo al deudor de deudas matemáticamente impagables.

---

## 🖥️ 4. Control Operativo y UI

### 4.1 Panel de Amnistía Dinámico (Fix Off-by-One)
El panel en `configuracion.php` permite al operador habilitar o congelar recargos año por año (2006 a 2026). Se corrigió la consulta que alimentaba este panel, eliminando un frágil `LIMIT 20` por una cláusula `WHERE anio >= (YEAR(CURDATE()) - max_anios)` garantizando sincronía exacta con la base de datos (inclusión del año 2006 sin off-by-one).

### 4.2 Acordeón Visual y Blindaje de Catálogo (Poka-Yoke)
1. **Acordeones:** La deuda activa (año en curso) y la histórica se separan en contenedores colapsables en la UI para evitar fatiga visual ("Wall of text").
2. **Categorías 16 y 17 Ocultas:** Se prohíbe terminantemente la intervención humana. Los recargos son dominio absoluto del motor y no aparecerán en ningún combo o menú desplegable para los cajeros.

---

## 🛠️ 5. Orquestación del Despliegue (`run_patch_host_c.sh`)

La implementación está orquestada de forma automatizada y secuencial sin intervención manual en Host C, mediante los siguientes pasos que se corresponden a los scripts SQL:

1. **`01_normalizar_catalogo.sql`**: Limpieza base y saneamiento legacy del Host B.
2. **`02_normalizacion_estructural_v2.sql`**: Re-categorización de falsos positivos y renombre a estándar V2.
3. **`03_normalizar_cuentas_usuarios.sql`**: Corrección a nivel de expedientes y cuentas contables.
4. **`04_mora_rotativa_20_anios.sql`**: Encendido maestro (activación de `recargo=1` en cat 2 y 3), creación de vistas no destructivas y setup de variables `config_sistema`.
5. **`05_validation_20_anios.sql`**: Informe radiográfico automatizado post-despliegue que valida 5 pilares de integridad (cero pendientes legacy, número correcto de anualidades puras, ceros falsos positivos, variables de entorno ok).

---

## 📜 6. ANEXO OPERATIVO: Reglas para Cajeros y Operadores

**1. Exclusividad de la Base Anual (Categorías 2 y 3):**
Las Categorías 2 (Agua) y 3 (Drenaje) son **ÚNICAMENTE** para las anualidades base (el cargo anual oficial). **NO SE DEBEN USAR PARA NADA MÁS**. 

**2. ¿Qué categoría usar para cargos `(X MES)` o convenios a plazos?**
Si el operador necesita crear un convenio de pago en mensualidades, **DEBE asignarlo obligatoriamente** a categorías genéricas:
*   **Categoría 1:** OTROS CONCEPTOS GENERALES
*   **Categoría 4:** CUOTAS ESPECIALES
*   **Categoría 12:** SANCIONES
Al usar estas categorías, el **Guard G02** (y nuestra re-categorización V2) asegura que esas mensualidades jamás generen intereses ni activen el Motor JIT.

**3. Transparencia de la Ventana:**
Si un año sale de la ventana de los 20 años en el futuro, el motor JIT los ignora y el "Auto-Heal" los oculta. Los cajeros no necesitan borrar los recibos a mano; el sistema depura visual y matemáticamente las deudas anticuadas automáticamente.

**4. Diferencia entre Cálculo de Recargos y Conteo de Deuda Base:**
*   **El Cálculo de Recargos (A partir de 2006):** Debido a la regla de la "Ventana Rotativa de 20 años" (`paridad_anios_max_recargo = 20`), en el año de ejercicio 2026 el motor JIT únicamente generará recargos sobre las deudas base que pertenezcan al año 2006 en adelante. Las deudas más antiguas quedan automáticamente exentas de generar nueva mora, ya que caen fuera de la ventana. *(Nota: Al ser una ventana móvil, en 2027 el sistema solo cobrará mora desde 2007).*
*   **El Conteo de Deuda Base (Historial Completo):** La deuda principal (el capital original adeudado por servicio de agua y drenaje) es inmutable y se acumula de forma íntegra **desde el año en que el contrato empezó a tener adeudos** en su cuenta. Por ejemplo, si el contrato registró su primer impago en el año 1995 o en el año 2000, su deuda base comenzará a sumarse desde ese punto inicial. El sistema conserva estos registros históricos indefinidamente para preservar la legalidad y los balances contables del Comité.

**5. Naturaleza del Rezago Histórico (Deudas anteriores a 2006):**
La base de datos del sistema se inicializó oficialmente el **20 de Marzo de 2006** (no existe ningún contrato digital previo a esa fecha). Sin embargo, los cajeros verán deudas con años muy anteriores (ej. del 2000 al 2005). Esto **no es un error del sistema**. Es el resultado de la *Captura Manual de Rezago*: cuando se instaló el software en 2006, los operadores transcribieron a mano las deudas atrasadas desde las libretas de papel físicas hacia la computadora. Por tanto, es completamente válido y legal cobrar un adeudo del año 2000 a un contrato que digitalmente dice haber sido creado en 2006.

---

## 🧪 7. Plan de Verificación y Casos de Prueba (QA)
Para las instrucciones paso a paso y sentencias SQL de validación de cada escenario crítico (Integridad Dual, Contratos Crónicos, Suspensión, etc.), consúltese el documento hermano: **[VERIFICACION_MANUAL_MORA_20_ANIOS.md](VERIFICACION_MANUAL_MORA_20_ANIOS.md)**.

---

## 📚 8. ANEXO TÉCNICO: Documentación de Scripts de Orquestación

El orquestador `run_patch_host_c.sh` ejecuta una secuencia de 5 scripts SQL. A continuación se detalla su propósito estructural:

### `01_normalizar_catalogo.sql`
*   **a) ¿Qué hacen?:** Consolida múltiples variaciones de nombres de recargos antiguos (ej. `RECARGO AÑO 2006`, `RECARGO DE AGUA 2006`) en un solo estándar `RECARGO 2006 ANUALIDAD DEL AGUA...` y elimina duplicados físicos en el catálogo de cargos.
*   **b) ¿Por qué?:** Porque en Host B los operadores creaban conceptos a mano frecuentemente, generando cientos de "conceptos de recargo" basura que rompían la restricción de *Unique Key* del esquema V2.
*   **c) ¿Para qué?:** Para tener un catálogo base limpio que soporte la inserción masiva del motor JIT, y para que en los cortes de caja todos los recargos se agrupen limpiamente bajo un mismo concepto sin colisiones.

### `02_normalizacion_estructural_v2.sql`
*   **a) ¿Qué hacen?:** Mueve conceptos como `MENSUALIDAD` a Categoría 1 y `REHABILITACION` a Categoría 5. Además, renombra 5 variaciones atípicas de anualidades base a su formato oficial.
*   **b) ¿Por qué?:** Porque dejar cargos menores en la Categoría 2 o 3 provoca que el motor JIT los identifique como "anualidades base" y les genere mora; y los nombres irregulares rompen el Hash Map (Idempotencia).
*   **c) ¿Para qué?:** Para inmunizar estructuralmente al sistema contra la generación de miles de pesos en deuda espuria, y asegurar que el motor jamás falle al buscar leyendas en contratos crónicos.

### `03_normalizar_cuentas_usuarios.sql`
*   **a) ¿Qué hacen?:** Limpia doble-espacios, recorta (`TRIM`) las leyendas en toda la tabla de `ligacargos` e `historico`, y realiza un mapeo masivo de cientos de leyendas legacy de agua y drenaje desde 2006 hasta 2020 a su nomenclatura V2.
*   **b) ¿Por qué?:** En Host B existían más de 40 formas distintas de escribir la misma deuda (ej. `AGUA POTABLE AÑO 2013`, `PAGO ANUAL DEL AGUA 2013`, `ANUALIDAD DEL  AGUA 2013`).
*   **c) ¿Para qué?:** Para lograr paridad absoluta en el historial contable, permitiendo búsquedas, cortes y auditorías exactas, y preparando el terreno limpio para que el motor JIT solo tenga que lidiar con 1 solo formato de nombre por año al verificar la idempotencia.

### `04_mora_rotativa_20_anios.sql`
*   **a) ¿Qué hacen?:** Es el interruptor maestro. Ejecuta un `UPDATE cargos SET recargo=1` global, inserta los parámetros en `config_sistema` y crea la vista no destructiva `vw_ligacargos_pendientes`.
*   **b) ¿Por qué?:** Porque Host C necesita una vista unificada (Auto-Heal) que oculte los registros viejos sin borrarlos físicamente y una configuración centralizada para los límites y amnistías (panel de control).
*   **c) ¿Para qué?:** Para activar matemáticamente el motor moratorio, establecer la política de la "Ventana Rotativa de 20 Años" y permitir la administración dinámica de amnistías desde la interfaz UI.

### `05_validation_20_anios.sql`
*   **a) ¿Qué hacen?:** Ejecuta 5 consultas `SELECT` críticas que revisan conteos en `ligacargos`, `cargos` y cruzan los falsos positivos.
*   **b) ¿Por qué?:** Desplegar modificaciones estructurales a bases de datos sin QA automatizado es un riesgo crítico de corrupción de datos.
*   **c) ¿Para qué?:** Para proporcionar un informe radiográfico de "Go-Live" que asegure a nivel forense que el despliegue del orquestador ha sido exitoso (cero recargos legacy pendientes y cero falsos positivos habilitados).

---

## 📈 9. ANEXO FINANCIERO: Comparativa Pura e Impacto Económico (Host B vs Host C)

Al analizar las bases de datos (Host B como Legacy vs Host C como V2 con actividad transaccional desde el 22 de mayo), la orquestación (`run_patch_host_c.sh`) impacta las siguientes dimensiones financieras de la cartera vencida:

| Métrica del Orquestador | Host B (Legacy) | Host C (V2 / Backup) | Análisis del Monto y El Gap Financiero |
| :--- | :--- | :--- | :--- |
| **1. Basura Legacy a Neutralizar**<br>*(Cat 16 y 17 con `estado=0`)* | **20,278** recargos<br>*(635 contratos)*<br>**$1,048,564.00 MXN** | **19,604** recargos<br>*(616 contratos)*<br>**$1,015,688.00 MXN** | **Impacto Masivo:** El orquestador va a desaparecer más de **$1 Millón de pesos** de recargos basura (irrecuperables/falsos) de la interfaz de cobranza. La diferencia de ~$32,000 pesos entre hosts es la mora legacy que fue pagada o cancelada por los cajeros desde el 22 de mayo. |
| **2. Falsos Positivos a Extirpar**<br>*(MENSUALIDAD / REHABILITACION)* | **285** registros<br>*(285 contratos)*<br>**$34,116.00 MXN** | **285** registros<br>*(285 contratos)*<br>**$34,116.00 MXN** | **Sincronía Perfecta:** Hay exactamente **$34,116 pesos** en Host C clasificados erróneamente en Cat 2 y 3. Si el script `02` no los sacara de ahí, el motor JIT habría intentado multiplicar su deuda inyectándoles mora rotativa de hasta 20 años (riesgo de $1,440 MXN adicionales por contrato). |
| **3. Nombres Atípicos a Normalizar**<br>*(AGUA POTABLE AÑO...)* | **3** registros<br>*(3 contratos)*<br>**$1,800.00 MXN** | **86** registros<br>*(86 contratos)*<br>**$32,400.00 MXN** | **El Efecto TRIM:** Host B solo detecta $1,800 pesos porque los demás registros están escondidos tras dobles y triples espacios invisibles. En Host C, gracias al saneamiento de texto previo (`03_normalizar_cuentas_usuarios.sql`), ya afloraron **$32,400 pesos** de deuda atípica que ahora sí serán renombrados correctamente para que el Hash Map de idempotencia no falle. |
| **4. Deuda Base Real (Morosos)**<br>*(Anualidades válidas para el JIT)* | **2,860** anualidades<br>*(331 contratos)*<br>**$1,049,900.00 MXN** | **2,673** anualidades<br>*(297 contratos)*<br>**$985,720.00 MXN** | **Cobranza Activa:** La cartera vencida real y válida en Host B era de casi 1.05 millones. En Host C bajó a **$985,720 pesos**. Esa diferencia de ~$64,180 pesos es dinero real que ingresó a caja o fue saneado/cancelado operativamente desde la migración del 22 de mayo. |

### 🎯 Resumen de Valor para el Comité de Agua

Al aplicar la orquestación, el Comité experimenta dos impactos drásticos que **chocan positivamente** contra lo que veían en sus libros y en Host B:

1. **El impacto más escandaloso (Indicador 1):** El sistema V2 "elimina" más de 1 millón de pesos que Host B reportaba como "mora por cobrar". Sin embargo, esto es **a favor de la auditoría legal**, ya que ese millón era una ficción matemática provocada por errores operativos (duplicados) y el fallido tope de 12 meses.
2. **El impacto más lucrativo (Indicador 4):** A cambio de destruir la mora basura, el Motor JIT toma los **$985,720 MXN de Deuda Base** limpia y les aplica el cálculo de mora rotativa de hasta 20 años continuos (sin el tope asfixiante de 12 meses de Host B). Esto generará cifras astronómicamente mayores, justas y 100% legalmente cobrables, recuperando el dinero que el sistema legacy le estaba regalando a los deudores crónicos.
3. **El impacto social (Indicador 2):** Protege a 285 familias de cobros irracionales, salvando al Comité de quejas o demandas por usura.

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

### Thinking

**Prioritizing Tool Specificity**

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.


**Refining Tool Usage**

I'm now prioritizing the use of `cat` for viewing, `grep` for finding, and `sed` for replacing text. It's crucial that I utilize related tools such as `replace_file_content` and `view_file` to perform their specific functions. Also, I've identified the need to update sections 5 and 8 of `PLAN_MORA_ROTATIVA_20_ANIOS.md`, incorporating the PHP modifications and clarifying the entire solution. The solution for `fix-issue-01` now involves modifications to `includes/negocio/contratos.php`, and `includes/negocio/cargos.php` and `01_normalizar_catalogo.sql`.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 78.182804545s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 June 2026, 11:09 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.




### Actions

**Tool:** `view_file`
**File:** `VERIFICACION_MANUAL_MORA_20_ANIOS.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.040598376s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Guía de Ejecución de Casos de Prueba Manuales: Mora Rotativa de 20 Años

Esta guía proporciona los pasos y consultas SQL exactas para verificar de manera segura el comportamiento del nuevo motor moratorio de 20 años en **Host C**.

---

### CP01: Integridad de Partición Dual
* **Objetivo:** Verificar que el motor JIT separe los recargos guardando los años $\le 2025$ en `ligacargos_historico` y $\ge 2026$ en `ligacargos`.
* **Pasos:**
  1. Abre el buscador de contratos en ventanilla y carga la ficha del contrato `161`.
  2. Al cargarse la ficha, el motor JIT se ejecuta de forma automática.
  3. Ejecuta la siguiente consulta SQL en tu gestor de base de datos para validar dónde se insertaron físicamente los recargos:
     ```sql
     -- Deben haber recargos correspondientes al año en curso (2026)
     SELECT id, numcontrato, leyenda, monto, fcobro, anio, categoria 
     FROM ligacargos 
     WHERE numcontrato = 161 AND categoria IN (16, 17);

     -- Deben haber recargos históricos (2006-2025)
     SELECT id, numcontrato, leyenda, monto, fcobro, anio, categoria 
     FROM ligacargos_historico 
     WHERE numcontrato = 161 AND categoria IN (16, 17);
     ```
* **Criterio de Aceptación:** Los registros del 2026 están en la tabla activa, y los anteriores a 2025 están en el histórico.

---

### CP02: Idempotencia y Nombres Irregulares (80 Contratos Crónicos)
* **Objetivo:** Asegurar que el motor JIT reconozca recargos existentes (pagados o pendientes) y no genere duplicados, incluso ante nombres de catálogos irregulares gracias al blindaje del Hash Map (`mysqli_real_escape_string` y escape de comodines).
* **Pasos:**
  1. Carga la ficha del contrato `756` (u otro de los 80 contratos crónicos).
  2. Recarga la página 3 veces para forzar ejecuciones JIT consecutivas.
  3. Ejecuta la siguiente consulta para verificar que no existan registros de recargos duplicados con la misma leyenda:
     ```sql
     SELECT leyenda, COUNT(*) as cantidad 
     FROM vw_ligacargos_all 
     WHERE numcontrato = 756 AND categoria IN (16, 17) 
     GROUP BY leyenda 
     HAVING cantidad > 1;
     ```
* **Criterio de Aceptación:** La consulta debe devolver un conjunto vacío (0 duplicados).

---

### CP03: Freno de Emergencia (Límite Bomba)
* **Objetivo:** Validar que el motor JIT detenga la generación de mora en seco si se activa el tope de deuda máxima.
* **Pasos:**
  1. Ve a `Admin -> Operaciones -> Configuración`.
  2. Ajusta el parámetro `reversal_threshold` (Umbral Bomba) a `1000.00`.
  3. Activa la opción `reversal_threshold_enable = 1` (puedes hacerlo vía SQL o interfaz).
  4. Carga la ficha de un deudor con mora acumulada alta (ej. `161`).
  5. Ejecuta la consulta SQL:
     ```sql
     SELECT SUM(monto) FROM vw_ligacargos_pendientes WHERE numcontrato = 161 AND categoria IN (16, 17);
     ```
  6. **Importante:** Regresa el parámetro `reversal_threshold_enable = 0` al finalizar la prueba para restablecer el flujo normal de la amnistía inicial.
* **Criterio de Aceptación:** El monto total de recargos moratorios pendientes no debe superar el límite establecido.

---

### CP04: Auto-Heal No Destructivo (Panel de Amnistía V2)
* **Objetivo:** Comprobar que al desactivar los recargos para ciertos años en el panel de control, la deuda disminuya de inmediato en la UI sin eliminar físicamente los registros. Confirmar que el año 2006 está visible tras la corrección del off-by-one.
* **Pasos:**
  1. Ve a `Admin -> Operaciones -> Configuración`.
  2. En el panel de checkboxes de recargos anuales, comprueba que exista el año **2006** y desactívalo junto a **2007** y **2008**.
  3. Carga la ficha del deudor `161` y verifica que el total de deuda no incluya la mora de esos años.
  4. Ejecuta estas dos consultas para contrastar la vista contra la tabla física:
     ```sql
     -- La vista virtual NO debe listar recargos para esos años
     SELECT * FROM vw_ligacargos_pendientes 
     WHERE numcontrato = 161 AND anio IN (2006, 2007, 2008) AND categoria IN (16, 17);

     -- Los registros físicos deben seguir existiendo en la tabla
     SELECT * FROM ligacargos_historico 
     WHERE numcontrato = 161 AND anio IN (2006, 2007, 2008) AND categoria IN (16, 17);
     ```
* **Criterio de Aceptación:** La vista devuelve 0 registros (ocultos por amnistía), pero la tabla física mantiene los datos íntegros.

---

### CP05: Saneamiento Legacy
* **Objetivo:** Confirmar que no queden recargos pendientes legacy (estado 0 en categorías 16 y 17) huérfanos tras la ejecución del orquestador `run_patch_host_c.sh`.
* **Pasos:**
  1. Ejecuta la siguiente consulta SQL:
     ```sql
     SELECT COUNT(*) FROM ligacargos WHERE estado = 0 AND categoria IN (16, 17);
     SELECT COUNT(*) FROM ligacargos_historico WHERE estado = 0 AND categoria IN (16, 17);
     ```
* **Criterio de Aceptación:** Ambas consultas deben devolver `0`.

---

### CP06: Cobro y Cuadre de Cat 16/17
* **Objetivo:** Verificar que el pago de recargos JIT entre correctamente al flujo contable y se clasifique bajo "RECARGOS".
* **Pasos:**
  1. Ve a ventanilla y realiza un cobro parcial o total de la deuda (que contenga recargos) de un deudor.
  2. Ve a `Reportes -> Concentrado de Corte de Caja`.
  3. Comprueba que el monto pagado de recargos se refleje bajo el concepto jerárquico de **Recargos**.
* **Criterio de Aceptación:** El cobro entra limpio y el reporte de caja clasifica el ingreso en la columna de recargos con paridad a $0 de diferencia.

---

### CP07: Futuro: Base con Mora (2027)
* **Objetivo:** Comprobar que cargos de años futuros no generen mora anticipada.
* **Pasos:**
  1. Crea un cargo en el catálogo para "ANUALIDAD DEL AGUA 2027" (Categoría 2).
  2. Aplica este cargo a un contrato.
  3. Carga la ficha de ese contrato.
* **Criterio de Aceptación:** No se genera ningún recargo para la anualidad 2027 porque aún no se alcanza la fecha de inicio del año moratorio correspondiente.

---

### CP08: Inmunidad en Suspensión (Estado 4)
* **Objetivo:** Validar que los contratos en Suspensión Definitiva no acumulen recargos adicionales.
* **Pasos:**
  1. Identifica un contrato con `estado = 4` y cargos de agua/drenaje pendientes.
  2. Carga su ficha en ventanilla.
* **Criterio de Aceptación:** El motor JIT detecta el estado 4 e interrumpe la simulación, no insertando recargos para este contrato.

---

### CP09: Exención de Primer Año
* **Objetivo:** Validar que se respete el beneficio de exención moratoria a nuevos contratos.
* **Pasos:**
  1. Ubica o crea un contrato con el flag `exento_recargo_primer_anio = 1` registrado en 2025.
  2. Deja su anualidad 2025 pendiente.
  3. Abre su ficha técnica.
* **Criterio de Aceptación:** El motor omitirá la generación de recargos para el periodo exento.

---

### CP10: Inmunidad de Falsos Positivos y Cargos Menores
* **Objetivo:** Comprobar que los cargos recurrentes mensuales o reparaciones (que fueron re-categorizados en V2) no generen recargos moratorios irracionales.
* **Pasos:**
  1. Asigna un cargo como "REHABILITACION DE LA RED" (Cat 5) o "MENSUALIDAD 2006" (Cat 1) a un usuario.
  2. Deja que transcurra el tiempo y carga la ficha en ventanilla.
* **Criterio de Aceptación:** El motor ignora el cargo y no genera recargos, ya que la mora es exclusiva de las categorías 2 (Agua) y 3 (Drenaje) y los falsos positivos fueron extirpados estructuralmente de dichas categorías.

---

### CP11: Reversión y Regeneración (Cancelación)
* **Objetivo:** Verificar que si se cancela un pago de anualidad y sus recargos, estos vuelvan a estar pendientes sin duplicarse en el JIT.
* **Pasos:**
  1. Realiza el cobro de una anualidad y sus recargos en un contrato.
  2. Ve al panel de historial de cobros y haz clic en "Revertir transacción" o "Cancelar Recibo" (cambiando el estado del cobro a `estado = -1`).
  3. Los cargos base y los recargos asociados volverán al estado pendiente (`estado = 0`).
  4. Carga la ficha de ese contrato en ventanilla de nuevo.
* **Criterio de Aceptación:** El JIT reconoce que los recargos ya existen físicos pero volvieron a estar pendientes, reutilizándolos y evitando duplicidades.

---

### CP12: Rotación Dinámica de Ventana
* **Objetivo:** Verificar que el sistema desplace la ventana de cobro de recargos dinámicamente al cambiar los parámetros globales.
* **Pasos:**
  1. Abre el buscador y verifica los recargos para el año 2006 en el contrato `161` (deben ser visibles con `paridad_anios_max_recargo = 20`).
  2. Ve a `Admin -> Operaciones -> Configuración` y cambia temporalmente el parámetro `paridad_anios_max_recargo` a `19`.
  3. Regresa al contrato `161`.
* **Criterio de Aceptación:** El año 2006 (ahora fuera de la ventana de 19 años) debe ocultarse automáticamente de la lista de adeudos pendientes. Al restablecer a `20`, debe volver a mostrarse.

---

### CP13: Desfase Matemático vs Host B (Cto. 161)
* **Objetivo:** Comprobar que Host C calcula la deuda real y completa sin la limitación artificial de 12 meses de Host B.
* **Pasos:**
  1. Consulta el contrato `161` en Host B (legacy) y anota el total de deuda.
  2. Tras haber ejecutado `run_patch_host_c.sh`, consulta el contrato `161` en Host C (V2).
* **Criterio de Aceptación:** **Host C debe reportar una deuda mayor que Host B**, ya que calcula los recargos reales a lo largo de los 20 años de retraso y no se detiene a los 12 meses como el sistema legacy de Host B.

---

### CP14: Ciclo de Vida: Nuevo Contrato 2026
* **Objetivo:** Asegurar que la creación de contratos nuevos en el ejercicio fiscal corriente opere libre de interferencias con el histórico.
* **Pasos:**
  1. Crea un nuevo contrato en 2026.
  2. Carga su ficha.
* **Criterio de Aceptación:** La cuenta nace libre de deuda, con su flag de exención activo, y lista para operar sin registros basura.

---

### CP15: Transición de Estado (3 → 1)
* **Objetivo:** Comprobar la reactivación y cálculo moratorio al transitar de Suspensión Administrativa a Activo.
* **Pasos:**
  1. Ubica un contrato en Suspensión Administrativa (Estado 3) que tenga adeudos de anualidades anteriores a la suspensión.
  2. Abre su ficha y cambia su estado a Activo (Estado 1).
  3. Recarga la ficha de cobro.
* **Criterio de Aceptación:** Al reactivarse, el motor moratorio se ejecuta y calcula de golpe todos los recargos aplicables para actualizar su saldo real al día.

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

### Thinking

**Prioritizing Tool Specificity**

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.


**Refining Tool Usage**

I'm now employing `cat` solely for viewing, `grep` for finding, and `sed` for replacing content within files. I'm focusing on utilizing `replace_file_content` for updating. I'm preparing to update `VERIFICACION_MANUAL_MORA_20_ANIOS.md` with the "snowball" bug context, detailing how a bug caused the cessation of historical debt generation and a subsequent hardcode workaround. I will add a new Test Case, CP16, to describe and test the scenario now. It could be a new CP16, or I might update CP13 with more specifics. I'll add CP16: a new test case for the fix.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 5.430190984s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 23 June 2026, 11:09 am

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

I'm focusing now on tool specificity, primarily. I'm actively avoiding `cat` for file creation/appending and will only use it for its intended function. I'm also ensuring that I’m now using `grep_search` instead of nesting `grep` inside bash commands. Furthermore, I will not be using `ls` for listing files.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.211874464s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

## User Request

. COnsidero esta sección "9. ANEXO FINANCIERO: Comparativa Pura e Impacto Económico
(Host B vs Host C) " se debe ampliar, actualizar  ahora con la puerta que se habrio del bombazo de recargos vendran en cada consulta de mantenerse los 27 años, cierto ?
. aqui:  8. ANEXO TÉCNICO: Documentación de Scripts y Orquestadores   , no aprecio donde ocurre lo del mega bug "El límite no estaba en el código, estaba en la base de datos.", analiza y documenta el porque y como se resuelve en el script sql q corresponda, o no es aqui ?

<details>
<summary>Context</summary>

**Active File:** `contratos.php`
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

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.




### Actions

**Tool:** `view_file`
**File:** `04_mora_rotativa_20_anios.sql`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.082377599s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 05_mora_rotativa_20_anios.sql - Activación de Mora Histórica de 20 Años
-- =============================================================================
USE `awa`;

-- 1. Saneamiento Legacy Dual:
-- Cancelar (estado = -1) todos los recargos pendientes legacy (cat 16 y 17)
-- en ambas tablas (ligacargos y ligacargos_historico).
UPDATE ligacargos 
SET estado = -1 
WHERE estado = 0 
  AND categoria IN (16, 17);

UPDATE ligacargos_historico 
SET estado = -1 
WHERE estado = 0 
  AND categoria IN (16, 17);

-- 2. Encendido Maestro (Habilitar mora desde 2006 hasta 2026)
-- Limpiamos cualquier recargo previamente habilitado
UPDATE cargos SET recargo = 0 WHERE recargo = 1;

-- Habilitamos el cálculo de recargos para Categorías 2 (Agua) y 3 (Drenaje) desde 2006
UPDATE cargos 
SET recargo = 1 
WHERE anio >= 2006 
  AND anio <= 2026 
  AND categoria IN (2, 3);

-- Sincronizar el Libro Mayor Activo con el Catálogo
UPDATE ligacargos l
JOIN cargos c ON l.anio = c.anio AND l.categoria = c.categoria
SET l.recargo = c.recargo
WHERE l.categoria IN (2, 3);

-- Sincronizar el Libro Mayor Histórico con el Catálogo
UPDATE ligacargos_historico lh
JOIN cargos c ON lh.anio = c.anio AND lh.categoria = c.categoria
SET lh.recargo = c.recargo
WHERE lh.categoria IN (2, 3);

-- 3. Configuración en la tabla config_sistema
-- Establecemos la ventana rotativa a 20 años
UPDATE config_sistema 
SET valor = '20' 
WHERE clave = 'paridad_anios_max_recargo';

-- Establecemos el Límite Bomba a 14000
UPDATE config_sistema 
SET valor = '14000' 
WHERE clave = 'reversal_threshold';

-- Asegurar que reversal_threshold_enable inicie apagado (0) para la amnistía inicial
UPDATE config_sistema 
SET valor = '0' 
WHERE clave = 'reversal_threshold_enable';

-- 4. Actualización de la Vista vw_ligacargos_pendientes
-- Implementa la Ventana Rotativa de forma no destructiva (Auto-Heal) y Amnistías
CREATE OR REPLACE VIEW `vw_ligacargos_pendientes` AS
  SELECT
    l.id AS id_cargo,
    l.numcontrato, l.leyenda, l.monto, l.fcobro, l.fpago,
    l.estado, l.recargo, l.folio, l.anio, l.numcontratoresp,
    l.idpago_vinc, l.categoria, l.repetido, l.f_sinc_mlt_asam,
    IF(l.categoria IN (16, 17), 1, 0) AS `es_recargo_moratorio`,
    'activa' AS `_origen`
  FROM `ligacargos` l
  WHERE l.estado = 0
    AND NOT (
      l.categoria IN (16, 17)
      AND (
        (l.anio < (SELECT YEAR(CURDATE()) - CAST(COALESCE(NULLIF(valor, ''), '0') AS UNSIGNED) FROM config_sistema WHERE clave = 'paridad_anios_max_recargo')
         AND (SELECT CAST(COALESCE(NULLIF(valor, ''), '0') AS UNSIGNED) FROM config_sistema WHERE clave = 'paridad_anios_max_recargo') > 0)
        OR NOT EXISTS (
          SELECT 1 FROM cargos c 
          WHERE c.anio = l.anio 
            AND c.categoria = IF(l.categoria = 16, 2, 3) 
            AND c.recargo = 1
        )
      )
    )
UNION ALL
  SELECT
    h.id AS id_cargo,
    h.numcontrato, h.leyenda, h.monto, h.fcobro, h.fpago,
    h.estado, h.recargo, h.folio, h.anio, h.numcontratoresp,
    h.idpago_vinc, h.categoria, h.repetido, h.f_sinc_mlt_asam,
    IF(h.categoria IN (16, 17), 1, 0) AS `es_recargo_moratorio`,
    'historico' AS `_origen`
  FROM `ligacargos_historico` h
  WHERE h.estado = 0
    AND NOT (
      h.categoria IN (16, 17)
      AND (
        (h.anio < (SELECT YEAR(CURDATE()) - CAST(COALESCE(NULLIF(valor, ''), '0') AS UNSIGNED) FROM config_sistema WHERE clave = 'paridad_anios_max_recargo')
         AND (SELECT CAST(COALESCE(NULLIF(valor, ''), '0') AS UNSIGNED) FROM config_sistema WHERE clave = 'paridad_anios_max_recargo') > 0)
        OR NOT EXISTS (
          SELECT 1 FROM cargos c 
          WHERE c.anio = h.anio 
            AND c.categoria = IF(h.categoria = 16, 2, 3) 
            AND c.recargo = 1
        )
      )
    );


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

### Thinking

**Prioritizing Tool Specificity**

I'm focusing now on tool specificity. I'm actively avoiding `cat` for file creation or appending, opting for dedicated methods instead. Also, I'm making sure to use `grep_search` and I'm consciously avoiding the use of `ls` for file listing purposes. I am also working to ensure I am using the most specific tool for any given task.


**Refining Tool Usage**

I'm now thinking about specific tools: `cat` is for viewing, `grep` for finding, and `sed` for replacing. A related tool is the `replace_file_content` function. I also see that the SQL script enables `recargo=1` for years 2006-2026. The `UPDATE` query targets specific years and categories. I'm connecting the moratory flag (`recargo=1`) with the query in `contratos.php` and I'm tracing the implications, especially regarding debt generation and that "snowball" bug about the 2006 limit.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 11.362287209s
- **Model:** Gemini 3.1 Pro (High)
</details>

---

---

*Generated by Chatledger for Antigravity*