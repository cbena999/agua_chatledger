# Validating Contract Activation Surcharges

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `8b81848b-75fd-4518-a6f4-3be0e1c95642` |
| **Cascade ID** | `ec248308-ecfa-458d-a121-3b4cf5dfe0b1` |
| **Type** | Agent Conversation |
| **Total Steps** | 76 |
| **Started** | 26 Mar 2026, 9:17 am |
| **Completed** | 26 Mar 2026, 9:19 am |

---

## User Request

QUERY FOR INFORMATION CONTRACT STATES
Validar si un contrato cuando pasa o se cambia su estado hacia ACTIVO, inmediato  al cambio o posterior se realiza un cálculo de recargos de años pasados al vigente; los cuales son asignados al contrato. 
Muéstrame un informe.


<details>
<summary>Context</summary>

**Active File:** `QUERY_FOR_INFORMATION_CONTRACT_STATES_Validar_si_u_3b4cf5dfe0b1.md`
**Language:** markdown
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 8 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation d0a59907-65fa-4f88-8f9e-e38f996ec9ea: Reassigning Contracts And Data
- Created: 2026-03-26T01:54:30Z
- Last modified: 2026-03-26T14:26:40Z

### USER Objective:
Resolving Contract Data Inconsistencies

The user's objective is to resolve data integrity issues caused by manual operation errors, specifically involving duplicate user names and incorrect contract assignments. The goal is to reassign contract 1378 to user 1590, clean up "phantom" debts for contracts in "Suspensión Definitiva" (state 4) to ensure accurate financial reporting, and implement robust backend and UI safeguards to prevent future inconsistencies, such as automatically disconnecting services and disabling editing features for suspended contracts.

## Conversation c0e4ec54-b756-4c8e-93a3-be7c9c8d1c27: Analyzing Water Service Debt
- Created: 2026-03-26T04:01:04Z
- Last modified: 2026-03-26T05:36:56Z

### USER Objective:
Auditing Water Service Debt

The user's objective is to perform a comprehensive audit of the 'agua' web application's financial data to resolve inconsistencies in the "cartera vencida" (overdue accounts). The goal is to identify and classify the root causes of inflated debt in suspended contracts, investigate "orphan" payment records, and propose technical and operational improvements to the system's logic for late payment penalties and service billing to ensure accurate financial reporting and data integrity.

## Conversation cd32d797-4937-45fa-9748-010475e00de2: Analyzing User Search Duplicates
- Created: 2026-03-25T19:29:28Z
- Last modified: 2026-03-25T20:50:30Z

### USER Objective:
Enhancing User Search And Display

The user's objective is to improve data visibility and identification within the 'agua' web application. Specifically, the goal is to implement a visual indicator for duplicate user names during searches (using pastel color highlighting) and to update the "Nuevo Contrato" and "Datos del Contrato" screens to display associated contract IDs alongside user names for better clarity.

## Conversation 3ebcbf60-6822-43b1-a39a-261c83016221: Implementing Usuarios Menu Feature
- Created: 2026-03-25T04:41:31Z
- Last modified: 2026-03-25T19:14:34Z

### USER Objective:
Implementing User Menu Features

The user's goal is to enhance the web application's navigation by converting the "Usuariooos1" menu item into a dropdown menu containing "Búsqueda" and a new "Usuarios especiales" report. The objective is to implement this report within the application's framework (AJAX + Plates) to display users without contracts or with all contracts in "Suspensión Definitiva," including features like desegregated totals, filtering, and clean data presentation.

## Conversation ea669f88-ab22-4487-bc4d-217b5c14bee6: Analyzing Automatic Surcharge Generation
- Created: 2026-03-25T14:25:10Z
- Last modified: 2026-03-25T14:29:24Z

### USER Objective:
Analyzing Automatic Surcharge Generation

The user's objective is to determine the specific triggers and execution logic for the automatic generation of late payment surcharges (recargos de mora) within the 'agua' application. The goal is to identify the conditions under which the system activates this process and to understand the underlying implementation, starting with an investigation of the 'calcula_recargos.php' file and its related source code.

