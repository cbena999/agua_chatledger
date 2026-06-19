# Designing Restaurant PWA Mockups

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `5ccd4ada-abb9-4985-aa1d-3886b0e19b0c` |
| **Cascade ID** | `3b0c24ca-fb4b-4fe6-88ac-8cd1f50f58b4` |
| **Type** | Agent Conversation |
| **Total Steps** | 47 |
| **Started** | 18 June 2026, 11:14 am |
| **Completed** | 18 June 2026, 11:41 am |

---

## User Request

Restaurant UI/UX html css, js de webapp y PWA.

Realiza la investigación , analisis, evaluacion  y propuesta de 4 mockups php (2 para webapp y 2 para pwa), para que decidamos una de ellas y se tengamos ya los assets UI/UX para webapp y pwa como insumos para planear la construccion del sistema.

Usa esto como insumo:
/home/carlos/GitHub/caelitandem_home/restaurantb/docs/Tecnica_Infraestructura_Despliegue_Comandas_VOSK.html
/home/carlos/GitHub/caelitandem_home/restaurantb/docs/Especificacion_Funcional_Comandas_VOSK.html

Aqui colocar los insumos de UI/UX que generes.
/home/carlos/GitHub/caelitandem_home/restaurantb/www/web-assets/
Nota: La mayoria de los archivos actuales, excepto el .gz , los demas se pueden eliminar son residuos de otro proyecto base. 

Coloca los mockups aqui: 
	/home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant/mokups/


<details>
<summary>Context</summary>

**Active File:** `check_connectivity.sh`
**Language:** shellscript
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 11 conversations, in reverse chronological order:

<conversation_summaries>
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

## Conversation 8a2778b8-300b-46e8-9020-16cf387f47c8: Financial Audit Reconciliation Tool
- Created: 2026-06-18T01:04:14Z
- Last modified: 2026-06-18T06:03:43Z

### USER Objective:
Fixing Cargo Configuration Logic

USER Objective:
Finalize the audit and parity of the V2 motor surcharge rules while resolving configuration gaps for new cargo types.

Goals:
1. Enable the creation and modification of non-Agua/Drenaje cargo types with active surcharge (mora) support by refactoring the "Poka-Yoke" business rules in `cargos.php`.
2. Correct the frontend JavaScript behavior in `paxscript.js` to ensure validation errors are displayed rather than silently overwritten by form reloads.
3. Validate database integrity for the "ROMP AN 26" cargo, ensuring proper metadata alignment for display in `configuracion.php`.
4. Maintain absolute parity between legacy financial records and the V2 engine to solidify the environment as the Single Source of Truth for the finance committee.

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

## Conversation c3d1ede4-c440-4d00-b82c-427014028cf3: Infrastructure Validation And Fixes
- Created: 2026-06-16T01:00:57Z
- Last modified: 2026-06-16T09:24:09Z

### USER Objective:
Stabilizing Host C Financial Audit

USER Objective: Finalize the financial synchronization and audit-ready parity for the 64 priority contracts between legacy Host B and the V2 Host C.

Goals:
1. Validate financial parity by analyzing the 64 contracts in the restored Host C production database, leveraging the new V2 motor logic.
2. Maintain "Camino A" as the Single Source of Truth (SSOT) using the Amnesty Control Panel to manage debt generation autonomously.
3. Remove manual "recargo" checkboxes from the UI to eliminate human error and centralize authority, effectively implementing a Poka-Yoke architecture.
4. Establish operational documentation for the finance/secretarial team explaining the historical mathematical discrepancies caused by the Host B legacy system's "12-month cap" error versus the Host C V2 engine's accuracy.

## Conversation a9b512f6-c862-4796-92d8-b86a11a0b8c9: Infrastructure Validation And Ping Tests
- Created: 2026-06-15T19:26:51Z
- Last modified: 2026-06-15T22:00:17Z

### USER Objective:
Syncing Financial Data Discrepancies

USER Objective:
Resolve financial discrepancies between Host B and Host C for 64 identified contracts by ensuring accurate historical charge and surcharge generation.

Goals:
1. Normalize Host C charge calculations to match legacy Host B expectations, specifically addressing the "12-month cap" on historical surcharges.
2. Finalize the `catchup_64.php` script execution using status spoofing to force charge generation for suspended contracts.
3. Validate data integrity by aligning the Host C debt records with Host B benchmarks, enabling accurate debt negotiation for delinquent users.
4. Document the delta between Host C's accurate mathematical surcharge calculation and the Host B legacy system's historical limitations.

## Conversation 8a1da618-e0db-405c-afe8-ee4a98822d5d: Fixes a proyecto agua
Utiliza el conocimiento de GEMINI.md , lo que se realice en esta sesion debera
<truncated 132 bytes>
- Created: 2026-06-15T19:24:17Z
- Last modified: 2026-06-15T19:24:54Z

## Conversation cd61debf-2071-4da7-8578-238a85984bea: Designing Data Model And Offline Persistence
- Created: 2026-06-15T04:56:44Z
- Last modified: 2026-06-15T06:16:09Z

### USER Objective:
Database Infrastructure And PWA Assets

Main Objective: Complete the data architecture and finalize technical specifications for the restaurant voice command system while ensuring offline-first resilience.

Goals:
1. Implement optimized SQL indexing for transactional tables (`comandas`, `detalle_comandas`) to ensure high-performance query execution.
2. Formalize the PWA offline/local persistence layer by establishing physical directory structures for Dexie.js and Service Workers within the `web-assets/pwa` namespace.
3. Consolidate technical and development standards into `GEMINI.md` to ensure project consistency and clean onboarding.
4. Integrate Delight-PHP/Auth into the backend architecture to finalize secure operational access.
5. Update technical documentation (`Especificacion_Tecnica_Comandas_VOSK.html`) to serve as the immutable source of truth for the finalized PWA architecture and folder rules.

## Conversation c23fd704-b153-4653-a5e0-a53e3e0ee891: Consolidating Technical Specifications SSOT
- Created: 2026-06-13T21:04:49Z
- Last modified: 2026-06-15T06:11:03Z

### USER Objective:
Standardizing MCP Infrastructure Ground Truth

USER Objective:
Modernize and stabilize the MCP configuration management system across all project repositories.

Goals:
1. Resolve duplicate and outdated MCP server definitions within `.mcp.json` to ensure clean connectivity.
2. Synchronize infrastructure documentation in `01-infra-hosts.md` and `06-accesos-rutas.md` to match the validated, centralized SSOT.
3. Eliminate naming inconsistencies by standardizing host labels across configuration files and rules.
4. Verify system integrity via automated validation scripts to prevent regression of the Ground Truth environment.

## Conversation 2cc92db0-a3f6-4770-8a55-b2a231d18838: Converting Technical Documentation To HTML
- Created: 2026-06-14T23:15:22Z
- Last modified: 2026-06-15T00:02:30Z

### USER Objective:
Integrating Technical Specifications And Docs

Main Objective: Unify and complete the technical specification documentation by integrating operational instructions, infrastructure details, and PWA Android development constraints.

Goals:
1. Synthesize the secondary specification PDF into the existing HTML document to create a single source of truth.
2. Update the document title and metadata to reflect the current scope of voice-driven order management.
3. Integrate new technical sections covering directory structures, development environments (localhost), and database configurations.
4. Document a catalog of Android PWA/TWA development issues and their mitigations to improve system resilience.
5. Define a clear development backlog, including dataset requirements and MVP priorities, to guide future implementation phases.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 18 June 2026, 11:14 am

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

I'm focusing now on tool selection, always opting for the most specialized function available, such as `grep_search`. I'm actively avoiding the use of generic bash utilities where a more appropriate tool exists, in accordance with the prior instructions.


**Analyzing Task Components**

I'm now breaking down the user's request. I have identified four mockups required: two for the webapp, two for the PWA. I've also noted the reference HTML files and the specified directory structure, including the deletion requirement for most existing files in the `web-assets` directory. The goal is to build a voice-driven restaurant ordering system. I'll read the supplied HTML documents next.




### Actions

**Tool:** `view_file`
**File:** `Tecnica_Infraestructura_Despliegue_Comandas_VOSK.html`

**Tool:** `view_file`
**File:** `Especificacion_Funcional_Comandas_VOSK.html`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.925422361s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Infraestructura y Despliegue DevOps</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header class="cover">
  <h1>Infraestructura y Despliegue DevOps</h1>
  <div class="cover-meta">
    <div><strong>Documento:</strong> Tecnica_Infraestructura_Despliegue_Comandas_VOSK</div>
    <div><strong>Fecha:</strong> Junio 2026</div>
  </div>
  <a href="Especificacion_Tecnica_Comandas_VOSK.html" style="display:inline-block; margin-top:20px; color:#2563eb; text-decoration:none; font-weight:600;">&larr; Volver a la Especificación Técnica</a>
</header>
<main>
<!-- ═══════════════ 10. INFRAESTRUCTURA ═══════════════ -->
<section id="sec10">
  <h2>10. Infraestructura</h2>

  <h3 id="sec10-1">10.1. Servidor Ubuntu 22.04</h3>
  <table>
    <caption>Tabla 4. Especificaciones del Servidor</caption>
    <thead><tr><th>Componente</th><th>Mínimo</th><th>Recomendado</th></tr></thead>
    <tbody>
      <tr><td>CPU</td><td>Intel Core i3 / AMD Ryzen 3 (4 núcleos)</td><td>Intel Core i5 / AMD Ryzen 5 (6 núcleos)</td></tr>
      <tr><td>RAM</td><td>4 GB</td><td>8 GB</td></tr>
      <tr><td>Almacenamiento</td><td>120 GB SSD</td><td>256 GB SSD NVMe</td></tr>
      <tr><td>Red</td><td>Ethernet Gigabit + Wi-Fi 802.11ac</td><td>Ethernet Gigabit + Wi-Fi 6</td></tr>
      <tr><td>USB</td><td>4 x USB 3.0</td><td>6 x USB 3.0</td></tr>
    </tbody>
  </table>

  <h4>Instalación del stack LAMP</h4>
<pre><code>sudo apt update && sudo apt upgrade -y
sudo apt install -y apache2 php8.3 php8.3-fpm php8.3-mysql \
    php8.3-mbstring php8.3-curl mariadb-server mariadb-client \
    openssl ssl-cert cups-bsd
sudo a2enmod ssl rewrite proxy proxy_fcgi setenvif
sudo a2enconf php8.3-fpm
sudo systemctl restart apache2</code></pre>

  <h4>Configuración de Impresión (CUPS)</h4>
  <p>Para la impresión de tickets, se instala CUPS y se configura una impresora térmica conectada por USB al servidor:</p>
