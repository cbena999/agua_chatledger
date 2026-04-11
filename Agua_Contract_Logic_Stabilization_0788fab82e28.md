# Agua Contract Logic Stabilization

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `88253ed1-6fc5-4e5a-a27b-31ce28ae9c82` |
| **Cascade ID** | `a966039d-cd86-440d-b61b-0788fab82e28` |
| **Type** | Agent Conversation |
| **Total Steps** | 209 |
| **Started** | 10 Apr 2026, 10:49 am |
| **Completed** | 10 Apr 2026, 3:59 pm |

---

## User Request

Con base a las 2 conversaciones anterios (hoy hace 4 horas y ayer); y como siempre  debes usar tu "El conocimiento detallado y las reglas de oro se han distribuido...".  ¿ Sabes a lo que me refiero ? , indicame un nombre corto para referirme a eso.

Elabora un plan para corregir y/o hacer:
1) Amnistía de Recargos en Reactivación: Existe la regla (discutida en la sesión anterior) de que, al reactivar un contrato (pasar de Suspendido a Activo), el sistema debe omitir o congelar los recargos de años pasados y solo cobrar el año actual. Esto no se ha implementado en la lógica de cambiaestado.
2) Puntos Ciegos de Auditoría: La función regresarCargoCancelado (en cargos.php) permite revivir cargos sin dejar rastro en el historial de cambios.
3) Nuevo:  En la pantalla de datos del contrato en la opción de edición, y  justo al lado izquierdo del boton de guardar cambios y  abajo de la sección de los datos del usuario; como un area de solo lectura pon de forma estructurada todos los datos de las tomas (1ra y/o 2da) que tenga el usuario; esto para que al momento de editar  el cajero lo pueda teenr como referencia cuando est editando. 

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 67884311-645c-4f5a-ae15-979d81d75006: Fixing Duplicate Contract Notes
- Created: 2026-04-10T02:43:06Z
- Last modified: 2026-04-10T09:16:11Z

### USER Objective:
Stabilizing Agua Contract Parity

The user's objective is to finalize the stabilization of the Agua web application by ensuring strict data integrity between physical infrastructure and financial records. Key goals include:
1. Executing the remaining stabilization tasks identified in the previous session, specifically addressing the "Usuarios Especiales" search filter bug and the exclusion of users with zero contracts.
2. Auditing historical contract state transitions (2018-present) to ensure financial consistency and prevent "deuda zombi".
3. Implementing a proactive saneamiento strategy for historical data cleanup, ensuring that all administrative reports and search filters correctly reflect the current state of the V2 schema.
4. Codifying these stabilization efforts into the project's ground truth documentation to maintain architectural consistency across all development environments.

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

## Conversation 04e85e13-ed07-4863-ae80-0a3e46d05184: 
- Created: 2026-04-06T18:05:55Z
- Last modified: 2026-04-07T07:00:49Z

### USER Objective:
Optimizing XAMPP Infrastructure Performance

The user's objective is to resolve performance latency in the "Agua" web application by optimizing the Windows XAMPP 7.4.33 infrastructure. Key goals include tuning PHP (Opcache) and MariaDB (InnoDB buffer pool/logs) configurations, implementing system-level antivirus exclusions and VM video settings, and executing a database optimization plan that involves indexing, migrating tables to InnoDB, and implementing a historical data split for the `ligacargos` table.

## Conversation f7e3d66a-32b4-4408-b5e7-81800a54b171: Identifying Project Host Configurations
- Created: 2026-04-04T07:14:32Z
- Last modified: 2026-04-05T05:30:29Z

### USER Objective:
Identifying Project Host Configurations

The user's objective is to extract and identify the specific host configurations defined within the CLAUDE.md project documentation file. This information is required to understand the environment setup and ensure proper connectivity for the "Agua" web application.

## Conversation 2efef4ff-9a00-49e5-bcbb-31f503c35747: Establishing Project Context Configuration
- Created: 2026-04-04T03:30:29Z
- Last modified: 2026-04-04T07:11:07Z

### USER Objective:
Centralizing Project Infrastructure And Context

The user's objective is to establish a robust, persistent, and modular technical context for the "Agua" web application. This involves centralizing project documentation, business rules, and architectural standards into a structured `.agents/` directory system, enabling seamless development and migration across Linux/LAMPP and Windows/XAMPP environments. The goal is to provide a single, machine-readable source of truth that supports automated workflows, standardized code refactoring, and consistent database management for both the legacy system and the upcoming V2 migration.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 10 Apr 2026, 10:49 am

---

## Agent Response

### Thinking

The user is asking me to:
1. Acknowledge what they mean by "El conocimiento detallado y las reglas de oro se han distribuido..." - they want a short name for it
2. Based on the last 2 conversations (today 4 hours ago and yesterday), create a plan for 3 items

Let me first read the relevant rules files to understand the project context, then look at the recent conversations to understand what was discussed.

### Actions

**Tool:** `view_file`
**File:** `01-infra-hosts.md`

**Tool:** `view_file`
**File:** `02-reglas-negocio.md`

**Tool:** `view_file`
**File:** `04-arquitectura-mvc.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.307204018s
- **Model:** Claude Sonnet 4.6 (Thinking)
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
| **A** | Ubuntu 22 / XAMPP Linux | Desarrollo / Próximo Producción | `main` | `bdawahost-a` | **Estructura** |
| **B** | Windows 7 / MySQL legado | Espejo Producción — Datos Frescos | N/A | `bdawahost-b` | **Datos** |
| **C** | Windows 10 / XAMPP 7.4.33 Portable | V2 activo — BD optimizada + webapp adaptada | `feature/upgrade-v2-win-xampp` | `bdawahost-c` | N/A |

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
1.  **Host A Especial**: Es la **Guía Estructural Oficial**. Cualquier discrepancia entre A y B se resuelve a favor de A (tablas nuevas, índices, campos eliminados).
2.  **Host B de Datos**: Únicamente se utiliza como fuente de "Datos Frescos de Negocio" para alimentar A. Solo lectura — prohibido cambios estructurales.
3.  **Host C de Preview**: Entorno para la optimización de `ligacargos` (split histórico) y preview de todos los cambios antes de producción. Todo cambio con scripts versionados + rollback.

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

### 📂 Módulo 02: Facturación, Cargos y Recargos
| ID | Regla | Estado |
|:---:|---|:---:|
| **F01** | Solo contratos en estados `1 (ACTIVO)`, `2 (SUSPENSIÓN TEMPORAL)` y `5 (SUSPENSIÓN ADMINISTRATIVA)` generan recargos automáticos. | Crítica |
| **F02** | Cargos manuales a contratos en `4 (SUSPENSIÓN DEFINITIVA)` están prohibidos. | Crítica |
| **F03** | El cálculo de la deuda debe ser atómico (Cargos + Recargos = Deuda Total). | Validada |

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
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 04: Arquitectura MVC y Localización de Lógica

Esta regla define la arquitectura técnica del sistema **Agua** y el propósito de sus directorios.

---

## 🏛️ Estándar Arquitectónico
El sistema sigue un patrón **MVC** simplificado con las siguientes tecnologías:
- **Vista (View)**: Utiliza el motor **Plates Template Engine (v3.3)** en el directorio `views/`.
- **Controlador (Controller)**: Centralizado en **`ruteador.php`**.
- **Interactividad**: Gestionada por **AJAX/jQuery** y el archivo núcleo **`includes/js/paxscript.js`**.

---

## 📁 Localización de la Verdad (Logic)

- **Lógica de Negocio y Negocio Compartido**: Todo el procesamiento de deuda, recargos y cálculo operativo reside en:
    - **`includes/negocio/`** (Funciones PHP núcleo).
    - **`views/`** (Lógica de presentación empresarial).
- **Control Central**:
    - **`ruteador.php`**: Gestiona el flujo de peticiones.
    - **`config/Conexion.php`**: Gestión de la conexión a la base de datos (se refactoriza para portabilidad).
- **Reportes Especializados**:
    - **`admin/`**: Módulos administrativos y de consulta financiera.
- **Librerías de Terceros**:
    - **`lib/`**: Librerías externas como `barcode`, `image_generation`, etc. (No contiene lógica de negocio del sistema).

---
**Nota para Gemini**: Cualquier nueva funcionalidad o refactorización debe respetar esta segmentación de archivos y directorios para mantener el orden arquitectónico.

```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `cambiaestado`

**Tool:** `grep_search`
**Query:** `regresarCargoCancelado`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 10 Apr 2026, 10:49 am

---

### Local File Search

**Status:** Completed
**Created:** 10 Apr 2026, 10:49 am

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `contratos.php`