## Conversation 6de153d2-2a9c-4aa5-984a-9679e4515c82: Assisting With Ongoing Projects
- Created: 2026-03-25T03:15:31Z
- Last modified: 2026-03-25T03:15:34Z

### USER Objective:
Assisting With Ongoing Projects

The user is seeking assistance to continue their work on various technical projects, including database management, financial data reconciliation, and application development within the 'agua' web application ecosystem. The goal is to provide ongoing support for their tasks, which involve maintaining data integrity, ensuring accurate financial reporting, and refining system functionality.

## Conversation 43acb21e-274c-4bf9-a214-17f11d2170ba: Database Backup And Verification
- Created: 2026-03-25T01:59:27Z
- Last modified: 2026-03-25T02:57:01Z

### USER Objective:
Database Backup And Verification

The user's objective is to create a consistent and verifiable backup of the `awa` database, including both SQL and binary formats, to ensure data integrity for future imports. This involves auditing the database's metadata, character sets, and table configurations, followed by generating the backup with checksum verification and storing it in the specified directory `/opt/lampp/htdocs/agua/bd-schema/dell-roja-xampp1.8.3`.

## Conversation 53272a82-9ae1-4f85-9930-e36204f92811: Fixing Financial Data Inconsistencies
- Created: 2026-03-24T23:22:20Z
- Last modified: 2026-03-25T01:11:23Z

### USER Objective:
Financial Data Reconciliation And Repair

The user's objective is to achieve full financial data consistency between historical Excel documentation and the 'agua' web application's "Corte de Caja" reports. This involves auditing and correcting payment states, resolving discrepancies in category totals (specifically 'Cancelaciones'), and ensuring the system's cancellation logic is robust and accurate across all reporting periods (2018-2026).

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 26 Mar 2026, 9:17 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Investigating System Behavior**

I'm currently focused on the "agua" system and how it handles surcharge calculations when a contract status changes to "ACTIVO." Specifically, I'm examining whether the system immediately calculates and assigns surcharges for past years, up to the present, upon this status change. I'm aiming to clarify the timing and process of these recargos.




### Actions