<pre><code>sudo apt install -y cups cups-bsd
sudo usermod -aG lpadmin www-data
# Agregar impresora térmica vía interfaz web de CUPS
# http://localhost:631/admin
# Guardar nombre de impresora en configuración del sistema</code></pre>

  <h3 id="sec10-2">10.2. Dispositivos Android y Diademas</h3>
  <table>
    <caption>Tabla 5. Requerimientos de Dispositivos</caption>
    <thead><tr><th>Especificación</th><th>Mínimo</th><th>Recomendado</th></tr></thead>
    <tbody>
      <tr><td>SO Android</td><td>8.0 (Oreo, API 26)</td><td>11+ (API 30)</td></tr>
      <tr><td>RAM</td><td>3 GB</td><td>4 GB+</td></tr>
      <tr><td>Almacenamiento libre</td><td>200 MB</td><td>500 MB</td></tr>
      <tr><td>Procesador</td><td>64-bit, Octa-core 1.8 GHz</td><td>Snapdragon 6-series</td></tr>
      <tr><td>Navegador</td><td>Chrome 90+</td><td>Chrome 120+</td></tr>
      <tr><td>Bluetooth</td><td>4.2 (para diadema)</td><td>5.0+</td></tr>
    </tbody>
  </table>

  <h4 id="sec10-2-1">10.2.1. Análisis y Evaluación de Hardware (Micrófonos y Diademas)</h4>
  <p>Para mitigar las interferencias de ruido acústico en entornos comerciales demandantes (cocina, extractor, campanas, y el bullicio del salón), se definen los siguientes criterios de selección de hardware:</p>
  <ul>
    <li><strong>Conexión USB Nativa:</strong> Se prefiere sobre conectores Jack 3.5mm debido a su inmunidad a estática analógica e interferencias eléctricas del local. Para dispositivos Android se requiere adaptador OTG USB-C.</li>
    <li><strong>Patrón de Captura Cardioide / Unidireccional:</strong> La cápsula del micrófono debe atenuar el sonido ambiental trasero y lateral, concentrando la captura en la voz del mesero/cocinero.</li>
    <li><strong>Diadema Monoaural:</strong> Mantiene un oído libre para que el operario pueda escuchar a los clientes o compañeros mientras usa el sistema.</li>
    <li><strong>Material Sanitario:</strong> Almohadillas de vinipiel o cuero sintético fáciles de limpiar y desinfectar. Evitar esponjas de espuma por acumulación de grasa y humedad.</li>
  </ul>
  <p><strong>Modelos Evaluados en Costo-Beneficio:</strong></p>
  <ul>
    <li><strong>Gama Económica (Xuuly / Genéricos de Call Center):</strong> Costo de ~$350 – $400 MXN. Cuenta con brazo flexible largo de 360° que posiciona la cápsula de forma precisa. Recomendado para fases iniciales.</li>
    <li><strong>Gama Empresarial (Poly Blackwire 3210 / Plantronics):</strong> Costo de ~$750 – $800 MXN. Integra un chip procesador de señales digital (DSP) que suprime ruidos eléctricos antes de mandar la señal PCM a la PWA, maximizando la precisión del motor VOSK a tasas superiores al 99%.</li>
  </ul>

  <h3 id="sec10-3">10.3. Red Local</h3>
  <div class="diagram-container">
    <img src="topologia_red_local.png" alt="Topología de Red Local" class="diagram-img">
  </div>
  <p class="diagram-caption">Figura 3. Topología de red local del restaurante</p>

  <table>
    <caption>Tabla 6. Requisitos de Red</caption>
    <thead><tr><th>Parámetro</th><th>Especificación</th></tr></thead>
    <tbody>
      <tr><td>Router</td><td>Dual band (2.4 GHz y 5 GHz), mínimo AC1200</td></tr>
      <tr><td>Cobertura Wi-Fi</td><td>100% área de comedor y cocina (repetidores si es necesario)</td></tr>
      <tr><td>Subred</td><td>192.168.x.x/24, servidor con IP estática</td></tr>
      <tr><td>DNS local</td><td>comandas.local apuntando a IP del servidor</td></tr>
      <tr><td>Puertos</td><td>80 (HTTP), 443 (HTTPS) abiertos</td></tr>
      <tr><td>Ancho de banda local</td><td>Mínimo 20 Mbps entre dispositivos y servidor</td></tr>
    </tbody>
  </table>

  <h3 id="sec10-4">10.4. Ambiente de Desarrollo (localhost)</h3>
  <p>El entorno de desarrollo corre en la laptop del desarrollador con el siguiente stack:</p>

  <table>
    <caption>Tabla 10. Stack de Desarrollo Local</caption>
    <thead><tr><th>Componente</th><th>Versión</th><th>Notas</th></tr></thead>
    <tbody>
      <tr><td>Servidor</td><td>Apache 2.4</td><td>localhost, configuración en XAMPP / nativo</td></tr>
      <tr><td>PHP</td><td>8.3</td><td>Con PHP-FPM habilitado</td></tr>
      <tr><td>Base de datos</td><td>MariaDB 11</td><td>Upgrade respecto al 10.6+ de producción</td></tr>
    </tbody>
  </table>

  <p>Documentación de instalación: <code>/home/carlos/GitHub/caelitandem_home/restaurantb/docs/INSTALLATION_SUMMARY.md</code></p>

  <h4>HTTPS en Desarrollo</h4>
  <p>Para desarrollo local se usa un certificado autofirmado (ver §8.2). Para producción en <code>caelitandem.lat</code>, se utiliza <strong>Certbot / Let's Encrypt</strong> con Apache 2.4, siguiendo el patrón ya implementado para Nginx en el servidor OCI-VM. La configuración HTTPS es obligatoria para que <code>getUserMedia()</code> funcione en Chrome Android.</p>

  <div class="note">
    <strong>Referencia de implementación HTTPS</strong>
    <code>CaeliTandem_SEO_Strategy_Implementation.md</code> — Sección: 🛡️ Fase 1: Infraestructura y Servidor (HTTPS / SSL).
  </div>

  <h4>Acceso al Micrófono en Redes Locales Inseguras (HTTP/HTTPS)</h4>
  <p>Dado que los navegadores móviles restringen el acceso al micrófono (<code>getUserMedia</code>) exclusivamente a contextos seguros (HTTPS o localhost), acceder desde dispositivos móviles a la IP del servidor de desarrollo local (ej. <code>http://192.168.1.128:7001/ayd-os/</code>) causará que el navegador bloquee el micrófono silenciosamente. Existen dos soluciones validadas:</p>
  
  <h5>Opción A: Habilitar Flags de Chrome en Dispositivos Cliente (Desarrollo y Pruebas Rápidas)</h5>
  <p>Permite tratar la IP de la red local como origen seguro de manera temporal sin requerir certificados:</p>
  <ol>
    <li>En el navegador Chrome del dispositivo (PC o teléfono Android), navegue a la dirección: <code>chrome://flags</code></li>
    <li>Busque la preferencia: <strong><code>unsafely-treat-insecure-origin-as-secure</code></strong> (Insecure origins treated as secure).</li>
    <li>Habilite la opción e ingrese la URL base del servidor de desarrollo local, incluyendo su puerto respectivo (ej. <code>http://192.168.1.128:7001</code>).</li>
    <li>Presione el botón <strong>Relaunch</strong> para reiniciar el navegador.</li>
  </ol>
  <p><em>Estatus: Verificado y funcionando con éxito (micrófono habilitado sin HTTPS en red local).</em></p>

  <h5>Opción B: Despliegue con Certificados de Confianza y CA Local (Formal e Integración Múltiple)</h5>
  <p>Habilita HTTPS nativo en toda la red local para evitar configurar cada dispositivo cliente:</p>
  <ol>
    <li>Generar una CA (Autoridad Certificadora) local y un certificado firmado para la IP local utilizando la herramienta <code>mkcert</code>.</li>
    <li>Reemplazar los certificados en la configuración SSL de Apache en el Host C para escuchar sobre HTTPS (ej. puerto <code>8443</code> o <code>7003</code>).</li>
    <li>Instalar el certificado de la CA raíz (<code>rootCA.crt</code>) en el almacenamiento de seguridad de cada terminal Android de prueba.</li>
  </ol>
  <p><em>Resultado: Chrome reconocerá la conexión local como segura por defecto (candado verde) y otorgará permisos al micrófono nativamente.</em></p>

  <h4>Reglas de Arquitectura para las Webapps</h4>
  <ul>
    <li><strong>Framework:</strong> Flight PHP como micro-framework para routing y middleware.</li>
    <li><strong>Vistas:</strong> Motor de plantillas Plates (League) para todas las vistas PHP.</li>
    <li><strong>Interactividad:</strong> HTMX para intercambio parcial de HTML server-driven + <code>paxscript.js</code> para helpers AJAX.</li>
    <li><strong>Autenticación:</strong> Delight PHP Auth para login, roles y sesiones.</li>
    <li><strong>UI/UX:</strong> Responsiva, homologada, estilo sencillo y de alta usabilidad para los roles: Mesero, Cajero, Cocinero. Diseño basado en principios de UI/UX estándar y modernos al 2026.</li>
  </ul>

  <!-- Integración de Resumen de Instalación Docker LAMP -->
  <hr style="margin: 40px 0; border: 0; border-top: 1px solid var(--color-border);">
  <section id="sec10-5">
  <h3>Instalación del Stack Docker LAMP – <strong>restaurantb</strong></h3>
  <h4>📦 Descripción General</h4>
  <p>Este documento resume todo el proceso de instalación y configuración del stack <strong>LAMP</strong> (Linux, Apache, MariaDB, PHP) para el proyecto <strong>restaurantb</strong> bajo Docker.  Incluye los componentes del <code>docker‑compose.yml</code>, los archivos de configuración <strong>default</strong> y <strong>custom</strong>, variables de entorno y los comandos habituales para operar el entorno.</p>
  <h4>📋 Prerrequisitos</h4>
  <ul>
    <li>Docker Engine + Docker Compose instalados (versión 2.20+ recomendada).</li>
    <li>Acceso a la carpeta del proyecto:</li>
<pre><code>
  cd /home/carlos/GitHub/caelitandem_home/restaurantb/contenedor
</code></pre>
    <li>(Opcional) Cliente MySQL heredado de XAMPP: <code>/opt/lampp/bin/mysql</code>.</li>
  </ul>
  <h4>🗂️ Estructura del proyecto</h4>
<pre><code>
restaurantb/
├─ contenedor/
│   ├─ Dockerfile                     # Construye la imagen <code>restaurantb_web</code>
│   ├─ docker-compose.yml            # Orquesta los servicios (web, db, pma)
│   ├─ .env                          # Variables de entorno (no versionado)
│   ├─ conf/
│   │   ├─ php-restaurantb.ini       # Config PHP 8.3 adaptada de XAMPP
│   │   ├─ mariadb-restaurantb.cnf   # Config MariaDB 11 adaptada de my.ini
│   │   ├─ apache-restaurantb.conf    # Config Apache 2.4 (sin rutas Windows)
│   │   └─ pma-config.user.inc.php   # Config phpMyAdmin (auth cookie, allow arbitrary)
│   └─ bd/
│       └─ init/
│           └─ 01_pmadb.sql          # Crea usuario <code>pma</code> y base <code>phpmyadmin</code>
</code></pre>
  <h4>🐳 <code>docker‑compose.yml</code> – Servicios principales</h4>
  <table>
    <thead><tr><th>Servicio</th><th>Imagen</th><th>Puertos (host → contenedor)</th><th>Volúmenes</th><th>Comentario</th></tr></thead>
    <tbody>
      <tr><td><strong>web</strong></td><td><code>restaurantb_web:latest</code> (PHP 8.3‑Apache)</td><td><code>6001 → 80</code> (HTTP) <br> <code>8443 → 443</code> (HTTPS)</td><td><code>./www:/var/www/html</code> (código) <br> <code>../logs/apache:/var/log/apache2</code></td><td>Servidor web que sirve la aplicación. Config extra <code>apache-restaurantb.conf</code> y <code>php-restaurantb.ini</code> se copian en la imagen.</td></tr>
      <tr><td><strong>db</strong></td><td><code>mariadb:11</code></td><td><code>6002 → 3306</code></td><td><code>db_data:/var/lib/mysql</code> <br> <code>../logs/mariadb:/var/log/mysql</code> <br> <code>../bd/init:/docker-entrypoint-initdb.d</code> (scripts de arranque) <br> <code>./conf/mariadb-restaurantb.cnf:/etc/mysql/conf.d/restaurantb.cnf:ro</code></td><td>Base de datos con configuración custom (charset utf8mb4, bind‑address 0.0.0.0, logs, slow‑query‑log, etc.).</td></tr>
      <tr><td><strong>pma</strong></td><td><code>phpmyadmin:latest</code></td><td><code>6080 → 80</code> (expuesto a *0.0.0.0*)</td><td><code>./conf/pma-config.user.inc.php:/etc/phpmyadmin/config.user.inc.php:ro</code></td><td>Interfaz web para gestión de MySQL/MariaDB. <code>PMA_ARBITRARY=1</code> permite conectar a cualquier servidor, <code>AllowArbitraryServer</code> habilitado en la configuración.</td></tr>
      <tr><td><strong>vosk</strong></td><td><code>alphacep/kaldi-es:latest</code></td><td><code>2700 → 2700</code> (expuesto a *0.0.0.0*)</td><td>—</td><td>Servidor de reconocimiento de voz (ASR Offline) para español. Optimizado para conexiones WebSocket bidireccionales en red local (<code>ws://<IP>:2700</code>). Se comunica internamente con <code>restaurantb_web</code>.</td></tr>
    </tbody>
  </table>
  <h4>🔧 Configuraciones *default* vs *custom*</h4>
  <table>
    <thead><tr><th>Archivo</th><th>Propósito</th><th>Estado</th><th>Comentario</th></tr></thead>
    <tbody>
      <tr><td><code>conf/php-restaurantb.ini</code></td><td><code>php.ini</code> adaptado a PHP 8.3 (límites, logging, timezone, etc.)</td><td><strong>Custom</strong></td><td>Comentados los valores Windows, se usan rutas Linux y se habilitan buenas prácticas de producción.</td></tr>
      <tr><td><code>conf/mariadb-restaurantb.cnf</code></td><td><code>my.cnf</code> adaptado a MariaDB 11 (charset, innodb, buffers, bind‑address, logs)</td><td><strong>Custom</strong></td><td>Se omiten rutas Windows, se ajustan tamaños de buffer a contenedor.</td></tr>
      <tr><td><code>conf/apache-restaurantb.conf</code></td><td>Config Apache extra (headers de seguridad, compresión, disables XAMPP‑only modules)</td><td><strong>Custom</strong></td><td>Carga módulos <code>ssl</code>, <code>rewrite</code>, <code>headers</code>, <code>deflate</code>; desactiva <code>ServerTokens</code> y <code>ServerSignature</code>.</td></tr>
      <tr><td><code>conf/pma-config.user.inc.php</code></td><td>Config phpMyAdmin (blowfish secret, auth cookie, AllowArbitraryServer)</td><td><strong>Custom</strong></td><td>Permite login seguro y conexión a cualquier host MySQL.</td></tr>
      <tr><td><code>bd/init/01_pmadb.sql</code></td><td>Script de inicialización (crea usuario <code>pma</code> y base <code>phpmyadmin</code>)</td><td><strong>Custom</strong></td><td>Se ejecuta sólo la primera vez del contenedor de DB.</td></tr>
      <tr><td><code>.env</code></td><td>Variables de entorno (contraseñas, puertos)</td><td><strong>Custom</strong></td><td>No versionado (<code>.gitignore</code>).</td></tr>
    </tbody>
  </table>
  <h4>🔐 Variables de entorno (archivo <code>.env</code>)</h4>
<pre><code>
# MariaDB credentials
MARIADB_ROOT_PASSWORD=comite_2026
MARIADB_DATABASE=restaurantb
MARIADB_USER=restaurantb_usr
MARIADB_PASSWORD=rb_pass_2026

# Puertos externos (host → contenedor)
WEB_HTTP_PORT=6001
WEB_HTTPS_PORT=8443
DB_PORT=6002
PMA_PORT=6080
VOSK_PORT=2700
</code></pre>
  <p>> <strong>Nota:</strong> Cambia estas contraseñas antes de pasar a producción.</p>
  <h4>🚀 Comandos de operación</h4>
  <table>
    <thead><tr><th>Acción</th><th>Comando</th><th>Comentario</th></tr></thead>
    <tbody>
      <tr><td><strong>Iniciar / (re)construir</strong></td><td><code>docker compose up -d --build</code></td><td>Levanta los 3 servicios; <code>--build</code> recompila la imagen <code>web</code> si el Dockerfile cambió.</td></tr>
      <tr><td><strong>Detener</strong></td><td><code>docker compose down</code></td><td>Elimina contenedores, redes y volúmenes *named* (pero conserva <code>db_data</code>).</td></tr>
      <tr><td><strong>Reiniciar</strong></td><td><code>docker compose restart</code></td><td>Reinicia los contenedores sin volver a crear imágenes.</td></tr>
      <tr><td><strong>Estado</strong></td><td><code>docker compose ps</code></td><td>Muestra estado y puertos expuestos.</td></tr>
      <tr><td><strong>Logs (todos)</strong></td><td><code>docker compose logs -f</code></td><td>Sigue los logs en tiempo real.</td></tr>
      <tr><td><strong>Logs de un servicio</strong></td><td><code>docker compose logs -f <service></code> (p.ej. <code>db</code>)</td><td>Filtra por servicio.</td></tr>
      <tr><td><strong>Shell dentro de un contenedor</strong></td><td><code>docker compose exec <service> bash</code></td><td>Útil para depuración (<code>web</code>, <code>db</code>, <code>pma</code>).</td></tr>
      <tr><td><strong>Conectar con cliente MySQL heredado</strong></td><td><code>/opt/lampp/bin/mysql -h 127.0.0.1 -P 6002 -u root -p</code></td><td>Contraseña: <code>comite_2026</code>. Cambia <code>root</code> por <code>restaurantb_usr</code> o <code>pma</code> según necesites.</td></tr>
    </tbody>
  </table>
  <h4>🌐 <strong>Resumen rápido de la instalación Docker LAMP (restaurantb) con URLs completas (localhost)</strong></h4>
  <table>
    <thead><tr><th>Servicio</th><th>URL completa (localhost)</th><th>Usuario / Contraseña (ejemplo)</th></tr></thead>
    <tbody>
      <tr><td><strong>Web – HTTP</strong></td><td><code>http://localhost:6001</code></td><td>—</td></tr>
      <tr><td><strong>Web – HTTPS</strong></td><td><code>https://localhost:8443</code></td><td>— (certificado auto‑firmado)</td></tr>
      <tr><td><strong>phpMyAdmin</strong></td><td><code>http://localhost:6080</code></td><td>Usa las credenciales de <strong>db</strong> (p. ej. <code>root/comite_2026</code>).</td></tr>
      <tr><td><strong>MariaDB</strong> (acceso CLI)</td><td><code>mysql -h localhost -P 6002 -u <user> -p</code></td><td><code>root/comite_2026</code> <br> <code>restaurantb_usr/rb_pass_2026</code> <br> <code>pma/pma_pass_2026</code></td></tr>
      <tr><td><strong>Vosk Server</strong> (WebSocket)</td><td><code>ws://localhost:2700</code></td><td>Recibe streams de audio para reconocimiento offline.</td></tr>
    </tbody>
  </table>
  <h4>📌 Notas finales</h4>
  <ul>
    <li>Los puertos están mapeados a <code>0.0.0.0</code>, por lo que cualquier máquina de la LAN puede acceder usando la IP del host (p. ej. <code>http://192.168.1.45:6001</code>).</li>
    <li>Para producción, reemplaza el certificado auto‑firmado por uno válido y cambia las contraseñas del archivo <code>.env</code>.</li>
    <li>Los volúmenes <code>db_data</code> y los logs persisten en <code>../bd/data</code> y <code>../logs/*</code> respectivamente, facilitando backups.</li>
  </ul>
  <h4>🎙️ Anexo: Uso del Micrófono en Dispositivos Móviles (Red Local)</h4>
  <h5>El problema: <code>localhost</code> vs IP Local (<code>192.168.x.x</code>)</h5>
  <p>Los navegadores modernos tienen una regla estricta: <code>localhost</code> se considera siempre un entorno seguro, permitiendo el acceso al micrófono (<code>getUserMedia</code>). Sin embargo, al acceder desde un dispositivo móvil en la misma red local a través de la IP de la máquina (ej: <code>https://192.168.1.45:8443</code>), el navegador detectará que el certificado es auto-firmado.</p>
  <p>Aunque se acepte la advertencia ("Continuar de forma insegura"), el navegador degradará el contexto de seguridad y <strong>bloqueará el micrófono silenciosamente</strong>.</p>
  <h5>Soluciones prácticas para red local</h5>
  <p>#### Opción A: La forma rápida (Ideal para pruebas o pocos dispositivos)</p>
  <p>Permite tratar la IP local como segura directamente en Chrome de Android.</p>
  <p>1. En el navegador del móvil, visita <code>chrome://flags</code></p>
  <p>2. Busca la opción: <strong><code>Insecure origins treated as secure</code></strong></p>
  <p>3. Añade la URL con la IP local y el puerto HTTP (no es necesario HTTPS para este flag), por ejemplo: <code>http://192.168.1.45:6001</code></p>
  <p>4. Cambia la opción a <strong>Enabled</strong> y presiona <strong>Relaunch</strong> (Reiniciar).</p>
  <p>*Resultado: Chrome permitirá usar el micrófono sobre la red local sin requerir un HTTPS válido.*</p>
  <p>#### Opción B: La forma robusta (Certificado Raíz propio)</p>
  <p>Para múltiples dispositivos sin tener que tocar configuraciones internas del navegador.</p>
  <p>1. Generar una CA (Autoridad Certificadora) local y un certificado para la IP (por ejemplo, usando la herramienta <code>mkcert</code> en Linux).</p>
  <p>1.2 /opt/lampp/htdocs/agua/.chatledger/Anonymizing_Tlapa_System_Reports_41182f672b07.md para lets encrypt uso y/o lo de renovación automaticas, como se aplico al sitio caelitandem en la VM OCI Always free.</p>
  <p>2. Reemplazar los certificados auto-firmados en la carpeta <code>restaurantb/contenedor/ssl/</code> con los nuevos generados.</p>
  <p>3. Instalar el certificado de la CA raíz (<code>rootCA.crt</code>) en cada teléfono Android (usualmente en *Ajustes > Seguridad > Cifrado y credenciales > Instalar certificado*).</p>
  <p>*Resultado: La conexión HTTPS será reconocida como 100% segura (candado verde) y el micrófono funcionará nativamente por defecto.*</p>
  <p>*Este documento fue generado automáticamente por el asistente de IA después de configurar el stack Docker LAMP para <code>restaurantb</code>.*</p>
  </section>
</section>

<!-- ═══════════════ 11. SEGURIDAD ═══════════════ -->
<section id="sec11">
  <h2>11. Seguridad y Resiliencia</h2>
  <ul>
    <li><strong>Validación de entradas:</strong> Sanitización de datos en todos los endpoints para prevenir SQL injection y XSS.</li>
    <li><strong>Backup automático:</strong> Script cron cada hora: <code>mysqldump comandas_db &gt; /backup/comandas_$(date +%Y%m%d_%H).sql</code></li>
  </ul>

  <h3>11.2. Resiliencia Operativa</h3>
  <ul>
    <li><strong>Reconocimiento 100% offline:</strong> VOSK no requiere internet. La transcripción ocurre localmente.</li>
    <li><strong>Cola offline:</strong> Comandas se almacenan en IndexedDB ante pérdida de Wi-Fi y se sincronizan al restaurar.</li>
    <li><strong>Independencia de cloud:</strong> Sin dependencia de AWS, Google Cloud, Azure, ni APIs externas.</li>
    <li><strong>UPS recomendado:</strong> 600VA+ para protección ante cortes eléctricos.</li>
    <li><strong>Caché persistente:</strong> El modelo VOSK permanece en IndexedDB tras reinicios del navegador.</li>
    <li><strong>Evicción IndexedDB:</strong> Llamar a <code>navigator.storage.persist()</code> para solicitar almacenamiento persistente y evitar que el navegador elimine el modelo VOSK o la cola offline.</li>
    <li><strong>Dexie en modo incógnito:</strong> IndexedDB puede fallar silenciosamente en modo incógnito. Envolver operaciones Dexie en <code>try/catch</code> y avisar al usuario si la persistencia no está disponible.</li>
    <li><strong>Background Sync en Doze Mode (D1):</strong> En Android con ahorro de batería activo, el Service Worker puede estar congelado horas. Las comandas offline no se envían automáticamente al reconectar. Solución: cola de reintentos manual en Dexie como respaldo.</li>
  </ul>

  <h3>11.3. Privacidad</h3>
  <ul>
    <li><strong>Audio nunca sale del dispositivo:</strong> Las grabaciones se procesan localmente y no se transmiten ni almacenan.</li>
    <li><strong>Datos almacenados mínimos:</strong> Solo texto transcrito, hora y productos. Sin biométricos ni datos sensibles de clientes.</li>
    <li><strong>Control local:</strong> Todos los datos residen físicamente en el servidor del restaurante.</li>
  </ul>

  <h3 id="sec11-4">11.4. Issues Conocidos y Mitigaciones (PWA Android)</h3>
  <p>Catálogo de problemas técnicos identificados en el despliegue PWA/TWA sobre dispositivos Android, con sus soluciones o workarounds documentados:</p>

  <table>
    <caption>Tabla 8. Issues y GAPs de PWA Android</caption>
    <thead><tr><th>ID</th><th>Issue</th><th>Impacto</th><th>Mitigación</th></tr></thead>
    <tbody>
      <tr><td>A3</td><td>AudioContext suspendido por política de autoplay</td><td>Chrome Android suspende el AudioContext si no hubo gesto del usuario primero. VOSK no recibe audio aunque el micrófono esté aceptado.</td><td><code>audioContext.resume()</code> dentro del <code>onclick</code> del botón de voz.</td></tr>
      <tr><td>GAP-1</td><td>Permiso de micrófono en AndroidManifest.xml</td><td>En el AndroidManifest.xml que genera Bubblewrap hay que agregar <code>RECORD_AUDIO</code> y <code>MODIFY_AUDIO_SETTINGS</code>. Sin esto, <code>getUserMedia()</code> puede fallar silenciosamente dentro del APK.</td><td>Declarar permisos en el manifest antes de generar el APK.</td></tr>
      <tr><td>GAP-2</td><td>Digital Asset Links (TWA)</td><td>Si <code>assetlinks.json</code> no está correctamente configurado en <code>/.well-known/</code>, el APK se abre como Custom Tab con barra de URL visible en lugar de pantalla completa como TWA.</td><td>Configurar <code>assetlinks.json</code> en el servidor web con el fingerprint SHA-256 del APK.</td></tr>
      <tr><td>COOP</td><td>SharedArrayBuffer para VOSK WASM (COOP/COEP)</td><td>VOSK WASM requiere SharedArrayBuffer, que necesita Cross-Origin Isolation.</td><td>Usar <code>Cross-Origin-Embedder-Policy: credentialless</code> en lugar de <code>require-corp</code>. Disponible desde Chrome 96 (Android 12+).</td></tr>
      <tr><td>HTTPS</td><td>HTTPS obligatorio para getUserMedia</td><td><code>getUserMedia()</code> está bloqueado en HTTP plano, sin excepción.</td><td>Certificado Certbot/Let's Encrypt en producción. Certificado autofirmado en desarrollo local.</td></tr>
      <tr><td>PERM</td><td>Permiso runtime (diálogo de usuario)</td><td>Una vez declarado en el manifest, Android muestra el diálogo al usuario la primera vez que VOSK llama <code>getUserMedia()</code>.</td><td>Funciona igual en PWA browser y en TWA APK. No requiere acción adicional.</td></tr>
      <tr><td>D1</td><td>Background Sync no dispara en Doze Mode</td><td>Service Worker congelado horas con ahorro de batería activo. Comandas offline no se envían al reconectar.</td><td>Cola de reintentos manual en Dexie como respaldo independiente de Background Sync.</td></tr>
      <tr><td>E1</td><td>Android 16 fuerza layout adaptativo en tabletas</td><td>Desde Android 16 (API 36), soporte de todas las orientaciones y aspect ratios es obligatorio para pantallas ≥600dp. Google Play lo requiere desde agosto 2026.</td><td>CSS responsive + <code>orientation: any</code> en <code>manifest.json</code>.</td></tr>
      <tr><td>B1</td><td>Chrome Android devuelve voces TTS incorrectas</td><td>Chrome no filtra voces por idiomas realmente instalados; retorna lista sin filtrar del locale del sistema.</td><td>EasySpeech mitiga con check de <code>localService: true</code>.</td></tr>
      <tr><td>EVICT</td><td>Evicción IndexedDB</td><td>El navegador puede eliminar datos de IndexedDB bajo presión de almacenamiento.</td><td><code>navigator.storage.persist()</code> para solicitar persistencia.</td></tr>
      <tr><td>SW-1</td><td>Service Worker no activo en primera carga</td><td>El SW no intercepta requests hasta la segunda visita.</td><td><code>skipWaiting()</code> + <code>clients.claim()</code> en el evento <code>activate</code>.</td></tr>
      <tr><td>TTS-BLK</td><td>TTS interrumpida al bloquear pantalla</td><td>La síntesis de voz se detiene si el dispositivo se bloquea o la pantalla se apaga.</td><td>WakeLock API: <code>navigator.wakeLock.request('screen')</code> durante reproducción activa.</td></tr>
      <tr><td>NOTCH</td><td>Safe area insets (notch)</td><td>Contenido puede quedar oculto detrás del notch en dispositivos modernos.</td><td><code>env(safe-area-inset-*)</code> + <code>viewport-fit=cover</code> en meta viewport.</td></tr>
      <tr><td>DEXIE</td><td>Dexie falla en modo incógnito</td><td>IndexedDB no disponible en modo privado en algunos navegadores.</td><td><code>try/catch</code> + aviso al usuario.</td></tr>
      <tr><td>RAM</td><td>RAM insuficiente en gama baja</td><td>Dispositivos con &lt;3GB RAM pueden tener problemas cargando el modelo VOSK.</td><td><code>navigator.deviceMemory</code> check + fallback a modo texto manual.</td></tr>
      <tr><td>VKBD</td><td>Teclado virtual en tabletas</td><td>El teclado virtual puede ocultar la interfaz de transcripción.</td><td>VirtualKeyboard API o resize handler para ajustar el layout.</td></tr>
      <tr><td>SPN</td><td>ScriptProcessorNode deprecated</td><td>ScriptProcessorNode está deprecado en favor de AudioWorklet. Funcional aún.</td><td>Monitorear actualizaciones de vosk-browser. El pipeline actual ya usa AudioWorklet.</td></tr>
    </tbody>
  </table>

  <h3 id="sec11-5">11.5. Control Cronológico y Mitigación de Desfases (Marcas de Tiempo)</h3>
  <p>En un entorno offline, la desincronización de relojes entre los dispositivos cliente (Chrome) y el servidor (Apache/MariaDB) o el envío de comandas horas después de su creación debido a fallas de red, exige políticas cronológicas estrictas:</p>
  
  <h4>1. Flujo PWA hacia Servidor (PWA to Server Side)</h4>
  <ul>
    <li>Al finalizar un dictado o acción en la PWA, el script <code>app.js</code> inyecta en el payload de IndexedDB:
      <ul>
        <li><code>cliente_timestamp</code>: La hora absoluta del dispositivo (para auditoría).</li>
        <li><code>duracion_offline_ms</code>: Un contador dinámico que inicia en 0 y acumula la duración exacta que el registro pasa encolado localmente.</li>
      </ul>
    </li>
    <li>Al restaurar la conexión, el Service Worker transmite el payload con el valor acumulado de <code>duracion_offline_ms</code>.</li>
    <li>El servidor calcula el instante real del registro restando el tiempo offline del instante de recepción:
      <pre><code>Hora_Real_Registro = server_received_time - duracion_offline_ms</code></pre>
    </li>
    <li>Esta marca calculada se inyecta en los Stored Procedures de MariaDB, garantizando que el historial refleje la secuencia cronológica real del negocio, independientemente de desfases de red.</li>
  </ul>

  <h4>2. Flujo Servidor hacia PWA (Server Side to PWA)</h4>
  <ul>
    <li>Las alertas y notificaciones emitidas por Swoole o Server-Sent Events (SSE) incluyen obligatoriamente <code>server_sent_timestamp</code> y un tiempo de vida útil (<code>ttl_segundos</code>, ej: 120s).</li>
    <li>Si al llegar al cliente la diferencia temporal excede el TTL, la alerta se descarta o desvía a un historial secundario silencioso.</li>
    <li>Para evitar que ráfagas de notificaciones acumuladas durante desconexiones activen la reproducción masiva de TTS ("Voz Fantasma"), el script limpia la cola de SpeechSynthesis ejecutando <code>window.speechSynthesis.cancel()</code> si el desfase del paquete entrante excede los 5 segundos.</li>
  </ul>

  <h3 id="sec11-6">11.6. Conflicto de Entornos de Ejecución: Apache/Flight vs. Swoole</h3>
  <p>El backend del sistema coexiste bajo dos modelos de ejecución con filosofías incompatibles:</p>
  <ul>
    <li><strong>Apache + Flight PHP:</strong> Opera bajo el ciclo de vida clásico de PHP (petición entrante, carga de bootstrap, renderizado con Plates y destrucción de memoria). Ideal para la lógica de negocio, REST API y CRUD tradicionales.</li>
    <li><strong>Swoole CLI Server:</strong> Servidor asíncrono y persistente en memoria. Bloquea el proceso y no utiliza las variables superglobales clásicas (<code>$_SERVER</code>, <code>$_SESSION</code>). Diseñado para la transmisión bidireccional en tiempo real de WebSockets y el túnel de comunicación rápida con Vosk (Estrategia IT2).</li>
  </ul>
  <p><strong>Resolución de Coexistencia:</strong></p>
  <p>Se divide la arquitectura física en dos servicios autónomos e independientes:</p>
  <ol>
    <li>El 95% de la aplicación (vistas Plates, rutas HTTP ordinarias de comanda/caja) corre sobre el Apache tradicional administrado por Flight PHP en los puertos estándar (80/443).</li>
    <li>El servidor Swoole se inicia como un demonio CLI en un puerto aislado (puerto <code>6003</code>), actuando exclusivamente como un microservicio WebSocket encargado de canalizar el streaming binario de audio de IT2 y el puente socket directo al contenedor Vosk.</li>
  </ol>
</section>

<!-- ═══════════════ 12. VINCULACIÓN CON SKILLS Y ESTÁNDARES DevOps ═══════════════ -->
<section id="sec12">
  <h2>12. Vinculación con Skills del Agente (SSOT)</h2>
  <p>La infraestructura, automatización NTFS, bases de datos y control de servicios del servidor de comandas se rige por los siguientes estándares documentados en el directorio <code>.agents/skills/</code>:</p>
  <ul>
    <li><strong>Apache 2.4 Hardening (<code>.agents/skills/skill-apache24-hardening/SKILL.md</code>):</strong> Directivas de virtualización, seguridad en virtual hosts, y tunelización con PHP-FPM.</li>
    <li><strong>MariaDB 11 Ops (<code>.agents/skills/skill-mariadb11/SKILL.md</code>):</strong> Tuning del optimizador de consultas, replicación y features de la versión 11 para la base <code>restaurantb</code>.</li>
    <li><strong>Database Evolution (<code>.agents/skills/skill-database-evolution/SKILL.md</code>):</strong> Modelado e histórico de splits de tablas de transacciones.</li>
    <li><strong>Native Service Worker (<code>.agents/skills/skill-service-worker-native/SKILL.md</code>):</strong> Cacheo persistente del shell de aplicación y optimización de redes móviles.</li>
    <li><strong>Dexie.js IndexedDB (<code>.agents/skills/skill-dexie-indexeddb/SKILL.md</code>):</strong> Persistencia e indexación offline de comandas y logs.</li>
    <li><strong>Flight PHP Framework (<code>.agents/skills/skill-flightphp/SKILL.md</code>):</strong> Inyección de dependencias, controladores ligeros y contratos REST.</li>
    <li><strong>Plates Templating Patterns (<code>.agents/skills/skill-plates-templating/SKILL.md</code>):</strong> Reutilización de fragmentos HTML y layouts de caja/cocina.</li>
    <li><strong>Delight PHP Auth (<code>.agents/skills/skill-delight-php-auth/SKILL.md</code>):</strong> Autenticación persistente y seguridad de accesos.</li>
    <li><strong>HTMX Patterns (<code>.agents/skills/skill-htmx-patterns/SKILL.md</code>):</strong> Integración server-driven sin recargar el navegador.</li>
    <li><strong>UI/UX Modern Refactor (<code>.agents/skills/skill-ui-modern-refactor/SKILL.md</code>):</strong> Plantillas modernas y responsividad de componentes.</li>
  </ul>
</section>

</main>
</body>
</html>

```

</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Especificación Funcional — Sistema de comanda por voz con consecución de órdenes y notificaciones duales a cocina (visual y auditiva)</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>

<!-- ═══════════════ PORTADA ═══════════════ -->
<header class="cover">
  <h1>Especificación Funcional y Reglas de Negocio<br>Sistema de comanda por voz con consecución de órdenes y notificaciones duales a cocina (visual y auditiva)</h1>
  <p class="subtitle">Documento: Especificacion_Funcional_Comandas_VOSK</p>
  <div class="cover-meta">
    <div><strong>Documento:</strong> EF-Comandas-VOSK-v2.0</div>
    <div><strong>Fecha:</strong> Junio 2026</div>
    <div><strong>Revisión:</strong> v2.0 (Modificación de Alcance)</div>
    <div><strong>Plataforma:</strong> Servidor Local Offline</div>
  </div>
  <p class="cover-desc">Documento de especificación funcional con reglas de negocio. Incluye modificaciones de alcance: interfaz 100% por voz para cocineros y meseros mediante diademas, sistema KDS con altavoz, y cierre de cuenta dictado por voz.</p>
</header>

<!-- ═══════════════ ÍNDICE ═══════════════ -->
<nav class="toc">
  <h2>Índice de Contenidos</h2>
  <ol>
    <li><a href="#sec1">1. Resumen Ejecutivo</a></li>
    <li><a href="#sec2">2. Alcance, Límites y Usuarios</a>
      <ol>
        <li><a href="#sec2-1">2.1. Alcance Funcional</a></li>
        <li><a href="#sec2-2">2.2. Límites Explícitos del Sistema (Fuera de Alcance)</a></li>
        <li><a href="#sec2-3">2.3. Perfiles de Usuarios y Dispositivos</a></li>
      </ol>
    </li>
    <li><a href="#sec3">3. Especificaciones Funcionales</a>
      <ol>
        <li><a href="#sec3-1">3.1. Módulo de Captura por Voz del Mesero</a></li>
        <li><a href="#sec3-2">3.2. Módulo de Registro de Comandas</a></li>
        <li><a href="#sec3-3">3.3. Módulo de Cocina: Atención 100% por Voz</a></li>
        <li><a href="#sec3-4">3.4. Módulo de Cancelaciones y Modificaciones</a></li>
        <li><a href="#sec3-5">3.5. Módulo de Cierre de Cuenta</a></li>
        <li><a href="#sec3-6">3.6. Módulo de Administración</a></li>
      </ol>
    </li>
    <li><a href="#sec4">4. Interacciones Dictadas del Cocinero</a>
      <ol>
        <li><a href="#sec4-1">4.1. Tomar una Orden para Preparar</a></li>
        <li><a href="#sec4-2">4.2. Marcar Orden como Lista</a></li>
        <li><a href="#sec4-3">4.3. Recuperar Orden por Error</a></li>
        <li><a href="#sec4-4">4.4. Autorizar Cancelación</a></li>
        <li><a href="#sec4-5">4.5. Consultar Estado General</a></li>
        <li><a href="#sec4-6">4.6. Repetir una Orden</a></li>
      </ol>
    </li>
    <li><a href="#sec5">5. Interfaces Visuales y Auditivas</a>
      <ol>
        <li><a href="#sec5-1">5.1. Pantalla Banner de Cocina</a></li>
        <li><a href="#sec5-2">5.2. Notificaciones por Voz (TTS)</a></li>
      </ol>
    </li>
    <li><a href="#sec6">6. Flujos de Trabajo Completos</a>
      <ol>
        <li><a href="#sec6-1">6.1. Flujo de Toma de Comanda</a></li>
        <li><a href="#sec6-2">6.2. Flujo de Atención en Cocina</a></li>
        <li><a href="#sec6-3">6.3. Flujo de Cancelación Parcial</a></li>
        <li><a href="#sec6-4">6.4. Flujo de Cierre de Cuenta</a></li>
      </ol>
    </li>
    <li><a href="#sec7">7. Reglas de Negocio Consolidadas</a>
      <ol>
        <li><a href="#sec7-1">7.1. Reglas de Usuarios y Dispositivos</a></li>
        <li><a href="#sec7-2">7.2. Reglas de Captura y Registro</a></li>
        <li><a href="#sec7-3">7.3. Reglas de Cocina</a></li>
        <li><a href="#sec7-4">7.4. Reglas de Cancelaciones</a></li>
        <li><a href="#sec7-5">7.5. Reglas de Cierre de Cuenta</a></li>
        <li><a href="#sec7-6">7.6. Reglas de Notificaciones por Voz</a></li>
        <li><a href="#sec7-7">7.7. Reglas de Administración</a></li>
      </ol>
    </li>
    <li><a href="#sec8">8. Glosario de Términos</a></li>
  </ol>
</nav>

<!-- ═══════════════ 1. RESUMEN EJECUTIVO ═══════════════ -->
<section id="sec1">
  <h2>1. Resumen Ejecutivo</h2>
  <p>El presente documento establece las <strong>especificaciones funcionales y reglas de negocio</strong> para el desarrollo de un sistema de comandas por reconocimiento de voz offline, basado en el motor <strong>VOSK</strong>, orientado a restaurantes y centros de consumo que operan con infraestructura frugal.</p>
  <p>El paradigma central del sistema es que <strong>tanto meseros como cocineros operan con diademas de manos libres</strong>, interactuando con el sistema íntegramente por comandos de voz dictados en lenguaje natural español. El mesero captura las órdenes desde su teléfono Android; el cocinero recibe las comandas en una pantalla banner visible en cocina y escucha cada orden anunciada por un <strong>altavoz local</strong>, gestionando la preparación y los estados <strong>únicamente mediante dictados de voz</strong> a su diadema. No existe interacción táctil ni por clic para el personal operativo.</p>
  <p>Las comandas transcritas se registran en un <strong>servidor local offline</strong> con los datos mínimos obligatorios: número de mesa, hora de captura e identificador del mesero. El sistema <strong>no procesa métodos de pago</strong>: el cobro se gestiona externamente, y el cierre de cuenta se activa por dictado del mesero, generando un ticket impreso con el total calculado.</p>>

  <div class="pillars">
    <h4>Principios Fundamentales del Sistema (v2.0)</h4>
    <ul>
      <li><strong>Interfaz 100% voz:</strong> Uso de diademas para meseros y cocineros. Sin pantallas táctiles ni ratón.</li>
      <li><strong>Reconocimiento offline:</strong> Implementación de VOSK/WebAssembly para procesar el audio localmente.</li>
      <li><strong>Pantalla banner + altavoz en cocina:</strong> Las órdenes se visualizan en tiempo real y se anuncian de forma auditiva.</li>
      <li><strong>Métodos de pago fuera de alcance:</strong> Cálculo de totales sin integración de transacciones financieras.</li>
      <li><strong>Cancelaciones por voz:</strong> Diálogos mediados por voz que requieren confirmación del cocinero.</li>
      <li><strong>Cierre de cuenta por voz:</strong> Generación e impresión de ticket mediante comando de voz del mesero.</li>
    </ul>
  </div>
</section>

<!-- ═══════════════ 2. ALCANCE, LÍMITES Y USUARIOS ═══════════════ -->
<section id="sec2">
  <h2>2. Alcance, Límites y Usuarios</h2>
  
  <h3 id="sec2-1">2.1. Alcance Funcional</h3>
  <p>El sistema abarca las siguientes funcionalidades organizadas por módulo:</p>

  <table>
    <caption>Tabla 1. Alcance Funcional del Sistema (v2.0)</caption>
    <thead>
      <tr>
        <th>Módulo</th>
        <th>Funcionalidad</th>
        <th>Actor</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Captura por Voz</strong></td>
        <td>Dictado de comandas completas con número de mesa.</td>
        <td>Mesero</td>
      </tr>
      <tr>
        <td><strong>Captura por Voz</strong></td>
        <td>Gramática restringida al catálogo del restaurante.</td>
        <td>Mesero</td>
      </tr>
      <tr>
        <td><strong>Registro</strong></td>
        <td>Persistencia de comanda con mesa, hora, mesero y productos.</td>
        <td>Sistema</td>
      </tr>
      <tr>
        <td><strong>Cocina (KDS)</strong></td>
        <td>Visualización banner de órdenes pendientes (pantalla externa).</td>
        <td>Cocinero</td>
      </tr>
      <tr>
        <td><strong>Cocina (TTS)</strong></td>
        <td>Anuncio de cada orden por altavoz al llegar a cocina.</td>
        <td>Sistema</td>
      </tr>
      <tr>
        <td><strong>Cocina (Voz)</strong></td>
        <td>Gestión de estados (preparar, listo, recuperar) por dictado.</td>
        <td>Cocinero</td>
      </tr>
      <tr>
        <td><strong>Cocina (Voz)</strong></td>
        <td>Escucha de cancelaciones en diadema del cocinero.</td>
        <td>Sistema/Cocinero</td>
      </tr>
      <tr>
        <td><strong>Cancelaciones</strong></td>
        <td>Cancelación parcial o total de una orden por dictado del mesero.</td>
        <td>Mesero/Cocinero</td>
      </tr>
      <tr>
        <td><strong>Cierre</strong></td>
        <td>Cierre de cuenta por dictado del mesero, cálculo e impresión de ticket.</td>
        <td>Mesero</td>
      </tr>
      <tr>
        <td><strong>Admin</strong></td>
        <td>Gestión de catálogo, usuarios y reportes básicos.</td>
        <td>Administrador</td>
      </tr>
    </tbody>
  </table>

  <h3 id="sec2-2">2.2. Límites Explícitos del Sistema (Fuera de Alcance)</h3>
  <p>Funcionalidades explícitamente excluidas del alcance del sistema:</p>
  <ul>
    <li><strong>Procesamiento de métodos de pago:</strong> El sistema NO integra ni procesa pagos con tarjeta, efectivo, transferencia ni ningún otro medio. El cajero realiza el cobro de forma externa mediante terminales independientes o cajas físicas. El sistema se limita a calcular el total y ordenar la impresión del ticket.</li>
    <li><strong>Conectividad ininterrumpida del Cocinero:</strong> A diferencia de la PWA del mesero (que posee tolerancia a desconexiones temporales o "modo offline"), el módulo de interacción por voz del cocinero requiere conexión Wi-Fi continua hacia el servidor local para mantener el flujo de audio bidireccional en tiempo real.</li>
    <li><strong>Interacción táctil o por clic para cocineros:</strong> El cocinero interactúa exclusivamente mediante comandos de voz dictados a su diadema. La pantalla de cocina es puramente informativa y no admite clicks, toques ni teclados.</li>
    <li><strong>Interacción táctil para toma de comanda:</strong> El mesero interactúa principalmente mediante voz dictada con diadema Bluetooth. No obstante, la PWA del mesero permite editar manualmente en pantalla la transcripción de texto generada por VOSK y dispone de un botón físico de "Enviar" para detonar el envío de la orden.</li>
    <li><strong>Facturación electrónica (CFDI):</strong> No se generan facturas fiscales. El sistema únicamente emite tickets de consumo internos.</li>
    <li><strong>Inventario detallado:</strong> El sistema registra cantidades vendidas de forma acumulativa, pero no gestiona compras, proveedores ni niveles de stock mínimos o máximos.</li>
    <li><strong>Notificaciones a clientes:</strong> No se realizan envíos de SMS, mensajes de WhatsApp ni notificaciones push destinadas a los comensales.</li>
  </ul>

  <h3 id="sec2-3">2.3. Perfiles de Usuarios y Dispositivos</h3>
  
  <table>
    <caption>Tabla 2. Perfiles de Usuarios y Dispositivos</caption>
    <thead>
      <tr>
        <th>Rol</th>
        <th>Dispositivo Principal</th>
        <th>Dispositivo Secundario</th>
        <th>Interfaz de Usuario</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Mesero</strong></td>
        <td>Teléfono Android con diadema Bluetooth.</td>
        <td>—</td>
        <td>Voz dictada (primaria) + pantalla PWA (confirmación visual y edición de texto).</td>
      </tr>
      <tr>
        <td><strong>Cocinero</strong></td>
        <td>Diadema Bluetooth conectada a estación base.</td>
        <td>Pantalla banner en cocina (solo lectura).</td>
        <td>Voz dictada 100%. Sin táctil, sin clicks, sin teclado.</td>
      </tr>
      <tr>
        <td><strong>Cajero</strong></td>
        <td>Pantalla de caja (PC o tablet).</td>
        <td>—</td>
        <td>Visual: lista de mesas activas y totales. No procesa cobros en el sistema.</td>
      </tr>
      <tr>
        <td><strong>Administrador</strong></td>
        <td>PC de escritorio o laptop.</td>
        <td>—</td>
        <td>Web administrativa convencional con ratón y teclado.</td>
      </tr>
    </tbody>
  </table>

  <div class="note">
    <strong>Reglas de Negocio Asociadas a Usuarios y Dispositivos</strong>
    <ul>
      <li><strong>RN-2.1:</strong> Todo mesero y todo cocinero deben contar con una diadema de manos libres asignada y funcional para operar el sistema. Sin diadema no hay interacción.</li>
      <li><strong>RN-2.2:</strong> Cada mesero opera con su propio teléfono Android y su propia sesión de usuario. No se comparten credenciales.</li>
      <li><strong>RN-2.3:</strong> El cocinero interactúa exclusivamente por voz. La pantalla banner es informativa y no admite entrada táctil, clic ni teclado.</li>
      <li><strong>RN-2.4:</strong> El sistema no admite interacción por parte del cocinero si no hay diadema conectada y funcionando.</li>
      <li><strong>RN-2.5:</strong> El cajero es un rol de solo visualización. No ingresa datos al sistema ni modifica estados de comandas.</li>
    </ul>
  </div>
</section>

<!-- ═══════════════ 3. ESPECIFICACIONES FUNCIONALES ═══════════════ -->
<section id="sec3">
  <h2>3. Especificaciones Funcionales</h2>
  
  <h3 id="sec3-1">3.1. Módulo de Captura por Voz del Mesero</h3>
  <p>El mesero utiliza su teléfono Android con una diadema Bluetooth de manos libres para dictar las órdenes. La interfaz de la PWA muestra confirmación visual del texto transcrito y permite editar el texto antes de enviarlo.</p>

  <h4>3.1.1. Proceso de Dictado de Comanda</h4>
  <ol>
    <li><strong>Inicio de sesión:</strong> El mesero hace login en la PWA con sus credenciales.</li>
    <li><strong>Selección de mesa:</strong> En la pantalla principal selecciona el número de mesa a atender.</li>
    <li><strong>Activación de dictado:</strong> Presiona y mantiene el botón de micrófono en la PWA. El sistema emite un tono de confirmación en la diadema indicando que el canal de audio está abierto.</li>
    <li><strong>Dictado:</strong> El mesero habla de forma natural: <em>"Mesa cinco, dos tacos al pastor con todo, una coca de medio y un agua de horchata"</em>. El texto transcrito se muestra en tiempo real en la pantalla.</li>
    <li><strong>Edición manual opcional:</strong> Si VOSK comete algún error de transcripción, el mesero puede tocar el área de texto en la PWA y corregir manualmente los productos o cantidades.</li>
    <li><strong>Envío:</strong> El mesero revisa los elementos detectados y presiona el botón "Enviar" para detonar la transmisión al servidor local.</li>
    <li><strong>Confirmación auditiva:</strong> El sistema emite por la diadema el mensaje: <em>"Comanda de mesa cinco enviada"</em>.</li>
  </ol>

  <h4>3.1.2. Dictados Especiales del Mesero</h4>
  <p>Además de comandas normales, el mesero puede dictar comandos de control específicos:</p>

  <div class="note">
    <strong>Catálogo Oficial de Gramática:</strong> Para evitar redundancia en las especificaciones, la tabla completa de dictados especiales del mesero, sus variaciones gramaticales, respuestas de síntesis de voz (TTS) y el comportamiento detallado del sistema ante fallos o excepciones se encuentra centralizada y documentada en la <a href="Funcional_Flujos_Trabajo_Comandas_VOSK.html#sec8-1">Sección 8.1 de la Guía de Referencia de Gramática de Voz</a>.
  </div>

  <div class="note">
    <strong>Reglas de Negocio: Captura por Voz del Mesero</strong>
    <ul>
      <li><strong>RN-3.1:</strong> El mesero debe dictar siempre el número de mesa al inicio de la comanda. Sin número de mesa, el sistema rechaza el dictado.</li>
      <li><strong>RN-3.2:</strong> Si VOSK no reconoce un producto del catálogo, el sistema lo resalta en pantalla para corrección manual del mesero antes de presionar enviar.</li>
      <li><strong>RN-3.3:</strong> Toda comanda enviada genera automáticamente un anuncio de voz (TTS) en el altavoz de cocina con el contenido de la orden.</li>
      <li><strong>RN-3.4:</strong> El sistema aplica corrección fonética fuzzy (Levenshtein, umbral de 3 caracteres) para mapear palabras similares a productos del catálogo antes de mostrar el resultado.</li>
      <li><strong>RN-3.5:</strong> El mesero puede cancelar productos individuales de una comanda ya enviada, pero solo antes de que el cocinero marque esa comanda como "en preparación".</li>
      <li><strong>RN-3.6:</strong> Una vez que una comanda o parte de ella está "en preparación", solo el cocinero puede autorizar su cancelación mediante respuesta de voz.</li>
    </ul>
  </div>

  <h3 id="sec3-2">3.2. Módulo de Registro de Comandas</h3>
  <p>Este módulo gestiona la persistencia de las comandas en la base de datos central. Cada comanda registrada contiene los datos mínimos obligatorios para identificar la orden y su contexto operativo.</p>

  <h4>3.2.1. Datos Mínimos de Registro</h4>
  
  <table>
    <caption>Tabla 4. Campos Obligatorios del Registro de Comandas</caption>
    <thead>
      <tr>
        <th>Campo</th>
        <th>Tipo</th>
        <th>Descripción</th>
        <th>Ejemplo</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>numero_mesa</code></td>
        <td>INT</td>
        <td>Número identificador de la mesa atendida.</td>
        <td>5, 12, 3</td>
      </tr>
      <tr>
        <td><code>hora_captura</code></td>
        <td>DATETIME</td>
        <td>Fecha y hora exacta de la captura.</td>
        <td>2026-06-11 14:32:18</td>
      </tr>
      <tr>
        <td><code>id_mesero</code></td>
        <td>INT</td>
        <td>Identificador del mesero que capturó la orden.</td>
        <td>3 (Juan Pérez)</td>
      </tr>
      <tr>
        <td><code>texto_transcrito</code></td>
        <td>TEXT</td>
        <td>Texto completo tal como fue transcrito por VOSK.</td>
        <td>"mesa cinco dos tacos al pastor con todo y una coca"</td>
      </tr>
      <tr>
        <td><code>productos</code></td>
        <td>JSON</td>
        <td>Lista de productos identificados con cantidades.</td>
        <td><code>[{"id": 12, "cant": 2}, {"id": 45, "cant": 1}]</code></td>
      </tr>
      <tr>
        <td><code>estado</code></td>
        <td>ENUM</td>
        <td>Estado actual en el flujo de atencióntransaccional.</td>
        <td>'pendiente', 'en_preparacion', 'listo', 'entregado', 'cancelado'</td>
      </tr>
    </tbody>
  </table>

  <h4>3.2.2. Estados de una Comanda</h4>
  
  <table>
    <caption>Tabla 5. Máquina de Estados de la Comanda</caption>
    <thead>
      <tr>
        <th>Estado</th>
        <th>Descripción</th>
        <th>Quién Actúa</th>
        <th>Transición Siguiente</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Pendiente</strong></td>
        <td>Comanda registrada, en espera de cocina.</td>
        <td>Sistema automático</td>
        <td>En preparación (por cocinero)</td>
      </tr>
      <tr>
        <td><strong>En preparación</strong></td>
        <td>Cocinero ha tomado la orden.</td>
        <td>Cocinero (por voz)</td>
        <td>Listo (por cocinero)</td>
      </tr>
      <tr>
        <td><strong>Listo</strong></td>
        <td>Productos preparados, esperando recogida.</td>
        <td>Cocinero (por voz)</td>
        <td>Entregado (por mesero)</td>
      </tr>
      <tr>
        <td><strong>Entregado</strong></td>
        <td>Productos entregados en la mesa.</td>
        <td>Sistema automático</td>
        <td>Estado final (al cierre de mesa)</td>
      </tr>
      <tr>
        <td><strong>Cancelado</strong></td>
        <td>Comanda o productos anulados.</td>
        <td>Mesero (solicita) / Cocinero (autoriza)</td>
        <td>Estado final (exclusión del ticket)</td>
      </tr>
    </tbody>
  </table>

  <div class="note">
    <strong>Reglas de Negocio: Registro de Comandas</strong>
    <ul>
      <li><strong>RN-3.7:</strong> Toda comanda debe registrar obligatoriamente número de mesa, hora de captura e identificador de mesero. Faltando cualquiera, el sistema rechaza el registro.</li>
      <li><strong>RN-3.8:</strong> La hora de captura se toma del servidor (no del dispositivo del mesero) para evitar discrepancias por relojes desconfigurados.</li>
      <li><strong>RN-3.9:</strong> Las comandas se ordenan por hora de captura (FIFO). No existe mecanismo de prioridad manual; la antigüedad es el único criterio de ordenamiento.</li>
      <li><strong>RN-3.10:</strong> Una comanda en estado "en_preparacion" o "listo" no puede ser modificada por el mesero. Solo el cocinero puede revertir estados.</li>
      <li><strong>RN-3.11:</strong> Una comanda cancelada no se elimina físicamente; se marca con estado "cancelado" y se conserva para auditoría.</li>
      <li><strong>RN-3.12:</strong> Al cerrar la cuenta de una mesa, todas sus comandas en estados válidos (pendiente, en_preparacion, listo, entregado) se consolidan en el ticket. Las canceladas se excluyen automáticamente.</li>
    </ul>
  </div>

  <h3 id="sec3-3">3.3. Módulo de Cocina: Atención 100% por Voz</h3>
  <p>Este es el módulo operativo central para el área de preparación. El cocinero utiliza exclusivamente su diadema para interactuar con el sistema. La pantalla banner de cocina es meramente informativa y no admite entrada táctil, clic ni teclado.</p>

  <h4>3.3.1. Recepción de Comandas en Cocina</h4>
  <p>Cuando el mesero envía una comanda, el sistema ejecuta simultáneamente tres acciones en el área de cocina:</p>
  <ol>
    <li><strong>Pantalla banner:</strong> La nueva comanda aparece en la pantalla de cocina con los datos mínimos (mesa, hora, mesero, productos, tiempo transcurrido).</li>
    <li><strong>Anuncio por altavoz:</strong> El sistema utiliza síntesis de voz (Text-to-Speech, TTS) para anunciar en voz alta por el altavoz de la estación de cocina: <em>"Nueva orden: mesa cinco, dos tacos al pastor, una coca"</em>.</li>
    <li><strong>Notificación en diadema:</strong> Si el cocinero tiene su diadema conectada, escucha un tono de notificación breve indicando que hay una nueva orden.</li>
  </ol>

  <h4>3.3.2. Interacción del Cocinero por Voz Dictada</h4>
  <p>El cocinero gestiona las órdenes dictando comandos de voz a su diadema. El sistema reconoce estos comandos mediante un motor VOSK secundario con gramática ultra-restringida (solo comandos de control, sin catálogo de productos) para máxima precisión.</p>

  <div class="note">
    <strong>Catálogo Oficial de Gramática:</strong> Para evitar redundancia en las especificaciones, la tabla completa de comandos del cocinero, respuestas TTS, acciones en la pantalla banner de cocina (KDS) y el comportamiento detallado del sistema ante fallos o excepciones se encuentra centralizada y documentada en la <a href="Funcional_Flujos_Trabajo_Comandas_VOSK.html#sec8-2">Sección 8.2 de la Guía de Referencia de Gramática de Voz</a>.
  </div>

  <div class="note">
    <strong>Buzón de Notificaciones (PWA)</strong>
    <p>Se incorpora un buzón visual de notificaciones en la aplicación del mesero para registrar de manera cronológica los mensajes y alertas enviadas por cocina (ej. "Orden lista", "Cancelación rechazada").</p>
    <ul>
      <li><strong>Persistencia:</strong> El historial de notificaciones persiste en el almacenamiento local del dispositivo del mesero, garantizando que los avisos no se pierdan si se recarga la aplicación o si hay intermitencia de red.</li>
      <li><strong>Capacidad:</strong> El buzón retiene los últimos 20 mensajes operativos para consulta rápida.</li>
      <li><strong>Interacción:</strong> El mesero puede marcar las notificaciones como leídas visualmente, aunque el dictado por voz de la confirmación tiene prioridad inmediata.</li>
    </ul>
  </div>

  <h4>3.3.3. Gramática Restringida del Cocinero</h4>
  <p>Para maximizar la precisión del reconocimiento en el ambiente ruidoso de la cocina, el vocabulario del cocinero se limita exclusivamente a:</p>
  <ul>
    <li><strong>Palabras de control:</strong> "preparar", "listo", "recuperar", "siguiente", "repetir", "ordenes", "pendientes", "cancelar", "si", "no", "mesa".</li>
    <li><strong>Números:</strong> "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve", "diez", "once", "doce", "trece", "catorce", "quince", ..., "cien" (o equivalentes numéricos).</li>
    <li><strong>Frases compuestas válidas:</strong>
      <ul>
        <li><em>"preparar mesa [N]"</em></li>
        <li><em>"preparar siguiente"</em></li>
        <li><em>"listo mesa [N]"</em></li>
        <li><em>"recuperar mesa [N]"</em></li>
        <li><em>"repetir orden mesa [N]"</em></li>
        <li><em>"ordenes pendientes"</em></li>
        <li><em>"si cancelar"</em></li>
        <li><em>"no cancelar"</em></li>
      </ul>
    </li>
  </ul>

  <div class="note">
    <strong>Reglas de Negocio: Atención en Cocina por Voz</strong>
    <ul>
      <li><strong>RN-3.13:</strong> El cocinero interactúa exclusivamente por voz dictada a su diadema. La pantalla banner es de solo lectura y no admite táctil, clic ni teclado.</li>
      <li><strong>RN-3.14:</strong> Cada nueva comanda se anuncia automáticamente por el altavoz de cocina mediante TTS al momento de su recepción.</li>
      <li><strong>RN-3.15:</strong> El cocinero solo puede tomar comandas que estén en estado "pendiente". Una comanda ya tomada ("en_preparacion") requiere "recuperar" para reasignarla.</li>
      <li><strong>RN-3.16:</strong> El comando "preparar siguiente" siempre toma la comanda más antigua (FIFO). No permite saltar órdenes.</li>
      <li><strong>RN-3.17:</strong> Si el cocinero dicta "preparar mesa [N]" y esa mesa tiene múltiples comandas, el sistema toma la comanda más antigua de esa mesa.</li>
      <li><strong>RN-3.18:</strong> Si hay múltiples cocineros, cada uno ve la misma pantalla banner y escucha los mismos anuncios. Al tomar la orden por voz, la comanda queda asignada para su atención y registro al cocinero que dictó el comando.</li>
      <li><strong>RN-3.19:</strong> El sistema no permite marcar una comanda como "listo" si no fue previamente marcada como "en_preparacion".</li>
      <li><strong>RN-3.20:</strong> Si el cocinero dicta un comando no reconocido, el sistema responde: <em>"Comando no reconocido. Intente de nuevo."</em></li>
    </ul>
  </div>

  <h3 id="sec3-4">3.4. Módulo de Cancelaciones y Modificaciones</h3>
  <p>Este módulo gestiona las cancelaciones parciales o totales de comandas ya enviadas, operando como un diálogo de voz entre el mesero y el cocinero mediado por el sistema.</p>

  <h4>3.4.1. Flujo de Cancelación Parcial</h4>
  <ol>
    <li><strong>Solicitud del mesero:</strong> El mesero dicta: <em>"Cancelar [producto] de mesa [numero]"</em> (Ejemplo: <em>"Cancelar agua de horchata de mesa cinco"</em>).</li>
    <li><strong>Validación del sistema:</strong> El sistema verifica que exista esa comanda con ese producto y que no esté ya en estado "listo".</li>
    <li><strong>Notificación al cocinero:</strong> El sistema anuncia por la diadema del cocinero: <em>"El mesero [nombre] solicita cancelar [producto] de mesa [numero]. ¿Puede confirmar?"</em>.</li>
    <li><strong>Respuesta del cocinero:</strong> El cocinero responde por voz:
      <ul>
        <li><em>"Si, cancelar"</em>: El sistema marca el producto como cancelado y responde al mesero: <em>"Cancelación autorizada por cocina. [Producto] cancelado de mesa [numero]."</em></li>
        <li><em>"No, no cancelar"</em>: El sistema rechaza la cancelación y responde al mesero: <em>"Cancelación rechazada por cocina. El producto sigue en preparación."</em></li>
      </ul>
    </li>
    <li><strong>Actualización de estados:</strong> Si se autoriza, el producto se marca como "cancelado" en la base de datos y se excluye del ticket de cierre.</li>
  </ol>

  <h4>3.4.2. Cancelación Total de Comanda</h4>
  <p>El mesero puede solicitar la cancelación de una comanda completa:</p>
  <ol>
    <li>Mesero dicta: <em>"Cancelar toda la orden de mesa [numero]"</em>.</li>
    <li>El sistema anuncia en la diadema del cocinero: <em>"El mesero [nombre] solicita cancelar toda la orden de mesa [numero] con [lista de productos]. ¿Puede confirmar?"</em>.</li>
    <li>El cocinero responde "Si, cancelar" o "No, no cancelar" según el estado de la preparación.</li>
  </ol>

  <div class="note">
    <strong>Reglas de Negocio: Cancelaciones y Modificaciones</strong>
    <ul>
      <li><strong>RN-3.21:</strong> Toda cancelación, parcial o total, requiere autorización explícita del cocinero por voz. El mesero no puede cancelar unilateralmente una vez enviada la comanda.</li>
      <li><strong>RN-3.22:</strong> Si el producto solicitado para cancelación ya está marcado como "listo", el sistema responde automáticamente al mesero: <em>"El producto ya está listo. No se puede cancelar."</em> sin consultar al cocinero.</li>
      <li><strong>RN-3.23:</strong> Si la comanda completa está en estado "listo", la cancelación total se rechaza automáticamente.</li>
      <li><strong>RN-3.24:</strong> El cocinero dispone de 30 segundos para responder una solicitud de cancelación. Si no responde, el sistema rechaza la cancelación por tiempo expirado.</li>
      <li><strong>RN-3.25:</strong> Las cancelaciones autorizadas se anuncian por el altavoz de cocina: <em>"Cancelación autorizada: [producto] de mesa [numero]."</em></li>
      <li><strong>RN-3.26:</strong> Todo producto cancelado se registra en el sistema con estado "cancelado", se conserva para auditoría, y se excluye automáticamente del cálculo del ticket de cierre.</li>
      <li><strong>RN-3.27:</strong> No se permiten modificaciones (cambio de producto). Solo cancelaciones. Si el cliente cambia de opinión, se cancela el producto incorrecto y se genera una nueva comanda con el producto correcto.</li>
    </ul>
  </div>

  <h3 id="sec3-5">3.5. Módulo de Cierre de Cuenta</h3>
  <p>El cierre de cuenta se activa por dictado de voz del mesero. El sistema calcula el total acumulado de todas las comandas de la mesa (excluyendo cancelaciones), genera un ticket y lo envía a la impresora térmica local.</p>

  <h4>3.5.1. Proceso de Cierre por Voz</h4>
  <ol>
    <li><strong>Dictado de cierre:</strong> El mesero dicta: <em>"Cerrar cuenta de mesa [numero]"</em> o <em>"La cuenta de mesa [numero] se va a cerrar"</em>.</li>
    <li><strong>Cálculo automático:</strong> El sistema suma todos los productos de todas las comandas de esa mesa con estados válidos (pendiente, en_preparacion, listo, entregado), excluyendo cancelados.</li>
    <li><strong>Confirmación auditiva:</strong> El sistema responde por la diadema del mesero: <em>"Cuenta de mesa [numero]. Total: [monto] pesos. [N] productos. Ticket enviado a impresión."</em></li>
    <li><strong>Impresión del ticket:</strong> El sistema envía el ticket a la impresora térmica configurada.</li>
    <li><strong>Liberación de mesa:</strong> Todas las comandas de la mesa se marcan como "cobradas" (estado final) y la mesa queda disponible para nuevos clientes.</li>
    <li><strong>Notificación en pantalla de caja:</strong> La mesa desaparece de la lista de mesas activas en la pantalla de caja.</li>
  </ol>

  <h4>3.5.2. Contenido del Ticket Impreso</h4>
  <p>El ticket impreso contiene los siguientes campos y diseño básico:</p>
  <pre>
========================================
         [NOMBRE DEL RESTAURANTE]
========================================
Ticket #: 1284                 Mesa: 5
Mesero: Juan Pérez
Fecha: 11/06/2026        Hora: 15:42
----------------------------------------
 2 x Tacos al pastor            $ 90.00
 1 x Coca-Cola 600ml            $ 25.00
 1 x Agua de horchata           $ 30.00
----------------------------------------
                SUBTOTAL:      $ 145.00
                TOTAL:         $ 145.00
========================================
       Gracias por su preferencia
           www.caelitandem.lat
========================================
  </pre>

  <div class="note">
    <strong>Reglas de Negocio: Cierre de Cuenta</strong>
    <ul>
      <li><strong>RN-3.28:</strong> Solo el mesero que atendió la mesa (o un administrador) puede dictar el cierre de cuenta.</li>
      <li><strong>RN-3.29:</strong> El cierre de cuenta solo es posible si la mesa tiene al menos una comanda en estado válido. Mesas sin comandas o con todas canceladas no generan ticket.</li>
      <li><strong>RN-3.30:</strong> Los productos en estado "cancelado" se excluyen automáticamente del cálculo del total. No aparecen en el ticket.</li>
      <li><strong>RN-3.31:</strong> El total se calcula como la suma de (precio_unitario x cantidad) de todos los productos no cancelados de todas las comandas de la mesa. No se aplican descuentos, propinas, ni impuestos adicionales en el sistema.</li>
      <li><strong>RN-3.32:</strong> El sistema NO procesa métodos de pago. El ticket muestra el total a pagar; el cobro se realiza externamente por el cajero.</li>
      <li><strong>RN-3.33:</strong> Una vez cerrada la cuenta, la mesa queda libre inmediatamente. No hay confirmación adicional.</li>
      <li><strong>RN-3.34:</strong> Cada ticket generado recibe un número único consecutivo para auditoría. No se permite reimprimir un ticket sin autorización de administrador.</li>
    </ul>
  </div>

  <h3 id="sec3-6">3.6. Módulo de Administración</h3>
  <p>El módulo de administración es la única interfaz que permite interacción convencional con ratón y teclado. Se accede desde un PC con navegador web en la red local del restaurante.</p>

  <h4>3.6.1. Gestión del Catálogo de Productos</h4>
  <ul>
    <li><strong>Alta de productos:</strong> Nombre, precio unitario, categoría, y palabras clave para reconocimiento de voz (incluyendo sinónimos y variaciones fonéticas).</li>
    <li><strong>Modificación:</strong> Edición de precios, nombres, disponibilidad y palabras clave.</li>
    <li><strong>Baja lógica:</strong> Desactivación de productos sin eliminarlos del historial para preservar la integridad de reportes pasados.</li>
  </ul>

  <h4>3.6.2. Gestión de Usuarios y Diademas</h4>
  <ul>
    <li>Creación de perfiles de meseros y cocineros con nombre, usuario y contraseña.</li>
    <li>Asignación de diademas a usuarios (registro de número de serie o identificador de diadema).</li>
    <li>Activación/desactivación de usuarios.</li>
  </ul>

  <h4>3.6.3. Reportes Básicos</h4>
  
  <table>
    <caption>Tabla 7. Reportes del Módulo de Administración</caption>
    <thead>
      <tr>
        <th>Reporte</th>
        <th>Contenido</th>
        <th>Periodicidad</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Ventas por periodo</strong></td>
        <td>Total de ventas, número de tickets, ticket promedio.</td>
        <td>Por rango de fechas.</td>
      </tr>
      <tr>
        <td><strong>Productos más vendidos</strong></td>
        <td>Ranking por cantidad e ingresos.</td>
        <td>Diario, semanal, mensual.</td>
      </tr>
      <tr>
        <td><strong>Cancelaciones</strong></td>
        <td>Listado de productos y comandas canceladas, con mesero y cocinero.</td>
        <td>Diario, semanal.</td>
      </tr>
      <tr>
        <td><strong>Tiempos de preparación</strong></td>
        <td>Tiempo promedio desde la captura de la comanda hasta el estado "listo".</td>
        <td>Semanal, mensual.</td>
      </tr>
    </tbody>
  </table>

  <div class="note">
    <strong>Reglas de Negocio: Administración</strong>
    <ul>
      <li><strong>RN-3.35:</strong> El administrador es el único rol con permiso para modificar precios y productos. Los cambios son efectivos inmediatamente para nuevas comandas.</li>
      <li><strong>RN-3.36:</strong> Todo producto dado de alta debe incluir al menos una palabra clave para el reconocimiento de voz.</li>
      <li><strong>RN-3.37:</strong> Los reportes de cancelaciones incluyen siempre: producto cancelado, mesa, mesero que solicitó, cocinero que autorizó, y motivo (si se registró).</li>
    </ul>
  </div>
</section>

<!-- ═══════════════ 4. INTERACCIONES DICTADAS DEL COCINERO ═══════════════ -->
<section id="sec4">
  <h2>4. Interacciones Dictadas del Cocinero</h2>
  <p>La gramática e interacciones de voz del cocinero han sido consolidadas en el documento de Arquitectura de Voz.</p>
  <a href="Tecnica_Arquitectura_Voz_Comandas_VOSK.html" style="display:inline-block; margin-top:10px; margin-bottom:20px; color:#2563eb; text-decoration:none; font-weight:600;">&rarr; Ver Arquitectura de Voz e Interacciones</a>
</section>

<!-- ═══════════════ 5. INTERFACES VISUALES Y AUDITIVAS ═══════════════ -->
<section id="sec5">
  <h2>5. Interfaces Visuales y Auditivas</h2>
  
  <h3 id="sec5-1">5.1. Pantalla Banner de Cocina</h3>
  <p>La pantalla de cocina es una interfaz exclusivamente informativa de tipo banner. No admite táctil, clic, ratón ni teclado. Su propósito es ofrecer una referencia visual permanente de las órdenes en curso.</p>

  <h4>5.1.1. Datos Mínimos del Banner</h4>
  <p>Cada comanda se muestra como una tarjeta con los siguientes datos mínimos:</p>
  <ul>
    <li><strong>Número de mesa:</strong> Fuente muy grande (48-72 px), negrita, centrado. Es el dato más prominente.</li>
    <li><strong>Hora de captura:</strong> Formato 24h (HH:MM) para calcular la antigüedad de la orden.</li>
    <li><strong>Nombre del mesero:</strong> Fuente mediana, ubicado en la esquina superior.</li>
    <li><strong>Lista de productos:</strong> Cantidad + nombre, con fuente grande y legible a una distancia de 2 metros.</li>
    <li><strong>Estado actual:</strong> Indicador visual (pendiente, en preparación, listo).</li>
    <li><strong>Tiempo transcurrido:</strong> Contador dinámico MM:SS desde la hora de captura.</li>
    <li><strong>Indicador de color (Semáforo de tiempos):</strong> Borde izquierdo grueso de la tarjeta:
      <ul>
        <li>🟢 Verde: 0-10 minutos (tiempo óptimo).</li>
        <li>🟡 Amarillo: 10-20 minutos (tiempo de advertencia).</li>
        <li>🔴 Rojo: más de 20 minutos (tiempo crítico).</li>
      </ul>
    </li>
  </ul>

  <h4>5.1.2. Layout del Banner</h4>
  <ul>
    <li><strong>Encabezado fijo:</strong> Nombre del restaurante, reloj en tiempo real y contador de órdenes pendientes.</li>
    <li><strong>Área principal:</strong> Tarjetas de comanda organizadas en una cuadrícula de 2-3 columnas según el tamaño del monitor.</li>
    <li><strong>Ordenamiento:</strong> Por hora de captura (FIFO). La comanda más antigua aparece en la primera posición.</li>
    <li><strong>Refresco:</strong> La pantalla se actualiza de forma síncrona y en tiempo real, reflejando inmediatamente cualquier cambio de estado dictado por los meseros o cocineros.</li>
  </ul>

  <h3 id="sec5-2">5.2. Notificaciones por Voz (TTS)</h3>
  <p>El sistema utiliza síntesis de voz (Text-to-Speech) en tres canales de audio distintos, cada uno con un propósito específico:</p>

  <h4>5.2.1. Altavoz de Cocina (Anuncios Generales)</h4>
  <p>Altavoz conectado a la estación base de la cocina, escuchado por todos los cocineros. Se usa para:</p>

  <table>
    <caption>Tabla 14. Anuncios por Altavoz de Cocina</caption>
    <thead>
      <tr>
        <th>Evento</th>
        <th>Mensaje TTS (ejemplo)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Nueva comanda recibida</td>
        <td><em>"Nueva orden: mesa cinco, dos tacos al pastor, una coca."</em></td>
      </tr>
      <tr>
        <td>Cancelación autorizada</td>
        <td><em>"Cancelación autorizada: agua de horchata de mesa cinco."</em></td>
      </tr>
      <tr>
        <td>Cierre de cuenta</td>
        <td><em>"Cuenta cerrada: mesa cinco, total ciento cuarenta y cinco pesos."</em></td>
      </tr>
    </tbody>
  </table>

  <h4>5.2.2. Diadema del Cocinero (Respuestas Privadas)</h4>
  <p>La diadema Bluetooth del cocinero recibe respuestas privadas que solo él escucha:</p>

  <table>
    <caption>Tabla 15. Mensajes TTS en Diadema del Cocinero</caption>
    <thead>
      <tr>
        <th>Evento</th>
        <th>Mensaje TTS (ejemplo)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Confirmación de "preparar"</td>
        <td><em>"Orden de mesa cinco en preparación."</em></td>
      </tr>
      <tr>
        <td>Confirmación de "listo"</td>
        <td><em>"Orden de mesa cinco lista."</em></td>
      </tr>
      <tr>
        <td>Solicitud de cancelación</td>
        <td><em>"El mesero Juan solicita cancelar agua de horchata de mesa cinco. ¿Puede confirmar?"</em></td>
      </tr>
      <tr>
        <td>Consulta de pendientes</td>
        <td><em>"Tienes tres órdenes pendientes y una en preparación."</em></td>
      </tr>
      <tr>
        <td>Error de comando</td>
        <td><em>"Comando no reconocido. Intente de nuevo."</em></td>
      </tr>
    </tbody>
  </table>

  <h4>5.2.3. Diadema del Mesero (Confirmaciones)</h4>
  <p>La diadema del mesero recibe confirmaciones de sus acciones:</p>

  <table>
    <caption>Tabla 16. Mensajes TTS en Diadema del Mesero</caption>
    <thead>
      <tr>
        <th>Evento</th>
        <th>Mensaje TTS (ejemplo)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Comanda enviada</td>
        <td><em>"Comanda de mesa cinco enviada."</em></td>
      </tr>
      <tr>
        <td>Cancelación aprobada</td>
        <td><em>"Cancelación autorizada por cocina."</em></td>
      </tr>
      <tr>
        <td>Cancelación rechazada</td>
        <td><em>"Cancelación rechazada por cocina."</em></td>
      </tr>
      <tr>
        <td>Cierre de cuenta</td>
        <td><em>"Cuenta de mesa cinco calculada. Total ciento cuarenta y cinco pesos. Ticket enviado."</em></td>
      </tr>
    </tbody>
  </table>

  <div class="note warning">
    <strong>Reglas de Negocio: Notificaciones por Voz</strong>
    <ul>
      <li><strong>RN-5.1:</strong> Todo mensaje TTS se reproduce en español mexicano (es-MX) con velocidad 1.1x para agilidad sin perder claridad.</li>
      <li><strong>RN-5.2:</strong> Si hay múltiples cocineros, todos escuchan el mismo altavoz. Los mensajes de diadema son privados por cocinero.</li>
      <li><strong>RN-5.3:</strong> El sistema no anuncia nuevas comandas por la diadema del cocinero (solo por el altavoz común) para no interrumpir comunicaciones privadas.</li>
      <li><strong>RN-5.4:</strong> Si el altavoz está reproduciendo un mensaje y llega un nuevo evento, el nuevo mensaje se encola y se reproduce al terminar el anterior.</li>
      <li><strong>RN-5.5:</strong> Las cancelaciones se anuncian obligatoriamente tanto en el altavoz de cocina como en la diadema del cocinero afectado, para garantizar que no haya confusión.</li>
    </ul>
  </div>
</section>

<!-- ═══════════════ 6. FLUJOS DE TRABAJO COMPLETOS ═══════════════ -->
<section id="sec6">
  <h2>6. Flujos de Trabajo y Reglas de Negocio</h2>
  <p>Los flujos de trabajo detallados (Toma de Comanda, Cocina, Cancelación y Cierre) y sus reglas de negocio asociadas han sido extraídos a un manual operativo independiente para facilitar su lectura.</p>
  <a href="Funcional_Flujos_Trabajo_Comandas_VOSK.html" style="display:inline-block; margin-top:10px; margin-bottom:20px; color:#2563eb; text-decoration:none; font-weight:600;">&rarr; Ver Manual Operativo y Reglas de Negocio</a>
</section>

<!-- ═══════════════ 8. GLOSARIO DE TÉRMINOS ═══════════════ -->
<section id="sec8">
  <h2>8. Glosario de Términos</h2>
  <dl>
    <dt><strong>Comanda</strong></dt>
    <dd>Orden de alimentos y bebidas solicitada por un cliente en una mesa específica, capturada mediante dictado de voz por el mesero y registrada en el sistema.</dd>
    
    <dt><strong>Diadema de Manos Libres</strong></dt>
    <dd>Auricular Bluetooth con micrófono integrado que sirve como el principal y único medio de interacción operativa para meseros y cocineros.</dd>
    
    <dt><strong>Pantalla Banner (KDS)</strong></dt>
    <dd>Pantalla instalada en la cocina que muestra las órdenes en curso. Opera de forma pasiva (solo lectura), sin requerir que el cocinero la toque o interactúe directamente con ella.</dd>
    
    <dt><strong>Motor de Transcripción (Reconocedor de Voz)</strong></dt>
    <dd>Módulo que escucha la voz humana y la transforma en texto en tiempo real, operando de manera autónoma directamente en el teléfono del mesero sin depender de internet.</dd>
    
    <dt><strong>Anuncios por Voz (TTS)</strong></dt>
    <dd>Voz sintética generada por el sistema que dialoga con los usuarios, confirmando acciones o narrando los productos de las nuevas órdenes a través del altavoz.</dd>
    
    <dt><strong>Gramática Restringida</strong></dt>
    <dd>Una lista cerrada de comandos permitidos (ej. "Preparar", "Listo", números y mesas) que el sistema reconoce con extrema precisión en ambientes muy ruidosos como la cocina.</dd>
    
    <dt><strong>Cola de Órdenes Offline</strong></dt>
    <dd>Capacidad del sistema que permite al mesero seguir capturando comandas aunque se pierda temporalmente la conexión a la red Wi-Fi; enviándolas automáticamente cuando la señal regresa.</dd>
    
    <dt><strong>Ordenamiento FIFO (Primero en llegar, primero en salir)</strong></dt>
    <dd>Regla estricta por la cual el sistema organiza el trabajo en cocina: la orden que lleva más tiempo esperando es siempre la siguiente en ser preparada.</dd>
    
    <dt><strong>Corrección Fonética (Aproximación de Palabras)</strong></dt>
    <dd>Inteligencia del sistema para entender productos aunque el mesero los haya pronunciado rápido o el reconocimiento tenga una letra distinta (ej. corregir "guarache" por "huarache").</dd>
    
    <dt><strong>Voz Fantasma</strong></dt>
    <dd>Efecto indeseado donde alertas acústicas retrasadas (ej. por pérdida de red temporal) se reproducen de golpe al reconectar. El sistema previene esto descartando notificaciones viejas.</dd>
  </dl>
</section>

</body>
</html>

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

I'm focusing intently on tool selection to streamline my processes. Avoiding `cat` for file creation/appending is now automatic; I'm leaning heavily on `grep_search` and other specific tools. Efficiency and avoiding common pitfalls are my top priorities in this ongoing self-improvement.


**Refining Tool Choice**

I'm now implementing explicit tool selection before execution. My latest focus involves cleaning a directory. I've decided to use `run_command` with `find` to delete non-`.gz` files, bypassing the slower `list_dir` method. I'll then move on to generating mockups, opting for `write_to_file` to create the HTML/CSS/JS files for the mockups. The PWA mockups are next, with consideration for both Mesero and Cajero roles as specified.


**Designing Restaurantb UIs**

I'm now deep in the UI design phase. My focus is on creating mockups for the restaurantb project. I'll be developing four HTML files: `mesero_pwa_comanda.html`, `mesero_pwa_notificaciones.html`, `cocina_webapp_kds.html`, and `admin_webapp_dashboard.html`. I'll avoid TailwindCSS, opting for vanilla CSS with dark mode, glassmorphism, and modern typography. I will create a `/web-assets/` directory to store shared CSS and JavaScript assets, starting with cleaning that directory.


**Revising File Formats**

I've hit a small snag! Realizing the mockups need to be PHP files, I'm now adjusting course. I'll utilize `write_to_file` to create the four PHP mockup files: `pwa_mesero_dictado.php`, `pwa_mesero_mesas.php`, `webapp_cocina_kds.php`, and `webapp_admin_dashboard.php`. I'm committed to beautiful CSS, and will now use `run_command` to first clean the shared web assets directory, and will then use `write_to_file` to create `main.css` and `main.js` there as a shared resource.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 5.224388734s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Execution Error

**Status:** Completed
**Created:** 18 June 2026, 11:15 am

---

## Agent Response

### Thinking

**Prioritizing Tool Specificity**

I'm focusing intently on tool selection to streamline my processes. Avoiding `cat` for file creation/appending is now automatic; I'm defaulting to dedicated file manipulation tools. Also, I'm now committed to employing `grep_search` in bash commands unless there is no alternative. This helps to make more precise code.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.046060619s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

## User Request

Para escritura ponlos aqui:
/opt/lampp/htdocs/agua/tmp-restaurant/mokups/

<details>
<summary>Context</summary>

**Active File:** `check_connectivity.sh`
**Language:** shellscript
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

I'm focusing intently on tool selection, as requested. I'm actively retraining myself to avoid general tools when specialized options exist. Specifically, I'm now making a conscious effort to use `grep_search` and avoid `grep` inside bash commands unless there is no alternative. This is a critical habit to form, and I am putting this in practice. Also, I am always avoiding `ls` or `cat`, as instructed.


**Listing Relevant Tools**

I've been instructed to create mockups in a specific directory outside the standard workspace. Currently, I'm explicitly listing relevant tools before execution, as requested. The UI/UX assets will go into `/opt/lampp/htdocs/agua/tmp-restaurant/mokups/web-assets/`. I'm preparing to create PHP mockups, specifically `webapp_cocina_kds.php`, `webapp_admin_dashboard.php`, `pwa_mesero_comanda.php` and one other PWA mockup, and I will be putting the assets in the specified directory.


**Planning File Structure**

I am now structuring the files, starting with shared assets. The plan is to create `main.css` for styling, `app.js` for interactions, and then the PHP mockups. I'm focusing on responsiveness and modern UI/UX principles, using Vanilla CSS, premium design elements (glassmorphism, dark mode options), and appropriate Google Fonts. I'll utilize `write_to_file` to create the required files in the correct directory. I'm prioritizing the `pwa_mesero_notificaciones.php` table management mockup.




### Actions

**Tool:** `write_to_file`

**Tool:** `write_to_file`

**Tool:** `write_to_file`

**Tool:** `write_to_file`

**Tool:** `write_to_file`

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 59.317828454s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:18 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:18 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:18 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:18 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:18 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:18 am

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

I'm focusing intently on tool selection, as requested. I'm actively retraining myself to avoid general tools when specialized options exist. Specifically, I'm now making a conscious effort to use `grep_search` and avoid `grep` inside bash commands unless there is no alternative. This is a critical habit to form, and I am putting this in practice. Also, I am always avoiding `ls` or `cat`, as instructed.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.261646423s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

## User Request

Para las PWA, incluye un menu de amburgesa estandar para la navegacion, e incluye dos temas el actual y otro en colores claros, en ese mismo menu incluye el item de login/logout añadelo al menu.
Todo el texto a desplegar en las webapp en idioma español.

<details>
<summary>Context</summary>

**Active File:** `main.css`
**Language:** css
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
@import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap');

:root {
  /* Color Palette */
  --bg-dark: #0f172a;
  --bg-panel: rgba(30, 41, 59, 0.7);
  --text-primary: #f8fafc;
  --text-secondary: #94a3b8;
  --accent-primary: #3b82f6;
  --accent-hover: #2563eb;
  
  /* Status Colors */
  --status-success: #10b981; /* Green */
  --status-warning: #f59e0b; /* Yellow */
  --status-danger:  #ef4444; /* Red */

  /* Glassmorphism */
  --glass-bg: rgba(255, 255, 255, 0.03);
  --glass-border: rgba(255, 255, 255, 0.08);
  --glass-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
  
  --font-main: 'Outfit', sans-serif;
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: var(--font-main);
  background: var(--bg-dark);
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

I'm focusing intently on tool specificity. I'm actively avoiding `cat` for file creation/appending and will rely on appropriate alternatives. Similarly, I'm leaning heavily on `grep_search` instead of `grep` within bash commands unless circumstances require `grep`. I am actively avoiding listing files with `ls` or using `cat` for viewing.


**Refining Tool Choices**

I'm now prioritizing tool selection and planning before execution. My focus is on using the optimal tools for each task. Before I act, I'm explicitly listing out tools relevant to the update. I'm choosing `multi_replace_file_content` or `replace_file_content` for updating CSS, JavaScript, and PHP files, specifically `main.css`, `app.js`, `pwa_mesero_comanda.php`, and `pwa_mesero_notificaciones.php`, to update the PWA mockups. I'll need to add a standard hamburger menu, a light theme alongside the existing dark theme, and ensure all text is in Spanish.


**Defining Theme Variables**

I'm now focusing on the CSS for the light theme, defining variables within `main.css`. The variables for the light theme are established with `--bg-dark`, `--bg-panel`, and others, and the background image is being adjusted for the new theme as well. I'm also planning the CSS structure for the side menu, preparing to add styles for its appearance and behavior, including the hamburger menu and overlay.


**Constructing Menu Components**

I'm now fully immersed in the construction of the menu components, meticulously defining the CSS for the overlay and the side menu itself. I'm focusing on positioning, blur effects, z-index, and transition animations for both. I've defined the menu header, navigation structure, and individual menu items' appearance and positioning, and will add icons.


**Implementing Menu Interactivity**

I'm now implementing interactivity for the menu. I'm focusing on the `app.js` file, incorporating JavaScript for both theme toggling and menu functionality. The theme toggle saves the user's preference using `localStorage`. For the menu, I'm adding `toggleMenu` to control visibility of both the menu and the overlay. This includes applying and removing the "active" class to the menu and overlay elements.


**Updating File Strategies**

I've shifted my approach for updating the PHP mockups. Instead of intricate `multi_replace_file_content` maneuvers, I'm opting for the more straightforward `write_to_file` with `Overwrite: true` to ensure precise updates to `anda.php` and `pwa_mesero_notificaciones.php`, guaranteeing a safe and easy file update. I'm also ensuring the mockups have a hamburger icon and side menu. Then, I'm analyzing the existing Spanish text in the webapp files like `webapp_cocina_kds.php` and `webapp_admin_dashboard.php` to identify any text that needs translation to ensure full Spanish language support, which seems to be the main missing piece.


**Simplifying File Manipulation**

I'm now streamlining file updates by focusing on `write_to_file`. I'm using it to completely rewrite `main.css`, overriding the existing content. I'll also rewrite the PHP mockups directly, using `write_to_file`, to ensure clean and easy updates. In particular, this focuses on `/opt/lampp/htdocs/agua/tmp-restaurant/mokups/web-assets/css/main.css`, `/opt/lampp/htdocs/agua/tmp-restaurant/mokups/web-assets/js/app.js`, `/opt/lampp/htdocs/agua/tmp-restaurant/mokups/pwa_mesero_comanda.php`, and `/opt/lampp/htdocs/agua/tmp-restaurant/mokups/pwa_mesero_notificaciones.php`. I'll also modify `/opt/lampp/htdocs/agua/tmp-restaurant/mokups/webapp_admin_dashboard.php` so "Dashboard" is replaced with "Tablero".




### Actions

**Tool:** `write_to_file`

**Tool:** `write_to_file`

**Tool:** `write_to_file`

**Tool:** `write_to_file`

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 66.410500842s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:31 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:31 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:31 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:31 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:31 am

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

I'm focusing intently on tool selection to streamline my processes. Avoiding `cat` for file creation/appending is now automatic; I'm defaulting to dedicated file manipulation tools. Also, I'm now committed to employing `grep_search` in bash commands unless there is no alternative. This helps to make more precise code.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.270054365s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

## User Request

. Añade la ui para que despues aparezca el texto trascrito de voz a texto, permita editar el texto que aparece; que se pongan las opciones de undo redo; como una barrita centrada de iconos pequeños abajo de la caja de texto.
. Que a lado del microno aparesca otro icono de un lapiz (opcion de tomar la orden via escritura).


<details>
<summary>Context</summary>

**Active File:** `main.css`
**Language:** css
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 11 conversations, in reverse chronological order:

<conversation_summaries>
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

## Conversation 8a2778b8-300b-46e8-9020-16cf387f47c8: Financial Audit Reconciliation Tool
- Created: 2026-06-18T01:04:14Z
- Last modified: 2026-06-18T06:03:43Z

### USER Objective:
Fixing Cargo Configuration Logic

USER Objective:
Finalize the audit and parity of the V2 motor surcharge rules while resolving configuration gaps for new cargo types.

Goals:
1. Enable the creation and modification of non-Agua/Drenaje cargo types with active surcharge (mora) support by refactoring the "Poka-Yoke" business rules in `cargos.php`.
2. Correct the frontend JavaScript behavior in `paxscript.js` to ensure validation errors are displayed rather than silently overwritten by form reloads.
3. Validate database integrity for the "ROMP AN 26" cargo, ensuring proper metadata alignment for display in `configuracion.php`.
4. Maintain absolute parity between legacy financial records and the V2 engine to solidify the environment as the Single Source of Truth for the finance committee.

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

## Conversation c3d1ede4-c440-4d00-b82c-427014028cf3: Infrastructure Validation And Fixes
- Created: 2026-06-16T01:00:57Z
- Last modified: 2026-06-16T09:24:09Z

### USER Objective:
Stabilizing Host C Financial Audit

USER Objective: Finalize the financial synchronization and audit-ready parity for the 64 priority contracts between legacy Host B and the V2 Host C.

Goals:
1. Validate financial parity by analyzing the 64 contracts in the restored Host C production database, leveraging the new V2 motor logic.
2. Maintain "Camino A" as the Single Source of Truth (SSOT) using the Amnesty Control Panel to manage debt generation autonomously.
3. Remove manual "recargo" checkboxes from the UI to eliminate human error and centralize authority, effectively implementing a Poka-Yoke architecture.
4. Establish operational documentation for the finance/secretarial team explaining the historical mathematical discrepancies caused by the Host B legacy system's "12-month cap" error versus the Host C V2 engine's accuracy.

## Conversation a9b512f6-c862-4796-92d8-b86a11a0b8c9: Infrastructure Validation And Ping Tests
- Created: 2026-06-15T19:26:51Z
- Last modified: 2026-06-15T22:00:17Z

### USER Objective:
Syncing Financial Data Discrepancies

USER Objective:
Resolve financial discrepancies between Host B and Host C for 64 identified contracts by ensuring accurate historical charge and surcharge generation.

Goals:
1. Normalize Host C charge calculations to match legacy Host B expectations, specifically addressing the "12-month cap" on historical surcharges.
2. Finalize the `catchup_64.php` script execution using status spoofing to force charge generation for suspended contracts.
3. Validate data integrity by aligning the Host C debt records with Host B benchmarks, enabling accurate debt negotiation for delinquent users.
4. Document the delta between Host C's accurate mathematical surcharge calculation and the Host B legacy system's historical limitations.

## Conversation 8a1da618-e0db-405c-afe8-ee4a98822d5d: Fixes a proyecto agua
Utiliza el conocimiento de GEMINI.md , lo que se realice en esta sesion debera
<truncated 132 bytes>
- Created: 2026-06-15T19:24:17Z
- Last modified: 2026-06-15T19:24:54Z

## Conversation cd61debf-2071-4da7-8578-238a85984bea: Designing Data Model And Offline Persistence
- Created: 2026-06-15T04:56:44Z
- Last modified: 2026-06-15T06:16:09Z

### USER Objective:
Database Infrastructure And PWA Assets

Main Objective: Complete the data architecture and finalize technical specifications for the restaurant voice command system while ensuring offline-first resilience.

Goals:
1. Implement optimized SQL indexing for transactional tables (`comandas`, `detalle_comandas`) to ensure high-performance query execution.
2. Formalize the PWA offline/local persistence layer by establishing physical directory structures for Dexie.js and Service Workers within the `web-assets/pwa` namespace.
3. Consolidate technical and development standards into `GEMINI.md` to ensure project consistency and clean onboarding.
4. Integrate Delight-PHP/Auth into the backend architecture to finalize secure operational access.
5. Update technical documentation (`Especificacion_Tecnica_Comandas_VOSK.html`) to serve as the immutable source of truth for the finalized PWA architecture and folder rules.

## Conversation c23fd704-b153-4653-a5e0-a53e3e0ee891: Consolidating Technical Specifications SSOT
- Created: 2026-06-13T21:04:49Z
- Last modified: 2026-06-15T06:11:03Z

### USER Objective:
Standardizing MCP Infrastructure Ground Truth

USER Objective:
Modernize and stabilize the MCP configuration management system across all project repositories.

Goals:
1. Resolve duplicate and outdated MCP server definitions within `.mcp.json` to ensure clean connectivity.
2. Synchronize infrastructure documentation in `01-infra-hosts.md` and `06-accesos-rutas.md` to match the validated, centralized SSOT.
3. Eliminate naming inconsistencies by standardizing host labels across configuration files and rules.
4. Verify system integrity via automated validation scripts to prevent regression of the Ground Truth environment.

## Conversation 2cc92db0-a3f6-4770-8a55-b2a231d18838: Converting Technical Documentation To HTML
- Created: 2026-06-14T23:15:22Z
- Last modified: 2026-06-15T00:02:30Z

### USER Objective:
Integrating Technical Specifications And Docs

Main Objective: Unify and complete the technical specification documentation by integrating operational instructions, infrastructure details, and PWA Android development constraints.

Goals:
1. Synthesize the secondary specification PDF into the existing HTML document to create a single source of truth.
2. Update the document title and metadata to reflect the current scope of voice-driven order management.
3. Integrate new technical sections covering directory structures, development environments (localhost), and database configurations.
4. Document a catalog of Android PWA/TWA development issues and their mitigations to improve system resilience.
5. Define a clear development backlog, including dataset requirements and MVP priorities, to guide future implementation phases.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 18 June 2026, 11:37 am

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

I'm focusing intently on tool specificity. I'm actively avoiding `cat` for file creation/appending and will rely on appropriate alternatives. Similarly, I'm leaning heavily on `grep_search` instead of `grep` within bash commands unless circumstances require `grep`. I am actively avoiding listing files with `ls` or using `cat` for viewing.


**Planning UI Enhancements**

I'm now planning UI enhancements for `pwa_mesero_comanda.php`. I've listed required tools: `multi_replace_file_content` or `replace_file_content` for editing both PHP and CSS files. The plan is to start by updating `main.css` to accommodate the new toolbar and side-by-side microphone/pencil icons. I'm focusing on the CSS changes first.


**Designing CSS Components**

I'm deep in CSS component design, specifically for the editor toolbar. I've defined styles for `.editor-toolbar`, `.editor-btn`, and the action buttons container, including `.action-buttons-wrapper` and `.alt-btn`. I'm focusing on a clean, glass-like aesthetic with hover effects. The plan is to ensure these are user-friendly and well-integrated into the overall UI.


**Refining Code Implementation**

I'm now zeroing in on code implementation details. My focus is on updating the HTML structure, specifically within `pwa_mesero_comanda.php`. The plan involves modifying the `mic-btn-container` and `transcription-box` sections, as shown, including editor toolbar. I am aiming for semantic accuracy while maintaining a clean, user-friendly interface.


**Centering the Mic Button**

I'm now focused on centering the mic button visually. I've realized that using a spacer to the right of the mic button wasn't the best solution, and the plan now is to achieve perfect centering using `display: flex`, `justify-content: center`, and `align-items: center` for the action buttons wrapper. This provides a more robust and elegant centering solution.




### Actions

**Tool:** `replace_file_content`

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 17.181564377s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:37 am

---

### Code Edit

**Status:** Completed
**Created:** 18 June 2026, 11:37 am

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

I'm focusing intently on tool selection, as requested. I'm actively retraining myself to avoid general tools when specialized options exist. Specifically, I'm now making a conscious effort to use `grep_search` and avoid `grep` inside bash commands unless there is no alternative. This is a critical habit to form, and I am putting this in practice. Also, I am always avoiding `ls` or `cat`, as instructed.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.379588316s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

## User Request

seria mejor incluir alguna libreria js portable para el control del editor de la caja de text (undo, red,  y  controle realmente la edicion) o no ?

<details>
<summary>Context</summary>

**Active File:** `main.css`
**Language:** css

**Open Files:**
- `main.css`
- `pwa_mesero_comanda.php`
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

I'm focusing intently on tool specificity. I'm actively avoiding `cat` for file creation/appending and will rely on appropriate alternatives. Similarly, I'm leaning heavily on `grep_search` instead of `grep` within bash commands unless circumstances require `grep`. I am actively avoiding listing files with `ls` or using `cat` for viewing.


**Evaluating Library Dependencies**

I'm now weighing the inclusion of a portable JavaScript library for text box editing features, specifically undo/redo, considering the question about controlling text box editing, from a UI/UX and web development perspective for a voice-first restaurant PWA. The focus is on the advantages of a reliable undo/redo stack across browsers, which `document.execCommand` doesn't always provide. I'm also considering the benefits and potential downsides of using an established library like Quill or MediumEditor, as well as lightweight alternatives.


**Analyzing Undo Requirements**

I've been analyzing the undo/redo implementation more deeply. I've realized mobile browser behaviors, particularly on Android Chrome versus Safari, pose significant challenges to a consistent undo feature. The main goal is better cursor management when voice and manual typing are combined. The `undo` system must properly account for JS-injected text. Also, I'm considering overhead and that a lightweight PWA is preferred.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.914454708s
- **Model:** Gemini 3.1 Pro (Low)
</details>

---

---

*Generated by Chatledger for Antigravity*