**Tool:** `view_file`
**File:** `cargos.php`

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
		    // Si regresa a Activo, asegurar paridad
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
?>
```

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

	// EXENCIÓN RECARGOS PRIMER AÑO Y VALIDACIÓN DE ESTADO
	$res_exencion = $y->q("SELECT YEAR(fecha) as anio_creacion, exento_recargo_primer_anio, estado FROM contrato WHERE numcontrato='$numcontrato'");
	list($anio_creacion, $exento_recargo, $edo_cto) = $y->fetch_array($res_exencion);

	// No generar recargos si el contrato está en Suspensión Definitiva (estado 4)
	if (intval($edo_cto) === 4) {
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
				$y->q("UPDATE ligacargos SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND repetido=$rep AND estado=0");
				$y->q("UPDATE ligacargos_historico SET monto=$nuevo_monto WHERE numcontrato='$nc' AND leyenda='$leyenda' AND repetido=$rep AND estado=0");
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

function regresarCargoCancelado($contrato, $leyenda, $repetido)
{
	$y = new Conexion();
	$y->conectarBaseDatos();

	$y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato = '$contrato' AND leyenda = '$leyenda' AND repetido = $repetido");
	$y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato = '$contrato' AND leyenda = '$leyenda' AND repetido = $repetido");
	
	$texto_cargo = $leyenda . ($repetido > 0 ? " (r$repetido)" : "");
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Reasignacion de cargo cancelado', 'Cargo en estado CANCELADO (-1)', 'Cargo restituido a PENDIENTE (0): $texto_cargo', '$contrato')");
}

?>
```

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/views/contratos`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>Directory: `contratos` (4 items)</summary>

**Path:** `opt/lampp/htdocs/agua/views/contratos`

| Name | Type | Size |
|------|------|------|
| `adeudo_tabla.php` | File | 5935 bytes |
| `busqueda_resultados.php` | File | 1570 bytes |
| `ficha.php` | File | 30880 bytes |
| `nuevo.php` | File | 14674 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `guardar cambios\|btn.*guardar\|guardar.*contrato\|boton.*guard\|id.*guardar`

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 10 Apr 2026, 10:50 am

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 10 Apr 2026, 10:50 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<failed_tool_calls_reminder>
As a reminder, the following tool calls did not succeed since the last planner response:
Tool mcp_bdawahost-a_query: Status CORTEX_STEP_STATUS_ERROR
</failed_tool_calls_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** failed_tool_calls_reminder

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `guardar\|guardaContrato\|btnGuard\|edicion\|editar`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 10 Apr 2026, 10:50 am

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `ficha.php`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
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
                        <td valign='top'><input class='mayusculas' type='text' value='<?= $metros ?>' name='metros' id='metros' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br><br></td>
                    </tr>
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
        <div style='text-align: center; padding-top: 30px; padding-bottom: 20px;'>
            <?php if ($estado != 4): ?>
                <input type='submit' value='Guardar Cambios' onclick="return validaContrato();" style='background: #28a745; color: white; border: none; padding: 10px 25px; border-radius: 5px; font-weight: bold; cursor: pointer; font-size: 16px; box-shadow: 0 4px 6px rgba(40, 167, 69, 0.2);'>
            <?php endif; ?>
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
    <?php endif; ?>
    <a class='liga opcion estadocto' style='margin:0;' href='#' onclick="$('#cambioestado').toggle();">Cambio de estado</a>
    <?php if (in_array($estado, [1, 2, 3])): ?>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#agregacargo').toggle();">Agregar cargos</a>
    <?php endif; ?>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#cargoscancelados').toggle();">Cargos Cancelados</a>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#notascargoscancelados').toggle();">Notas Cargos Cancelados</a>
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
                <dt><input type=radio name='estado' value=2 <?= ($estado == 2 ? "checked" : "") ?> <?= ($estado == 4 ? "disabled" : "") ?>><label>Suspensi&oacute;n
                        Temporal</label>
                <dd>Solo en <b><?= array("","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")[intval($cfg['susptemp_mes_permitido'])] ?></b> del a&ntilde;o en curso se puede solicitar esta suspensi&oacute;n, para evitar
                    pagar servicios el a&ntilde;o siguiente.
                <dt><input type=radio name='estado' value=3 <?= ($estado == 3 ? "checked" : "") ?> <?= ($estado == 4 ? "disabled" : "") ?>><label>Suspensi&oacute;n
                        Administrativa</label>
                <dd>Cuando luego de una revisi&oacute;n ocular, se corrobore que no hay toma en el lugar y faltaba darlo de
                    baja.
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
                            onclick="regresarCargoCancelado('<?= $id ?>', '<?= $this->e($cc['leyenda']) ?>', '<?= $cc['repetido'] ?>'); return false;">Reasignar</a>
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

## Agent Response

### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 10:51 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

SI, aprobado dale con todo.
Y pero una aclaración el Runbook  si incluye:  .agents/rules/   y tambien: todo el contenido del directorio: ./agents y  GEMINI.md. revisa y dame retro.

---

## Agent Response

### Thinking

The user approved the plan and is clarifying that "el Runbook" refers to ALL of `.agents/` directory content plus `GEMINI.md`. Let me confirm that and then execute the implementation plan.

Let me start executing all 3 items simultaneously where possible.

### Actions

**Tool:** `view_file`
**File:** `contratos.php`

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.568595977s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file` (L269-289)</summary>

**Path:** `Unknown file`

```
		if (intval($estado) === 4) {
			$y->q("UPDATE contrato_toma SET estado_agua=0, estado_drenaje=0 WHERE numcontrato='$contrato'");
			$y->q("UPDATE contrato SET agua=0, drenaje=0 WHERE numcontrato='$contrato'");
			
			// Forzar paridad financiera (cancelar cargos anuales)
			_sincronizaParidadFinanciera($contrato, $y);
		} else if (intval($estado) === 1) {
		    // Si regresa a Activo, asegurar paridad
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

```

</details>

---

<details>
<summary>File: `Unknown file` (L779-789)</summary>

**Path:** `Unknown file`

```
	
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_clean_sql_c = $dom_clean_sql_v AND c.estado != 4 " . $cond_id);
	list($tomas_otras) = $y->fetch_array($res_count);

	if ($tomas_otras + intval($num_tomas) > 2) {
		return "El usuario ya cuenta con $tomas_otras toma(s) en otros contratos para el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio, previendo asignar $num_tomas extra.";
	}

	return "OK";
}
?>
```

</details>

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 10:59 am

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 67884311-645c-4f5a-ae15-979d81d75006: Fixing Duplicate Contract Notes
- Created: 2026-04-10T02:43:06Z
- Last modified: 2026-04-10T09:16:11Z

### USER Objective:
Stabilizing Agua Contract Parity

The user's objective is to finalize the stabilization of the Agua web application by ensuring strict data integrity between physical infrastructure and financial records. Key goals include:
1. Executing the remaining stabilization tasks identified in the previous session, specifically addressing the "Usuarios Especiales" search filter bug and the exclusion of users with zero contracts.
2. Auditing historical contract state transitions (2018-present) to ensure financial consistency and prevent "deuda zombi".
3. Implementing a proactive saneamiento strategy for historical data cleanup, ensuring that all administrative reports and search filters correctly reflect the current state of the V2 schema.
4. Codifying these stabilization efforts into the project's ground truth documentation to maintain architectural consistency across all development environments.

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

## Conversation 04e85e13-ed07-4863-ae80-0a3e46d05184: 
- Created: 2026-04-06T18:05:55Z
- Last modified: 2026-04-07T07:00:49Z

### USER Objective:
Optimizing XAMPP Infrastructure Performance

The user's objective is to resolve performance latency in the "Agua" web application by optimizing the Windows XAMPP 7.4.33 infrastructure. Key goals include tuning PHP (Opcache) and MariaDB (InnoDB buffer pool/logs) configurations, implementing system-level antivirus exclusions and VM video settings, and executing a database optimization plan that involves indexing, migrating tables to InnoDB, and implementing a historical data split for the `ligacargos` table.

## Conversation f7e3d66a-32b4-4408-b5e7-81800a54b171: Identifying Project Host Configurations
- Created: 2026-04-04T07:14:32Z
- Last modified: 2026-04-05T05:30:29Z

### USER Objective:
Identifying Project Host Configurations

The user's objective is to extract and identify the specific host configurations defined within the CLAUDE.md project documentation file. This information is required to understand the environment setup and ensure proper connectivity for the "Agua" web application.