**Tool:** `mcp_bdawahost-a_list_tables`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.150390187s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 26 Mar 2026, 9:17 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
<failed_tool_calls_reminder>
As a reminder, the following tool calls did not succeed since the last planner response:
Tool mcp_bdawahost-a_list_tables: Status CORTEX_STEP_STATUS_ERROR
</failed_tool_calls_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, failed_tool_calls_reminder

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
**Created:** 26 Mar 2026, 9:17 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

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
**Created:** 26 Mar 2026, 9:17 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/config`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `config` (1 items)</summary>

**Path:** `opt/lampp/htdocs/agua/config`

| Name | Type | Size |
|------|------|------|
| `Conexion.php` | File | 2252 bytes |

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
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Conexion.php`

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
class Conexion
{
	public $manejador;
	public $servidor;
	public $usuario;
	public $contrasena;
	public $basedatos;
	public $conexion;
	public $link;
	function __construct()
	{
		$this->manejador = 'mysql';
		$this->servidor = 'localhost';
		$this->usuario = 'root';
		$this->contrasena = 'comite_2026';
		$this->conexion = 0;
		$this->basedatos = 'awa';
	}
	function establecerDatos($m, $s, $u, $c, $b)
	{
		$this->manejador = $m;
		$this->servidor = $s;
		$this->usuario = $u;
		$this->contrasena = $c;
		$this->basedatos = $b;
	}
	function establecerBD($b)
	{
		$this->basedatos = $b;
	}
	function abrirConexion()
	{
		$this->link = @mysqli_connect($this->servidor, $this->usuario, $this->contrasena, $this->basedatos);
		mysqli_set_charset($this->link, "utf8mb4");
		if (!$this->link) {
			$this->link = @mysqli_connect($this->servidor, $this->usuario, "", $this->basedatos);
			mysqli_set_charset($this->link, "utf8mb4");
			if (!$this->link) {
				print "<script>$('#mensajes').html(\"<img src='alerta.png'><br><b>No es posible conectarse a la Base de Datos del sistema.</b><br><br>Intente levantar el servidor <i>MySQL</i> de forma manual<br>ya que de otra forma, el sistema no funcionar&aacute;. Despu&eacute;s, recargue esta p&aacute;gina.\");	$('#mensajes').fadeIn(500,function(){});</script>";
				return 0;
			} else {
				$this->conexion = 1;

				return 1;
			}
		} else {
			$this->conexion = 1;
			return 1;
		}
	}
	function cerrarConexion()
	{
		mysqli_close($this->link);
	}
	function conectarBaseDatos()
	{
		if ($this->conexion == 0)
			$this->abrirConexion();
		if ($this->conexion == 1) {
			$db_selected = @mysqli_select_db($this->link, $this->basedatos);
			if (!$db_selected)
				return 0;
			else
				return 1;
		}
	}
	function q($query)
	{
		return @mysqli_query($this->link, $query);
	}
	function fetch_array($res)
	{
		return @mysqli_fetch_array($res);
	}
	function num_rows($res)
	{
		return @mysqli_num_rows($res);
	}
	function insert_id()
	{
		return @mysqli_insert_id($this->link);
	}
	function error()
	{
		return mysqli_error($this->link);
	}
	function free_result($res)
	{
		@mysqli_free_result($res);
	}
	function real_escape_string($string)
	{
		return mysqli_real_escape_string($this->link, $string);
	}
}
?>
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
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_connect_db`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
<failed_tool_calls_reminder>
As a reminder, the following tool calls did not succeed since the last planner response:
Tool mcp_bdawahost-a_connect_db: Status CORTEX_STEP_STATUS_ERROR
</failed_tool_calls_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, failed_tool_calls_reminder

</details>

---

## Agent Response

### Thinking

**Diagnosing Connection Failure**

I'm currently trying to diagnose a database connection failure. The error message is `ECONNREFUSED 127.0.0.1:3306`, which usually means MySQL isn't running or is on the wrong port. However, I'm working within a XAMPP environment, which complicates the usual troubleshooting steps. I need to verify the MySQL service is active in XAMPP.




### Actions

**Tool:** `view_file`
**File:** `mcp_config.json`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.537587283s
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
        "mysql://root:sdrastbuy@192.168.1.120:3306/awa"
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

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-b_connect_db`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
<failed_tool_calls_reminder>
As a reminder, the following tool calls did not succeed since the last planner response:
Tool mcp_bdawahost-b_connect_db: Status CORTEX_STEP_STATUS_ERROR
</failed_tool_calls_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode, failed_tool_calls_reminder

</details>

---

## Agent Response

### Thinking

**Testing MCP Tools Directly**

I'm now thinking I need to bypass `connect_db`. It seems `bdawahost-a` and `bdawahost-b` won't connect directly via the MCP server interface. I should try using the MCP tools themselves, since they probably anticipate the database's accessibility from their operational environment.




### Actions