## Conversation 2efef4ff-9a00-49e5-bcbb-31f503c35747: Establishing Project Context Configuration
- Created: 2026-04-04T03:30:29Z
- Last modified: 2026-04-04T07:11:07Z

### USER Objective:
Centralizing Project Infrastructure And Context

The user's objective is to establish a robust, persistent, and modular technical context for the "Agua" web application. This involves centralizing project documentation, business rules, and architectural standards into a structured `.agents/` directory system, enabling seamless development and migration across Linux/LAMPP and Windows/XAMPP environments. The goal is to provide a single, machine-readable source of truth that supports automated workflows, standardized code refactoring, and consistent database management for both the legacy system and the upcoming V2 migration.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 10 Apr 2026, 10:59 am

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 10:59 am

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:00 am

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `02-reglas-negocio.md`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file` (L8-19)</summary>

**Path:** `Unknown file`

```
### 📂 Módulo 01: Gestión de Contratos (Core)
| ID | Regla | Estado |
|:---:|---|:---:|
| **C01** | Límite de **2 tomas (contratos)** activas por usuario en el mismo domicilio físico. | Implementada |
| **C02** | Prohibida la modificación de estado de contratos en `4 (SUSPENSIÓN DEFINITIVA)`. | Implementada |
| **C03** | Registro obligatorio de folios únicos por cada nuevo contrato. | Validada |
| **C04** | **Motor de Paridad Universal**: Sincronización obligatoria; si una toma se activa/reconecta, su cargo anual debe restaurarse automáticamente. | Implementada |
| **C05** | **Limpieza por Suspensión Definitiva**: Al pasar a Estado 4, se debe forzar la desconexión física y la cancelación de deuda anual actual. | Implementada |

### 📂 Módulo 02: Facturación, Cargos y Recargos
| ID | Regla | Estado |
|:---:|---|:---:|
```

</details>

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:01 am

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
**Created:** 10 Apr 2026, 11:01 am

---

<details>
<summary>System Message</summary>

The following is an <EPHEMERAL_MESSAGE> not actually sent by the user. It is provided by the system as a set of reminders and general important information to pay attention to. Do NOT respond to this message, just act accordingly.

<EPHEMERAL_MESSAGE>
<failed_commands_reminder>
As a reminder, the following commands have failed since the last planner response. These may or may not be expected, decide what the right action is based on the current context:
Command: php -l /opt/lampp/htdocs/agua/includes/negocio/contratos.php && php -l /opt/lampp/htdocs/agua/includ... (exit code: 127)
</failed_commands_reminder>
</EPHEMERAL_MESSAGE>

**Triggered Heuristics:** failed_commands_reminder

</details>

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
**Created:** 10 Apr 2026, 11:01 am

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
**Created:** 10 Apr 2026, 11:02 am

---

## Agent Response

### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:02 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

sube todos a donde corresponde y crea un resumen de estos issues resueltos con scope funcional y tecnico. y colocalo en agua_chatledger

---

## Agent Response

### Thinking

The user wants to:
1. Push all changes to the corresponding git branches
2. Create a summary of the resolved issues with functional and technical scope
3. Place it in agua_chatledger

Let me first check the git workflow rules and then understand the agua_chatledger structure.

### Actions

**Tool:** `view_file`
**File:** `07-git-workflow.md`

**Tool:** `view_file`
**File:** `06-accesos-rutas.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.366129854s
- **Model:** Claude Sonnet 4.6 (Thinking)
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
- **Pushes**: permitidos bajo usuario `cbena999`. Confirmar con usuario antes de push a `main`.
- **Symlinks**: no reemplazar symlinks por archivos reales. Si se detecta un directorio real donde debería haber symlink → ejecutar `chatledger_sync_ga_lnks.sh`.
- **Conflictos**: resolver antes de proponer merge. No usar `--no-verify` ni `--force` sin autorización explícita.
- **Scope de autorización**: una aprobación puntual no autoriza la misma acción en contextos futuros.
- **ChatLedger primero**: ante duda de dónde commitear algo relacionado con IA/docs → siempre `agua_chatledger`.

---

**Última actualización:** 2026-04-09

```

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

**Tool:** `run_command`

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 10 Apr 2026, 11:11 am

---

### Execution Error

**Status:** Completed
**Created:** 10 Apr 2026, 11:11 am

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
**Created:** 10 Apr 2026, 11:13 am

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/agua_chatledger`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>Directory: `agua_chatledger` (56 items)</summary>

**Path:** `home/carlos/GitHub/agua_chatledger`

| Name | Type | Size |
|------|------|------|
| `.agents` | Directory | - |
| `.claude` | Directory | - |
| `.clauderules` | File | 818 bytes |
| `.git` | Directory | - |
| `.mcp.json` | File | 1036 bytes |
| `Agua_Contract_Logic_Stabilization_0788fab82e28.md` | File | 140537 bytes |
| `Analyzing_Automatic_Surcharge_Generation_217b5c14bee6.md` | File | 107221 bytes |
| `Analyzing_User_Search_Duplicates_010475e00de2.md` | File | 454368 bytes |
| `Analyzing_Water_Service_Debt_be7c9c8d1c27.md` | File | 390425 bytes |
| `Assisting_With_Ongoing_Projects_9679e4515c82.md` | File | 10161 bytes |
| `Auditing_Water_Service_Debt_be7c9c8d1c27.md` | File | 390748 bytes |
| `CLAUDE.md` | File | 4039 bytes |
| `Checking_MySQL_Database_Version_589c291d1256.md` | File | 14561 bytes |
| `Counting_Users_On_Host_C_005796c7496e.md` | File | 90970 bytes |
| `Database_Backup_And_Verification_17f11d2170ba.md` | File | 56576 bytes |
| `Database_Import_Character_Set_Issues_688e9222f44e.md` | File | 91640 bytes |
| `Debugging_Contract_Surcharge_Assignment_fa60e5753421.md` | File | 395434 bytes |
| `Defining_No_Localizado_User_Behavior_167dc8a65232.md` | File | 406181 bytes |
| `Enhancing_User_Search_And_Display_010475e00de2.md` | File | 137013 bytes |
| `Establishing_Project_Context_Configuration_31f503c35747.md` | File | 204759 bytes |
| `FEATURE_RESTRICT_2_tomas_por_usuario_mismo_domicil_c6a72e3570c9.md` | File | 9570 bytes |
| `Financial_Data_Reconciliation_And_Repair_e36204f92811.md` | File | 922640 bytes |
| `Fixing_Contract_Toma_Report_dcfcff5f1f9f.md` | File | 332965 bytes |
| `Fixing_Duplicate_Contract_Notes_979d81d75006.md` | File | 632530 bytes |
| `Fixing_Financial_Data_Inconsistencies_e36204f92811.md` | File | 922637 bytes |
| `GEMINI.md` | File | 5122 bytes |
| `Generating_High_Debt_Report_1f70e1f78a4c.md` | File | 305194 bytes |
| `Identifying_Project_Host_Configurations_81800a54b171.md` | File | 41789 bytes |
| `Implementing_User_Menu_Features_261c83016221.md` | File | 380590 bytes |
| `Implementing_Usuarios_Menu_Feature_261c83016221.md` | File | 380593 bytes |
| `Investigating_Charge_Cancellation_49a7205b417b.md` | File | 355085 bytes |
| `LEPP_Stack_Migration_Plan_c114864f3832.md` | File | 110180 bytes |
| `Migrating_Assembly_V2_Webapp_a427816e51bc.md` | File | 705647 bytes |
| `Migrating_Legacy_Webapp_Architecture_3b519f250f4e.md` | File | 68202 bytes |
| `Modifying_Validation_Sync_Report_78853b857322.md` | File | 182006 bytes |
| `Optimizing_MariaDB_Slow_Query_Logging_ec9516a28366.md` | File | 322095 bytes |
| `Primero_realiza_el_cambio_a_rama_feature_upgrade_v_a427816e51bc.md` | File | 10415 bytes |
| `QUERY_FOR_INFORMATION_CONTRACTS_CHARGES_MANUAL_ASS_fa60e5753421.md` | File | 10245 bytes |
| `QUERY_FOR_INFORMATION_CONTRACT_STATES_Validar_si_u_3b4cf5dfe0b1.md` | File | 10631 bytes |
| `Reassigning_Contracts_And_Data_e38f996ec9ea.md` | File | 443276 bytes |
| `Reconciling_Financial_Data_Records_39c977638cec.md` | File | 282247 bytes |
| `Reporte_de_Caja_Precisi_n_6ea5589911bc.md` | File | 414415 bytes |
| `Resolving_Contract_Data_Inconsistencies_e38f996ec9ea.md` | File | 186499 bytes |
| `Restricting_User_Service_Connections_c6a72e3570c9.md` | File | 91762 bytes |
| `Restricting_User_Water_Connections_c6a72e3570c9.md` | File | 420524 bytes |
| `Stabilizing_Cash_Register_Reports_a80243dc2be6.md` | File | 885993 bytes |
| `Stabilizing_Contract_UI_Status_Mapping_979d81d75006.md` | File | 3175 bytes |
| `Stabilizing_User_Search_Filters_585e551c238f.md` | File | 808895 bytes |
| `Tracking_Contract_Status_Changes_423733a337f5.md` | File | 58554 bytes |
| `Validating_Cash_Report_Consistency_a80243dc2be6.md` | File | 885994 bytes |
| `Validating_Contract_Activation_Surcharges_3b4cf5dfe0b1.md` | File | 112326 bytes |
| `Validating_Contract_State_Transitions_3b4cf5dfe0b1.md` | File | 154856 bytes |
| `Validating_Contract_Surcharge_Logic_3b4cf5dfe0b1.md` | File | 13809 bytes |
| `Web_App_Migration_Plan_c114864f3832.md` | File | 110177 bytes |
| `docs-dev` | Directory | - |
| `logs` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:16 am

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
**Created:** 10 Apr 2026, 11:19 am

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
**Created:** 10 Apr 2026, 11:19 am

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
**Created:** 10 Apr 2026, 11:19 am

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
**Created:** 10 Apr 2026, 11:19 am

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
**Created:** 10 Apr 2026, 11:20 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

Añade como regla que para cada converacion con resultado verificado por el usuario, se genere:  Un resumen de estos issues resueltos con scope funcional y tecnico. y colocalo en agua_chatledger; creo debe pedir mi aprobación si el resultado generes y/o la verificación po mi es satisfactoria , solo entonces generes ese asset o que vaya a sociado a la orden, realiza el commit; dame tu sugerencia como es mejor ?

<details>
<summary>Context</summary>

**Active File:** `cargos.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

The user wants to add a rule to the Runbook that defines the workflow for generating session summaries. They're asking for my suggestion on what's the better approach - either:
1. Always generate the summary and commit when user verifies results
2. Ask for approval before generating/committing

Let me think about the best workflow and then formalize it as a rule in the Runbook.

My suggestion: The best approach is a **two-gate model**:
- Gate 1: After implementation, the agent asks "¿Verificaste el resultado?" before generating the summary
- Gate 2: Once user confirms verification, the agent generates the summary file AND does the commit in one atomic step (no second approval needed - the verification IS the approval)


This avoids asking for commit approval after the fact while still protecting against uncommitted changes. I could also draft the summary as a visible artifact first and ask for content approval, but that adds friction. I'll present the two-gate model as the primary recommendation and explain the tradeoffs before writing out the formal rule.

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 8.250559445s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

Si , totalmente de acuerdo.
Y analiza si esta nueva regla y todo el Runbook, es compatible para que Claude code instalado en este mismo IDE google antigravity, tambien pueda usarlo.

<details>
<summary>Context</summary>

**Active File:** `cargos.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

The user wants me to:
1. Formalize the new rule about session summaries in the Runbook
2. Analyze if this new rule and the entire Runbook is compatible for Claude Code (installed in the same IDE) to use it

Let me first check the existing CLAUDE.md and .clauderules to understand how Claude Code currently reads the Runbook, then check if there are any compatibility gaps.

### Actions

**Tool:** `view_file`
**File:** `CLAUDE.md`

**Tool:** `view_file`
**File:** `.clauderules`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.011633635s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# CLAUDE.md — Entry Point para Claude Code · Proyecto Agua

Cargado automáticamente por **Claude Code** en cada sesión.

> [!IMPORTANT]
> Este proyecto es asistido simultáneamente por **Claude Code** y **Google Antigravity/Gemini**.
> Ambos comparten el mismo Ground Truth en `.agents/`. No duplicar reglas aquí — editar los archivos `.agents/` directamente.
> Entry Point de Antigravity/Gemini: [GEMINI.md](GEMINI.md)

---

## Mapa de Conocimiento (Ground Truth Compartido)

| Tipo | Descripción | Directorio |
| :--- | :--- | :--- |
| **Reglas** | Reglas permanentes (negocio, infra, git) | [.agents/rules/](.agents/rules/) |
| **Skills** | Estándares técnicos (Plates, AJAX, PHP 7.4, DB) | [.agents/skills/](.agents/skills/) |
| **Workflows** | Procesos repetibles (Sync B→A→C, Deploy Host C) | [.agents/workflows/](.agents/workflows/) |

Estructura interna documentada en [.agents/README.md](.agents/README.md).
Inventario completo de assets en [.agents/INVENTORY.md](.agents/INVENTORY.md).

---

## Hosts (Infraestructura)

| Host | Propósito | Rama Git | MCP |
| :---: | :--- | :--- | :--- |
| **A** | Producción activa — Linux XAMPP, MySQL 5.6 | `main` | `bdawahost-a` → 127.0.0.1:3306 |
| **B** | Espejo producción (MySQL 5.1) — solo lectura datos frescos | N/A | `bdawahost-b` → 192.168.1.120:3306 |
| **C** | V2 MariaDB 10.4.27 — Windows XAMPP 7.4.33 | `feature/upgrade-v2-win-xampp` | `bdawahost-c` → 192.168.1.128:**7002** |

- **Acceso Web Host A:** `http://localhost/agua/login/index2.php` (nancy / 260180)
- **Acceso Web Host C:** `http://192.168.1.128:7001/agua` (Apache 7001, MariaDB 7002)
- **Repo GitHub:** `https://github.com/cbena999/aguaclmhj.git`

---

## Estado de Migración Host C (2026-04-07)

- Schema v2 completo, webapp PHP adaptada — **UP & RUNNING**
- Pipeline sync B→A→C validado en ejecución real (7/7 checks OK)
- Scripts setup en `docs-dev/migration-stack2/win10_aguav2/host-c-setup/` (01→08)
- Checklist pase a producción en `host-c-setup/07_transferir_datos.md`
- Ver regla detallada: [.agents/rules/05-despliegue-host-c.md](.agents/rules/05-despliegue-host-c.md)

---

## Reglas de Negocio Críticas (Resumen)

> Leer siempre [.agents/rules/02-reglas-negocio.md](.agents/rules/02-reglas-negocio.md) antes de editar lógica financiera.

- **Facturación habilitada** solo en estados `1 (ACTIVO)`, `2 (SUSP. TEMPORAL)` y `5 (SUSP. ADMINISTRATIVA)`.
- **Límite de tomas:** Máximo 2 contratos activos por usuario en el mismo domicilio.
- **Split ligacargos:** activa (≥2026) en `ligacargos` · histórico (≤2025) en `ligacargos_historico`.
- **Caja/Reportes:** Sumatoria de listas debe coincidir siempre con totales de encabezado.

---

## Módulos Críticos

| Módulo | Archivo | Riesgo |
| :--- | :--- | :--- |
| Cambio de Estados | Transiciones 1, 2 y 5 | Alto |
| Facturación / Cartera | `carteravencida.php` | Alto |
| Caja Diaria | `concentradocortecaja.php` | Alto |
| Resumen de Caja | `reportes/concentradocortecajaresumen.php` | Alto |

---

## Arquitectura Brain / Ground Truth (2026-04-09)

Todo el contexto de agentes IA vive en `agua_chatledger`. El repo `agua` solo tiene symlinks:

| Symlink en `agua` | Destino |
| :--- | :--- |
| `.claude/` | `.chatledger/.claude/` (settings.json + settings.local.json) |
| `.agents/` | `.chatledger/.agents/` |
| `.mcp.json` | `.chatledger/.mcp.json` |
| `CLAUDE.md` / `GEMINI.md` / `.clauderules` | `.chatledger/[archivo]` |
| `docs-dev/ga-cl-ia/` | `agua_chatledger/docs-dev/ga-cl-ia/` |

**Validar integridad antes de commitear en agua_chatledger:**
```bash
bash docs-dev/ga-cl-ia/chatledger_validate.sh
```

## Comandos Rápidos

```bash
# Git
git push origin main
git push origin feature/upgrade-v2-win-xampp

# XAMPP Host A
/opt/lampp/bin/mysql -u root awa

# Sync B→A→C
cd docs-dev/migration-stack2/win10_aguav2/syncawa_hostb_to_hosta/ && bash run_sync.sh
cd docs-dev/migration-stack2/win10_aguav2/sync_hosta_to_hostc/    && bash run_sync.sh
```