**Tool:** `grep_search`
**Query:** `estado.*=.*1`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.000646614s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `ACTIVO`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `calcula_recargos.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

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
<summary>Directory: `agua` (22 items)</summary>

**Path:** `opt/lampp/htdocs/agua`

| Name | Type | Size |
|------|------|------|
| `.chatledger` | Directory | - |
| `.git` | Directory | - |
| `.gitignore` | File | 239 bytes |
| `.vscode` | Directory | - |
| `admin` | Directory | - |
| `bd-schema` | Directory | - |
| `composer.json` | File | 59 bytes |
| `composer.lock` | File | 2656 bytes |
| `config` | Directory | - |
| `config-xamp183` | Directory | - |
| `docs-dev` | Directory | - |
| `includes` | Directory | - |
| `index2.php` | File | 5494 bytes |
| `libs` | Directory | - |
| `login` | Directory | - |
| `reportes` | Directory | - |
| `ruteador.php` | File | 8408 bytes |
| `tests` | Directory | - |
| `uploads` | Directory | - |
| `vendor` | Directory | - |
| `views` | Directory | - |
| `web-assets` | Directory | - |

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
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

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
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

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
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Investigating Contract Status**

I'm currently focused on validating the "contract state" behavior. I'm starting an investigation, and I am searching for keywords like "estado" and "contrato_toma" to pinpoint the contract status changes. Additionally, I plan to search for "recargo" within the "admin" and "libs" directories to uncover related functionalities.




### Actions

**Tool:** `grep_search`
**Query:** `recargo`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.723058407s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Analyzing Contract Exemptions**

I've discovered a relevant field in the `contrato` table: `contrato.exento_recargo_primer_anio`. This suggests a system to flag contracts exempt from first-year surcharges, offering a direct link to the problem. I will be looking deeper into its use within the database and other systems, looking to understand its implications, and how it's handled.




### Actions

**Tool:** `grep_search`
**Query:** `function calcula_recargos(`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.053457143s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

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
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/*
 * cargos.php — Lógica de negocio para cargos
 * Rediseño v2: calcula_recargos sin hardcodes, usa $cfg de config_sistema
 * PHP 5.5 compatible
 */

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

	// EXENCIÓN RECARGOS PRIMER AÑO — campo ya existente en contrato
	$res_exencion = $y->q("SELECT YEAR(fecha) as anio_creacion, exento_recargo_primer_anio FROM contrato WHERE numcontrato='$numcontrato'");
	list($anio_creacion, $exento_recargo) = $y->fetch_array($res_exencion);
	if ($exento_recargo == 1 && $anio == $anio_creacion) {
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

		$respagado = $y->q("SELECT COUNT(numcontrato) FROM ligacargos WHERE leyenda='$leyenda' AND numcontrato=$numcontrato AND estado=1");
		list($pagado) = $y->fetch_array($respagado);

		if ($pagado == 0) {
			for ($i = 1; $i <= $meses; $i++) {
				$leyenda_recargo = "RECARGO $nom_meses[$mesrecargo] $aniorecargo - $leyenda";
				if ($aniorecargo == $anio) {
					$q = "INSERT INTO ligacargos (numcontrato,leyenda,monto,fcobro,fpago,estado,recargo,folio,anio,numcontratoresp,idpago_vinc,categoria,repetido) VALUES('$numcontrato','$leyenda_recargo',$monto_recargo,NOW(),NOW(),0,$recargo,'',$anio,'','',$categoria_recargo,$cuenta)";
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
	$q1 = explode(' ', $query);
	$r = "";
	foreach ($q1 as $var) {
		$r .= (($r == "") ? "" : " and ") . (($usuario == 'usr') ? "nombre" : "contrato.domicilio") . " like '%$var%'";
	}

	$estados_array = array();
	if ($estado1 == 1)
		array_push($estados_array, 1);
	if ($estado2 == 1)
		array_push($estados_array, 2);
	if ($estado3 == 1)
		array_push($estados_array, 3);
	if ($estado4 == 1)
		array_push($estados_array, 4);

	$estados = join(",", $estados_array);
	$query_sql = "select contrato.numcontrato, nombre, contrato.domicilio, agua, drenaje, if(isnull(total),0,total) as adeudo, tipo from (contrato left join usuario on numusuario=noconsecutivo) left join (select sum(monto) as total, numcontrato from ligacargos where estado=0 group by numcontrato) lc on contrato.numcontrato=lc.numcontrato where estado IN ($estados) and $r" . (($agua == 'x') ? "" : (($agua == '1') ? " and agua=1" : " and agua=0")) . (($dren == 'x') ? "" : (($dren == '1') ? " and drenaje=1" : " and drenaje=0"));

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
		$folio_sig = $recibo;
		foreach ($pago as $ref => $val) {
			$lm = explode('|', $val);
			$repetidoval = $lm[2];
			$categoriaval = isset($lm[3]) ? $lm[3] : 0;
			$leyendaval = $lm[0];

			if ($categoriaval == 6 || strpos(strtoupper($leyendaval), 'FALTA ASAMBLEA') !== false) {
				// Buscar al usuario de este contrato
				$res_u = $y->q("select numusuario from contrato where numcontrato = '$idc'");
				list($numusuario) = $y->fetch_array($res_u);

				// Buscar todos los contratos de este usuario
				$res_c = $y->q("select numcontrato from contrato where numusuario = $numusuario");
				$contratos_usuario = [];
				while (list($nc) = $y->fetch_array($res_c)) {
					$contratos_usuario[] = $nc;
				}

				// Actualizar todos los contratos para esta misma falta de asamblea
				foreach ($contratos_usuario as $nc_u) {
					$monto_final = ($nc_u == $idc) ? "monto" : "0"; // Solo el contrato actual mantiene su monto real
					$q = "update ligacargos set fpago=now(), estado=1, folio=$folio_sig, idpago_vinc='$idc', monto=$monto_final where numcontrato='$nc_u' and leyenda=\"$leyendaval\" and repetido = $repetidoval";
					$y->q($q);
				}
			} else {
				$q = "update ligacargos set fpago=now(), estado=1, folio=$folio_sig where numcontrato='$idc' and leyenda=\"$leyendaval\" and repetido = $repetidoval";
				$y->q($q);
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
				$q = "update ligacargos set fpago=now(), estado=-1 where numcontrato='$idc' and leyenda=\"" . $lm[0] . "\" and repetido=$rep_val";
				$x .= ((strlen($x) > 0) ? ", " : "") . $lm[0] . (($lm[2] == 0) ? "" : " (r$lm[2])") . " (\$" . $lm[1] . ")";
				$y->q($q);
			}
			$y->q("insert into cambios values(now(), 'cancelacion', '$texto', '$x', '$idc')");
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

	$n = 0;
	$m = 0;
	foreach ($cargo as $leyenda_input) {
		$a = explode('|', $leyenda_input);
		$contratos_lista = is_array($c) ? $c : array($c);

		foreach ($contratos_lista as $numcontrato) {
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
			if ($n_tomas_agua == 0 && $categoria == 2)
				$aplicar_cargo = false;
			if ($n_tomas_drenaje == 0 && $categoria == 3)
				$aplicar_cargo = false;

			if ($aplicar_cargo) {
				if ($repetir == 0)
					$q = "insert into ligacargos (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) values('$numcontrato', '$leyenda', $monto, now(), now(), 0, $recargo, '', $anio, '', '', $categoria, 0)";
				else {
					$res = $y->q("select count(numcontrato) from ligacargos where leyenda = '$leyenda' AND numcontrato = $numcontrato");
					list($cuenta) = $y->fetch_array($res);
					$q = "insert into ligacargos (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) values('$numcontrato', '$leyenda', $monto, now(), now(), 0, $recargo, '', $anio, '', '', $categoria, $cuenta)";
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

	return $templates->render('sistema/mensaje', [
		'titulo' => 'Aplicaci&oacute;n de Cargos',
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
								 FROM ligacargos l 
								 JOIN contrato c ON l.numcontrato = c.numcontrato
								 WHERE l.leyenda='$leyenda' AND l.estado=0");
		
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
				$y->q("UPDATE ligacargos SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND repetido=$rep AND estado=0");
				$actualizados++;
			}
		}
		
		if ($actualizados > 0) {
			$salida .= "Se sincronizó el saldo retroactivamente en <b>$actualizados</b> contratos con este cargo pendiente.<br>";
			$antes_str = "Se modificaron tarifas del cargo. Tarifas aplicadas: Normal $\$$monto, Comercial: $\$$monto_comercial";
			$despues_str = "Sincronizacion de saldo aplicada a $actualizados contratos pendientes.";
			$y->q("INSERT INTO cambios VALUES(NOW(), 'Sincr. masiva de Adeudos - $leyenda', '$antes_str', '$despues_str', '-MASIVO-')");
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

	$q = "insert into egresos values(null, '$nombre', $monto, '$cat', now(), 0, '', '$nombredetalle', '$recibe')";

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

function regresarCargoCancelado($contrato, $leyenda, $repetido)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	$y->q("update ligacargos set estado = 0 where numcontrato = '$contrato' AND leyenda = '$leyenda' AND repetido = $repetido");
}

?>
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
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Analyzing Exemption Logic**

I've been looking closely at the `calcula_recargos` function, specifically within `includes/negocio/cargos.php`. My main takeaway is the exemption logic: it checks the `exento_recargo_primer_anio` flag in the `contrato` table. If true, and it's the first year of the charge, then calculations are bypassed entirely.




### Actions

**Tool:** `grep_search`
**Query:** `estado.*=.*1`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.217921842s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `UPDATE.*contrato`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 26 Mar 2026, 9:18 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/includes`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `includes` (3 items)</summary>

**Path:** `opt/lampp/htdocs/agua/includes`

| Name | Type | Size |
|------|------|------|
| `js` | Directory | - |
| `negocio` | Directory | - |
| `numeros.php` | File | 1807 bytes |

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
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/includes/negocio`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `negocio` (5 items)</summary>

**Path:** `opt/lampp/htdocs/agua/includes/negocio`

| Name | Type | Size |
|------|------|------|
| `cargos.php` | File | 22633 bytes |
| `contratos.php` | File | 25428 bytes |
| `pq20cm.php` | File | 1582 bytes |
| `sistema.php` | File | 7749 bytes |
| `usuarios.php` | File | 9722 bytes |

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
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

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

	$res = $y->q("SELECT nombre, numusuario, contrato.domicilio, contrato.masdatos, tipo, agua, drenaje, observaciones, estado, metros, YEAR(contrato.fecha), MONTH(contrato.fecha) FROM contrato LEFT JOIN usuario ON numusuario=noconsecutivo WHERE numcontrato='$id'");

	$resx = $y->q("SELECT folio+1 FROM ligacargos ORDER BY folio DESC LIMIT 0,1");
	list($foliotope) = $y->fetch_array($resx);

	list($nombre, $numusuario, $domicilio, $masdatos, $tipo, $agua, $drenaje, $observaciones, $estado, $metros, $aniocontrato, $mescontrato) = $y->fetch_array($res);

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
					$q = "INSERT INTO ligacargos (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, NOW(), NOW(), 0, $recargo, '', $anio, '', '', $categoria, 0)";
					$y->q($q);
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, 0, $y, $mescontrato, $cfg);
				} else {
					$resautomatico = $y->q("SELECT COUNT(numcontrato) FROM ligacargos WHERE leyenda='$leyenda' AND numcontrato=$numcontrato");
					list($cuenta) = $y->fetch_array($resautomatico);
					$q = "INSERT INTO ligacargos (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, NOW(), NOW(), 0, $recargo, '', $anio, '', '', $categoria, $cuenta)";
					$y->q($q);
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg);
				}
			}
		}
	}

	// --- Otros contratos del mismo usuario ---
	$res2 = $y->q("SELECT numcontrato, domicilio FROM contrato WHERE numusuario=$numusuario AND numcontrato != '$id'");
	$otros_contratos = array();
	while (list($contrato_o, $domicilio_o) = $y->fetch_array($res2)) {
		$otros_contratos[] = array('contrato' => $contrato_o, 'domicilio' => $domicilio_o);
	}

	// --- Adeudos ---
	$res = $y->q("SELECT leyenda, monto, recargo, repetido, categoria FROM ligacargos WHERE numcontrato='$id' AND estado=0 ORDER BY anio");
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
	$resc = $y->q("SELECT leyenda, monto, recargo, repetido FROM ligacargos WHERE numcontrato='$id' AND estado=-1 ORDER BY fcobro");
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
		}
		$y->q("INSERT INTO cambios VALUES(NOW(), 'Cambio de estado de contrato', '$texto', 'Se asigna el estado del contrato $contrato a [$estado]', '$contrato')");
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
		$y->q("INSERT INTO cambios VALUES(NOW(), 'Cambio de propietario del contrato $contrato', 'Usuario=$usuario', 'Usuario=$nuevousuario', '$contrato')");
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
		$descripciones .= (($descripciones == "") ? "" : " AND ") . "numcontrato LIKE '$r'";
	}
	$res = $y->q("SELECT numcontrato, nombre, contrato.domicilio, estado FROM contrato LEFT JOIN usuario ON numusuario=noconsecutivo WHERE $descripciones ORDER BY numcontratoletras+0 ASC");
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

	// Leer estado actual de tomas para detectar desconexiones
	$tomas_actuales = array();
	$res_ta = $y->q("SELECT num_toma, tiene_agua, tiene_drenaje, estado_agua, estado_drenaje FROM contrato_toma WHERE numcontrato='$id'");
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
			        $y->q("INSERT INTO cambios VALUES(NOW(), 'Eliminaci&oacute;n toma $n', 'existente', 'eliminada por reduccion', '$id')");
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
    
    			// Si se desconectó agua — quitar cargo anual sin pagar
    			$ant_agua = isset($tomas_actuales[$n]) ? intval($tomas_actuales[$n]['estado_agua']) : 1;
    			if ($ant_agua == 1 && $e_agua == 0) {
    				_quitaCargoAnual($id, 'AGUA', $y);
    				$y->q("INSERT INTO cambios VALUES(NOW(),'Desconexion agua toma $n','conectado','desconectado','$id')");
    			}
    
    			// Si se desconectó drenaje — quitar cargo anual sin pagar
    			$ant_drenaje = isset($tomas_actuales[$n]) ? intval($tomas_actuales[$n]['estado_drenaje']) : 1;
    			if ($ant_drenaje == 1 && $e_drenaje == 0) {
    				_quitaCargoAnual($id, 'DRENAJE', $y);
    				$y->q("INSERT INTO cambios VALUES(NOW(),'Desconexion drenaje toma $n','conectado','desconectado','$id')");
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
			$y->q("INSERT INTO cambios VALUES(NOW(), 'Actualizaci&oacute;n del contrato $id', '$regAntes', '$regDespues', '$id')");
		}
		$y->q("UPDATE contrato SET $full_update WHERE numcontrato='$id'");
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
	$y->q("UPDATE ligacargos SET estado=-1, fpago=NOW() WHERE numcontrato='$numcontrato' AND UPPER(leyenda) LIKE 'ANUALIDAD DEL $servicio $anio_actual%' AND estado=0");
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

	if ($nuevo_estado == 0) {
		_quitaCargoAnual($numcontrato, $servicio, $y);
		$y->q("INSERT INTO cambios VALUES(NOW(),'Desconexion $servicio toma $num_toma','conectado','desconectado','$numcontrato')");
	} else {
		$y->q("INSERT INTO cambios VALUES(NOW(),'Reconexion $servicio toma $num_toma','desconectado','conectado','$numcontrato')");
	}

	// Sincronizar campos legacy
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($tot_a) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($tot_d) = $y->fetch_array($r_d);
	$y->q("UPDATE contrato SET agua=$tot_a, drenaje=$tot_d WHERE numcontrato='$numcontrato'");

	return "<script>cargaDatosContrato('$numcontrato');</script>";
}

function guardaNuevoContrato($id, $usr, $domicilio, $tipo, $agua, $drenaje, $masdatos, $observaciones, $metros, $tomas_data, $num_tomas)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg    = cargaConfig($y);
	$exento = intval(obtenerValorSeguro($cfg, 'nuevo_contrato_exento_default', 1));

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

		$salida = "<script>cargaDatosContrato('$id');</script>";
	} else {
		$salida = $templates->render('sistema/mensaje', array(
			'titulo'  => 'Cambios sin efecto',
			'mensaje' => 'No ha sido posible agregar este contrato a la base de datos.'
		));
	}
	return $salida;
}
?>
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
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Analyzing Contract Loading**

I've just focused on `includes/negocio/contratos.php`. I've identified the core function, `cargaContrato($id)`, spanning lines 23-226, which loads contract data. Next, I am looking at automatic charges, specifically around line 6, to see how they are implemented within the contract loading process.


**Confirming Active Contract Behavior**

I've confirmed the behavior of the active contract process. If a contract's state is 1, the system iterates through "automatic" charges, looking at their year and comparing it to the contract's year. Missing charges trigger the insertion of a new charge. Following insertion, the `calcula_recargos` function calculates surcharges for all past months. It appears that delayed activation can cause retroactive charge calculation and insertion.


**Summarizing Retroactive Charges**

Now, I'm focusing on synthesizing my findings. I've reconstructed the logic for calculating retroactive charges triggered by a contract's activation. I am thinking of a detailed technical explanation of the charge calculation process, addressing the annualities from 2020 through 2026. The key is in the `cargaContrato` function's behavior with active contracts and the recursive application of `calcula_recargos` that is triggered upon contract loading in the UI. I will clarify that `cambiaestado` only updates a flag and doesn't directly insert any charges.




### Actions

**Tool:** `view_file`
**File:** `ruteador.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.817576208s
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

foreach ($_GET as $variable => $valor) {
    $_GET[$variable] = str_replace("'", "\'", $_GET[$variable]);
}

foreach ($_POST as $variable => $valor) {
    $_POST[$variable] = str_replace("'", "\'", $_POST[$variable]);
}

extract($_GET);
extract($_POST);

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
        print guardaUsuario($id, $nombre, $domicilio, $telefono, $email, $masdatos);
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
        print aplicacargos($c, $cargo);
        break;
    case 'aplicacargosauno':
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
        print regresarCargoCancelado($contrato, $leyenda, $repetido);
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

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<planning_mode>
You're in planning mode. Exercise judgement on whether the user's last request warrants a plan and take action accordingly.
If the user's request warrants a plan then follow this workflow:
1. Research first before taking actions. Do not use your code editing tools or run modifying commands during this time. The exception is if the task is trivially simple.
2. Create an implementation plan artifact with `request_feedback = true`. The user must approve the plan before you are allowed to proceed.
3. After receiving approval, begin execution. Create and update the task artifact as you work.
4. Verify any work that you have done.
5. Create a walkthrough artifact to present your work to the user. When writing artifacts, make sure to follow the artifact formatting guidelines and use github alerts to highlight critical sections.
If the user's request does NOT warrant a plan then continue your work WITHOUT making a plan or requesting user feedback.
</planning_mode>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** planning_mode

</details>

---

## Agent Response

### Thinking

**Confirming Logic Flow**

I've validated the control flow: `cambiaestado` triggers a script. That script is confirmed to call `cargaDatosContrato($id)`, and this function, as expected, uses AJAX to fetch data. This confirms the initial understanding is accurate.


**Mapping and Report Preparation**

I've mapped `cambiaestado` to `cargaContrato($id)` and found the "CARGOS AUTOMÁTICOS" block. When state is 1, it syncs automatic charges from the contract's year, calling `calcula_recargos` for each new one. This calculates a 10% monthly surcharge. I'm preparing an "informe" artifact, and I'll include the `exento_recargo_primer_anio` flag. Also, I confirmed that the query correctly selects charges from the contract year onward.


**Analyzing Recalculation Loop**

I'm focused on the recalculation logic in `calcula_recargos`. The initial calculation of `$meses` seemed problematic, yielding a high number of months. However, the internal loop with `$aniorecargo` acts as a crucial filter, only inserting records for the first year of each charge's existence. I'm now understanding the impact of this annual filtering within the monthly calculation.


**Clarifying Charge Application**

I'm now certain: the internal loop within `calcula_recargos` explicitly limits surcharge calculation to the *single year* associated with each individual annual charge. For example, a "2020 annual charge" only gets surcharges calculated for months within 2020. This is unusual, as surcharges are usually compounded over time. I'm investigating how this annual restriction is handled within the overall contract processing.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 9.426170094s
- **Model:** Gemini 3 Flash
</details>

---

---

*Generated by Chatledger for Antigravity*