---

**Última actualización:** 2026-04-09

```

</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# .clauderules — Proyecto Agua

Este archivo es leído automáticamente por Claude Code en cada sesión.
**No contiene reglas directamente** — toda la verdad está modularizada.

## Entry Point
Lee **CLAUDE.md** para el mapa completo de conocimiento, hosts e infraestructura.

## Mandato Crítico
Antes de editar cualquier lógica financiera o de estados, consulta:
→ `.agents/rules/02-reglas-negocio.md`

## Coexistencia de Agentes IA
Este proyecto es asistido simultáneamente por:
- **Claude Code** (este agente) → Entry Point: `CLAUDE.md`
- **Google Antigravity / Gemini** → Entry Point: `GEMINI.md`

Ambos comparten el mismo Ground Truth en `.agents/rules/`, `.agents/skills/` y `.agents/workflows/`.
No duplicar conocimiento entre CLAUDE.md y GEMINI.md — editar directamente los archivos `.agents/`.

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `08-integridad-ground-truth.md`

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/agua_chatledger/.agents`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 08: Integridad del Ground Truth (agua_chatledger)

Esta regla protege los assets de configuración compartidos entre Claude Code y Google Antigravity/Gemini.
**Leer antes de cualquier refactoring, cleanup o reorganización de archivos en agua_chatledger.**

---

## Mapa de assets — rol de cada archivo

| Archivo | Rol | Prohibido |
|---------|-----|-----------|
| `.mcp.json` | Config MCP activa — leída automáticamente por Claude y Gemini al iniciar | Vaciar, eliminar, cambiar `docker` por `npx` directo |
| `.agents/mcp_config.json` | Fuente de referencia — debe ser idéntico a `.mcp.json` | Usarlo como reemplazo de `.mcp.json` |
| `.clauderules` | Directiva de entrada para Claude — máx ~25 líneas | Agregar notas, JSON, claves, URLs |
| `CLAUDE.md` | Entry point Claude — índice hacia `.agents/` | Duplicar reglas aquí en lugar de en `.agents/` |
| `GEMINI.md` | Entry point Gemini — índice hacia `.agents/` | Duplicar reglas aquí en lugar de en `.agents/` |
| `.agents/rules/` | Verdades permanentes — se leen en cada sesión | Eliminar sin migrar el conocimiento |
| `docs-dev/ga-cl-ia/entrypoint-patch.sh` | Patch al contenedor Docker para soporte puerto ≠ 3306 | Eliminar — sin él `bdawahost-c` falla con ETIMEDOUT |
| `docs-dev/ga-cl-ia/docker-compose.yml` | Define contenedor `context7-mcp-mysql` con el patch | Eliminar o cambiar imagen sin validar |

---

## Arquitectura MCP — NO modificar sin entender

Los tres MCPs usan **un solo contenedor Docker** con patches aplicados al arrancar:

```
Claude/Gemini → .mcp.json → docker exec -i context7-mcp-mysql npx ... mysql://host:PORT/db
                                    ↓
                          entrypoint-patch.sh (aplicado al arrancar)
                          — permite puertos no estándar (Host C: 7002)
```

**Si se reemplaza `docker exec` por `npx` directo:** el patch no aplica → `bdawahost-c` falla con ETIMEDOUT.
**Si se vacía `.mcp.json`:** ambos agentes pierden todos los MCPs sin aviso de error claro.
**Si se elimina `bdawahost-c` de `.mcp.json`:** se pierde acceso a Host C (MariaDB 7002).

---

## Reglas de modificación

### `.mcp.json` y `mcp_config.json`
- Siempre deben ser **idénticos**
- Si se edita uno, actualizar el otro en el mismo commit
- Estructura obligatoria: `docker exec -i context7-mcp-mysql npx -y @f4ww4z/mcp-mysql-server mysql://...`
- Deben contener los 3 hosts: `bdawahost-a`, `bdawahost-b`, `bdawahost-c`

### Symlinks en repo `agua`
- Los 7 symlinks son gestionados por `chatledger_sync_ga_lnks.sh`
- No recrear manualmente sin usar el script
- No convertir symlinks en archivos reales (rompe la sincronización entre ramas)

### `.clauderules`
- Solo directivas de comportamiento para Claude (< 30 líneas)
- Notas, referencias, claves → `docs-dev/ga-cl-ia/claude-ga-leeme.txt`

### Antes de cualquier "cleanup" o refactoring
1. Ejecutar `bash docs-dev/ga-cl-ia/chatledger_validate.sh`
2. Si algo falla → corregir antes de continuar
3. Nunca eliminar un archivo por considerarlo "redundante" sin verificar su rol en esta regla

---

## Historial de incidentes

| Fecha | Incidente | Causa | Fix |
|-------|-----------|-------|-----|
| 2026-04-08 | `.mcp.json` vaciado — MCPs rotos en ambos agentes | GA eliminó contenido por considerarlo redundante con `mcp_config.json` | Restaurar contenido Docker + 3 hosts |
| 2026-04-09 | `settings.json` desincronizado — usaba `npx` directo sin Docker | Restauración incorrecta desde fuente equivocada | Sincronizar con `mcp_config.json` |

---

## Validación rápida (correr antes de commitear)

```bash
bash /opt/lampp/htdocs/agua/docs-dev/ga-cl-ia/chatledger_validate.sh
```

Si el script no existe o falla: **no commitear** hasta resolver.

```

</details>

---

<details>
<summary>Directory: `.agents` (6 items)</summary>

**Path:** `home/carlos/GitHub/agua_chatledger/.agents`

| Name | Type | Size |
|------|------|------|
| `INVENTORY.md` | File | 9179 bytes |
| `README.md` | File | 2515 bytes |
| `mcp_config.json` | File | 1036 bytes |
| `rules` | Directory | - |
| `skills` | Directory | - |
| `workflows` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:38 am

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `GEMINI.md`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
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
| **06** | **Accesos, Rutas y Herramientas (3 hosts, Docker MCP)** | [.agents/rules/06-accesos-rutas.md](file:///.agents/rules/06-accesos-rutas.md) |
| **07** | **Control de Versiones y Git Workflow** | [.agents/rules/07-git-workflow.md](file:///.agents/rules/07-git-workflow.md) |
| **08** | **Integridad del Ground Truth — LEER ANTES DE REFACTORIZAR** | [.agents/rules/08-integridad-ground-truth.md](file:///.agents/rules/08-integridad-ground-truth.md) |

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
- **[/update-business-data](file:///.agents/workflows/update-business-data.md)**: Sincronización de Datos Frescos de Negocio (Host B a Host A)
- **[/deploy-to-host-c](file:///.agents/workflows/deploy-to-host-c.md)**: Despliegue de Mejoras y Refactorings en el Host C

---

## 🚨 Módulos Críticos y Auditoría Constante
Existen funcionalidades core que requieren especial atención para asegurar la congruencia de datos:
- **Estados de Contrato**: Transiciones entre `1 (ACTIVO)`, `2 (SUSPENSIÓN TEMPORAL)` y `5 (SUSPENSIÓN ADMINISTRATIVA)`.
- **Cartera Vencida (`carteravencida.php`)**: Validación de deuda morosa.
- **Corte de Caja (`concentradocortecaja.php`)**: Ingresos diarios contra reportes detallados.
- **Resumen de Caja (`reportes/concentradocortecajaresumen.php`)**: Consolidación total.

---

## 🚀 Estado Actual: Host C UP & RUNNING (2026-04-07)

- Split `ligacargos` **completado**: 2,513 activa (≥2026) + 192,545 histórico (≤2025)
- Schema v2 completo + webapp PHP 7.4 adaptada en `feature/upgrade-v2-win-xampp`
- Pipeline sync B→A→C operativo y validado (7/7 checks OK)
- Puertos Host C: Apache **7001**, MariaDB **7002**
- Checklist pase a producción: `docs-dev/migration-stack2/win10_aguav2/host-c-setup/07_transferir_datos.md`

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

**Última actualización**: 2026-04-09

```

</details>

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:39 am

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:39 am

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
**Created:** 10 Apr 2026, 11:39 am

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
**Created:** 10 Apr 2026, 11:39 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

SI, haslo y revisa que sucede con /opt/lampp/htdocs/agua/.agents/INVENTORY.md

<details>
<summary>Context</summary>

**Active File:** `cargos.php`
**Language:** php
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 67884311-645c-4f5a-ae15-979d81d75006: Fixing Duplicate Contract Notes
- Created: 2026-04-10T02:43:06Z
- Last modified: 2026-04-10T09:16:11Z

### USER Objective:
Stabilizing Agua Contract Parity

The user's objective is to finalize the stabilization of the Agua web application by ensuring strict data integrity between physical infrastructure and financial records. Key goals include:
1. Executing the remaining stabilization tasks identified in the previous session, specifically addressing the "Usuarios Especiales" search filter bug and the exclusion of users with zero contracts.
2. Auditing historical contract state transitions (2018-present) to ensure financial consistency and prevent "deuda zombi".
3. Implementing a proactive saneamiento strategy for historical data cleanup, ensuring that all administrative reports and search filters correctly reflect the current state of the V2 schema.
4. Codifying these stabilization efforts into the project's ground truth documentation to maintain architectural consistency across all development environments.

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

## Conversation 04e85e13-ed07-4863-ae80-0a3e46d05184: 
- Created: 2026-04-06T18:05:55Z
- Last modified: 2026-04-07T07:00:49Z

### USER Objective:
Optimizing XAMPP Infrastructure Performance

The user's objective is to resolve performance latency in the "Agua" web application by optimizing the Windows XAMPP 7.4.33 infrastructure. Key goals include tuning PHP (Opcache) and MariaDB (InnoDB buffer pool/logs) configurations, implementing system-level antivirus exclusions and VM video settings, and executing a database optimization plan that involves indexing, migrating tables to InnoDB, and implementing a historical data split for the `ligacargos` table.

## Conversation f7e3d66a-32b4-4408-b5e7-81800a54b171: Identifying Project Host Configurations
- Created: 2026-04-04T07:14:32Z
- Last modified: 2026-04-05T05:30:29Z

### USER Objective:
Identifying Project Host Configurations

The user's objective is to extract and identify the specific host configurations defined within the CLAUDE.md project documentation file. This information is required to understand the environment setup and ensure proper connectivity for the "Agua" web application.

## Conversation 2efef4ff-9a00-49e5-bcbb-31f503c35747: Establishing Project Context Configuration
- Created: 2026-04-04T03:30:29Z
- Last modified: 2026-04-04T07:11:07Z

### USER Objective:
Centralizing Project Infrastructure And Context

The user's objective is to establish a robust, persistent, and modular technical context for the "Agua" web application. This involves centralizing project documentation, business rules, and architectural standards into a structured `.agents/` directory system, enabling seamless development and migration across Linux/LAMPP and Windows/XAMPP environments. The goal is to provide a single, machine-readable source of truth that supports automated workflows, standardized code refactoring, and consistent database management for both the legacy system and the upcoming V2 migration.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 10 Apr 2026, 11:42 am

---

## Agent Response

### Thinking

Let me check the INVENTORY.md file and then make the fixes to close the 2 gaps, and also update INVENTORY.md if needed.

### Actions

**Tool:** `view_file`
**File:** `INVENTORY.md`

**Tool:** `view_file`
**File:** `.clauderules`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.339164281s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# INVENTORY.md — Ground Truth de Agentes IA (Claude & Gemini)

Inventario vivo de todo el conocimiento estructurado disponible para **Claude Code** y **Google Antigravity/Gemini** en el proyecto Agua.

> **Fuente de verdad física:** `/home/carlos/GitHub/agua_chatledger/`
> **Acceso vía symlink:** `/opt/lampp/htdocs/agua/` (`.agents`, `CLAUDE.md`, `GEMINI.md`, etc.)
> **Actualizar este archivo** cada vez que se agregue, modifique o elimine un asset.

---

## Arquitectura de Symlinks

Todos los assets de Ground Truth son symlinks en el repo `agua` — válidos en **ambas ramas**.
Git en `agua` **nunca reporta cambios** en su contenido. Todo se commitea en `agua_chatledger`.

| Symlink en repo `agua` | Destino físico | Estado | Verificado |
|---|---|---|---|
| `.chatledger` | `/home/carlos/GitHub/agua_chatledger/` | ✓ OK | 2026-04-09 |
| `.agents` | `.chatledger/.agents/` | ✓ OK | 2026-04-09 |
| `.claude` | `.chatledger/.claude/` | ✓ OK | 2026-04-09 |
| `CLAUDE.md` | `.chatledger/CLAUDE.md` | ✓ OK | 2026-04-09 |
| `GEMINI.md` | `.chatledger/GEMINI.md` | ✓ OK | 2026-04-09 |
| `.clauderules` | `.chatledger/.clauderules` | ✓ OK | 2026-04-09 |
| `.mcp.json` | `.chatledger/.mcp.json` | ✓ OK | 2026-04-09 |
| `docs-dev/ga-cl-ia` | `/home/carlos/GitHub/agua_chatledger/docs-dev/ga-cl-ia/` | ✓ OK | 2026-04-09 |

> **Nota:** `docs-dev/ga-cl-ia` es symlink gestionado por `chatledger_sync_ga_lnks.sh`.
> El directorio real vive en `agua_chatledger/docs-dev/ga-cl-ia/` — git en `agua` lo ve como symlink.

### Directorios reales (no symlinks) — por diseño

| Archivo | Ubicación física | Propósito |
|---|---|---|
| `.claude/settings.json` | `/opt/lampp/htdocs/agua/.claude/settings.json` | Config Claude Code: modelo, permisos, MCP servers (Docker), 3 hosts |
| `.claude/settings.local.json` | `agua_chatledger/.claude/settings.local.json` | Overrides locales Claude Code (permisos adicionales, MCP habilitados) |
| `.clauderules` | `agua_chatledger/.clauderules` | Directiva de entrada para Claude: apunta a CLAUDE.md y mandato crítico |
| `.mcp.json` | `agua_chatledger/.mcp.json` | Config MCP activa leída por Claude y Gemini — Docker + 3 hosts |
| `.agents/mcp_config.json` | `agua_chatledger/.agents/mcp_config.json` | Fuente de referencia de MCP — debe ser idéntico a `.mcp.json` |
| `.agents/README.md` | `agua_chatledger/.agents/README.md` | Índice y guía de estructura del Ground Truth |
| `.agents/INVENTORY.md` | `agua_chatledger/.agents/INVENTORY.md` | Este archivo — inventario vivo de todos los assets |

> **Todos los archivos meta viven en `agua_chatledger`** — `agua` solo tiene symlinks. `.claude/` es symlink desde 2026-04-09.
> **`.mcp.json` y `mcp_config.json` deben mantenerse idénticos** — si se edita uno, actualizar el otro.

### Regla crítica: `.mcp.json` NO debe eliminarse ni vaciarse

`.mcp.json` es el archivo que **Claude Code y Gemini leen automáticamente** para cargar los MCP servers.
`mcp_config.json` en `.agents/` es la fuente de referencia — deben ser idénticos.
Eliminar o vaciar `.mcp.json` rompe los MCPs en ambos agentes sin aviso.

Para recrear todos los symlinks en un equipo nuevo:
```bash
bash docs-dev/ga-cl-ia/chatledger_sync_ga_lnks.sh
```

---

## Reglas (`rules/`)

| # | Archivo | Nombre | Cubre | Última modificación |
|---|---|---|---|---|
| 01 | `01-infra-hosts.md` | Infraestructura y Hosts | Definición de Hosts A/B/C, puertos, accesos, propósito de cada ambiente | 2026-04-09 |
| 02 | `02-reglas-negocio.md` | Reglas de Negocio | Facturación, estados de contrato, límite de tomas, split ligacargos, módulos críticos | 2026-04-08 |
| 03 | `03-sincronizacion-b-a.md` | Sincronización B→A | Procedimiento de refresco de datos desde Host B (producción) a Host A (desarrollo) | 2026-04-08 |
| 04 | `04-arquitectura-mvc.md` | Arquitectura MVC | Estructura de directorios, capas MVC, localización de lógica de negocio | 2026-04-08 |
| 05 | `05-despliegue-host-c.md` | Despliegue Host C | Migración e implementación en Host C (MariaDB 10.4.27 / XAMPP 7.4.33 / Windows) | 2026-04-08 |
| 06 | `06-accesos-rutas.md` | Accesos, Rutas y Herramientas | Credenciales y rutas web/DB de los 3 hosts, arquitectura Docker MCP, regla MCP vs CLI MySQL | 2026-04-09 |
| 07 | `07-git-workflow.md` | Control de Versiones | Ramas, symlinks Ground Truth, protocolo cambio de rama (4 pasos), tabla qué commitear en cada repo | 2026-04-09 |
| 08 | `08-integridad-ground-truth.md` | Integridad del Ground Truth | Rol de cada asset, qué está prohibido modificar, historial de incidentes, cómo validar antes de commitear | 2026-04-09 |

---

## Skills (`skills/`)

| Directorio | Nombre | Cubre | Última modificación |
|---|---|---|---|
| `skill-database-evolution/` | Database Evolution & Migration | Partición histórica de `ligacargos`, migración MySQL→MariaDB, Host A→C | 2026-04-08 |
| `skill-dynamic-html-ajax/` | Dynamic UI & AJAX | Interactividad dinámica con jQuery/JS, estándar `paxscript.js`, peticiones AJAX | 2026-04-08 |
| `skill-migration-php74/` | PHP Migration & Refactoring | Refactorización PHP 5.5 → 7.4 para Host C, compatibilidad de sintaxis | 2026-04-08 |
| `skill-plates-templating/` | Plates Templating Patterns | Motor Plates v3.3, patrones de vistas, layouts, herencia de templates | 2026-04-08 |
| `skill-ui-modern-refactor/` | UI/UX Modern Refactor | Transformación de layouts legado a Flexbox/Grid/Responsive | 2026-04-08 |

---

## Workflows (`workflows/`)

| Archivo | Nombre | Cubre | Última modificación |
|---|---|---|---|
| `deploy-to-host-c.md` | Deploy to Host C | Refresco de datos y despliegue de cambios en Host C (v2 MariaDB) — dos escenarios | 2026-04-08 |
| `update-business-data.md` | Sync B→A | Sincronización segura de datos frescos desde Host B (producción) a Host A | 2026-04-08 |

---

## Documentación IA (`docs-dev/ga-cl-ia/`)

> Symlink a `agua_chatledger/docs-dev/ga-cl-ia/` — aplica en todas las ramas.
> Commitear cambios en `agua_chatledger`, no en `agua`.

| Archivo | Descripción | Última modificación |
|---|---|---|
| `chatledger_sync_ga_lnks.sh` | Crea/verifica los 7 symlinks del Ground Truth e instala el git hook pre-commit. Re-ejecutable. | 2026-04-09 |
| `chatledger_validate.sh` | Valida integridad del Ground Truth: symlinks, .mcp.json, mcp_config.json, .clauderules, Docker. | 2026-04-09 |
| `install-hooks.sh` | Instala el git hook pre-commit en agua_chatledger (bloquea commits si validate falla). | 2026-04-09 |
| `docker-compose.yml` | Define contenedor `context7-mcp-mysql` con patch para soporte de puertos no estándar. | 2026-04-09 |
| `entrypoint-patch.sh` | Aplica 3 patches a `@f4ww4z/mcp-mysql-server` al arrancar — permite puerto 7002 (Host C). | 2026-04-09 |
| `issue-mcp-mysql-port-no-estandar.md` | Diagnóstico completo del bug de puerto en el package MCP y la solución con patches. | 2026-04-09 |
| `voxd-instalacion.md` | Instalación y optimización de Voxd en Ubuntu 22.04 con CUDA/GTX 1050 Ti para español México. | 2026-04-09 |
| `voxd-restore-optimizations.sh` | Restaura/verifica todas las optimizaciones de Voxd post-update. | 2026-04-09 |
| `voxd-reporte-funcional.md` | Reporte técnico-funcional completo de la instalación Voxd en Host Roja Dell S1 (stack, arquitectura, issues resueltos, estado operativo). | 2026-04-10 |
| `voxd-oci-viabilidad.md` | Análisis de viabilidad de correr Whisper/Voxd en VM OCI Always Free ARM A1; modelos recomendados, benchmarks estimados, casos de uso y egress. | 2026-04-10 |
| `claude-ga-leeme.txt` | Notas personales, referencias, claves y recursos para Claude y Gemini. Repo privado. | 2026-04-09 |
| `promts/` | Prompts de referencia para iniciar sesiones con Claude y Gemini. | 2026-04-09 |

---

## Gaps detectados — Áreas sin documentar

| Área | Prioridad | Notas |
|---|---|---|
| Módulo Caja / Corte diario | Alta | `concentradocortecaja.php` es módulo crítico sin skill dedicada |
| Módulo Cartera Vencida | Alta | `carteravencida.php` sin regla específica más allá de la 02 |
| Cambio de Estados de contrato | Alta | Transiciones 1→2→5 mencionadas en regla 02 pero sin workflow dedicado |
| Testing / Validación | Media | No hay skill de pruebas ni procedimiento de QA |
| Módulo Asamblea | Media | Módulo activo sin regla o skill documentada |
| Reportes | Baja | `concentradocortecajaresumen.php` sin documentación de agentes |

---

## Cómo mantener este inventario

1. **Al crear un nuevo asset** (regla/skill/workflow/doc): agregar fila en la sección correspondiente con fecha.
2. **Al modificar un asset existente**: actualizar la fecha en su fila.
3. **Al eliminar un asset**: remover la fila y mover a una sección `## Eliminados` con la fecha de baja.
4. **Al detectar un gap cubierto**: mover la fila de Gaps a la sección correspondiente.
5. **Al validar el inventario**: verificar existencia real con `ls` y fechas con `git log` en `agua_chatledger`.

---

**Última actualización:** 2026-04-09 — CLAUDE.md y GEMINI.md actualizados con regla 08 y arquitectura brain. Feature branch alineada (8/8 symlinks idénticos a main). Todo el brain en agua_chatledger.

```

</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# .clauderules — Proyecto Agua

Este archivo es leído automáticamente por Claude Code en cada sesión.
**No contiene reglas directamente** — toda la verdad está modularizada.

## Entry Point
Lee **CLAUDE.md** para el mapa completo de conocimiento, hosts e infraestructura.

## Mandato Crítico
Antes de editar cualquier lógica financiera o de estados, consulta:
→ `.agents/rules/02-reglas-negocio.md`

## Coexistencia de Agentes IA
Este proyecto es asistido simultáneamente por:
- **Claude Code** (este agente) → Entry Point: `CLAUDE.md`
- **Google Antigravity / Gemini** → Entry Point: `GEMINI.md`

Ambos comparten el mismo Ground Truth en `.agents/rules/`, `.agents/skills/` y `.agents/workflows/`.
No duplicar conocimiento entre CLAUDE.md y GEMINI.md — editar directamente los archivos `.agents/`.

```

</details>

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

**Tool:** `multi_replace_file_content`

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:46 am

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:46 am

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 11:46 am

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
**Created:** 10 Apr 2026, 11:46 am

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

Mejoras:
EL botón verde "Guardar Cambios", colocalo abajo del input text de Metros lineales, para mejor distribucion.
Eliminma este texto: (referencia — sólo lectura)

---

## Agent Response

### Thinking

The user wants two UI tweaks to the contract edit form in ficha.php:

1. Move the "Guardar Cambios" green button below the "Metros lineales" input field (in the left column of the form)
2. Remove the text "(referencia — sólo lectura)" from the panel header

Let me look at the current state of ficha.php to find the exact lines to modify.

### Actions

**Tool:** `view_file`
**File:** `ficha.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.926395158s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file` (L91-299)</summary>

**Path:** `Unknown file`

```
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
                        <td valign='top'><input class='mayusculas' type='text' value='<?= $metros ?>' name='metros' id='metros' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br><br></td>
                    </tr>
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
                    padding: 20px 0; border-top: 1px solid #eee; margin-top: 20px; gap: 20px;'>

            <!-- Panel Solo Lectura: Resumen actual de tomas (referencia para el cajero) -->
            <div id='panel_tomas_ref' style='background: #f0f4ff; border: 1px solid #b8cdf8;
                  border-radius: 8px; padding: 12px 18px; flex: 1; font-size: 12px; color: #333;'>
                <b style='font-size: 13px; color: #2c5282;'>&#128202; Estado actual de tomas (referencia — sólo lectura)</b>
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

            <!-- Botón Guardar Cambios -->
            <?php if ($estado != 4): ?>
            <div style='flex-shrink: 0; text-align: center;'>
                <input type='submit' value='Guardar Cambios' onclick="return validaContrato();"
                       style='background: #28a745; color: white; border: none; padding: 12px 28px;
                              border-radius: 8px; font-weight: bold; cursor: pointer; font-size: 16px;
                              box-shadow: 0 4px 8px rgba(40,167,69,0.3); white-space: nowrap;
                              transition: background 0.2s;'
                       onmouseover="this.style.background='#218838'"
                       onmouseout="this.style.background='#28a745'">
            </div>
            <?php endif; ?>

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
```

</details>

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 3:18 pm

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
**Created:** 10 Apr 2026, 3:18 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

Muy bien

<details>
<summary>Context</summary>

**Active File:** `ficha.php`
**Language:** php
</details>

---

## Agent Response

### Thinking

The user said "Muy bien" which confirms they verified the result. According to Regla 09 (the new session summary protocol), since the user has verified the result, I should now generate the summary and commit. The verification = implicit approval + commit.

Let me generate the summary for this small UI tweak session and commit it.

The changes were:
1. Move "Guardar Cambios" button below "Metros lineales" input in the left column
2. Remove "(referencia — sólo lectura)" text from the panel title

This is a small change, so the summary will be brief. I need to:
1. Commit the ficha.php change to the agua repo


2. Generate the Issues_Resueltos_* file in agua_chatledger
3. Commit and push both

These are minimal UX tweaks, but I should still follow the protocol efficiently—commit the code change and create a brief summary file.

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 6.313981394s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 10 Apr 2026, 3:19 pm

---

## Agent Response

### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 3:20 pm

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
**Created:** 10 Apr 2026, 3:20 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

El boton verde esta muy grande, que se suba como un renglon y medio la sección de Estado actual de tomas, para que la seccion de Acciones sobre el presente contrato se aprecie mas en la pantalla.

<details>
<summary>Context</summary>

**Active File:** `Issues_Resueltos_UX_Ficha_Formulario_a966039d.md`
**Language:** markdown
</details>

---

## Agent Response

### Thinking

The user wants two things:
1. Make the green button smaller
2. Reduce the bottom margin/padding of the "Estado actual de tomas" panel section so the "Acciones sobre el presente contrato" section appears higher on screen (about 1.5 lines up)

Let me look at the current state of the relevant sections in ficha.php to make the precise changes.

### Actions

**Tool:** `view_file`
**File:** `ficha.php`

**Tool:** `view_file`
**File:** `ficha.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 6.651883715s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file` (L120-144)</summary>

**Path:** `Unknown file`

```
                    <tr>
                        <td style='text-align: left; padding-right: 15px;' valign='top'>Metros lineales:</td>
                        <td valign='top'><input class='mayusculas' type='text' value='<?= $metros ?>' name='metros' id='metros' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br><br></td>
                    </tr>
                    <?php if ($estado != 4): ?>
                    <tr>
                        <td colspan='2' style='padding-top: 5px; padding-bottom: 10px;'>
                            <input type='submit' value='Guardar Cambios' onclick="return validaContrato();"
                                   style='background: #28a745; color: white; border: none; padding: 12px 28px;
                                          border-radius: 8px; font-weight: bold; cursor: pointer; font-size: 16px;
                                          box-shadow: 0 4px 8px rgba(40,167,69,0.3); white-space: nowrap;
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
```

</details>

---

<details>
<summary>File: `Unknown file` (L242-299)</summary>

**Path:** `Unknown file`

```
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
                    padding: 20px 0; border-top: 1px solid #eee; margin-top: 20px; gap: 20px;'>

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
```

</details>

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 3:53 pm

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
**Created:** 10 Apr 2026, 3:53 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

## User Request

muy bien.

<details>
<summary>Context</summary>

**Active File:** `Issues_Resueltos_UX_Ficha_Formulario_a966039d.md`
**Language:** markdown
</details>

---

## Agent Response

### Thinking

Regla 09: usuario verificó → commit + push automático en agua repo + actualizar el resumen en chatledger.

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.229017497s
- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 10 Apr 2026, 3:57 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Issues_Resueltos_UX_Ficha_Formulario_a966039d.md`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Issues Resueltos — Sesión 2026-04-10 (UX Tweaks Formulario Edición)
**Conversación:** `a966039d-cd86-440d-b61b-0788fab82e28`
**Rama:** `feature/upgrade-v2-win-xampp`
**Commit:** `fb40ae7`

---

## Issue 1 — Reposicionamiento del Botón "Guardar Cambios"

### Scope Funcional
El botón "Guardar Cambios" estaba al extremo derecho de un flex row compartido con el panel de tomas, generando una distribución desequilibrada. El cajero tenía que ir al extremo inferior derecho para guardar, sin relación visual clara con los campos que estaba editando.

**Antes:** Botón a la derecha del panel de tomas, en el área inferior del formulario.  
**Después:** Botón debajo del campo "Metros lineales" en la columna izquierda (`colspan=2`, `width: 100%`), logicamente agrupado con los campos editables. El panel de tomas queda solo en la parte inferior, como referencia independiente.

### Scope Técnico
- **Archivo:** `views/contratos/ficha.php`
- Nueva fila `<tr>` con `<td colspan='2'>` insertada después del input `metros` en la `<table>` de la columna izquierda.
- Botón removido del `div` flex inferior (que ahora solo contiene el panel de tomas).
- Estilos del botón idénticos a los anteriores (verde `#28a745`, hover `#218838`, `width: 100%` para alinearse con inputs).

---

## Issue 2 — Limpieza de Label del Panel de Tomas

### Scope Funcional
El título del panel de referencia de tomas incluía el texto `(referencia — sólo lectura)` que era redundante: el diseño visual ya comunica que es de lectura (sin inputs ni controles). El texto extra añadía ruido visual.

**Antes:** `📊 Estado actual de tomas (referencia — sólo lectura)`  
**Después:** `📊 Estado actual de tomas`

### Scope Técnico
- **Archivo:** `views/contratos/ficha.php` — línea del `<b>` del panel `#panel_tomas_ref`.
- Cambio de 1 línea: eliminación del substring `(referencia — sólo lectura)`.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `views/contratos/ficha.php` | `agua` | UX: reposición botón + limpieza label |

## Verificación

| Check | Resultado |
|:---|:---:|
| `php -l ficha.php` | ✅ Sin errores |
| Verificación visual por usuario | ✅ Confirmado |

---
*Generado por Antigravity (Google Gemini) — 2026-04-10 · Protocolo Regla 09*

```

</details>

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 3:58 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Issues_Resueltos_UX_Ficha_Formulario_a966039d.md`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Issues Resueltos — Sesión 2026-04-10 (UX Tweaks Formulario Edición)
**Conversación:** `a966039d-cd86-440d-b61b-0788fab82e28`
**Rama:** `feature/upgrade-v2-win-xampp`
**Commits:** `fb40ae7` · `ad6d580`

---

## Issue 1 — Reposicionamiento del Botón "Guardar Cambios"

### Scope Funcional
El botón "Guardar Cambios" estaba al extremo derecho de un flex row compartido con el panel de tomas, generando una distribución desequilibrada. El cajero tenía que ir al extremo inferior derecho para guardar, sin relación visual clara con los campos que estaba editando.

**Antes:** Botón a la derecha del panel de tomas, en el área inferior del formulario.  
**Después:** Botón debajo del campo "Metros lineales" en la columna izquierda (`colspan=2`, `width: 100%`), logicamente agrupado con los campos editables. El panel de tomas queda solo en la parte inferior, como referencia independiente.

### Scope Técnico
- **Archivo:** `views/contratos/ficha.php`
- Nueva fila `<tr>` con `<td colspan='2'>` insertada después del input `metros` en la `<table>` de la columna izquierda.
- Botón removido del `div` flex inferior (que ahora solo contiene el panel de tomas).
- Estilos del botón idénticos a los anteriores (verde `#28a745`, hover `#218838`, `width: 100%` para alinearse con inputs).

---

## Issue 2 — Limpieza de Label del Panel de Tomas

### Scope Funcional
El título del panel de referencia de tomas incluía el texto `(referencia — sólo lectura)` que era redundante: el diseño visual ya comunica que es de lectura (sin inputs ni controles). El texto extra añadía ruido visual.

**Antes:** `📊 Estado actual de tomas (referencia — sólo lectura)`  
**Después:** `📊 Estado actual de tomas`

### Scope Técnico
- **Archivo:** `views/contratos/ficha.php` — línea del `<b>` del panel `#panel_tomas_ref`.
- Cambio de 1 línea: eliminación del substring `(referencia — sólo lectura)`.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `views/contratos/ficha.php` (`fb40ae7`) | `agua` | UX: reposición botón + limpieza label |
| `views/contratos/ficha.php` (`ad6d580`) | `agua` | UX: botón compacto + panel tomas más arriba |

## Verificación

| Check | Resultado |
|:---|:---:|
| `php -l ficha.php` (ambos commits) | ✅ Sin errores |
| Verificación visual por usuario | ✅ Confirmado |

---
*Generado por Antigravity (Google Gemini) — 2026-04-10 · Protocolo Regla 09*

```

</details>

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 10 Apr 2026, 3:58 pm

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
**Created:** 10 Apr 2026, 3:58 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Claude Sonnet 4.6 (Thinking)
</details>

---

---

*Generated by Chatledger for Antigravity*