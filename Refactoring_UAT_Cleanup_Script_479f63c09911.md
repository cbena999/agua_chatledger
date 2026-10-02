# Refactoring UAT Cleanup Script

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `d9db939d-316b-4b76-977d-f767304cf5c0` |
| **Cascade ID** | `71fe41a8-1855-4b9a-9a77-479f63c09911` |
| **Type** | Agent Conversation |
| **Total Steps** | 105 |
| **Started** | 2 Oct 2026, 2:13 pm |
| **Completed** | 2 Oct 2026, 2:35 pm |

---

## User Request

con  base a la conversación ---reciente donde se refactorizacion temas de bd y cache, usala como referencia para:
COrregir, completar, mejorar, blindar  este script de  limpiar pruebas de ordenes, se puedan iniciar pruebas UAT limpias de ordenes, notificaciones, y demas funcionalidades propias de los flujos/procesos que estan alrededor del ciclo de las solicitud digtial y tambien de logs asociados.
sudo mariadb --defaults-extra-file=/opt/laesh/configs/.mariadb-root.cnf laesh_db <<'SQL_CLEANUP'
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM notificaciones WHERE tipo IN ('nueva_orden','orden_actualizada','resultados_listos');
TRUNCATE TABLE historial_estados_orden;
TRUNCATE TABLE resultados_pdf;
TRUNCATE TABLE detalle_ordenes;
TRUNCATE TABLE ordenes;
TRUNCATE TABLE pacientes;
SET FOREIGN_KEY_CHECKS=1;
UPDATE folios_control SET ultimo_folio = 0 WHERE tipo_documento = 'orden_laboratorio';
SQL_CLEANUP

sudo mariadb --defaults-extra-file=/opt/laesh/configs/.mariadb-root.cnf laesh_db -e "
SELECT 'ordenes' AS tabla, COUNT(*) FROM ordenes
UNION ALL SELECT 'pacientes', COUNT(*) FROM pacientes
UNION ALL SELECT 'resultados_pdf', COUNT(*) FROM resultados_pdf
UNION ALL SELECT 'historial_estados_orden', COUNT(*) FROM historial_estados_orden;
SELECT tipo_documento, ultimo_folio FROM folios_control WHERE tipo_documento='orden_laboratorio';

<details>
<summary>Context</summary>

**Active File:** `manual-usuario.html`
**Language:** html
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 1 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation d09de97c-0c45-4639-aad1-3960232baee8: Análisis De Sesiones Seguras
- Created: 2026-10-01T21:09:16Z
- Last modified: 2026-10-02T20:07:01Z

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 2 Oct 2026, 2:13 pm

---

## Agent Response

### Thinking

The request concerns cleaning up order-related data for UAT testing. Considering recent database and caching discussions, the script likely interacts with these areas. The aim is to ensure a clean slate for new UAT tests, implying the existing order data is interfering.


The provided script indicates a database cleanup routine targeting several tables related to orders, notifications, patient data, and PDF results.  It truncates specific tables and resets a folio counter, suggesting a complete reset of order-related data for UAT. The subsequent queries confirm the successful clearing by retrieving row counts from the tables after cleanup and checking folio values.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.068788228s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:13 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:13 pm

---

## Agent Response

### Thinking

Initiating a deep dive into the project's physical database model, seeking to identify redundant code and potential optimizations for primary keys, foreign keys, and indexes. Simultaneously, examining the opcache and JavaScript data generation/usage to pinpoint dead code and enhancement opportunities. Will consolidate findings into two separate HTML reports.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.074979305s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:13 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `informe-modelo-datos-opcache-js.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
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
  <title>Informe Técnico: Modelo Físico BD, OPcache y Arquitectura Datos JS — LAESH</title>
  <style>
    :root {
      --bg: #0f1117;
      --bg2: #161b27;
      --bg3: #1e2435;
      --border: #2a3048;
      --accent: #5b8af8;
      --accent2: #38bdf8;
      --green: #34d399;
      --red: #f87171;
      --yellow: #fbbf24;
      --purple: #c084fc;
      --gray: #8892aa;
      --white: #e8eaf2;
      --radius: 10px;
      --font: 'Segoe UI', system-ui, -apple-system, sans-serif;
      --mono: 'Cascadia Code', 'Fira Code', 'Consolas', monospace;
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      background: var(--bg);
      color: var(--white);
      font-family: var(--font);
      font-size: 14px;
      line-height: 1.7;
    }
    
    /* Header / Hero */
    .hero {
      background: linear-gradient(135deg, #0a0f1e 0%, #1a2544 50%, #0d1a38 100%);
      border-bottom: 1px solid var(--border);
      padding: 44px 40px 36px;
    }
    .hero-tag {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: rgba(91, 138, 248, 0.15);
      border: 1px solid rgba(91, 138, 248, 0.35);
      color: var(--accent);
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.12em;
      text-transform: uppercase;
      padding: 4px 12px;
      border-radius: 20px;
      margin-bottom: 16px;
    }
    .hero h1 {
      font-size: 26px;
      font-weight: 700;
      margin-bottom: 8px;
      letter-spacing: -0.02em;
    }
    .hero h1 span { color: var(--accent2); }
    .hero p {
      color: var(--gray);
      max-width: 820px;
      font-size: 14px;
    }
    .hero-meta {
      display: flex;
      flex-wrap: wrap;
      gap: 24px;
      margin-top: 24px;
      padding-top: 20px;
      border-top: 1px solid rgba(42, 48, 72, 0.5);
    }
    .meta-chip {
      display: flex;
      flex-direction: column;
      gap: 2px;
    }
    .meta-chip .label {
      font-size: 10px;
      color: var(--gray);
      text-transform: uppercase;
      letter-spacing: 0.08em;
    }
    .meta-chip .value {
      font-size: 14px;
      font-weight: 600;
    }
    .meta-chip .value.green { color: var(--green); }
    .meta-chip .value.blue { color: var(--accent2); }
    .meta-chip .value.purple { color: var(--purple); }

    /* Layout */
    .layout {
      display: flex;
      min-height: calc(100vh - 180px);
    }
    .toc {
      width: 280px;
      flex-shrink: 0;
      background: var(--bg2);
      border-right: 1px solid var(--border);
      padding: 24px 0;
      position: sticky;
      top: 0;
      height: 100vh;
      overflow-y: auto;
    }
    .toc-title {
      font-size: 11px;
      font-weight: 700;
      color: var(--gray);
      text-transform: uppercase;
      letter-spacing: 0.12em;
      padding: 0 20px 10px;
      border-bottom: 1px solid var(--border);
      margin-bottom: 10px;
    }
    .toc-section {
      font-size: 10px;
      font-weight: 700;
      color: var(--accent2);
      letter-spacing: 0.1em;
      text-transform: uppercase;
      padding: 14px 20px 4px;
    }
    .toc a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 6px 20px;
      color: var(--gray);
      text-decoration: none;
      font-size: 12.5px;
      transition: all 0.15s ease;
      border-left: 3px solid transparent;
    }
    .toc a:hover {
      background: var(--bg3);
      color: var(--white);
      border-left-color: var(--accent);
    }
    .toc a .badge {
      margin-left: auto;
      font-size: 9px;
      background: rgba(91, 138, 248, 0.15);
      color: var(--accent);
      padding: 1px 6px;
      border-radius: 8px;
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `informe-modelo-datos-opcache-js.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L150-449)</summary>

**Path:** `Unknown file`

```
      font-weight: 700;
    }

    /* Main Container */
    .main {
      flex: 1;
      padding: 36px 44px;
      max-width: 1140px;
    }
    
    /* Section Headers */
    .sh {
      display: flex;
      align-items: center;
      gap: 14px;
      margin: 44px 0 20px;
      padding-bottom: 14px;
      border-bottom: 1px solid var(--border);
    }
    .sh:first-child { margin-top: 0; }
    .si {
      width: 40px;
      height: 40px;
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 20px;
      flex-shrink: 0;
    }
    .si.blue { background: rgba(91, 138, 248, 0.15); color: var(--accent); }
    .si.green { background: rgba(52, 211, 153, 0.15); color: var(--green); }
    .si.yellow { background: rgba(251, 191, 36, 0.15); color: var(--yellow); }
    .si.red { background: rgba(248, 113, 113, 0.15); color: var(--red); }
    .si.purple { background: rgba(192, 132, 252, 0.15); color: var(--purple); }
    .st h2 { font-size: 19px; font-weight: 700; }
    .st p { font-size: 12px; color: var(--gray); margin-top: 2px; }

    /* Cards */
    .card {
      background: var(--bg2);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 22px 24px;
      margin-bottom: 22px;
    }
    .card.alert {
      border-left: 4px solid var(--red);
      background: rgba(248, 113, 113, 0.05);
    }
    .card.warn {
      border-left: 4px solid var(--yellow);
      background: rgba(251, 191, 36, 0.05);
    }
    .card.success {
      border-left: 4px solid var(--green);
      background: rgba(52, 211, 153, 0.05);
    }
    .card.info {
      border-left: 4px solid var(--accent);
      background: rgba(91, 138, 248, 0.05);
    }
    .card-title {
      font-size: 15px;
      font-weight: 700;
      margin-bottom: 8px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .card-title .tag {
      font-size: 10px;
      font-weight: 700;
      text-transform: uppercase;
      padding: 2px 8px;
      border-radius: 12px;
      letter-spacing: 0.06em;
    }

    /* Pill Badges */
    .tag.critico { background: rgba(248, 113, 113, 0.2); color: var(--red); border: 1px solid rgba(248, 113, 113, 0.4); }
    .tag.alerta { background: rgba(251, 191, 36, 0.2); color: var(--yellow); border: 1px solid rgba(251, 191, 36, 0.4); }
    .tag.exito { background: rgba(52, 211, 153, 0.2); color: var(--green); border: 1px solid rgba(52, 211, 153, 0.4); }
    .tag.info { background: rgba(56, 189, 248, 0.2); color: var(--accent2); border: 1px solid rgba(56, 189, 248, 0.4); }

    /* Tables */
    table {
      width: 100%;
      border-collapse: collapse;
      margin: 14px 0 18px;
      border-radius: var(--radius);
      overflow: hidden;
      border: 1px solid var(--border);
    }
    thead tr { background: var(--bg3); }
    th {
      text-align: left;
      padding: 10px 14px;
      font-size: 11px;
      font-weight: 700;
      color: var(--gray);
      text-transform: uppercase;
      letter-spacing: 0.08em;
      border-bottom: 1px solid var(--border);
    }
    td {
      padding: 10px 14px;
      border-bottom: 1px solid rgba(42, 48, 72, 0.6);
      vertical-align: top;
      font-size: 13px;
    }
    tbody tr:last-child td { border-bottom: none; }
    tbody tr:nth-child(even) { background: rgba(22, 27, 39, 0.5); }
    tbody tr:hover { background: var(--bg3); }

    /* Code Blocks */
    pre, code {
      font-family: var(--mono);
    }
    p code, li code, td code {
      font-size: 12px;
      background: var(--bg3);
      padding: 2px 6px;
      border-radius: 4px;
      color: #a5f3fc;
    }
    .code-box {
      background: #090c13;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 14px 18px;
      margin: 12px 0 16px;
      overflow-x: auto;
    }
    .code-box pre {
      font-size: 12.5px;
      color: #e2e8f0;
      line-height: 1.6;
    }
    .code-box .kw { color: #f472b6; font-weight: 600; }
    .code-box .fn { color: #60a5fa; }
    .code-box .str { color: #34d399; }
    .code-box .cm { color: #64748b; font-style: italic; }

    /* Architecture Flow Box */
    .flow-diagram {
      background: #0b0e17;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 20px;
      font-family: var(--mono);
      font-size: 12px;
      line-height: 1.5;
      color: #94a3b8;
      overflow-x: auto;
      margin: 16px 0;
    }

    /* Grid KPI */
    .kpi-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 16px;
      margin-bottom: 26px;
    }
    .kpi-card {
      background: var(--bg2);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 18px;
      text-align: center;
    }
    .kpi-val {
      font-size: 32px;
      font-weight: 800;
      line-height: 1.1;
      margin-bottom: 4px;
    }
    .kpi-lbl {
      font-size: 11px;
      color: var(--gray);
      text-transform: uppercase;
      letter-spacing: 0.06em;
    }

    ul, ol {
      padding-left: 22px;
      margin: 10px 0;
    }
    li { margin-bottom: 6px; }

    @media (max-width: 900px) {
      .layout { flex-direction: column; }
      .toc { width: 100%; height: auto; position: static; border-right: none; border-bottom: 1px solid var(--border); }
      .main { padding: 24px 20px; }
      .kpi-grid { grid-template-columns: 1fr 1fr; }
    }
  </style>
</head>
<body>

  <!-- Hero Section -->
  <header class="hero">
    <div class="hero-tag">
      <span>🔬</span> Auditoría de Arquitectura · LAESH Bloc Digital & Web
    </div>
    <h1>Informe Técnico: <span>Modelo Físico de BD</span>, OPcache y Arquitectura de <span>Datos JS</span></h1>
    <p>Auditoría exhaustiva sobre MariaDB 11 (KVM2 Producción / <code>laesh_db</code>), análisis de ciclo de vida de compiladores SSOT, rendimiento de caché L2 en memoria RAM y optimización de entrega de activos cliente.</p>
    
    <div class="hero-meta">
      <div class="meta-chip">
        <span class="label">Base de Datos</span>
        <span class="value blue">MariaDB 11.4 / laesh_db</span>
      </div>
      <div class="meta-chip">
        <span class="label">Entorno Auditado</span>
        <span class="value green">KVM2 Producción (Host Caelitandem)</span>
      </div>
      <div class="meta-chip">
        <span class="label">Fecha de Ejecución</span>
        <span class="value">Octubre 2026</span>
      </div>
      <div class="meta-chip">
        <span class="label">Estado de la Auditoría</span>
        <span class="value purple">Completada · 100% Verificada</span>
      </div>
    </div>
  </header>

  <div class="layout">
    <!-- Sidebar TOC -->
    <nav class="toc">
      <div class="toc-title">Índice del Documento</div>
      
      <div class="toc-section">Informe 1: Base de Datos</div>
      <a href="#sec-1-1"><span>1.1</span> Código Muerto en Tablas <span class="badge">4</span></a>
      <a href="#sec-1-2"><span>1.2</span> Mejoras de PK y FK <span class="badge">Crítico</span></a>
      <a href="#sec-1-3"><span>1.3</span> Índices Redundantes <span class="badge">6</span></a>
      <a href="#sec-1-4"><span>1.4</span> Índices Faltantes & Tipos</a>

      <div class="toc-section">Informe 2: OPcache & JS</div>
      <a href="#sec-2-1"><span>2.1</span> Arquitectura SSOT Datos JS</a>
      <a href="#sec-2-2"><span>2.2</span> Código Muerto: catalog-data.js</a>
      <a href="#sec-2-3"><span>2.3</span> Auditoría OPcache L2 File Store</a>
      <a href="#sec-2-4"><span>2.4</span> Fallas de Aislamiento & JTI</a>
      <a href="#sec-2-5"><span>2.5</span> Anti-patrón Cache-Busting</a>

      <div class="toc-section">Plan de Mitigación</div>
      <a href="#sec-3-plan"><span>3.0</span> Plan de Acción & DDL</a>
    </nav>

    <!-- Main Content -->
    <main class="main">

      <!-- KPI Summary Cards -->
      <div class="kpi-grid">
        <div class="kpi-card">
          <div class="kpi-val" style="color: var(--red);">1</div>
          <div class="kpi-lbl">Tabla sin Primary Key</div>
        </div>
        <div class="kpi-card">
          <div class="kpi-val" style="color: var(--yellow);">6</div>
          <div class="kpi-lbl">Índices Redundantes</div>
        </div>
        <div class="kpi-card">
          <div class="kpi-val" style="color: var(--accent2);">670 KB</div>
          <div class="kpi-lbl">Descarga por time() en JS</div>
        </div>
        <div class="kpi-card">
          <div class="kpi-val" style="color: var(--green);">&lt; 0.1 ms</div>
          <div class="kpi-lbl">Latencia RAM OPcache L2</div>
        </div>
      </div>

      <!-- ======================================================== -->
      <!-- INFORME 1: MODELO FÍSICO DE BASE DE DATOS               -->
      <!-- ======================================================== -->
      <div class="sh" id="sec-1-db">
        <div class="si blue">🗄️</div>
        <div class="st">
          <h2>INFORME 1: Auditoría del Modelo Físico de Base de Datos (<code>laesh_db</code>)</h2>
          <p>Inspección estructural de esquemas DDL, catálogos relacionales, índices y tablas del sistema.</p>
        </div>
      </div>

      <!-- 1.1 Código Muerto -->
      <section id="sec-1-1" style="margin-bottom: 36px;">
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">1.1 Código Muerto: Tablas y Columnas Huérfanas / Obsoletas</h3>
        <p>A partir del cruce entre el DDL (<code>setup/bds/laesh/</code>) y el conteo en caliente en KVM2, se identifican componentes físicos sin invocaciones activas:</p>

        <table>
          <thead>
            <tr>
              <th>Objeto / Columna</th>
              <th>Archivo DDL</th>
              <th>Filas en KVM2</th>
              <th>Diagnóstico Técnico</th>
              <th>Acción Recomendada</th>
            </tr>
          </thead>
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `informe-modelo-datos-opcache-js.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L450-699)</summary>

**Path:** `Unknown file`

```
          <tbody>
            <tr>
              <td><code>cat_categorias</code></td>
              <td><code>02_core_schema.sql</code><br><code>07_seed_catalogs.sql</code></td>
              <td>24 filas</td>
              <td><span class="tag alerta">Obsoleta</span> Tabla desconectada tras migrar a la taxonomía Gabinetes/Subgabinetes. Ningún PHP/JS realiza SELECT ni INSERT (ref: PEN-LAESH-09).</td>
              <td>Eliminar vía migración con <code>DROP FOREIGN KEY fk_estudio_categoria</code>, <code>ALTER TABLE cat_estudios DROP COLUMN categoria_id</code> y <code>DROP TABLE cat_categorias</code>.</td>
            </tr>
            <tr>
              <td>Timestamps duplicados en <code>cat_estudios</code></td>
              <td><code>02_core_schema.sql</code></td>
              <td>1,055 filas</td>
              <td><span class="tag alerta">Duplicidad</span> Coexisten 4 columnas para el mismo propósito: <code>created_at</code> (TIMESTAMP) con <code>fecha_creacion</code> (DATETIME), y <code>updated_at</code> (TIMESTAMP) con <code>fecha_modificacion</code> (DATETIME).</td>
              <td>Estandarizar a <code>creado_en</code> y <code>actualizado_en</code> (convención del proyecto) y retirar las columnas redundantes.</td>
            </tr>
            <tr>
              <td>Columnas muertas en <code>cat_estudios</code></td>
              <td><code>02_core_schema.sql</code></td>
              <td>1,055 filas</td>
              <td><span class="tag alerta">Sin Lectura</span> Las columnas <code>descripcion_breve</code> (VARCHAR 255) y <code>detalle</code> (TEXT) nunca son consumidas por los portales médico ni de recepción.</td>
              <td>Depurar columnas en la siguiente optimización de catálogo.</td>
            </tr>
            <tr>
              <td>Tablas pasivas Delight-Auth:<br><code>users_2fa</code>, <code>users_confirmations</code>, <code>users_resets</code></td>
              <td><code>01_auth_schema.sql</code></td>
              <td>0 filas</td>
              <td><span class="tag info">Pasivas</span> LAESH opera con emails virtuales <code>{tel}@laesh.local</code>, altas directas por admin (<code>verified=1</code>) y reseteos por ventanilla. No hay flujo de confirmación ni reset vía SMTP.</td>
              <td>Conservar solo como compatibilidad pasiva con Delight-Auth sin mantenimiento activo.</td>
            </tr>
            <tr>
              <td>SP <code>ProcesarCargaResultadoPDF</code></td>
              <td><code>08_stored_procedures.sql</code></td>
              <td>—</td>
              <td><span class="tag exito">Retirado</span> Ya eliminado en script 08 por código muerto. Sus validaciones fueron absorbidas por <code>CambiarEstadoOrden</code>.</td>
              <td>Ninguna. Estado limpio.</td>
            </tr>
          </tbody>
        </table>
      </section>

      <!-- 1.2 Mejoras de PK y FK -->
      <section id="sec-1-2" style="margin-bottom: 36px;">
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">1.2 Mejoras Críticas de Llaves Primarias (PK) y Foráneas (FK)</h3>

        <div class="card alert">
          <div class="card-title">
            <span>🔴</span> Hallazgo Crítico: Ausencia Total de Primary Key en <code>rel_igabinete_vinculos</code>
            <span class="tag critico">Crítico</span>
          </div>
          <p>La tabla <code>rel_igabinete_vinculos</code> vincula institutos con áreas y sub-áreas clínicas. Cuenta con 3 índices foráneos no únicos (<code>MUL</code>), pero <strong>carece por completo de una PRIMARY KEY</strong>.</p>
          <ul style="margin-top: 8px;">
            <li><strong>Penalización InnoDB:</strong> Al no tener PK declarada, InnoDB crea un índice agrupado invisible de 6 bytes (<code>GEN_CLUST_INDEX</code>), incrementando el overhead y fragmentación.</li>
            <li><strong>Riesgo de Integridad:</strong> Permite insertar tuplas idénticas repetidas <code>(igabinete_id, gabinete_id, subgabinete_id)</code>, desvirtuando el árbol de navegación.</li>
          </ul>
          <div class="code-box">
            <pre><span class="cm">-- DDL Correctivo Inmediato:</span>
<span class="kw">ALTER TABLE</span> `rel_igabinete_vinculos`
  <span class="kw">ADD PRIMARY KEY</span> (`igabinete_id`, `gabinete_id`, `subgabinete_id`);</pre>
          </div>
        </div>

        <div class="card warn">
          <div class="card-title">
            <span>🟡</span> Llave Foránea Residual: <code>cat_estudios.categoria_id</code>
            <span class="tag alerta">Limpieza</span>
          </div>
          <p>La restricción <code>fk_estudio_categoria</code> enlaza los estudios clínicos con la tabla en desuso <code>cat_categorias</code>. Debe desacoplarse para evitar bloqueos de integridad durante el saneamiento del catálogo.</p>
        </div>
      </section>

      <!-- 1.3 Índices Redundantes -->
      <section id="sec-1-3" style="margin-bottom: 36px;">
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">1.3 Auditoría de Índices: Redundancias y Duplicados Exactos</h3>
        <p>En MariaDB InnoDB, un índice secundario cuyas columnas ya constituyen el <strong>prefijo izquierdo</strong> de otro índice compuesto (o de un índice <code>UNIQUE</code>) representa una duplicidad que consume memoria en el Buffer Pool y degrada el rendimiento de operaciones de escritura (<code>INSERT</code> / <code>UPDATE</code>):</p>

        <table>
          <thead>
            <tr>
              <th>Tabla</th>
              <th>Índice Principal / UNIQUE</th>
              <th>Índice Redundante Detectado</th>
              <th>Causa Técnica de Redundancia</th>
              <th>Impacto Positivo de Depuración</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><code>web_contenidos</code></td>
              <td><code>uq_sec_subsec_clave</code><br>(seccion, subseccion, clave) [UNIQUE]</td>
              <td><code>idx_cms_sec_sub_clave</code><br>(seccion, subseccion, clave) [BTREE]</td>
              <td><strong>Duplicado Exacto:</strong> El índice UNIQUE ya materializa un árbol B-Tree idéntico en las mismas 3 columnas. El índice secundario no aporta nada.</td>
              <td>Ahorro del 50% de escrituras de índice al guardar bloques CMS.</td>
            </tr>
            <tr>
              <td><code>web_contenidos</code></td>
              <td><code>uq_sec_subsec_clave</code><br>(seccion, subseccion, clave) [UNIQUE]</td>
              <td><code>idx_seccion</code><br>(seccion) [BTREE]</td>
              <td><strong>Prefijo Izquierdo:</strong> Toda consulta <code>WHERE seccion = ?</code> es resuelta automáticamente por la primera columna de <code>uq_sec_subsec_clave</code>.</td>
              <td>Liberación de páginas en disco y Buffer Pool RAM.</td>
            </tr>
            <tr>
              <td><code>ordenes</code></td>
              <td><code>idx_ordenes_medico_fecha</code><br>(medico_id, hora_captura)</td>
              <td><code>idx_medico</code><br>(medico_id)</td>
              <td><strong>Prefijo Izquierdo:</strong> <code>medico_id</code> es el primer elemento del índice compuesto.</td>
              <td>Optimización de inserciones concurrentes de órdenes médicas.</td>
            </tr>
            <tr>
              <td><code>ordenes</code></td>
              <td><code>idx_ordenes_estado_fecha</code><br>(estado_id, hora_captura)</td>
              <td><code>idx_estado</code><br>(estado_id)</td>
              <td><strong>Prefijo Izquierdo:</strong> <code>estado_id</code> es el primer elemento del índice compuesto.</td>
              <td>Eliminación de contención de índices en cambios de estado.</td>
            </tr>
            <tr>
              <td><code>notificaciones</code></td>
              <td><code>idx_fallback_poll</code><br>(user_id, entregado_ws, leido)</td>
              <td><code>idx_user</code><br>(user_id)</td>
              <td><strong>Prefijo Izquierdo:</strong> <code>user_id</code> encabeza el índice compuesto de polling QoS.</td>
              <td>Mayor rapidez en el hot-path de inserción de notificaciones.</td>
            </tr>
            <tr>
              <td><code>historial_estados_orden</code></td>
              <td><code>idx_hist_orden_creado</code><br>(orden_id, creado_en)</td>
              <td><code>idx_orden</code><br>(orden_id)</td>
              <td><strong>Prefijo Izquierdo:</strong> <code>orden_id</code> encabeza el índice cronológico de trazabilidad.</td>
              <td>Ahorro de escrituras en transiciones de estado de la orden.</td>
            </tr>
          </tbody>
        </table>
      </section>

      <!-- 1.4 Índices Faltantes & Tipos -->
      <section id="sec-1-4" style="margin-bottom: 36px;">
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">1.4 Índices Faltantes y Optimización de Almacenamiento</h3>
        <ul>
          <li><strong>Índice Compuesto en <code>jwt_jti_registry</code>:</strong> La revocación atómica multi-dispositivo y el cambio de rol ejecutan <code>UPDATE jwt_jti_registry SET is_revoked = 1 WHERE user_id = ? AND is_revoked = 0</code>. Se recomienda crear <code>KEY idx_user_revoked (user_id, is_revoked)</code>.</li>
          <li><strong>Sobrecarga de tipo en <code>catalogo_promociones.dia_semana</code>:</strong> Está tipada como <code>TEXT</code> para almacenar valores como "lunes" o "martes". Debe convertirse a <code>VARCHAR(20)</code> o <code>ENUM('lunes','martes','miercoles','jueves','viernes','sabado','domingo','todos')</code> para prevenir el almacenamiento fuera de página (off-page storage) y habilitar ordenamiento 100% en memoria RAM.</li>
        </ul>
      </section>

      <!-- ======================================================== -->
      <!-- INFORME 2: OPCACHE Y GENERACIÓN/USO DE DATOS JS          -->
      <!-- ======================================================== -->
      <div class="sh" id="sec-2-js">
        <div class="si purple">⚡</div>
        <div class="st">
          <h2>INFORME 2: Auditoría de OPcache y Generación/Uso de Datos JS ("JS Datas")</h2>
          <p>Análisis de compilación estática SSOT, sincronización WebSocket, persistencia L2 y rendimiento en navegador.</p>
        </div>
      </div>

      <!-- 2.1 Arquitectura SSOT -->
      <section id="sec-2-1" style="margin-bottom: 36px;">
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">2.1 Flujo y Arquitectura de Datos JS (SSOT)</h3>
        <p>El proyecto prescinde de peticiones REST pesadas para poblar catálogos en el cliente, adoptando un patrón <strong>Compiler-to-Asset + Hot Reloading</strong>:</p>

        <div class="flow-diagram">
┌────────────────────────────────────────────────────────────────────────┐
│                        MariaDB 11.4 (laesh_db)                         │
│             (cat_estudios, cat_gabinetes, configuraciones)             │
└───────────────────────────────────┬────────────────────────────────────┘
                                    │
          ┌─────────────────────────┴─────────────────────────┐
          ▼                                                   ▼
┌─────────────────────────────────┐                 ┌───────────────────┐
│     CatalogBuilder::build()     │                 │ConfigBuilder::    │
│                                 │                 │    build()        │
└────────────────┬────────────────┘                 └─────────┬─────────┘
                 │                                            │
                 ├──> Escribe: catalog-compiled.js (670 KB)   └──> Escribe: config-compiled.js (1.5 KB)
                 │    (window.laeshCatalogData, etc.)              (window.laeshConfig)
                 ├──> Invalida OPcache L2: Cache.php          └──> Invalida OPcache L2: Cache.php
                 │    (KEY_TREE, KEY_CATALOG_SEARCH)               (KEY_CFG)
                 │
                 └──> Emite Swoole WebSocket: 'catalogo_actualizado'
                                    │
                                    ▼
                      ┌───────────────────────────┐
                      │  ws-client.js en Clientes │
                      │  (Hot-swapping de Script  │
                      │  en DOM sin recargar)     │
                      └───────────────────────────┘
        </div>
      </section>

      <!-- 2.2 Código Muerto catalog-data.js -->
      <section id="sec-2-2" style="margin-bottom: 36px;">
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">2.2 Detección de Código Muerto: El Caso Fantasma de <code>catalog-data.js</code></h3>

        <div class="card warn">
          <div class="card-title">
            <span>👻</span> Artefacto Residual Huérfano en Infraestructura y Scripts
            <span class="tag alerta">Residuo</span>
          </div>
          <p>En el diseño preliminar del proyecto se contemplaba la dupla <code>catalog-data.js</code> y <code>catalog-builder.js</code>. Posteriormente, toda la data se unificó exclusivamente dentro de <code>catalog-compiled.js</code>. Sin embargo, <code>catalog-data.js</code> sigue referenciado en múltiples partes de la infraestructura sin existir:</p>
          <ul style="margin-top: 8px;">
            <li><strong>Mensaje de Log Engañoso:</strong> <code>CatalogBuilder.php</code> (línea 164) emite: <code>Logger::log('INFO', 'Catálogo recompilado exitosamente (catalog-compiled.js y catalog-data.js)')</code>, pese a que solo genera <code>catalog-compiled.js</code>.</li>
            <li><strong>Reglas de Deploy:</strong> <code>setup/deploy/laesh-kvm2-prod/deploy.sh</code> (líneas 162, 184) contiene exclusiones explícitas <code>--exclude='js/catalog-data.js'</code>.</li>
            <li><strong>Permisos Sudoers:</strong> <code>06_deploy_app.sh</code> y <code>README.md</code> (reglas NOPASSWD de <code>sysadmin</code>) siguen ejecutando <code>chmod</code> y <code>chown</code> sobre <code>catalog-data.js</code>.</li>
            <li><strong>Consumo en Frontend:</strong> Ningún HTML o PHP carga <code>catalog-data.js</code>.</li>
          </ul>
        </div>
      </section>

      <!-- 2.3 OPcache L2 File Store -->
      <section id="sec-2-3" style="margin-bottom: 36px;">
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">2.3 Auditoría de OPcache L2 File Store (<code>Cache.php</code>)</h3>

        <div class="card success">
          <div class="card-title">
            <span>✅</span> Fortalezas del Patrón Cache-Aside en Memoria RAM
            <span class="tag exito">Óptimo</span>
          </div>
          <p><code>Cache.php</code> exporta arreglos PHP nativos (<code>return var_export($data, true);</code>) almacenados en <code>/opt/laesh/cache/</code>. Al compilarse con OPcache:</p>
          <ul style="margin-top: 8px;">
            <li><strong>Acceso en &lt; 0.1 ms:</strong> En cada hit subsecuente, PHP-FPM recupera el array directamente desde la memoria compartida (SHM) sin parsear JSON ni consultar MariaDB.</li>
            <li><strong>Blindaje <code>validate_timestamps=0</code>:</strong> En producción FPM no verifica marcas de tiempo en disco, eliminando llamadas de sistema <code>stat()</code>.</li>
            <li><strong>Recompilación Atómica:</strong> <code>Cache::set()</code> ejecuta <code>opcache_invalidate()</code> seguido de <code>opcache_compile_file()</code> para calentar de inmediato el nuevo bytecode en memoria.</li>
          </ul>
        </div>
      </section>

      <!-- 2.4 Fallas de Aislamiento & JTI -->
      <section id="sec-2-4" style="margin-bottom: 36px;">
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">2.4 Puntos Críticos de Infraestructura y Riesgos de Rendimiento</h3>

        <div class="card alert">
          <div class="card-title">
            <span>🔴</span> Falacia de Invalidación OPcache desde CLI (<code>apply_log_levels.sh</code>)
            <span class="tag critico">Inoperante</span>
          </div>
          <p>En el script <code>apply_log_levels.sh</code> (línea 129) se ejecuta:</p>
          <div class="code-box">
            <pre>php8.3 -r <span class="str">"if(function_exists('opcache_invalidate')) opcache_invalidate('${APP_LEVEL_PHP}', true);"</span></pre>
          </div>
          <p><strong>Causa del fallo:</strong> El binario CLI de PHP cuenta con su propio segmento de memoria compartida, completamente desacoplado del pool de <code>php-fpm.service</code>. Ejecutar <code>opcache_invalidate()</code> en CLI <strong>no invalida absolutamente nada en los workers de FPM</strong>. La invalidación solo es efectiva vía petición HTTP servida por FPM o mediante <code>systemctl reload php8.3-fpm</code>.</p>
        </div>

        <div class="card warn">
          <div class="card-title">
            <span>🟡</span> Riesgo de Evicción en OPcache por Caché de Tokens JTI
            <span class="tag alerta">Memoria</span>
          </div>
          <p><code>Cache.php</code> almacena entradas <code>JTI_{hash}</code> como archivos PHP individuales en disco para verificar revocaciones. La directiva <code>opcache.max_accelerated_files=4000</code> está calculada para los archivos PHP del sistema. Un incremento en sesiones de usuario podría inundar el caché con miles de archivos temporales de tokens, provocando la evicción del código fuente de la aplicación fuera de la RAM.</p>
        </div>
      </section>

      <!-- 2.5 Anti-patrón time() -->
      <section id="sec-2-5" style="margin-bottom: 36px;">
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `informe-modelo-datos-opcache-js.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L700-792)</summary>

**Path:** `Unknown file`

```
        <h3 style="font-size: 16px; margin-bottom: 12px; color: var(--accent2);">2.5 Eficiencia de Carga en el Cliente: Anti-patrón de Cache-Busting</h3>

        <div class="card alert">
          <div class="card-title">
            <span>🔴</span> Anti-patrón <code>?v=&lt;?= time() ?&gt;</code> en Archivo de 670 KB
            <span class="tag critico">Latencia UI</span>
          </div>
          <p>En las vistas principales (<code>rc/views/labadmin.php</code> y <code>md/views/medicos.php</code>), el catálogo compilado se incluye con:</p>
          <div class="code-box">
            <pre>&lt;<span class="kw">script</span> <span class="fn">src</span>=<span class="str">"/laesh-web-assets-uipv1a/js/catalog-compiled.js?v=&lt;?= time() ?&gt;"</span>&gt;&lt;/<span class="kw">script</span>&gt;</pre>
          </div>
          <p><strong>Impacto Severo:</strong></p>
          <ul style="margin-top: 8px;">
            <li><code>time()</code> muta en cada segundo, <strong>anulando al 100% la memoria caché del navegador</strong>.</li>
            <li>Cada vez que un recepcionista o médico navega o refresca la pestaña, el navegador está obligado a volver a descargar <strong>669.8 KB de JavaScript en crudo</strong>, provocando consumo inútil de ancho de banda y bloqueo del hilo principal de JavaScript.</li>
          </ul>

          <p style="margin-top: 12px;"><strong>Solución Óptima Recomendada:</strong></p>
          <div class="code-box">
            <pre>&lt;<span class="kw">script</span> <span class="fn">src</span>=<span class="str">"/laesh-web-assets-uipv1a/js/catalog-compiled.js?v=&lt;?= filemtime(__DIR__ . '/../../laesh-web-assets-uipv1a/js/catalog-compiled.js') ?&gt;"</span>&gt;&lt;/<span class="kw">script</span>&gt;</pre>
          </div>
          <p>Con <code>filemtime()</code>, el navegador almacena el activo en caché (retornando <code>304 Not Modified</code> o cargando desde Memory Cache en 0 ms). Cuando recepción o administración guarde un cambio en el catálogo, <code>CatalogBuilder::build()</code> actualizará el archivo físico, modificando su <code>mtime</code> y forzando la descarga únicamente cuando realmente hubo cambios.</p>
        </div>
      </section>

      <!-- ======================================================== -->
      <!-- 3. PLAN DE ACCIÓN Y MITIGACIÓN                           -->
      <!-- ======================================================== -->
      <div class="sh" id="sec-3-plan">
        <div class="si green">📋</div>
        <div class="st">
          <h2>3. Plan de Acción y Matriz de Mitigación Priorizada</h2>
          <p>Hoja de ruta estructurada para aplicar las correcciones identificadas en base de datos e infraestructura.</p>
        </div>
      </div>

      <section style="margin-bottom: 40px;">
        <table>
          <thead>
            <tr>
              <th>Prioridad</th>
              <th>Área</th>
              <th>Tarea / Acción Técnica</th>
              <th>Archivos / Objetos Afectados</th>
              <th>Beneficio Obtenido</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><span class="tag critico">Alta</span></td>
              <td>Base de Datos</td>
              <td>Crear PRIMARY KEY en tabla de vínculos de institutos.</td>
              <td><code>rel_igabinete_vinculos</code><br>(<code>02_core_schema.sql</code>)</td>
              <td>Elimina índice oculto <code>GEN_CLUST_INDEX</code> y previene duplicados en taxonomía clínica.</td>
            </tr>
            <tr>
              <td><span class="tag critico">Alta</span></td>
              <td>Frontend UI</td>
              <td>Sustituir <code>time()</code> por <code>filemtime()</code> en carga de <code>catalog-compiled.js</code>.</td>
              <td><code>labadmin.php</code><br><code>medicos.php</code></td>
              <td>Ahorro de ~670 KB por petición en recepción y consultorios; carga instantánea en navegador.</td>
            </tr>
            <tr>
              <td><span class="tag alerta">Media</span></td>
              <td>Base de Datos</td>
              <td>Eliminar los 6 índices secundarios redundantes detectados en KVM2.</td>
              <td><code>web_contenidos</code>, <code>ordenes</code>,<br><code>notificaciones</code>, <code>historial</code></td>
              <td>Reducción de escrituras en disco y liberación de espacio en el Buffer Pool de MariaDB.</td>
            </tr>
            <tr>
              <td><span class="tag alerta">Media</span></td>
              <td>Infraestructura</td>
              <td>Purgar el código muerto y reglas del archivo fantasma <code>catalog-data.js</code>.</td>
              <td><code>CatalogBuilder.php</code><br><code>deploy.sh</code>, <code>06_deploy_app.sh</code></td>
              <td>Limpieza de artefactos obsoletos y claridad en logs de auditoría.</td>
            </tr>
            <tr>
              <td><span class="tag info">Baja</span></td>
              <td>Base de Datos</td>
              <td>Migración de depuración para <code>cat_categorias</code> y timestamps duplicados.</td>
              <td><code>cat_categorias</code><br><code>cat_estudios</code></td>
              <td>Saneamiento estructural del catálogo conforme a PEN-LAESH-09.</td>
            </tr>
          </tbody>
        </table>
      </section>

    </main>
  </div>

</body>
</html>

```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:14 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:14 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:14 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `03_transactional_schema.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- LAESH Bloc Digital — Script 03: Schema Transaccional
-- Tablas: CATALOGO_ESTADOS, PACIENTES, ORDENES,
--         RESULTADOS_PDF, NOTIFICACIONES,
-- (DETALLE_ORDENES retirada 2026-09-30: nunca tuvo filas — los estudios viven en
--  ordenes.estudios como JSON de nombres; retirada de KVM2 con m005, ver migrations/README.md)
--         HISTORIAL_ESTADOS_ORDEN, FOLIOS_CONTROL
--
-- Redesign v2 — alineado con Tecnica_Modelo_Datos.html:
--   • catalogo_estados.valor       (era nombre)
--   • pacientes.nombre_completo    (era nombre+apellido_paterno+apellido_materno)
--   • pacientes.sexo ENUM('H','M') (se eliminó 'Otro')
--   • ordenes.folio_unico          (era folio)
--   • ordenes.hora_captura         (era creado_en; fecha_resultado agregado)
--   • notificaciones.user_id       (era destinatario_id)
--   • historial_estados_orden: estado_anterior_id, estado_nuevo_id, cambiado_por_user_id
--   • folios_control: tipo_documento, ultimo_folio
-- Idempotente: CREATE TABLE IF NOT EXISTS.
-- =============================================================================

USE `laesh_db`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ---------------------------------------------------------------------------
-- CATALOGO_ESTADOS — Estados operativos de una orden
-- D-redesign: columna 'valor' (no 'nombre') — alineado con ET y medicos.js
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `catalogo_estados` (
    `id`          TINYINT UNSIGNED NOT NULL,
    `valor`       VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL
                    COMMENT 'Valor canónico: Remitido|En Atención|Resultados Listos|Cerrada',
    `descripcion` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `color_hex`   CHAR(7) DEFAULT '#6B7280' COMMENT 'Color UI para badges de estado',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Estados de orden: 1=Remitido, 2=En Atención, 3=Resultados Listos, 4=Cerrada, 5=Cancelada (H8 2026-09-20)';

-- ---------------------------------------------------------------------------
-- PACIENTES — Datos demográficos (inmutables una vez registrados)
-- D-redesign: nombre_completo VARCHAR(200) — campo único (localStorage → BD)
--             sexo ENUM('H','M') — sin 'Otro' (alineado con spec ET)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `pacientes` (
    `id`              INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nombre_completo` VARCHAR(200) COLLATE utf8mb4_unicode_ci NOT NULL
                        COMMENT 'Nombre y apellidos como string único — fuente: localStorage form medicos.php',
    `fecha_nacimiento` DATE DEFAULT NULL,
    `sexo`            ENUM('H','M') NOT NULL,
    `telefono`        VARCHAR(20) DEFAULT NULL,
    `creado_en`       TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FULLTEXT KEY `ft_nombre_completo` (`nombre_completo`)
                  COMMENT 'Búsqueda por nombre para autocomplete de recepción'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Registro demográfico de pacientes — nombre_completo como campo único';

-- ---------------------------------------------------------------------------
-- ORDENES — Solicitud digital de análisis (cabecera)
-- D-01: edad_al_emitir vive AQUÍ, no en pacientes (captura histórica del momento).
-- D-redesign: folio_unico (era folio), hora_captura (era creado_en), fecha_resultado (nuevo)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `ordenes` (
    `id`              INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `folio_unico`     VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL
                        COMMENT 'Numérico puro (p.ej. "27"), generado atómicamente por folios_control — formato legado con prefijo LAESH-NNNNN descontinuado, ver 08_stored_procedures.sql',
    `paciente_id`     INT UNSIGNED NOT NULL,
    `medico_id`       INT UNSIGNED NOT NULL COMMENT 'FK users.id (rol MEDICO)',
    `recepcion_id`    INT UNSIGNED DEFAULT NULL COMMENT 'FK users.id (rol RECEPCION) — quién capturó',
    `estado_id`       TINYINT UNSIGNED NOT NULL DEFAULT 1 COMMENT 'FK catalogo_estados.id',
    `edad_al_emitir`  TINYINT UNSIGNED NOT NULL COMMENT 'D-01: edad clínica en el momento de emisión',
    `diagnostico`     VARCHAR(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                        COMMENT 'D-01: impresión diagnóstica libre del médico — máx 200 chars (spec ET)',
    `otros_estudios`  TEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL
                        COMMENT 'D-01: estudios fuera del catálogo digitalizado (sin límite de chars)',
    `estudios`        TEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL
                        COMMENT 'JSON array de nombres (desnormalización para solicitud digital)',
    `hora_captura`    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
                        COMMENT 'Timestamp de captura de la orden (era creado_en)',
    `fecha_resultado` DATETIME DEFAULT NULL
                        COMMENT 'Fecha/hora en que se subió el PDF de resultados',
    `actualizado_en`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_folio_unico` (`folio_unico`),
    KEY `idx_paciente`     (`paciente_id`),
    KEY `idx_hora_captura` (`hora_captura`),
    KEY `idx_ordenes_medico_fecha` (`medico_id`, `hora_captura`),
    KEY `idx_ordenes_estado_fecha` (`estado_id`, `hora_captura`),
    CONSTRAINT `fk_orden_paciente`  FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`),
    CONSTRAINT `fk_orden_estado`    FOREIGN KEY (`estado_id`)   REFERENCES `catalogo_estados` (`id`),
    CONSTRAINT `fk_orden_medico`    FOREIGN KEY (`medico_id`)    REFERENCES `users` (`id`),
    CONSTRAINT `fk_orden_recepcion` FOREIGN KEY (`recepcion_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Solicitudes de análisis (cabecera) — folio_unico numérico puro (formato legado LAESH-NNNNN descontinuado)';

-- ---------------------------------------------------------------------------
-- RESULTADOS_PDF — Archivo PDF de resultados entregado al médico
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `resultados_pdf` (
    `id`             INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `orden_id`       INT UNSIGNED NOT NULL,
    `nombre_archivo` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `ruta_storage`   VARCHAR(500) COLLATE utf8mb4_unicode_ci NOT NULL
                       COMMENT 'Path en filesystem de la VM OCI',
    `subido_por`     INT UNSIGNED DEFAULT NULL COMMENT 'FK users.id',
    `tipo_entrega`   ENUM('parcial','completo') NOT NULL DEFAULT 'parcial'
                       COMMENT 'P-LAESH-RESULTADOS-PARCIALES-01 (2026-09-23): criterio de Recepción al subir — parcial no transiciona la orden, completo sí (2→3)',
    `folio_extraido` VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                       COMMENT 'P-LAESH-FOLIO-EXTRAIDO-01 (2026-09-24): folio interno del equipo/software de laboratorio (ej. PxLab, NNNN-NNNN) extraído del PDF en servidor — best-effort, NULL si no se detecta',
    `creado_en`      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_orden` (`orden_id`),
    KEY `idx_subido_por` (`subido_por`),
    CONSTRAINT `fk_pdf_orden` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_pdf_subido_por` FOREIGN KEY (`subido_por`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='PDFs de resultados de laboratorio vinculados a órdenes';

-- ---------------------------------------------------------------------------
-- NOTIFICACIONES — SSOT de notificaciones con soporte QoS híbrido
-- QoS: slow-path (BD) + fast-path (Swoole WS) + fallback (AJAX poll)
-- D-redesign: user_id (era destinatario_id)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `notificaciones` (
    `id`              INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id`         INT UNSIGNED NOT NULL COMMENT 'FK users.id (médico o recepción)',
    `tipo`            ENUM('nueva_orden','resultados_listos','orden_actualizada','catalogo_actualizado') NOT NULL,
    `folio_referencia` VARCHAR(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                        COMMENT 'folio_unico LAESH-NNNNN de la orden referenciada',
    `titulo`          VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                        COMMENT 'Título conciso para encabezado de notificación (ej. Nueva Solicitud · #29, Paciente en Atención · #15)',
    `mensaje`         VARCHAR(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    `leido`           TINYINT(1) NOT NULL DEFAULT 0,
    `actualizado_en`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
                        COMMENT 'BUG-NOTIF-LEIDO-SYNC-01: se refresca al UPDATE leido — permite que el poll incremental detecte una transición no-leído→leído desde otro dispositivo/pestaña y reenvíe la fila una vez más',
    `entregado_ws`    TINYINT(1) NOT NULL DEFAULT 0
                        COMMENT 'Fast-path: 1 = entregado vía Swoole WS',
    `retry_count`     TINYINT UNSIGNED NOT NULL DEFAULT 0
                        COMMENT 'Intentos de entrega WS fallidos',
    `creado_en`       TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_fallback_poll` (`user_id`, `entregado_ws`, `leido`)
      COMMENT 'Índice para poll: WHERE user_id=? AND (entregado_ws=0 OR leido=0)',
    CONSTRAINT `fk_notif_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Notificaciones sistema — SSOT QoS: Swoole WS + fallback AJAX poll';

-- P-LAESH-NOTIF-SEMANTICA-01 (2026-09-30) — desacoplamiento de título y cuerpo
-- para eliminar redundancias en notificaciones WS/Polling. Idempotente.
ALTER TABLE `notificaciones`
  ADD COLUMN IF NOT EXISTS `titulo` VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
    COMMENT 'Título conciso para encabezado de notificación'
    AFTER `folio_referencia`;

-- Gap 3 (auditoría WS 2026-09-18, §2.4c): 'catalogo_actualizado' agregado al ENUM.
-- Antes, ese evento no tenía fallback de persistencia — si Swoole estaba caído al
-- guardar un cambio de catálogo, ningún cliente se enteraba después. Idempotente:
-- re-declarar el mismo ENUM (o uno más amplio) no falla en ejecuciones repetidas.
ALTER TABLE `notificaciones`
  MODIFY COLUMN `tipo` ENUM('nueva_orden','resultados_listos','orden_actualizada','catalogo_actualizado') NOT NULL;

-- Deuda QoS-01 (2026-09-18) — estadísticas estructuradas de fallback WS: se agrega
-- fallback_reason (motivo corto del fallo cuando entregado_ws=0, poblado por
-- notifier.php) para poder distinguir timeout / http_error / respuesta inválida /
-- excepción, en vez de solo el bit binario que ya existía en entregado_ws.
-- ADD COLUMN IF NOT EXISTS: idempotente en MariaDB 10.4+ (re-ejecutar no falla).
-- La vista de estadísticas (vw_ws_fallback_stats) que consume esta columna vive
-- en 09_views.sql (SSOT de vistas del proyecto), no aquí.
-- Hallazgo 2026-09-19: 'no_recipients_connected' agregado — /publish respondía
-- status=success con sent_to_clients=0 (destinatario no conectado) y notifier.php
-- lo contaba como entrega exitosa; ahora se trata como fallback real.
ALTER TABLE `notificaciones`
  ADD COLUMN IF NOT EXISTS `fallback_reason` VARCHAR(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
    COMMENT 'Motivo del fallo cuando entregado_ws=0: timeout|http_error_NNN|response_invalid|exception|no_curl_no_stream|no_recipients_connected'
    AFTER `retry_count`;

-- P-LAESH-NOTIF-SUBTIPO-01 (2026-10-01) — corrección de raíz del hallazgo de
-- auditoría: `tipo` solo tiene 4 valores pero `orden_actualizada` cubre 5
-- acciones de negocio distintas (atención/entregada/cancelada-por-recepción/
-- cancelada-por-médico/genérica) y `resultados_listos` cubre 2 (parcial/
-- completo) — antes SOLO se distinguían por texto libre dentro de `mensaje`,
-- re-adivinado con stripos() en cada consumidor (frágil: se rompe si cambia
-- la redacción, no es indexable/agrupable en reportes, no distingue el actor
-- de forma confiable). `subtipo` lo graba el código explícitamente al crear
-- la notificación (Common\Notifier::persist()) — ya no se infiere nunca más
-- para filas nuevas. Idempotente.
ALTER TABLE `notificaciones`
  ADD COLUMN IF NOT EXISTS `subtipo` VARCHAR(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
    COMMENT 'Acción de negocio exacta, ver Common\\Notifier::persist(). nueva_orden: creada. orden_actualizada: atencion|entregada|cancelada_recepcion|cancelada_medico|cancelada|generica. resultados_listos: parcial|completo. catalogo_actualizado: publicado.'
    AFTER `tipo`;

-- Backfill de filas existentes (previas a esta columna) — fuente de verdad
-- preferida: la columna `titulo` (ya calculada correctamente por la app al
-- insertar, no re-derivada de texto libre); fallback a `mensaje` solo para
-- filas donde `titulo` también esté vacío (legado anterior a esa columna).
-- Guardado contra re-ejecución con `WHERE subtipo IS NULL` en cada UPDATE.
UPDATE `notificaciones` SET `subtipo` = 'creada'
  WHERE `tipo` = 'nueva_orden' AND `subtipo` IS NULL;
UPDATE `notificaciones` SET `subtipo` = 'publicado'
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `03_transactional_schema.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L200-370)</summary>

**Path:** `Unknown file`

```
  WHERE `tipo` = 'catalogo_actualizado' AND `subtipo` IS NULL;
UPDATE `notificaciones` SET `subtipo` = 'parcial'
  WHERE `tipo` = 'resultados_listos' AND `subtipo` IS NULL
    AND (`titulo` LIKE '%Parcial%' OR (`titulo` IS NULL AND `mensaje` LIKE '%parcial%'));
UPDATE `notificaciones` SET `subtipo` = 'completo'
  WHERE `tipo` = 'resultados_listos' AND `subtipo` IS NULL;
UPDATE `notificaciones` SET `subtipo` = 'atencion'
  WHERE `tipo` = 'orden_actualizada' AND `subtipo` IS NULL
    AND (`titulo` LIKE '%Atenci%' OR (`titulo` IS NULL AND (`mensaje` LIKE '%atención%' OR `mensaje` LIKE '%recibido%')));
UPDATE `notificaciones` SET `subtipo` = 'entregada'
  WHERE `tipo` = 'orden_actualizada' AND `subtipo` IS NULL
    AND (`titulo` LIKE '%Entregada%' OR (`titulo` IS NULL AND `mensaje` LIKE '%entregad%'));
-- Canceladas con texto explícito de actor (sin motivo personalizado) — confiable.
UPDATE `notificaciones` SET `subtipo` = 'cancelada_recepcion'
  WHERE `tipo` = 'orden_actualizada' AND `subtipo` IS NULL
    AND (`mensaje` LIKE '%Cancelada por Laesh%' OR `mensaje` LIKE '%Cancelada por recepci%');
UPDATE `notificaciones` SET `subtipo` = 'cancelada_medico'
  WHERE `tipo` = 'orden_actualizada' AND `subtipo` IS NULL
    AND `mensaje` LIKE '%Cancelada por el médico%';
-- Canceladas con motivo personalizado: el texto es IDÉNTICO entre recepción y
-- médico ("Paciente: X del Dr(a). Y — Motivo: Z") — el actor no es recuperable
-- retroactivamente de datos históricos; se marcan con el genérico 'cancelada'
-- en vez de adivinar. Todo registro NUEVO desde esta corrección sí distingue
-- el actor con certeza porque el código ya no necesita adivinarlo.
UPDATE `notificaciones` SET `subtipo` = 'cancelada'
  WHERE `tipo` = 'orden_actualizada' AND `subtipo` IS NULL
    AND (`titulo` LIKE '%Cancelada%' OR (`titulo` IS NULL AND `mensaje` LIKE '%Motivo:%'));
UPDATE `notificaciones` SET `subtipo` = 'generica'
  WHERE `tipo` = 'orden_actualizada' AND `subtipo` IS NULL;

-- Alineación de texto (2026-10-01, pedido explícito): "Cancelada por recepción"
-- → "Cancelada por Laesh" también en filas ya persistidas, para que el
-- histórico use la misma redacción que las notificaciones nuevas.
-- REPLACE() es sensible a mayúsculas/minúsculas (a diferencia de LIKE, que usa
-- la collation case-insensitive de la columna) — se cubren ambas variantes
-- encontradas en datos reales: "Cancelada por recepción" (formato actual) y
-- "cancelada por recepción" (formato legado más antiguo, ej. "La orden N fue
-- cancelada por recepción. Motivo: ...").
UPDATE `notificaciones` SET `mensaje` = REPLACE(`mensaje`, 'Cancelada por recepción', 'Cancelada por Laesh')
  WHERE `mensaje` LIKE '%Cancelada por recepción%' COLLATE utf8mb4_bin;
UPDATE `notificaciones` SET `mensaje` = REPLACE(`mensaje`, 'cancelada por recepción', 'cancelada por Laesh')
  WHERE `mensaje` LIKE '%cancelada por recepción%' COLLATE utf8mb4_bin;

-- P-LAESH-RESULTADOS-PARCIALES-01 (2026-09-23) — resultados parciales de
-- laboratorio: el laboratorio entrega los estudios de una orden en días
-- distintos, acumulados en el mismo PDF; Recepción decide con un radio
-- Parcial/Completado cuándo la orden queda realmente lista. tipo_entrega
-- ya viaja en el CREATE TABLE de resultados_pdf (arriba) para instalaciones
-- nuevas — este ALTER es para instalaciones ya corriendo.
ALTER TABLE `resultados_pdf`
  ADD COLUMN IF NOT EXISTS `tipo_entrega` ENUM('parcial','completo') NOT NULL DEFAULT 'parcial'
    COMMENT 'Criterio de Recepción al subir — parcial no transiciona la orden, completo sí (2→3)'
    AFTER `subido_por`;

-- P-LAESH-FOLIO-EXTRAIDO-01 (2026-09-24) — Recepción pidió mostrar, junto al
-- folio_unico interno de LAESH, el folio propio del equipo/software de
-- laboratorio (PxLab, formato NNNN-NNNN) que ya viene impreso en el PDF de
-- resultados, como referencia cruzada visual. Se extrae en servidor con PHP
-- puro (sin librerías ni binarios externos: descompresión de streams
-- FlateDecode vía gzuncompress() + regex sobre el texto plano resultante) al
-- momento de la subida, en RC\Negocio\Ordenes::extraerFolioLaboratorio().
-- Puramente informativo — NO participa en los criterios de búsqueda (LIKE)
-- de buscarOrdenes()/obtenerOrdenesRecientes()/obtenerOrdenesAnteriores(), y
-- la extracción nunca bloquea ni hace fallar la subida (best-effort, NULL
-- ante cualquier fallo). folio_extraido ya viaja en el CREATE TABLE de
-- resultados_pdf (arriba) para instalaciones nuevas — este ALTER es para
-- instalaciones ya corriendo.
ALTER TABLE `resultados_pdf`
  ADD COLUMN IF NOT EXISTS `folio_extraido` VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
    COMMENT 'Folio interno del equipo/software de laboratorio (ej. PxLab, NNNN-NNNN) extraído del PDF en servidor'
    AFTER `tipo_entrega`;

-- ---------------------------------------------------------------------------
-- WS_CONEXIONES_LOG — Gap 9 (auditoría WS 2026-09-18, §2.4c/§4.9)
-- Auditoría persistida de conexiones WebSocket — antes solo vivía en memoria
-- del proceso Swoole ($clients[$fd]), perdida en cada restart, sin registro de
-- quién estuvo conectado cuándo. Puente HTTP en dirección inversa a /publish:
-- Swoole (on open/close) → POST interno → este INSERT/UPDATE vía PHP-FPM.
-- Swoole nunca toca MariaDB directamente — mismo principio que evitó PDOPool
-- para el Gap 6 (revocación activa de sockets).
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `ws_conexiones_log` (
    `id`               BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id`          INT UNSIGNED NOT NULL COMMENT 'FK users.id',
    `jti`              CHAR(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Identifica la sesión JWT — una fila por conexión WS',
    `role`             VARCHAR(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `ip`               VARCHAR(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IPv4 o IPv6',
    `conectado_en`     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `desconectado_en`  TIMESTAMP NULL DEFAULT NULL COMMENT 'NULL = sesión WS abierta o cierre nunca notificado (ej. crash del proceso)',
    PRIMARY KEY (`id`),
    KEY `idx_user_fecha` (`user_id`, `conectado_en`),
    KEY `idx_jti_abierta` (`jti`, `desconectado_en`)
      COMMENT 'Para el UPDATE de cierre: WHERE jti=? AND desconectado_en IS NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Gap 9 — auditoría persistida de conexiones WebSocket (inicio/fin/IP)';

-- ---------------------------------------------------------------------------
-- WS_RECHAZOS_LOG — G-DEV-03 (2026-09-23) — auditoría de handshakes WS
-- rechazados por verifyWsJwt() en on('open'), con el motivo exacto.
-- Antes: un handshake rechazado no dejaba NINGÚN rastro (ws_conexiones_log
-- solo registra conexiones ACEPTADAS) — diagnosticar un rechazo intermitente
-- requería instrumentación temporal en vivo. jti/user_id son NULLABLE porque
-- varios motivos de rechazo (empty_token, malformed_token, invalid_signature,
-- invalid_payload) ocurren ANTES de poder leer el payload del JWT — no hay
-- jti/user_id que registrar en esos casos. Mismo puente HTTP inverso que
-- ws_conexiones_log (Swoole nunca toca MariaDB directamente).
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `ws_rechazos_log` (
    `id`             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `motivo`         VARCHAR(32) COLLATE utf8mb4_unicode_ci NOT NULL
                       COMMENT 'empty_token|malformed_token|invalid_signature|invalid_payload|expired|jti_cache_miss|jti_revoked',
    `jti`            CHAR(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                       COMMENT 'NULL si el rechazo ocurrió antes de poder leer el payload',
    `user_id`        INT UNSIGNED DEFAULT NULL
                       COMMENT 'NULL si el rechazo ocurrió antes de poder leer el payload',
    `ip`             VARCHAR(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `rechazado_en`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_motivo_fecha` (`motivo`, `rechazado_en`),
    KEY `idx_jti` (`jti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='G-DEV-03 — auditoría persistida de handshakes WS rechazados, con motivo exacto';

-- ---------------------------------------------------------------------------
-- HISTORIAL_ESTADOS_ORDEN — Movimientos de estado (trazabilidad completa)
-- D-06: Tabla de "movimientos" — fuente de verdad para reportes de tiempos.
-- D-redesign: estado_anterior_id, estado_nuevo_id, cambiado_por_user_id
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `historial_estados_orden` (
    `id`                   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `orden_id`             INT UNSIGNED NOT NULL,
    `estado_anterior_id`   TINYINT UNSIGNED DEFAULT NULL
                             COMMENT 'FK catalogo_estados.id (NULL si es creación)',
    `estado_nuevo_id`      TINYINT UNSIGNED NOT NULL
                             COMMENT 'FK catalogo_estados.id',
    `cambiado_por_user_id` INT UNSIGNED DEFAULT NULL
                             COMMENT 'FK users.id — quién realizó el cambio',
    `observacion`          VARCHAR(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `creado_en`            TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_hist_orden_creado` (`orden_id`, `creado_en`),
    KEY `idx_creado`  (`creado_en`),
    KEY `idx_estado_ant` (`estado_anterior_id`),
    KEY `idx_estado_nue` (`estado_nuevo_id`),
    KEY `idx_cambiado_por` (`cambiado_por_user_id`),
    CONSTRAINT `fk_hist_orden` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_hist_est_ant` FOREIGN KEY (`estado_anterior_id`) REFERENCES `catalogo_estados` (`id`),
    CONSTRAINT `fk_hist_est_nue` FOREIGN KEY (`estado_nuevo_id`) REFERENCES `catalogo_estados` (`id`),
    CONSTRAINT `fk_hist_cambiado` FOREIGN KEY (`cambiado_por_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Movimientos de estado por orden — auditoría y reportes de tiempos de atención';

-- ---------------------------------------------------------------------------
-- FOLIOS_CONTROL — Correlativo atómico de folios (numéricos puros "1", "2"… desde 2026-09-23)
-- D-redesign: tipo_documento (era serie), ultimo_folio (era ultimo_numero).
-- 2026-10-01: se retiraron prefijo/longitud (formato LAESH-NNNNN descontinuado).
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `folios_control` (
    `id`             INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `tipo_documento` VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL
                       COMMENT 'Discriminador: orden_laboratorio | factura | etc.',
    `ultimo_folio`   INT UNSIGNED NOT NULL DEFAULT 0
                       COMMENT 'Último número emitido — incrementar con SELECT ... FOR UPDATE',
    `actualizado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_tipo_documento` (`tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Control de folios correlativos — usar SELECT ... FOR UPDATE para atomicidad';

SET FOREIGN_KEY_CHECKS = 1;

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `05_system_tables.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- LAESH Bloc Digital — Script 05: Tablas de Sistema (Logs y Trazabilidad)
-- Tablas: SYS_LOGS, FALLBACK_LOG
-- Schemas alineados con Logger.php y DB.php (commons/ — fuente de verdad).
-- Idempotente: CREATE TABLE IF NOT EXISTS.
-- =============================================================================

USE `laesh_db`;

-- Activar Event Scheduler (idempotente — sin efecto si ya está ON).
-- Necesario para que evt_purga_sys_logs corra en segundo plano.
SET GLOBAL event_scheduler = ON;

-- ---------------------------------------------------------------------------
-- SYS_LOGS — Log operativo PSR-3
-- Schema conforme a Logger.php::log() que inserta (2026-09-06 — Gaps G3/G4/G5):
--   level, message, ip_address, user_id,
--   request_id (G3), url + metodo (G4), session_id (G5), created_at
-- Retención diferenciada por nivel:
--   DEBUG / INFO → 30 días | WARN → 90 días | ERROR/FATAL/CRITICAL → indefinido
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `sys_logs` (
    `id`         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `level`      ENUM('DEBUG','INFO','WARN','ERROR','FATAL','CRITICAL') NOT NULL DEFAULT 'INFO',
    `message`    TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
    `ip_address` VARCHAR(45) DEFAULT NULL,
    `user_id`    INT UNSIGNED DEFAULT NULL COMMENT 'FK users.id (nullable — puede ser request no autenticado)',
    `request_id` CHAR(16)     DEFAULT NULL COMMENT 'G3: ID único por request HTTP (8 bytes hex) — correlaciona eventos del mismo ciclo',
    `url`        VARCHAR(500) DEFAULT NULL COMMENT 'G4: REQUEST_URI del request que originó el evento',
    `metodo`     VARCHAR(10)  DEFAULT NULL COMMENT 'G4: Método HTTP (GET, POST…)',
    `session_id` CHAR(26)     DEFAULT NULL COMMENT 'G5: session_id() truncado — identifica la sesión del usuario',
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_level`      (`level`),
    KEY `idx_created_at` (`created_at`),
    KEY `idx_request_id` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Log operativo PSR-3 — purga auto de INFO/DEBUG >30 días via Event Scheduler';

-- Event Scheduler: purga diferenciada por nivel
--   DEBUG / INFO → 30 días
--   WARN         → 90 días (G2: RBAC denials — volumen operativo, no retención crítica)
--   ERROR / FATAL / CRITICAL → indefinido (revisión manual requerida)
DROP EVENT IF EXISTS `evt_purga_sys_logs`;
CREATE EVENT IF NOT EXISTS `evt_purga_sys_logs`
    ON SCHEDULE EVERY 1 DAY
    STARTS CURRENT_TIMESTAMP
    DO
        DELETE FROM `sys_logs`
        WHERE (`level` IN ('DEBUG','INFO') AND `created_at` < NOW() - INTERVAL 30  DAY)
           OR (`level` = 'WARN'           AND `created_at` < NOW() - INTERVAL 90  DAY);

-- ---------------------------------------------------------------------------
-- FALLBACK_LOG — Log técnico de errores PHP/SQL (retención indefinida)
-- Schema conforme a DB.php::logFallback() que inserta:
--   nivel, origen, funcion, query_type, query_hash, query_text, error_msg, fecha
-- No se purga — revisión manual requerida.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `fallback_log` (
    `id`          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nivel`       ENUM('WARN','ERROR','FALLBACK','CRITICAL') NOT NULL DEFAULT 'ERROR',
    `origen`      VARCHAR(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Archivo:línea del caller',
    `funcion`     VARCHAR(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Clase::método del caller',
    `query_type`  ENUM('SELECT','INSERT','UPDATE','DELETE','CALL','OTHER') DEFAULT 'OTHER',
    `query_hash`  CHAR(8) COLLATE latin1_general_cs DEFAULT NULL COMMENT 'CRC32 de query_text para agrupar repeticiones',
    `query_text`  TEXT COLLATE utf8mb4_unicode_ci COMMENT 'Sentencia SQL fallida',
    `error_msg`   VARCHAR(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mensaje de error PDO',
    `fecha`       TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_nivel` (`nivel`),
    KEY `idx_fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Log técnico de errores SQL/PHP — retención indefinida, revisión manual requerida';

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `04_auth_extensions.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- LAESH Bloc Digital — Script 04: Extensiones de Auth y RBAC
-- Tablas: EMPLEADOS, PERFILES_MEDICOS, RBAC_PERMISOS, RBAC_PERMISOS_USUARIOS
-- Depende de: 01_auth_schema.sql (tabla users debe existir).
-- Idempotente: CREATE TABLE IF NOT EXISTS.
--
-- Redesign v2 — alineado con Tecnica_Modelo_Datos.html:
--   • perfiles_medicos: user_id como PK/FK directa a users.id (era empleado_id FK empleados.id)
--   • perfiles_medicos: + celular, telefono_consultorio, direccion_consultorio
-- =============================================================================

USE `laesh_db`;

-- ---------------------------------------------------------------------------
-- EMPLEADOS — Extensión del perfil operativo para personal LAESH
-- Roles: MEDICO | RECEPCION | ADMIN | SITIOWEB (solo Contenidos del Sitio Web, 2026-09-30)
-- empleados.activo TINYINT permanece para personal no-médico (ver D-05).
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleados` (
    `id`        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id`   INT UNSIGNED NOT NULL COMMENT 'FK users.id (Delight-Auth)',
    `nombre`    VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `apellidos` VARCHAR(200) COLLATE utf8mb4_unicode_ci NOT NULL,
    `rol`       ENUM('MEDICO','RECEPCION','ADMIN','SITIOWEB') NOT NULL,
    `activo`    TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'Boolean simple para recepción/admin (D-05)',
    `creado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_user_id` (`user_id`),
    KEY `idx_rol` (`rol`),
    CONSTRAINT `fk_emp_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Extensión de users para personal LAESH — rol operativo y estado activo';

-- ---------------------------------------------------------------------------
-- PERFILES_MEDICOS — Perfil extendido exclusivo para médicos
-- D-03: universidad_id y lugar_trabajo_id son FK → catalogos_ui (no VARCHAR).
-- D-05: estado_id FK → cat_estados_medico (Activo/Pausado).
-- D-redesign: user_id como PK y FK directa a users.id (simplifica joins).
--             Agregados: celular, telefono_consultorio, direccion_consultorio.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `perfiles_medicos` (
    `user_id`                INT UNSIGNED NOT NULL
                               COMMENT 'PK y FK users.id — un perfil por médico',
    `nombre_completo`        VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                               COMMENT 'Nombre completo del médico (autogenerado/migrado)',
    `especialidad`           VARCHAR(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `cedula_profesional`     VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `cedula_especialidad`    VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `celular`                VARCHAR(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                               COMMENT 'Teléfono celular del médico (10 dígitos)',
    `telefono_consultorio`   VARCHAR(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                               COMMENT 'Teléfono fijo del consultorio',
    `direccion_consultorio`  VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
                               COMMENT 'Dirección del consultorio (mostrada en solicitud digital)',
    `universidad_id`         INT UNSIGNED DEFAULT NULL
                               COMMENT 'FK catalogos_ui.id (tipo=universidad)',
    `lugar_trabajo_id`       INT UNSIGNED DEFAULT NULL
                               COMMENT 'FK catalogos_ui.id (tipo=lugar_trabajo)',
    `estado_id`              TINYINT UNSIGNED NOT NULL DEFAULT 1
                               COMMENT 'FK cat_estados_medico.id (1=Activo, 2=Pausado)',
    `total_ordenes`          INT UNSIGNED NOT NULL DEFAULT 0
                               COMMENT 'Contador estadístico de órdenes emitidas',
    `creado_en`              TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `actualizado_en`         TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`user_id`),
    KEY `idx_universidad`   (`universidad_id`),
    KEY `idx_lugar_trabajo` (`lugar_trabajo_id`),
    CONSTRAINT `fk_pm_user`        FOREIGN KEY (`user_id`)          REFERENCES `users` (`id`),
    CONSTRAINT `fk_pm_universidad` FOREIGN KEY (`universidad_id`)   REFERENCES `catalogos_ui` (`id`),
    CONSTRAINT `fk_pm_lugar`       FOREIGN KEY (`lugar_trabajo_id`) REFERENCES `catalogos_ui` (`id`),
    CONSTRAINT `fk_pm_estado`      FOREIGN KEY (`estado_id`)        REFERENCES `cat_estados_medico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Perfil extendido de médicos — user_id PK/FK directa, especialidad, cédula, contacto consultorio';

-- ---------------------------------------------------------------------------
-- RBAC_PERMISOS — Catálogo de permisos granulares del sistema
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `rbac_permisos` (
    `id`          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nombre`      VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL
                    COMMENT 'ej: ver_ordenes_propias, gestionar_cms',
    `descripcion` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Catálogo de permisos granulares RBAC';

-- ---------------------------------------------------------------------------
-- RBAC_PERMISOS_USUARIOS — Asignación user↔permiso (fix G-BD-06: tabla faltante)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `rbac_permisos_usuarios` (
    `user_id`      INT UNSIGNED NOT NULL COMMENT 'FK users.id (Delight Auth)',
    `permiso_id`   INT UNSIGNED NOT NULL COMMENT 'FK rbac_permisos.id',
    `otorgado_en`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`user_id`, `permiso_id`),
    CONSTRAINT `fk_rpu_user`    FOREIGN KEY (`user_id`)    REFERENCES `users`(`id`)           ON DELETE CASCADE,
    CONSTRAINT `fk_rpu_permiso` FOREIGN KEY (`permiso_id`) REFERENCES `rbac_permisos`(`id`)   ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Asignación de permisos granulares RBAC a usuarios';

```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `total_ordenes`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:15 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `08_stored_procedures.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- LAESH Bloc Digital — Script 08: Procedimientos Almacenados
-- Procedimientos: CrearOrdenLaboratorio, CambiarEstadoOrden
-- (ProcesarCargaResultadoPDF eliminado — H5, auditoría 2026-09-20, código muerto)
-- Idempotente: DROP PROCEDURE IF EXISTS + CREATE PROCEDURE.
--
-- Redesign v2 — alineado con Tecnica_Modelo_Datos.html:
--   • folios_control: tipo_documento (era serie), ultimo_folio (era ultimo_numero)
--   • ordenes: folio_unico (era folio), hora_captura (era creado_en)
--   • historial_estados_orden: estado_anterior_id, estado_nuevo_id, cambiado_por_user_id
--   • notificaciones: user_id (era destinatario_id)
--   • catalogo_estados: 1=Remitido, 2=En Atención, 3=Resultados Listos, 4=Cerrada
-- =============================================================================

USE `laesh_db`;

DELIMITER //

-- ---------------------------------------------------------------------------
-- CrearOrdenLaboratorio
-- Crea una orden con folio atómico usando folios_control.tipo_documento='orden_laboratorio'.
-- Formato (2026-09-23): solo el consecutivo, sin prefijo/padding → "1", "2", "3"...
-- (antes: prefijo + LPAD → LAESH-00001; columnas prefijo/longitud retiradas 2026-10-01)
-- Retorna el folio_unico generado vía parámetro OUT.
-- Estado inicial: 1 = Remitido
-- ---------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `CrearOrdenLaboratorio` //

CREATE PROCEDURE `CrearOrdenLaboratorio`(
    IN  p_paciente_id     INT UNSIGNED,
    IN  p_medico_id       INT UNSIGNED,
    IN  p_recepcion_id    INT UNSIGNED,
    IN  p_edad_al_emitir  TINYINT UNSIGNED,
    IN  p_diagnostico     VARCHAR(200),   -- alineado con ordenes.diagnostico VARCHAR(200) — spec ET
    IN  p_otros_estudios  TEXT,            -- alineado con ordenes.otros_estudios TEXT — spec ET
    IN  p_estudios_json   TEXT,
    OUT p_folio_unico     VARCHAR(20)
)
BEGIN
    DECLARE v_ultimo   INT UNSIGNED DEFAULT 0;
    DECLARE v_orden_id INT UNSIGNED;

    -- 1. Obtener siguiente número de folio de forma atómica
    UPDATE `folios_control`
       SET `ultimo_folio` = `ultimo_folio` + 1
     WHERE `tipo_documento` = 'orden_laboratorio';

    SELECT `ultimo_folio`
      INTO v_ultimo
      FROM `folios_control`
     WHERE `tipo_documento` = 'orden_laboratorio'
     LIMIT 1;

    -- 2. Formatear folio (2026-09-23): se descarta el prefijo/padding
    -- "LAESH-00001" — a partir de ahora el folio es solo el número
    -- consecutivo ("1", "2", "3"...). folios_control sigue siendo la
    -- fuente atómica del consecutivo.
    SET p_folio_unico = CAST(v_ultimo AS CHAR);

    -- 3. Insertar la orden (estado inicial: 1=Remitido)
    INSERT INTO `ordenes` (
        `folio_unico`, `paciente_id`, `medico_id`, `recepcion_id`,
        `estado_id`, `edad_al_emitir`, `diagnostico`, `otros_estudios`, `estudios`
    ) VALUES (
        p_folio_unico, p_paciente_id, p_medico_id, p_recepcion_id,
        1, p_edad_al_emitir, p_diagnostico, p_otros_estudios, p_estudios_json
    );

    SET v_orden_id = LAST_INSERT_ID();

    -- 4. Registrar primer movimiento de estado (creación: NULL → Remitido)
    --    GAP-04 fix: actor = recepcion_id si viene de Recepción; medico_id si es Solicitud Digital
    INSERT INTO `historial_estados_orden`
        (`orden_id`, `estado_anterior_id`, `estado_nuevo_id`, `cambiado_por_user_id`, `observacion`)
    VALUES
        (v_orden_id, NULL, 1,
         COALESCE(p_recepcion_id, p_medico_id),
         CASE WHEN p_recepcion_id IS NOT NULL
              THEN 'Orden creada en Recepción — estado inicial: Remitido'
              ELSE 'Solicitud Digital emitida por médico — estado inicial: Remitido'
         END);

END //

-- ---------------------------------------------------------------------------
-- ProcesarCargaResultadoPDF — ELIMINADO (H5, auditoría 2026-09-20)
-- Código muerto: ningún PHP lo invocaba (confirmado por grep sobre todo el
-- repo). La ruta real (rc/negocio/Ordenes.php::guardarResultadoPDF) hacía el
-- INSERT a resultados_pdf y el cambio de estado en pasos sueltos, perdiendo la
-- guarda "no reabrir una orden Cerrada" que sí tenía este SP. Esa guarda queda
-- cubierta de forma genérica (para TODAS las transiciones, no solo PDF) por la
-- máquina de estados agregada a CambiarEstadoOrden abajo — guardarResultadoPDF
-- ya pasa por ahí. El DROP se conserva (sin CREATE) para limpiar el SP huérfano
-- en cualquier BD donde ya exista.
-- ---------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `ProcesarCargaResultadoPDF` //

-- ---------------------------------------------------------------------------
-- CambiarEstadoOrden
-- Transición atómica de estado de una orden con registro en historial.
--
-- H1 (auditoría 2026-09-20): antes aceptaba cualquier nuevo_estado_id sin
-- validar el estado actual — se podía saltar de Remitido a Cerrada, o
-- reabrir una orden Cerrada. Ahora valida contra una máquina de estados
-- explícita: 1→{2,3,4,5} · 2→{3,4} · 3→{4} · 4→{} (terminal) · 5→{} (terminal,
-- Cancelada — H8). Transición inválida → p_transicion_invalida=1, no se aplica
-- ningún cambio.
--
-- Regla de negocio (2026-09-20, confirmada explícitamente por el usuario):
-- la cancelación (→5) SOLO es válida desde Remitido (1) — nunca desde En
-- Atención (2). Antes el CASE permitía 2→5 por error de una edición previa
-- (la máquina de estados original de H1/H8 nunca lo incluyó); la UI de
-- Recepción (rcRenderBotonesAccion() en rc/index.php) ya solo ofrecía el
-- botón Cancelar en estado 1, así que el SP era más permisivo que la UI que
-- lo gobierna — corregido para que ambos coincidan.
--
-- H7 (auditoría 2026-09-20): optimistic locking — p_estado_esperado (opcional,
-- NULL = sin verificar, usado por callers que no lo necesiten) debe coincidir
-- con el estado actual real en BD o la transición se rechaza con
-- p_conflicto=1. Evita que dos usuarios con la misma vista abierta se pisen
-- una transición basada en datos obsoletos.
-- ---------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `CambiarEstadoOrden` //

CREATE PROCEDURE `CambiarEstadoOrden`(
    IN  p_orden_id          INT UNSIGNED,
    IN  p_nuevo_estado_id   TINYINT UNSIGNED,
    IN  p_user_id           INT UNSIGNED,
    IN  p_observacion       VARCHAR(255),
    IN  p_estado_esperado   TINYINT UNSIGNED,
    OUT p_estado_anterior   TINYINT UNSIGNED,
    OUT p_folio_unico       VARCHAR(20),
    OUT p_conflicto         TINYINT(1),
    OUT p_transicion_invalida TINYINT(1)
)
proc_body: BEGIN
    DECLARE v_curr_estado TINYINT UNSIGNED;
    DECLARE v_folio       VARCHAR(20);
    DECLARE v_transicion_ok TINYINT(1) DEFAULT 0;

    SET p_conflicto = 0;
    SET p_transicion_invalida = 0;

    SELECT `estado_id`, `folio_unico`
      INTO v_curr_estado, v_folio
      FROM `ordenes`
     WHERE `id` = p_orden_id
     LIMIT 1;

    SET p_estado_anterior = v_curr_estado;
```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:15 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Ordenes.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/**
 * rc/negocio/Ordenes.php — Capa de Negocio para Órdenes y Pacientes (Recepción)
 *
 * Maneja la lógica de dominio, persistencia PDO, ejecución de Stored Procedures
 * (laesh_db.CrearOrdenLaboratorio), secuencias (folios_control), auditoría y logs.
 */

namespace RC\Negocio;

use Common\DB;
use Common\Logger;
use PDO;
use Throwable;

class Ordenes {

    const BUSQ_TEXT_COLS_RC = ['paciente_nombre', 'medico_nombre_completo', 'paciente_telefono', 'diagnostico', 'otros_estudios', 'estudios_json', 'folio_extraido'];

    /**
     * Busca un paciente existente por teléfono o nombre, o crea uno nuevo en laesh_db.pacientes
     */
    public static function buscarOCrearPaciente(array $datos): int {
        $db = DB::connect();
        
        $nombreCompleto = trim($datos['paciente_nombre'] ?? $datos['paciente'] ?? '');
        $apellidoPaterno = trim($datos['apellido_paterno'] ?? '');
        if (!empty($apellidoPaterno) && strpos($nombreCompleto, $apellidoPaterno) === false) {
            $nombreCompleto .= ' ' . $apellidoPaterno;
        }
        $telefono = trim($datos['celular'] ?? $datos['telefono'] ?? '');
        $sexo = ($datos['sexo'] ?? 'H') === 'M' ? 'M' : 'H';

        if (empty($nombreCompleto)) {
            $nombreCompleto = 'Paciente Sin Nombre';
        }

        // M3 (auditoría 2026-09-20): sin UNIQUE en telefono/nombre_completo (a
        // propósito — dos pacientes reales distintos pueden compartir teléfono de
        // hogar) ni SELECT ... FOR UPDATE (la fila que buscamos aún no existe), dos
        // creaciones casi simultáneas para el MISMO paciente nuevo podían ambas
        // fallar en encontrar coincidencia y ambas insertar, duplicando el
        // paciente. GET_LOCK() serializa el check-then-act SOLO para la misma
        // combinación teléfono+nombre — no impone una restricción de unicidad
        // permanente en la tabla, solo cierra la ventana de carrera de esta
        // función. Timeout de 5s: si algo más ya tiene el lock, mejor fallar
        // rápido con un error claro que colgar el request indefinidamente.
        $lockKey = 'paciente_' . md5($telefono . '|' . $nombreCompleto);
        $lockStmt = $db->prepare('SELECT GET_LOCK(?, 5)');
        $lockStmt->execute([$lockKey]);
        if ((int)$lockStmt->fetchColumn() !== 1) {
            throw new \RuntimeException('No se pudo obtener bloqueo para registrar el paciente — intente de nuevo.');
        }

        try {
            // 2026-09-24 (reporte en vivo: orden capturada con nombre "Karla ..."
            // se guardó/mostró con el nombre de un paciente distinto, "Juan Manuel"/
            // "José"): esta búsqueda emparejaba SOLO por teléfono, ignorando el
            // nombre recién capturado — el comentario de más arriba (GET_LOCK) ya
            // reconoce que "dos pacientes reales distintos pueden compartir
            // teléfono de hogar", pero el SELECT nunca aplicó esa misma regla: el
            // primer paciente registrado con ese teléfono se reutilizaba sin
            // importar que el nombre no coincidiera, contaminando la orden nueva
            // con la identidad de otro paciente. La clave del candado (línea de
            // arriba) YA combina teléfono+nombre — se replica esa misma pareja
            // aquí, que siempre fue la intención real de "es el mismo paciente".
            if (!empty($telefono)) {
                $stmt = $db->prepare("SELECT id FROM pacientes WHERE telefono = ? AND nombre_completo = ? LIMIT 1");
                $stmt->execute([$telefono, $nombreCompleto]);
                $existente = $stmt->fetchColumn();
                if ($existente) {
                    return (int)$existente;
                }
            }

            // Buscar por nombre_completo solo (paciente ya conocido pero sin
            // teléfono capturado esta vez, o teléfono nuevo/distinto para el
            // mismo nombre) — evita duplicar al mismo paciente.
            $stmt = $db->prepare("SELECT id FROM pacientes WHERE nombre_completo = ? LIMIT 1");
            $stmt->execute([$nombreCompleto]);
            $existente = $stmt->fetchColumn();
            if ($existente) {
                return (int)$existente;
            }

            // Crear nuevo paciente
            $stmtInsert = $db->prepare("
                INSERT INTO pacientes (nombre_completo, sexo, telefono)
                VALUES (?, ?, ?)
            ");
            $stmtInsert->execute([
                $nombreCompleto,
                $sexo,
                $telefono
            ]);

            return (int)$db->lastInsertId();
        } finally {
            $db->prepare('SELECT RELEASE_LOCK(?)')->execute([$lockKey]);
        }
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `CrearOrdenLaboratorio`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:15 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Ordenes.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L99-249)</summary>

**Path:** `Unknown file`

```
        }
    }

    /**
     * H3 (auditoría 2026-09-20): detecta conflictos de serialización transitorios
     * (MariaDB 1020 "Record has changed since last read... try restarting
     * transaction", o 1213 deadlock) que ameritan reintentar toda la transacción,
     * a diferencia de un error real (dato inválido, FK, etc.) que no se arregla
     * reintentando.
     */
    public static function esConflictoSerializacion(Throwable $e): bool {
        if (!$e instanceof \PDOException) return false;
        $code = (string)($e->errorInfo[1] ?? '');
        return $code === '1020' || $code === '1213';
    }

    /**
     * Obtiene las órdenes del día natural de HOY registradas o emitidas en Recepción con paginación, búsqueda y ordenamiento
     */
    public static function obtenerOrdenesRecientes(int $limit = 25, int $offset = 0, string $search = '', string $orderBy = 'fecha', string $orderDir = 'DESC', int $estadoId = 0): array {
        try {
            $db = DB::connect();

            $allowedSorts = [
                'folio'           => 'CAST(o.folio_unico AS UNSIGNED)',
                'paciente'        => 'o.paciente_nombre',
                'medico'          => 'COALESCE(o.medico_nombre_completo, \'Médico General\')',
                'fecha'           => 'o.hora_captura',
                'fecha_resultado' => 'o.fecha_resultado',
                'estado'          => 'o.estado_id',
                // PxLab (folio del PDF del laboratorio): sin PxLab siempre al final;
                // LENGTH primero para que el orden sea numérico aunque varíe la longitud.
                'pxlab'           => 'pdf.folio_extraido IS NULL ASC, LENGTH(pdf.folio_extraido) {DIR}, pdf.folio_extraido',
                'id'              => 'o.orden_id'
            ];
            $dir = strtoupper($orderDir) === 'ASC' ? 'ASC' : 'DESC';
            $sortCol = str_replace('{DIR}', $dir, $allowedSorts[$orderBy] ?? 'o.orden_id');

            $whereSql = "WHERE DATE(o.hora_captura) = CURDATE()";
            $params = [];
            if ($estadoId > 0) {
                $whereSql .= " AND o.estado_id = :estado_id_rec";
                $params[':estado_id_rec'] = $estadoId;
            }
            $search = trim(mb_strtolower($search, 'UTF-8'));

            if ($search !== '') {
                $whereSql .= ' AND ' . \Common\BusquedaOrdenes::construirWhereBusqueda(
                    $search, $params, 'o.', '', [], [], self::BUSQ_TEXT_COLS_RC, false
                );
            }

            $limInt = max(1, $limit);
            $offInt = max(0, $offset);

            $sql = "
                SELECT o.orden_id as id, o.folio_unico as folio, o.hora_captura as creado_en, o.fecha_resultado,
                       o.diagnostico, o.otros_estudios, o.estudios_json as estudios, o.edad_al_emitir,
                       o.paciente_nombre, o.paciente_sexo, o.paciente_telefono as telefono,
                       COALESCE(o.medico_nombre_completo, 'Médico General') AS medico_nombre,
                       COALESCE(o.medico_especialidad, 'Medicina General') AS medico_especialidad,
                       COALESCE(o.medico_cedula, 'CED-N/A') AS medico_cedula,
                       o.estado_id, o.estado_valor AS estado_nombre, o.estado_color AS color_badge,
                       o.motivo_cancelacion,
                       pdf.nombre_archivo AS pdf_nombre,
                       pdf.folio_extraido,
                       parc.parciales_fechas
                FROM vw_ordenes_completas o
                LEFT JOIN (
                    SELECT p1.orden_id, p1.nombre_archivo, p1.folio_extraido
                    FROM resultados_pdf p1
                    INNER JOIN (
                        SELECT orden_id, MAX(id) AS max_id
                        FROM resultados_pdf
                        GROUP BY orden_id
                    ) p2 ON p1.id = p2.max_id
                ) pdf ON pdf.orden_id = o.orden_id
                LEFT JOIN (
                    SELECT orden_id, GROUP_CONCAT(creado_en ORDER BY id ASC SEPARATOR '|') AS parciales_fechas
                    FROM resultados_pdf
                    WHERE tipo_entrega = 'parcial'
                    GROUP BY orden_id
                ) parc ON parc.orden_id = o.orden_id
                {$whereSql}
                ORDER BY {$sortCol} {$dir}, o.orden_id DESC
                LIMIT {$limInt} OFFSET {$offInt}
            ";

            $stmt = $db->prepare($sql);
            foreach ($params as $k => $v) {
                $stmt->bindValue($k, $v, PDO::PARAM_STR);
            }
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (Throwable $e) {
            DB::logFallback('ERROR', 'Fallo en RC\Negocio\Ordenes::obtenerOrdenesRecientes', $e->getMessage());
            return [];
        }
    }

    /**
     * Cuenta el total de órdenes de HOY según filtro de búsqueda
     */
    public static function contarOrdenesRecientes(string $search = '', int $estadoId = 0): int {
        try {
            $db = DB::connect();
            $whereSql = "WHERE DATE(hora_captura) = CURDATE()";
            $params = [];
            $search = trim(mb_strtolower($search, 'UTF-8'));

            if ($estadoId > 0) {
                $whereSql .= " AND estado_id = :estado_id_cnt_rec";
                $params[':estado_id_cnt_rec'] = $estadoId;
            }
            if ($search !== '') {
                $whereSql .= ' AND ' . \Common\BusquedaOrdenes::construirWhereBusqueda(
                    $search, $params, '', '', [], [], self::BUSQ_TEXT_COLS_RC, false
                );
            }

            $stmt = $db->prepare("SELECT COUNT(*) FROM vw_ordenes_completas {$whereSql}");
            $stmt->execute($params);
            return (int)$stmt->fetchColumn();
        } catch (Throwable $e) {
            DB::logFallback('ERROR', 'Fallo en RC\Negocio\Ordenes::contarOrdenesRecientes', $e->getMessage());
            return 0;
        }
    }

    /**
     * Obtiene las órdenes de DÍAS ANTERIORES para la vista de Historial en Recepción con paginación, búsqueda y ordenamiento
     */
    /**
     * 2026-10-01: delega a Common\BusquedaOrdenes::construirFiltroPeriodoAnteriores()
     * — antes esta lógica vivía duplicada byte-a-byte en RC y en MD (ver
     * MD\Negocio\Ordenes::construirFiltroPeriodoAnterioresMedico()). Se conserva el
     * nombre y la firma del método para no tocar ningún call site existente.
     */
    private static function construirFiltroPeriodoAnteriores(string $periodo, string $alias = 'o.', string $fechaInicio = '', string $fechaFin = '', array &$params = []): string {
        return \Common\BusquedaOrdenes::construirFiltroPeriodoAnteriores($periodo, $alias, $fechaInicio, $fechaFin, $params);
    }

    /**
     * Obtiene las solicitudes de órdenes de DÍAS ANTERIORES con ordenamiento, búsqueda,
     * paginación y filtro de período (default: 30 días, o calendario por rango de fechas).
     * Precedencia del buscador: si $search tiene contenido, busca en todo el historial (< hoy).
     */
    public static function obtenerOrdenesAnteriores(int $limit = 25, int $offset = 0, string $search = '', string $orderBy = 'fecha', string $orderDir = 'DESC', string $periodo = '30d', string $fechaInicio = '', string $fechaFin = '', int $estadoId = 0, bool $soloParciales = false): array {
        try {
            $db = DB::connect();

```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `crearOrden`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:16 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `INSERT INTO ordenes`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:16 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `ordenes`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:16 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Ordenes.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L49-129)</summary>

**Path:** `Unknown file`

```
            $estudiosJson  = is_array($estudiosArray) ? json_encode($estudiosArray, JSON_UNESCAPED_UNICODE) : $estudiosArray;

            // Validar edad obligatoria (1-120 años) ANTES de tocar el SP/FK
            if ($edad <= 0 || $edad > 120) {
                throw new \InvalidArgumentException("La edad es obligatoria y debe estar entre 1 y 120 años.");
            }
            if (is_array($estudiosArray) && !empty($estudiosArray)) {
                $idsNumericos = array_values(array_filter($estudiosArray, 'is_numeric'));
                if (!empty($idsNumericos)) {
                    $placeholders = implode(',', array_fill(0, count($idsNumericos), '?'));
                    $stmtCheck = $db->prepare("SELECT id FROM cat_estudios WHERE id IN ({$placeholders})");
                    $stmtCheck->execute($idsNumericos);
                    $idsExistentes = array_map('intval', $stmtCheck->fetchAll(PDO::FETCH_COLUMN));
                    $idsFaltantes = array_diff(array_map('intval', $idsNumericos), $idsExistentes);
                    if (!empty($idsFaltantes)) {
                        throw new \InvalidArgumentException('Uno o más estudios seleccionados ya no existen en el catálogo (id: ' . implode(', ', $idsFaltantes) . '). Recargue la página e intente de nuevo.');
                    }
                }
            }

            // 3. Ejecutar Stored Procedure CrearOrdenLaboratorio
            // Auditoría E2E (2026-09-20): sin prefijo 'laesh_db.' en el CALL — con el
            // nombre calificado, MariaDB resuelve las tablas sin calificar del SP contra
            // ese esquema y no contra la BD de la conexión (rompía al probar contra una
            // BD con otro nombre).
            $stmtProc = $db->prepare("
                CALL CrearOrdenLaboratorio(
                    :paciente_id,
                    :medico_id,
                    :recepcion_id,
                    :edad_al_emitir,
                    :diagnostico,
                    :otros_estudios,
                    :estudios_json,
                    @p_folio
                )
            ");

            $stmtProc->execute([
                'paciente_id'    => $pacienteId,
                'medico_id'      => $medicoId,
                'recepcion_id'   => null, // Emitida por médico digitalmente
                'edad_al_emitir' => $edad,
                'diagnostico'    => $diagnostico,
                'otros_estudios' => $otrosEstudios,
                'estudios_json'  => $estudiosJson
            ]);

            // Obtener el folio generado por el Stored Procedure
            $folioRow = $db->query("SELECT @p_folio AS folio")->fetch(PDO::FETCH_ASSOC);
            $folio = $folioRow['folio'] ?? '1';

            // Obtener la orden recién creada para responder con orden_id
            $stmtOrd = $db->prepare("SELECT id FROM ordenes WHERE folio_unico = ? LIMIT 1");
            $stmtOrd->execute([$folio]);
            $ordenId = (int)$stmtOrd->fetchColumn();

            // 4. Actualizar contador de órdenes del médico en perfiles_medicos (GAP-03)
            $db->prepare("UPDATE perfiles_medicos SET total_ordenes = total_ordenes + 1 WHERE user_id = ?")
               ->execute([$medicoId]);

            // 6. Logger y Auditoría
            $pacienteNombre = trim(($datos['paciente_nombre'] ?? $datos['paciente'] ?? 'Paciente'));
            Logger::logAlways('INFO', "Solicitud Médica Digital {$folio} creada para {$pacienteNombre} por médico user_id={$userId}", $userId);

            // Obtener el nombre del médico para complementar el mensaje de notificación
            $stmtMed = $db->prepare(
                "SELECT COALESCE(pm.nombre_completo, NULLIF(CONCAT(IFNULL(em.nombre,''), ' ', IFNULL(em.apellidos,'')), ' '), 'Médico')
                 FROM users u
                 LEFT JOIN perfiles_medicos pm ON pm.user_id = u.id
                 LEFT JOIN empleados em ON em.user_id = u.id
                 WHERE u.id = ? LIMIT 1"
            );
            $stmtMed->execute([$userId]);
            $medicoNombre = trim((string)$stmtMed->fetchColumn());
            if ($medicoNombre !== '' && $medicoNombre !== 'Médico') {
                if (!str_starts_with($medicoNombre, 'Dr(a).')) {
                    $medicoNombre = 'Dr(a). ' . preg_replace('/^(Dr|Dra)\.?\s*/i', '', $medicoNombre);
                }
            } else {
                $medicoNombre = 'Dr(a).';
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Ordenes.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L130-214)</summary>

**Path:** `Unknown file`

```
            }

            $mensajeNotif = "Paciente: {$pacienteNombre} del {$medicoNombre}";

            // 7. H6 — Outbox: persistir la notificación dentro de la misma transacción.
            $persisted = \Common\Notifier::persist($db, 'nueva_orden', [
                'folio'          => $folio,
                'orden_id'       => $ordenId,
                'subtipo'        => 'creada',
                'titulo'         => 'Nueva Solicitud · #' . $folio,
                'mensaje'        => $mensajeNotif,
                'actor_user_id'  => $userId,
            ]);

            $db->commit();

            // 8. Push por WS — después del commit.
            \Common\Notifier::push($persisted, 'nueva_orden', [
                'folio'    => $folio,
                'orden_id' => $ordenId,
                'titulo'   => 'Nueva Solicitud · #' . $folio,
                'mensaje'  => $mensajeNotif,
            ]);

            return [
                'success'  => true,
                'folio'    => $folio,
                'orden_id' => $ordenId,
                'paciente' => $pacienteNombre,
                'mensaje'  => "✓ Solicitud Médica Digital {$folio} creada exitosamente para {$pacienteNombre}."
            ];

        } catch (Throwable $e) {
            if ($db->inTransaction()) {
                $db->rollBack();
            }
            // H3: conflicto de serialización transitorio de MariaDB (1020/1213) —
            // el motor sugiere reintentar la transacción completa.
            if ($intento < 5 && \RC\Negocio\Ordenes::esConflictoSerializacion($e)) {
                usleep(random_int(10000, 50000));
                return self::crearSolicitudDigital($datos, $userId, $intento + 1);
            }
            DB::logFallback('ERROR', 'Fallo en MD\Negocio\Ordenes::crearSolicitudDigital', $e->getMessage());
            Logger::log('ERROR', 'Error al crear solicitud médica digital: ' . $e->getMessage(), $userId);
            return [
                'success' => false,
                'error'   => 'No se pudo crear la solicitud digital: ' . $e->getMessage()
            ];
        }
    }

    /**
     * Obtiene las solicitudes de órdenes emitidas HOY (día natural) por el médico logueado
     */
    public static function obtenerOrdenesPropias(int $userId, int $limit = 25, int $offset = 0, string $search = '', string $orderBy = 'fecha', string $orderDir = 'DESC'): array {
        try {
            $db = DB::connect();

            $allowedSorts = [
                'folio'           => 'CAST(o.folio_unico AS UNSIGNED)',
                'paciente'        => 'o.paciente_nombre',
                'fecha'           => 'o.hora_captura',
                'fecha_resultado' => 'o.fecha_resultado',
                'estado'          => 'o.estado_id',
                'id'              => 'o.orden_id'
            ];
            $sortCol = $allowedSorts[$orderBy] ?? 'o.orden_id';
            $dir = strtoupper($orderDir) === 'ASC' ? 'ASC' : 'DESC';

            // 2026-10-01: filtro de dueño (medico_user_id) homologado vía $extraBase —
            // antes se aplicaba fuera del helper aquí pero dentro en
            // obtenerOrdenesAnterioresMedico(), misma lógica efectiva, dos formas de
            // escribirla. Mismo resultado, ahora un solo patrón en todo MD.
            $params = [':user_id' => $userId];
            $search = trim(mb_strtolower($search, 'UTF-8'));
            $conds = \Common\BusquedaOrdenes::construirWhereBusqueda(
                $search, $params, 'o.', '', [], ['o.medico_user_id = :user_id'], self::BUSQ_TEXT_COLS_MD, false
            );
            $whereSql = "WHERE DATE(o.hora_captura) = CURDATE() AND {$conds}";

            $limInt = max(1, $limit);
            $offInt = max(0, $offset);

            $sql = "
                SELECT o.orden_id as id, o.folio_unico as folio, o.hora_captura as creado_en, o.fecha_resultado,
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `guardarResultadoPDF`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:16 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Ordenes.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L949-1039)</summary>

**Path:** `Unknown file`

```
     */
    public static function guardarResultadoPDF(int $ordenId, string $nombreOriginal, string $rutaStorage, int $userId, string $tipoEntrega = 'parcial', ?string $folioExtraido = null): array {
        $tipoEntrega = ($tipoEntrega === 'completo') ? 'completo' : 'parcial';
        $db = DB::connect();
        $db->beginTransaction();

        try {
            // 1. Insertar en resultados_pdf
            $stmt = $db->prepare("
                INSERT INTO resultados_pdf (orden_id, nombre_archivo, ruta_storage, subido_por, tipo_entrega, folio_extraido, creado_en)
                VALUES (?, ?, ?, ?, ?, ?, NOW())
            ");
            $stmt->execute([$ordenId, $nombreOriginal, $rutaStorage, $userId, $tipoEntrega, $folioExtraido]);

            // 2. Obtener estado actual y folio de la orden
            $stmtSt = $db->prepare("SELECT estado_id, folio_unico FROM ordenes WHERE id = ? LIMIT 1");
            $stmtSt->execute([$ordenId]);
            $ordRow = $stmtSt->fetch(PDO::FETCH_ASSOC);

            if (!$ordRow) {
                $db->rollBack();
                return ['success' => false, 'error' => 'Solicitud no encontrada.'];
            }

            $currEstado = (int)$ordRow['estado_id'];
            $folio      = $ordRow['folio_unico'];

            // 3. Transicionar a "Resultados Listos" SOLO si Recepción marcó "Completado"
            //    y la orden aún no había llegado ahí. Un resultado "parcial" nunca
            //    transiciona — la orden se queda en su estado actual (normalmente 2,
            //    En Atención) mientras el laboratorio sigue entregando estudios.
            if ($tipoEntrega === 'completo' && $currEstado < 3) {
                $resultado = self::cambiarEstado($ordenId, 3, $userId, "Resultados PDF completados: {$nombreOriginal}");
                if (!$resultado['success']) {
                    $db->rollBack();
                    return $resultado;
                }
            } elseif ($currEstado < 3) {
                // Parcial mientras la orden sigue en curso (normalmente estado 2): no hay
                // transición de estado que registrar vía CambiarEstadoOrden (el SP rechaza
                // N→N — confirmado en su whitelist de transiciones), así que se deja
                // trazabilidad manual igual que el camino de re-subida post-completado
                // de abajo. fecha_resultado NO se toca aquí — solo la transición a 3
                // marca "resultado disponible" en el sentido que el resto del sistema
                // ya asume (reportes de tiempos de entrega, etc.).
                $histStmt = $db->prepare("
                    INSERT INTO historial_estados_orden (orden_id, estado_anterior_id, estado_nuevo_id, cambiado_por_user_id, observacion)
                    VALUES (?, ?, ?, ?, ?)
                ");
                $histStmt->execute([$ordenId, $currEstado, $currEstado, $userId, "Resultado parcial adjuntado: {$nombreOriginal}"]);
            } else {
                // Si ya está en estado 3 (Resultados Listos) o 4 (Cerrada), actualizamos fecha_resultado
                // y registramos la trazabilidad de re-subida sin forzar una auto-transición 3->3 en el SP.
                $updStmt = $db->prepare("UPDATE ordenes SET fecha_resultado = NOW() WHERE id = ?");
                $updStmt->execute([$ordenId]);

                $histStmt = $db->prepare("
                    INSERT INTO historial_estados_orden (orden_id, estado_anterior_id, estado_nuevo_id, cambiado_por_user_id, observacion)
                    VALUES (?, ?, ?, ?, ?)
                ");
                $histStmt->execute([$ordenId, $currEstado, $currEstado, $userId, "Actualización de PDF de resultados: {$nombreOriginal}"]);
            }

            $infoRow = $db->prepare("
                SELECT o.medico_id, o.paciente_id,
                       p.nombre_completo AS paciente_nombre,
                       COALESCE(pm.nombre_completo, NULLIF(CONCAT(IFNULL(em.nombre,''), ' ', IFNULL(em.apellidos,'')), ' '), 'Médico') AS medico_nombre
                FROM ordenes o
                LEFT JOIN pacientes p ON p.id = o.paciente_id
                LEFT JOIN users u ON u.id = o.medico_id
                LEFT JOIN perfiles_medicos pm ON pm.user_id = u.id
                LEFT JOIN empleados em ON em.user_id = u.id
                WHERE o.id = ? LIMIT 1
            ");
            $infoRow->execute([$ordenId]);
            $ordInfo = $infoRow->fetch(\PDO::FETCH_ASSOC) ?: [];
            $medicoId = (int)($ordInfo['medico_id'] ?? 0);
            $pacienteNombre = trim($ordInfo['paciente_nombre'] ?? 'Paciente');
            $medicoNombre = trim((string)($ordInfo['medico_nombre'] ?? 'Médico'));
            if ($medicoNombre !== '' && $medicoNombre !== 'Médico') {
                if (!str_starts_with($medicoNombre, 'Dr(a).')) {
                    $medicoNombre = 'Dr(a). ' . preg_replace('/^(Dr|Dra)\.?\s*/i', '', $medicoNombre);
                }
            } else {
                $medicoNombre = 'Dr(a).';
            }
            $tituloNotif = ($tipoEntrega === 'parcial')
                ? 'Resultado Parcial · #' . $folio
                : 'Resultados Listos · #' . $folio;
            $mensajeNotif = ($tipoEntrega === 'parcial')
                ? "Paciente: {$pacienteNombre} — Avance en PDF disponible."
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `move_uploaded_file`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:17 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `index.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L2229-2289)</summary>

**Path:** `Unknown file`

```
    }

    // P-LAESH-RESULTADOS-PARCIALES-01 (2026-09-23): nombre determinístico (sin
    // time()) — el laboratorio entrega resultados parciales acumulados EN EL
    // MISMO documento, así que cada subida debe sobrescribir literalmente el
    // PDF anterior de esta orden, no acumular archivos nuevos. Escritura
    // atómica (tmp + rename, mismo patrón que Cache::set()) para que dos
    // subidas casi simultáneas a la misma orden no dejen un archivo corrupto
    // a medio escribir.
    $filename    = 'resultado_ord_' . $ordenId . '.pdf';
    $targetPath  = $uploadDir . $filename;
    $tmpPath     = $targetPath . '.tmp.' . getmypid() . '.' . uniqid();
    $relativeUrl = ($isOptOk) ? '/laesh-uploads/pdfs/' . $filename : '/uploads/pdfs/' . $filename;

    $wroteTmp = @move_uploaded_file($file['tmp_name'], $tmpPath) || @copy($file['tmp_name'], $tmpPath);
    if (!$wroteTmp) {
        $sendError('Error al guardar el archivo PDF en el servidor. Verifique permisos o espacio libre.');
    }
    if (!@rename($tmpPath, $targetPath)) {
        @unlink($tmpPath);
        $sendError('Error al finalizar el guardado del archivo PDF en el servidor.');
    }

    // 5. Criterio de Recepción — Parcial (default) o Completado. Whitelist
    // estricta: cualquier valor inesperado cae a 'parcial' (fail-safe: nunca
    // transiciona la orden por accidente ante un valor corrupto/inesperado).
    $tipoEntrega = ($_POST['tipo_entrega'] ?? 'parcial') === 'completo' ? 'completo' : 'parcial';

    // 5b. P-LAESH-FOLIO-EXTRAIDO-01 (2026-09-24): extracción best-effort del folio
    // del equipo/software de laboratorio embebido en el PDF ya escrito en disco.
    // Deliberadamente fuera de la transacción de guardarResultadoPDF() — un fallo
    // aquí (PDF escaneado, formato inesperado) nunca debe impedir la subida.
    $folioExtraido = \RC\Negocio\Ordenes::extraerFolioLaboratorio($targetPath);

    // 6. Asociar resultado PDF a la orden en MariaDB
    $resultado = \RC\Negocio\Ordenes::guardarResultadoPDF($ordenId, $file['name'], $relativeUrl, $userId, $tipoEntrega, $folioExtraido);

    if (!$resultado['success']) {
        // No se borra $targetPath: con nombre determinístico, ese archivo puede
        // ser el resultado de una subida ANTERIOR ya exitosa — borrarlo aquí
        // destruiría un PDF válido por el fallo de ESTA subida.
        $sendError($resultado['error'] ?? 'Error al asociar el PDF con la solicitud.');
    }

    // H6: notificación 'resultado_disponible' enviada por WS en Ordenes::guardarResultadoPDF()
    $successMsg = "✓ PDF {$file['name']} cargado correctamente para la solicitud {$resultado['folio']}.";
    header('HX-Trigger: ' . json_encode([
        'ordenActualizada' => ['ordenId' => $ordenId],
        'mostrarToast'     => ['mensaje' => $successMsg, 'tipo' => 'success']
    ]));
    \Common\Response::htmxSuccess($successMsg);
});

// ── GET /orden/pdf — Descarga / visualización del PDF de resultados ─────────────────
Flight::route('GET /orden/pdf', function () {
    $ordenId = (int)($_GET['id'] ?? 0);
    if ($ordenId <= 0) {
        Flight::notFound();
    }

    $pdfData = \RC\Negocio\Ordenes::obtenerResultadoPDF($ordenId);
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `index.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L2199-2234)</summary>

**Path:** `Unknown file`

```
    }

    $file = $_FILES['pdf_file'];
    $ext  = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
    if ($ext !== 'pdf') {
        $sendError('El archivo debe ser un documento PDF (.pdf).');
    }

    // 4. Directorio de almacenamiento con fallback seguro y permisos comprobados
    $uploadDir = '/opt/laesh/uploads/pdfs/';
    $isOptOk   = false;

    if (@is_dir($uploadDir) || @mkdir($uploadDir, 0777, true)) {
        if (@is_writable($uploadDir)) {
            $isOptOk = true;
        }
    }

    if (!$isOptOk) {
        $uploadDir = __DIR__ . '/../uploads/pdfs/';
        if (!@is_dir($uploadDir)) {
            @mkdir($uploadDir, 0777, true);
        }
        if (!@is_writable($uploadDir)) {
            @chmod($uploadDir, 0777);
        }
    }

    if (!@is_writable($uploadDir)) {
        $sendError('Error de permisos en servidor: La carpeta de almacenamiento (' . $uploadDir . ') no es escribible.');
    }

    // P-LAESH-RESULTADOS-PARCIALES-01 (2026-09-23): nombre determinístico (sin
    // time()) — el laboratorio entrega resultados parciales acumulados EN EL
    // MISMO documento, así que cada subida debe sobrescribir literalmente el
    // PDF anterior de esta orden, no acumular archivos nuevos. Escritura
```

</details>

---

## Agent Response

### Thinking

The PDF upload directory structure links order IDs to PDF filenames within a database table. Database cleanup of order records risks leaving orphaned PDF files on the filesystem. This raises concerns about potential file accumulation or unintended PDF collisions with ID reuse.


A complete cleanup must involve purging PDF files from the designated directory, excluding `.gitkeep`. The database tables `pacientes`, `ordenes`, and `resultados_pdf` require truncation. The existence of `detalle_ordenes` is uncertain and requires conditional handling to avoid script failure, depending on the migration state.


Examining the `notificaciones` table, it's necessary to consider `subtipo` and `folio_referencia`, and the different notification types. An extended deletion query, including notifications related to orders or with a non-null `folio_referencia`, is needed for a clean UAT environment. The `catalogo_actualizado` notifications can be retained or deleted as they are not order-specific. Investigating how `total_ordenes` is updated in `perfiles_medicos` is also important.




### Actions

**Tool:** `grep_search`
**Query:** `total_ordenes`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.307594288s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:17 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `folios_control`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:17 pm

---

## Agent Response

### Thinking

The initial setup inserts a row for 'orden_laboratorio' if it doesn't exist, then sets its folio to zero. However, this raises a concern: what if the `folios_control` table already contains rows, particularly with an `AUTO_INCREMENT` primary key like `id`? Inspecting the schema definition, the `id` field is indeed `AUTO_INCREMENT`.


The `folios_control` table's `AUTO_INCREMENT` primary key raises concerns regarding folio generation after truncation; the code initializes `ultimo_folio` to zero, and the subsequent insert or update would reset it. Tables like `ordenes`, `pacientes`, `resultados_pdf`, and `historial_estados_orden` are truncated, and their IDs also restart from 1. The user's request for clean UAT tests necessitates checking log tables for potential data dependencies. The `sys_logs` table stores system logs.




### Actions

**Tool:** `view_file`
**File:** `Logger.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.459591227s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
// Logger.php - Helper de logs del sistema (DB sys_logs y Archivo local app.log)

namespace Common;

use DateTime;
use PDOException;

class Logger {
    /**
     * Orden numérico de severidad para filtro de nivel mínimo.
     * Cuanto mayor el número, más severo. OFF desactiva todo.
     */
    private const LEVEL_ORDER = [
        'DEBUG'    => 0,
        'INFO'     => 1,
        'WARN'     => 2,
        'ERROR'    => 3,
        'CRITICAL' => 4,
        'FATAL'    => 5,
        'OFF'      => PHP_INT_MAX,
    ];

    /**
     * Nivel mínimo activo, cacheado en memoria.
     * null = no inicializado; se carga en el primer log().
     *
     * Auditoría 2026-09-21: el comentario original decía "cacheado por request",
     * correcto para PHP-FPM (proceso nuevo por request) pero FALSO para procesos
     * de larga vida (Swoole, un solo proceso corriendo días/semanas) — sin TTL,
     * "recargar niveles en caliente" desde el panel Admin nunca llegaba a Swoole,
     * quedaba atascado en el nivel que tenía cuando el proceso arrancó. Detectado
     * intentando diagnosticar un fallo real de WS con logs DEBUG que nunca se
     * escribían — Swoole seguía filtrando en WARN pese a tener DEBUG configurado
     * hacía rato. Fix: TTL corto (ver MIN_LEVEL_TTL) en vez de caché "para siempre".
     */
    private static ?string $minLevel = null;
    private static int $minLevelLoadedAt = 0;
    private const MIN_LEVEL_TTL = 30; // segundos — balance entre I/O y "en caliente" real

    /**
     * G3: ID único de request — generado una vez por proceso PHP (8 bytes = 16 hex chars).
     * Correlaciona todos los eventos de un mismo ciclo HTTP en sys_logs y app.log.
     * null = no inicializado; se genera en el primer log().
     */
    private static ?string $requestId = null;

    /**
     * G3: Devuelve (o genera en el primer uso) el request_id del proceso actual.
     */
    private static function getRequestId(): string {
        if (self::$requestId === null) {
            self::$requestId = bin2hex(random_bytes(8));
        }
        return self::$requestId;
    }

    /**
     * Lee /opt/laesh/configs/app-log-level.php (escrito por apply_log_levels.sh).
     * En desarrollo (APP_ENV != 'production') usa DEBUG sin leer el archivo.
     * Usa require en lugar de include para aprovechar OPcache.
     */
    private static function getMinLevel(): string {
        if (self::$minLevel !== null && (time() - self::$minLevelLoadedAt) < self::MIN_LEVEL_TTL) {
            return self::$minLevel;
        }
        // En entornos no-producción, loguear todo
        if ((getenv('APP_ENV') ?: 'production') !== 'production') {
            self::$minLevelLoadedAt = time();
            return self::$minLevel = 'DEBUG';
        }
        $cfgFile = '/opt/laesh/configs/app-log-level.php';
        if (is_readable($cfgFile)) {
            try {
                // opcache_invalidate: sin esto, un proceso de larga vida (Swoole)
                // sirve el bytecode compilado la primera vez que se ejecutó este
                // require, ignorando cambios posteriores en disco — mismo patrón
                // ya usado en Cache::get()/set().
                if (function_exists('opcache_invalidate')) {
                    @opcache_invalidate($cfgFile, true);
                }
                $cfg = @require $cfgFile;
                $lvl = strtoupper(trim($cfg['app_log_level'] ?? 'WARN'));
                self::$minLevel = isset(self::LEVEL_ORDER[$lvl]) ? $lvl : 'WARN';
            } catch (\Throwable) {
                self::$minLevel = 'WARN';
            }
        } else {
            self::$minLevel = 'WARN';
        }
        self::$minLevelLoadedAt = time();
        return self::$minLevel;
    }

    /**
     * Determina si un nivel dado pasa el umbral mínimo configurado.
     */
    private static function passes(string $level): bool {
        $min   = self::LEVEL_ORDER[self::getMinLevel()] ?? 2;
        $given = self::LEVEL_ORDER[strtoupper($level)]  ?? 1;
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `.log`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:18 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Cache.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/**
 * Cache.php — OPcache PHP File Store para LAESH Sitio Público
 *
 * Estrategia A: Caché basada en archivos PHP exportados (`return [...]`)
 * que OPcache compila a bytecode en RAM en el primer acceso y sirve
 * directamente desde memoria en los siguientes.
 *
 * Patrón: Cache-Aside
 *   1. get($key) → hit: retorna array desde OPcache (<0.1ms)
 *                  miss: retorna null (el caller consulta la BD y llama set())
 *   2. set($key, $data, $ttl) → serializa y escribe archivo PHP + OPcache compila
 *   3. invalidate($key) → unlink del archivo → siguiente request regenera
 *   4. clear() → elimina todos los archivos del directorio caché (cron 5 AM)
 *
 * Claves de caché usadas en index.php:
 *   LAESH_CFG    → tabla configuraciones            (TTL 12h)
 *   LAESH_CMS    → tabla web_contenidos             (TTL 10min)
 *   LAESH_TREE   → árbol catalogo_grupos+estudios   (TTL 24h)
 *   LAESH_PROMOS → catalogo_promociones (JOIN)      (TTL 10min)
 *
 * @package Common
 * @since   2026-09-02 (Sprint Cache L2)
 */
declare(strict_types=1);

namespace Common;

class Cache
{
    /** Directorio donde se guardan los archivos de caché PHP */
    private static string $cacheDir = '';

    /** Prefijo de entorno para evitar colisiones entre ambientes (dev/prod) */
    private static string $envPrefix = 'prod';

    // ── Constantes de TTL (en segundos) ───────────────────────────────────────
    public const TTL_CONFIG = 43200;   // 12 horas — configuraciones institucionales
    public const TTL_CMS    = 600;     // 10 minutos — contenido editorial CMS
    public const TTL_TREE   = 86400;   // 24 horas — árbol de estudios clínicos
    public const TTL_PROMOS = 600;     // 10 minutos — promociones vigentes

    // ── Claves canónicas ───────────────────────────────────────────────────────
    public const KEY_CFG    = 'LAESH_CFG';
    public const KEY_CMS    = 'LAESH_CMS';
    public const KEY_TREE   = 'LAESH_TREE';
    public const KEY_PROMOS = 'LAESH_PROMOS';
    public const KEY_CATALOG_SEARCH = 'LAESH_CATALOG_SEARCH';

    /**
     * Inicializa el sistema de caché.
     * Debe llamarse una vez desde commons.php (o desde index.php antes del primer get/set).
     *
     * @param string $cacheDir  Ruta absoluta al directorio de caché (default: /tmp/laesh_cache)
     * @param string $envPrefix Prefijo de ambiente para aislar dev/prod ('dev' | 'prod')
     */
    public static function init(string $cacheDir = '', string $envPrefix = 'prod'): void
    {
        // Prioridad: parámetro > LAESH_CACHE_DIR (env) > /tmp/laesh_cache
        // En KVM2/producción se inyecta LAESH_CACHE_DIR=/opt/laesh/cache vía PHP-FPM pool
        // y vía el cron, evitando el aislamiento PrivateTmp del servicio php8.3-fpm.service.
        self::$cacheDir  = $cacheDir ?: (getenv('LAESH_CACHE_DIR') ?: (is_dir('/opt/laesh/cache') ? '/opt/laesh/cache' : sys_get_temp_dir() . '/laesh_cache'));
        self::$envPrefix = preg_replace('/[^a-z0-9_]/', '_', strtolower($envPrefix));

        if (!is_dir(self::$cacheDir)) {
            @mkdir(self::$cacheDir, 0755, true);
        }
    }

    /**
     * Autoauditoría 2026-09-24: get()/set()/invalidate() usaban self::$cacheDir
     * ('' por defecto — cada request de PHP-FPM resetea estáticas) sin llamar
     * jamás a init() por su cuenta. rc/index.php nunca llama a Cache::init()
     * en ningún punto de su bootstrap — así que CatalogBuilder::build()
     * (llamado desde ahí tras editar el catálogo) invalidaba contra
     * filePath() = "/laesh_cache_prod_LAESH_TREE.php" (raíz del filesystem,
     * $cacheDir vacío), no contra el archivo real en LAESH_CACHE_DIR — un
     * unlink() silencioso sobre un archivo que nunca existe ahí. website/
     * index.php sí llama init() explícito, así que su propio caché quedaba
     * intacto pero JAMÁS se enteraba de la invalidación disparada desde
     * Recepción. Se detectó al auditar el gap de KEY_CATALOG_SEARCH (mismo
     * síntoma, causa más profunda). Fix de raíz: auto-inicializar con los
     * mismos defaults de init() si nadie lo hizo antes — cierra esta clase
     * de bug para cualquier caller actual o futuro, no solo para
     * CatalogBuilder. Una llamada explícita previa a init() (con cacheDir/
     * envPrefix propios) sigue ganando — esto solo actúa si $cacheDir
     * jamás se tocó.
     */
    public static function getCacheDir(): string
    {
        self::ensureInit();
        return self::$cacheDir;
    }

    private static function ensureInit(): void
    {
        if (self::$cacheDir === '') {
            self::init();
        }
    }
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Cache.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L100-265)</summary>

**Path:** `Unknown file`

```

    /**
     * Lee un valor del caché.
     *
     * @param string $key Clave canónica (ej: Cache::KEY_CMS)
     * @return mixed|null El array PHP cacheado, o null en caso de miss/expiración
     */
    /**
     * Obtiene el mapa clave => valor de la tabla `configuraciones`.
     * Utiliza Cache::KEY_CFG con hit <0.1ms en OPcache RAM, con fallback a BD y recacheo.
     *
     * @param \PDO|null $pdo Conexión PDO opcional (si es null usa DB::connect())
     * @return array<string,string>
     */
    public static function getConfig(?\PDO $pdo = null): array
    {
        self::ensureInit();
        $cached = self::get(self::KEY_CFG);
        if (is_array($cached)) {
            return $cached;
        }

        try {
            $db = $pdo ?? DB::connect();
            $data = $db->query("SELECT clave, valor FROM configuraciones")->fetchAll(\PDO::FETCH_KEY_PAIR) ?: [];
            self::set(self::KEY_CFG, $data, self::TTL_CONFIG);
            return $data;
        } catch (\Throwable $e) {
            return [];
        }
    }

    public static function get(string $key): mixed
    {
        self::ensureInit();
        $file = self::filePath($key);

        // Miss: archivo no existe
        if (!file_exists($file)) {
            return null;
        }

        // Miss por expiración (TTL basado en mtime del archivo)
        $ttl = self::ttlForKey($key);
        if ((time() - filemtime($file)) > $ttl) {
            @unlink($file);
            // Invalidar también la compilación OPcache del archivo expirado
            if (function_exists('opcache_invalidate')) {
                @opcache_invalidate($file, true);
            }
            return null;
        }

        // Hit: include retorna el array; OPcache sirve bytecode desde RAM
        try {
            $data = @include $file;
            return (is_array($data)) ? $data : null;
        } catch (\Throwable) {
            // Archivo corrupto — eliminar y tratar como miss
            @unlink($file);
            return null;
        }
    }

    /**
     * Escribe un valor en el caché.
     *
     * @param string $key  Clave canónica
     * @param mixed  $data Array PHP a cachear
     */
    public static function set(string $key, mixed $data, int $ttl = 86400): void
    {
        if (!is_array($data)) return;

        self::ensureInit();
        $file    = self::filePath($key);
        $content = "<?php\n// LAESH Cache — key:{$key} — generado:" . date('Y-m-d H:i:s') . "\nreturn " . var_export($data, true) . ";\n";

        // Escritura atómica: escribir en tmp, luego rename (evita race conditions)
        $tmpFile = $file . '.tmp.' . getmypid();
        if (@file_put_contents($tmpFile, $content, LOCK_EX) !== false) {
            @rename($tmpFile, $file);
            // M11 (auditoría 2026-09-20): invalidate() SIEMPRE limpiaba la entrada de
            // OPcache antes de tocar el archivo — set() no lo hacía, solo recompilaba.
            // Si OPcache ya tenía este mismo $file compilado de una escritura anterior
            // (misma key, mismo path tras el rename atómico), opcache_compile_file()
            // sobre un path ya cacheado puede no-op según opcache.validate_timestamps/
            // revalidate_freq, sirviendo bytecode desactualizado — relevante justo para
            // JwtManager::cacheJtiStatus(), que usa set() para voltear revoked de false
            // a true sobre la MISMA clave/archivo. Invalidar incondicionalmente antes
            // de recompilar cierra esa ventana, igual que ya hace invalidate().
            if (function_exists('opcache_invalidate')) {
                @opcache_invalidate($file, true);
            }
            // Compilar inmediatamente en OPcache para que el próximo hit sea RAM puro
            if (function_exists('opcache_compile_file')) {
                @opcache_compile_file($file);
            }
        } else {
            @unlink($tmpFile);
        }
    }

    /**
     * Invalida (elimina) la entrada de caché de una clave específica.
     * Llamar desde admrc/index.php justo después de confirmar el COMMIT de la BD.
     *
     * @param string $key Clave canónica o array de claves
     */
    public static function invalidate(string|array $keys): void
    {
        self::ensureInit();
        foreach ((array)$keys as $key) {
            $file = self::filePath($key);
            if (file_exists($file)) {
                @unlink($file);
                if (function_exists('opcache_invalidate')) {
                    @opcache_invalidate($file, true);
                }
            }
        }
    }

    /**
     * Elimina los 4 datasets de configuración (LAESH_CFG/CMS/TREE/PROMOS).
     * Usado por el script cron de las 5 AM para renovación completa.
     *
     * GAP-CACHE-01 (2026-09-23, hallazgo en investigación de G-DEV-03): antes
     * usaba glob('laesh_cache_*.php'), que también borraba cada entrada
     * JTI_* — sesiones de WS con JWT vigente (TTL 24h) perdían su caché de
     * revocación en cada corrida de este cron, sin relación con lo que el
     * cron realmente pretende renovar. El lado HTTP se autorrepara (fallback
     * a MariaDB + recacheo, ver JwtManager::verifyToken()); el lado WS no
     * (verifyWsJwt() es fail-closed sin fallback a BD, por diseño — Swoole
     * nunca toca MariaDB). Se acota a las 4 claves de diseño explícitas.
     */
    public static function clear(): void
    {
        self::invalidate([self::KEY_CFG, self::KEY_CMS, self::KEY_TREE, self::KEY_PROMOS, self::KEY_CATALOG_SEARCH]);
    }

    // ── Métodos privados ──────────────────────────────────────────────────────

    private static function filePath(string $key): string
    {
        $safeKey = preg_replace('/[^A-Z0-9_]/', '_', strtoupper($key));
        return self::$cacheDir . '/laesh_cache_' . self::$envPrefix . '_' . $safeKey . '.php';
    }

    private static function ttlForKey(string $key): int
    {
        if (str_starts_with($key, 'JTI_')) {
            return 86400; // 24h para claves dinámicas de tokens JTI
        }

        return match($key) {
            self::KEY_CFG    => self::TTL_CONFIG,
            self::KEY_CMS    => self::TTL_CMS,
            self::KEY_TREE   => self::TTL_TREE,
            self::KEY_PROMOS => self::TTL_PROMOS,
            self::KEY_CATALOG_SEARCH => self::TTL_TREE,
            default          => self::TTL_CMS,
        };
    }
}

```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `jwt_jti_registry`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:18 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `04_auth_extensions.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L100-120)</summary>

**Path:** `Unknown file`

```
-- ---------------------------------------------------------------------------
-- JWT_JTI_REGISTRY — Registro criptográfico de tokens y revocación atómica JTI
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `jwt_jti_registry` (
    `jti`            VARCHAR(36) NOT NULL COMMENT 'UUIDv4 id criptográfico de token',
    `user_id`        INT UNSIGNED NOT NULL COMMENT 'FK users.id (Delight Auth)',
    `role`           VARCHAR(20) NOT NULL COMMENT 'Rol del usuario (MEDICO, RECEPCION, ADMIN)',
    `user_agent`     VARCHAR(255) DEFAULT NULL COMMENT 'User-Agent del navegador cliente',
    `ip_address`     VARCHAR(45) DEFAULT NULL COMMENT 'Dirección IP de emisión',
    `issued_at`      BIGINT UNSIGNED NOT NULL COMMENT 'Timestamp epoch de emisión',
    `expires_at`     BIGINT UNSIGNED NOT NULL COMMENT 'Timestamp epoch de expiración',
    `is_revoked`     TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0=Activo, 1=Revocado',
    `revoked_at`     BIGINT UNSIGNED DEFAULT NULL COMMENT 'Timestamp epoch de revocación',
    `revoked_reason` VARCHAR(100) DEFAULT NULL COMMENT 'Razón de revocación (logout, admin, etc)',
    PRIMARY KEY (`jti`),
    KEY `idx_user_revoked` (`user_id`, `is_revoked`),
    KEY `idx_expires_at` (`expires_at`),
    CONSTRAINT `fk_jti_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Registro criptográfico de JWT ID (JTI) y revocación atómica multi-dispositivo';

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `01_auth_schema.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- LAESH Bloc Digital — Script 01: Schema Delight-Auth (PHP-Auth)
-- Tablas: users, users_remembered, users_throttling, users_confirmations,
--         users_resets, users_2fa, users_audit_log
--
-- IMPORTANTE: DDL derivado del código fuente de la versión instalada en
--   restaurant/commons/libs/auth/Delight/Auth/
-- NO usar $auth->install() — ese método no existe en esta versión.
-- Idempotente: CREATE TABLE IF NOT EXISTS.
-- =============================================================================

USE `laesh_db`;

-- ---------------------------------------------------------------------------
-- USERS — Tabla principal de autenticación
-- R15.5: email = {10digits}@laesh.local | username = teléfono
-- R14.9: verified=1 para usuarios creados por admin (sin email verification)
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
    `id`           INT(10)      UNSIGNED NOT NULL AUTO_INCREMENT,
    `email`        VARCHAR(249) COLLATE utf8mb4_unicode_ci NOT NULL,
    `password`     VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT '',
    `username`     VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `status`       TINYINT(4)   UNSIGNED NOT NULL DEFAULT 0,
    `verified`     TINYINT(1)   UNSIGNED NOT NULL DEFAULT 0,
    `resettable`   TINYINT(1)   UNSIGNED NOT NULL DEFAULT 1,
    `roles_mask`   INT(10)      UNSIGNED NOT NULL DEFAULT 0,
    `registered`   INT(10)      UNSIGNED NOT NULL,
    `last_login`   INT(10)      UNSIGNED DEFAULT NULL,
    `force_logout` MEDIUMINT(7) UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Autenticación Delight-Auth — R15.5: email virtual {tel}@laesh.local';

-- ---------------------------------------------------------------------------
-- USERS_REMEMBERED — Tokens de sesión persistente ("recordarme")
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `users_remembered` (
    `id`       BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user`     INT(10)    UNSIGNED NOT NULL,
    `selector` VARCHAR(24)  CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
    `token`    VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
    `expires`  INT(10)    UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `selector` (`selector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- USERS_THROTTLING — Rate-limiting por bucket de acción + IP
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `users_throttling` (
    `bucket`         VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
    `tokens`         FLOAT        UNSIGNED NOT NULL,
    `replenished_at` INT(10)      UNSIGNED NOT NULL,
    `expires_at`     INT(10)      UNSIGNED NOT NULL,
    PRIMARY KEY (`bucket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- USERS_CONFIRMATIONS — Tokens de verificación de email
-- R14.9: Bypaseada — admin crea usuarios con verified=1 directamente.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `users_confirmations` (
    `id`       INT(10)      UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id`  INT(10)      UNSIGNED NOT NULL,
    `email`    VARCHAR(249) COLLATE utf8mb4_unicode_ci NOT NULL,
    `selector` VARCHAR(24)  CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
    `token`    VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
    `expires`  INT(10)      UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `selector` (`selector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- USERS_RESETS — Tokens de restablecimiento de contraseña
-- R14.8: La tabla existe pero LAESH no genera filas (no hay reset por email).
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `users_resets` (
    `id`       BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user`     INT(10)    UNSIGNED NOT NULL,
    `selector` VARCHAR(24)  CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
    `token`    VARCHAR(200) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
    `expires`  INT(10)      UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `selector` (`selector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- USERS_AUDIT_LOG — Bitácora de seguridad de Delight-Auth (R14.14: no purgar)
-- 2026-10-01: antes este script hacía DROP TABLE (auditoría 2026-09-27 la creyó
-- sin uso), pero Auth::logForAudit() inserta aquí en cada login, cambio de
-- contraseña, etc. — en una instalación limpia el login fallaba con
-- "Table 'laesh_db.users_audit_log' doesn't exist" (detectado al levantar OCI).
-- KVM2 y Docker local la conservaban porque nunca se reinstalaron con --drop.
-- Columnas idénticas a las de producción.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `users_audit_log` (
    `id`           BIGINT(20)   UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id`      INT(10)      UNSIGNED NOT NULL,
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `auto_cierre_resultados.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env php
<?php
/**
 * auto_cierre_resultados.php — Auto-cierre de solicitudes "Resultados Listos" sin entregar
 *
 * PEN-LAESH-02: una orden que lleva más de N días en estado 3 (Resultados
 * Listos) sin que Recepción la marque como "Entregada" se cierra sola
 * (pasa a estado 4), dejando rastro de auditoría — sin actor humano
 * (cambiado_por_user_id = NULL, columna nullable por diseño, ver
 * historial_estados_orden) y con una notificación al médico dueño
 * (subtipo 'auto_cerrada', distinto de una entrega real por Recepción).
 *
 * N días viene de configuraciones.auto_cierre_resultados_dias (1 a 30,
 * default 5), editable desde admrc → Sistema.
 *
 * "Días en estado 3" se calcula desde historial_estados_orden (la fila más
 * reciente con estado_nuevo_id=3 para esa orden) — NO desde
 * ordenes.fecha_resultado, que se re-escribe también al cerrar (3→4) y por
 * cada re-subida de PDF, y por lo tanto no sirve para medir "cuánto lleva
 * esperando a ser entregada".
 *
 * Reutiliza RC\Negocio\Ordenes::cambiarEstado() — mismo Stored Procedure
 * (CambiarEstadoOrden) que usa Recepción manualmente, con la misma
 * validación de máquina de estados y locking optimista. $userId se pasa
 * como NULL (no existe un usuario "sistema" sembrado — la columna lo
 * permite).
 *
 * Ejecutado diariamente de madrugada por cron (KVM2):
 *   0 4 * * * www-data php8.3 /opt/laesh/www/laesh-swbldi/crons/auto_cierre_resultados.php >> /opt/laesh/logs/auto-cierre-resultados.log 2>&1
 */
declare(strict_types=1);

define('APP_ENV', 'prod');
ob_start();
try {
    require_once __DIR__ . '/../commons/autoload.php';
    require_once __DIR__ . '/../commons/commons.php';
    ob_end_clean();
} catch (\Throwable $e) {
    ob_end_clean();
    echo "[" . date('Y-m-d H:i:s') . "] ❌ FATAL en bootstrap (" . get_class($e) . "): " . $e->getMessage() . "\n";
    echo "    en " . $e->getFile() . ":" . $e->getLine() . "\n";
    exit(1);
}

use Common\Logger;
use Common\Notifier;
use RC\Negocio\Ordenes;

echo "[" . date('Y-m-d H:i:s') . "] Auto-Cierre de Resultados — Iniciando...\n";

try {
    $db = Flight::db();

    $configs = \Common\Cache::getConfig($db);
    $dias = (int)($configs['auto_cierre_resultados_dias'] ?? 5);
    if ($dias < 1 || $dias > 30) $dias = 5;

    // Órdenes en estado 3, cuya ÚLTIMA entrada a ese estado (puede haber
    // reentrado si algo rarísimo pasara) fue hace más de $dias días.
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `notificaciones_retry.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env php
<?php
/**
 * notificaciones_retry.php — Reintento de notificaciones con entrega WS fallida
 *
 * H6 (auditoría 2026-09-20) — cierra el gap de retry_count: la columna existía
 * desde el diseño original de QoS pero ningún proceso la usaba nunca. Con el
 * outbox transaccional (commons/notifier.php::persist()/push()), toda notificación
 * queda garantizada en BD aunque el push por WS falle (Swoole caído, timeout,
 * nadie conectado) — este cron es el que efectivamente reintenta esas filas.
 *
 * Ejecutado cada 5 minutos por cron (KVM2) — ver notificaciones-retry.cron
 * (expresión: minuto múltiplo de 5, cada hora, todos los días).
 *
 * Selecciona notificaciones con entregado_ws=0, retry_count<5, de las últimas 24h
 * (más viejas que eso ya no tiene sentido reintentar — el usuario ya haría poll
 * fallback normal si sigue activo). Push dirigido (target_user_ids=[user_id],
 * no un broadcast) porque cada fila ya sabe su destinatario exacto.
 */
declare(strict_types=1);

$start = microtime(true);

// Mismo patrón que cache_renew.php/cms_cleanup.php (incidente 2026-09-19): bootstrap
// en try/catch con echo explícito — display_errors=Off en CLI de producción desvía
// cualquier fatal a error_log sin dejar rastro en este log si no se captura a mano.
define('APP_ENV', 'prod');
ob_start();
try {
    require_once __DIR__ . '/../commons/autoload.php';
    require_once __DIR__ . '/../commons/commons.php';
    ob_end_clean();
} catch (\Throwable $e) {
    ob_end_clean();
    echo "[" . date('Y-m-d H:i:s') . "] ❌ FATAL en bootstrap (" . get_class($e) . "): " . $e->getMessage() . "\n";
    echo "    en " . $e->getFile() . ":" . $e->getLine() . "\n";
    exit(1);
}

echo "[" . date('Y-m-d H:i:s') . "] Notificaciones Retry — Iniciando...\n";

use Common\Logger;

try {
    $db = Flight::db();

    // M6 (auditoría 2026-09-20): el corte por edad (creado_en > NOW()-1DAY) es
    // independiente de retry_count — una notificación con retry_count=0 (Swoole
    // caído toda una jornada, nunca se reintentó) queda huérfana igual que una
    // que sí agotó sus 5 intentos, pero antes no dejaba ninguna señal: sencillamente
    // dejaba de aparecer en esta consulta al día siguiente. Se detecta y loguea
    // ANTES de que ocurra (mientras aún es visible, a las puertas de la ventana).
    // Ventana angosta (10 min, ~2x el intervalo del cron) para no repetir el
    // mismo WARN decenas de veces mientras la fila envejece hacia las 24h.
    $porExpirar = $db->query(
        "SELECT id, user_id, folio_referencia, retry_count
           FROM notificaciones
          WHERE entregado_ws = 0
            AND retry_count < 5
            AND creado_en <= NOW() - INTERVAL 23 HOUR - INTERVAL 50 MINUTE
```

</details>

---

## Agent Response

### Thinking

The `notificaciones_retry.php` script appears to retry delivering notifications that previously failed, specifically targeting those not yet delivered (`entregado_ws = 0`), with retry attempts below a limit (`retry_count < 5`), and created within the last day. This retry logic could lead to repeated attempts to notify about deleted orders if the notifications themselves aren't purged, which is an area that needs examination.




### Actions

**Tool:** `grep_search`
**Query:** `REFERENCES `notificaciones``

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.109876928s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:19 pm

---

## Agent Response

### Thinking

Analyzing schema definitions to understand table relationships. Identified foreign key constraints between `ordenes` and `pacientes`, `users`, and `catalogo_estados`, and also between `resultados_pdf` and `ordenes`. These relationships are crucial for understanding data integrity and potential cascading effects during data modifications or deletions. This understanding informs how to query and update the database safely and efficiently.


Examining the schema reveals `historial_estados_orden` and `resultados_pdf` reference `ordenes`.  The `detalle_ordenes` table's existence is uncertain due to a historical migration. To manage its potential presence, a conditional truncation or checking via database metadata is required before any operations.




### Actions

**Tool:** `grep_search`
**Query:** `REFERENCES `pacientes``

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.245731112s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:19 pm

---

## Agent Response

### Thinking

When orders are deleted, the `perfiles_medicos.total_ordenes` counter becomes inaccurate since its value is only incremented on order creation.  Therefore, resetting `perfiles_medicos.total_ordenes` to zero ensures data integrity before UAT.  Further analysis is needed concerning `sys_logs` and `fallback_log`, but their treatment is not yet clear.




### Actions

**Tool:** `view_file`
**File:** `Logger.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.096552489s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L139-199)</summary>

**Path:** `Unknown file`

```

    /**
     * Núcleo de escritura compartido por log() y logAlways().
     * Captura contexto G3/G4/G5 e inserta en sys_logs y app.log.
     */
    private static function doWrite(string $level, string $message, ?int $userId = null): void {
        // Capturar contexto del request una sola vez (G3/G4/G5)
        $requestId = self::getRequestId();                                         // G3
        $url       = $_SERVER['REQUEST_URI'] ?? null;                              // G4
        $metodo    = $_SERVER['REQUEST_METHOD'] ?? null;                           // G4
        // G5: session_id() solo cuando hay sesión activa (safe para CLI/cron)
        $sessionId = (PHP_SAPI !== 'cli' && session_status() === PHP_SESSION_ACTIVE)
                     ? substr(session_id(), 0, 26)
                     : null;

        // 1. Intentar registrar en la base de datos (sys_logs)
        try {
            $pdo = DB::connect();
            $stmt = $pdo->prepare("
                INSERT INTO `sys_logs`
                (`level`, `message`, `ip_address`, `user_id`,
                 `request_id`, `url`, `metodo`, `session_id`, `created_at`)
                VALUES (:level, :message, :ip_address, :user_id,
                        :request_id, :url, :metodo, :session_id, NOW())
            ");
            $stmt->execute([
                ':level'      => strtoupper($level),
                ':message'    => $message,
                ':ip_address' => $_SERVER['REMOTE_ADDR'] ?? '127.0.0.1',
                ':user_id'    => $userId,
                ':request_id' => $requestId,                                       // G3
                ':url'        => $url ? substr($url, 0, 500) : null,              // G4
                ':metodo'     => $metodo ? substr($metodo, 0, 10) : null,         // G4
                ':session_id' => $sessionId,                                       // G5
            ]);
        } catch (PDOException $e) {
            // Si la conexión a la base de datos falla, registrar el error en archivo plano
            self::logToFile("FATAL", "Fallo al escribir en sys_logs en MariaDB: " . $e->getMessage());
        }

        // 2. Escribir siempre en el archivo local redundante (Resiliencia)
        self::logToFile($level, $message, $userId, $requestId, $url, $metodo);
    }

    /**
     * Escribe la traza directamente en el archivo plano de logs.
     * Formato extendido: [timestamp] [REQ:id] [LEVEL] [METHOD /url] message [User ID: X]
     *
     * @param string      $level     Nivel PSR-3
     * @param string      $message   Mensaje
     * @param int|null    $userId    ID usuario (G2)
     * @param string|null $requestId ID único del request (G3)
     * @param string|null $url       REQUEST_URI (G4)
     * @param string|null $metodo    REQUEST_METHOD (G4)
     */
    private static function logToFile(
        string  $level,
        string  $message,
        ?int    $userId    = null,
        ?string $requestId = null,
        ?string $url       = null,
```

</details>

---

## Agent Response

### Thinking

Application logging occurs in two locations. A recent conversation's transcript may contain relevant information, particularly regarding database interactions and caching behavior. The focus needs to be directed toward examining this specific conversation for context regarding those operations.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.134022660s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:19 pm

---

## Agent Response

### Thinking

User aims to enhance the system based on recent database and cache refactoring. The focus is on preparing for User Acceptance Testing (UAT) of the digital request lifecycle, notifications, and associated features and logs. The prompt implies a need to address identified issues and strengthen the system's robustness for UAT.


The `detalle_ordenes` table is likely crucial for order integrity; truncating it without also clearing related data in other tables could lead to orphaned records and database corruption. The script also lacks a consistent approach to data removal; it mixes `DELETE` with `TRUNCATE`, which might lead to unexpected behavior depending on foreign key constraints and triggers. The `UPDATE folios_control` statement assumes a specific document type; a more robust solution would iterate through all document types and reset their folios.


The absence of `detalle_ordenes` in the updated environment necessitates a conditional truncation to avoid errors; a check is needed before attempting the operation. A crucial data integrity issue arises if the order counts in `perfiles_medicos` are not reset along with order data truncation, leading to stale and misleading information in the UI. Resetting `perfiles_medicos.total_ordenes` is mandatory for UAT.


The notification cleanup appears incomplete, as the initial `DELETE` statement doesn't address all order-related notification types or records with a reference folio. A `DELETE` with `AUTO_INCREMENT` reset is crucial to ensure a clean slate for UAT. Consideration should be given to a full `TRUNCATE` option for notifications to guarantee a virgin notification state for testing.

The presence of orphaned PDF files on the filesystem could lead to file collisions if the database `id` is reset but files remain, potentially corrupting or associating incorrect results with orders in subsequent tests. Proper handling of the physical PDF storage during database truncation is therefore essential.


Ensuring file cleanup post-database reset is crucial to prevent resource conflicts. A shell command is needed to remove potentially lingering PDF and temporary files, specifically targeting order results and temporary files, while preserving the `.gitkeep` file.

Order-related logs in the database and filesystem must be purged to provide a clean slate for UAT. SQL `DELETE` statements or `TRUNCATE` operations, alongside file truncation, are necessary for complete log cleanup.


WebSocket connection and rejection logs should be considered for cleanup, depending on the need for a completely fresh UAT environment. Accumulated JTI files in the cache can lead to token pollution during fresh logins; cleaning these files is essential.

Rate limiting could cause unexpected delays in UAT due to development testing; the rate-limiting table must be truncated to avoid this. Stale "remember me" tokens need to be cleared to ensure clean session handling in UAT environments.


`ALTER TABLE notificaciones AUTO_INCREMENT = 1;` is necessary after the `DELETE` to reset the auto-increment. The `folios_control` table reset should include an `INSERT ... ON DUPLICATE KEY UPDATE` to handle missing entries. A comprehensive verification query must include checks on counts for notifications, profile orders, logs, and a file system check for PDFs. This involves enhancing the smoke test to create a tabular summary for post-reset verification.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 8.373731608s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

## User Request

explica en antes y el ahora de: los estudios ahora viven desnormalizados como JSON en ordenes.estudios.

<details>
<summary>Context</summary>

**Active File:** `manual-usuario.html`
**Language:** html
</details>

---

## Agent Response

### Thinking

The request concerns the architectural shift in the LAESH database. Previously, study details were normalized in `detalle_ordenes`, a relational table. The current state, post-migration `m005`, shows study information denormalized as JSON within the `ordenes.estudios` field. This denormalization likely aims to improve query performance or data access patterns, though the specific rationale requires further investigation.




### Actions

**Tool:** `grep_search`
**Query:** `m005`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.087097759s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 2 Oct 2026, 2:35 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `README.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

<details>
<summary>File: `Unknown file` (L94-139)</summary>

**Path:** `Unknown file`

```

> `m006_rol_sitioweb.sql`: aplicada en KVM2 el 2026-09-30 (`deploy.sh bd`) y ya incluida en `04_auth_extensions.sql`; archivo eliminado.

> PEN-LAESH-06 (corregido 2026-09-30): `deploy.sh bd` ya no modifica usuarios existentes — su Paso 4
> (`seed_first_users.php`) solo crea los que falten. Vuelve a ser el camino normal para aplicar migraciones.

> Nota 2026-09-30 (m006 — `m006_notificaciones_titulo_semantica.sql`, **aplicada y foldeada**): agregó columna
> `titulo VARCHAR(100)` a la tabla `notificaciones` y saneó el histórico existente para desacoplar el encabezado
> del cuerpo del mensaje, eliminando repeticiones redundantes de folios y frases vacías. Aplicada en KVM2 vía
> `deploy.sh bd` / MariaDB y foldeada a `03_transactional_schema.sql`; archivo eliminado de aquí tras verificación.

> Nota 2026-09-30 (m005 — `m005_drop_detalle_ordenes.sql`, **aplicada y foldeada**): retiró `detalle_ordenes`,
> tabla de solo escritura que nunca tuvo filas en KVM2 (los estudios viven en `ordenes.estudios`). Aplicada en
> Docker local y en KVM2 el 2026-09-30 — en KVM2 directamente como root (sin `deploy.sh bd`, por PEN-LAESH-06).
> Verificado: tabla inexistente, sin procedimiento auxiliar residual, 29 órdenes intactas, suite de búsqueda 161/161.
> El DDL ya había salido de `03_transactional_schema.sql`; archivo eliminado de aquí.
> En Docker local la tabla tenía 3 765 filas la tabla tenía 3 765 filas, **todas** de órdenes simuladas `[SIM2Y]` (las insertaba `www/tests/seed_dataset_2years.php`, que ya no lo hace). Se respaldaron y borraron antes de aplicar m005. `cat_categorias` se evaluó y **se conserva**: los 1 055 estudios tienen `categoria_id` asignado (R14.2), aunque ninguna pantalla la lea desde m002.

> Nota 2026-09-28: `m004_notif_actualizado_en.sql` (columna `notificaciones.actualizado_en`,
> `TIMESTAMP ... ON UPDATE CURRENT_TIMESTAMP`, BUG-NOTIF-LEIDO-SYNC-01 — permite
> que el poll incremental de `GET /api/notificaciones` detecte una transición
> no-leído→leído hecha desde otra pestaña/dispositivo y reenvíe la fila una vez
> más) se creó, se aplicó en KVM2 vía `deploy.sh bd` (confirmado `✓ ... OK`) y
> se foldeó de inmediato a `03_transactional_schema.sql` — eliminado de aquí
> tras validar con una prueba end-to-end real (130s, marcado desde "otro
> dispositivo" vía API, confirmado visualmente en el cliente).
>
> Hallazgo durante esta migración (no del schema, del código que la consume):
> `rc/index.php`/`md/index.php` reutilizaban el mismo placeholder con nombre
> `:since` dos veces en la misma consulta — con prepared statements nativos
> (sin emulación) esto revienta con `SQLSTATE[HY093]: Invalid parameter
> number`, y como el fetch del cliente traga el error en `.catch()`, el
> endpoint devolvía 500 en silencio sin ningún síntoma visible en consola.
> Se corrigió usando placeholders con nombre distinto (`:since_creado`,
> `:since_upd`) para el mismo valor. Relevante para cualquier query futura
> que necesite repetir un mismo valor en más de una condición del WHERE.
>
> Nota 2026-09-27/28 (previa): `m002_fix_rel_estudio_gabinete_pk.sql` (PRIMARY KEY en
> `rel_estudio_gabinete`, reescritura de `UpsertEstudioCatalogo` /
> `SyncJerarquiaGabinete` / `vw_estudios_catalogo` para usar Gabinete/Subgabinete
> en vez de `cat_categorias`) y `m003_website_igabinetes_curacion.sql`
> (renombrado de `cat_igabinetes`, rebalanceo de `rel_igabinete_vinculos`,
> curaduría fina de `rel_estudio_gabinete` por ficha + 5ª pestaña "Salud
> Biologia Molecular") se crearon, se aplicaron en KVM2 vía `deploy.sh bd`
> (confirmado `✓ ... OK` en ambos) y se foldearon de inmediato — m002 ya vivía
> en `02_core_schema.sql`/`08_stored_procedures.sql`/`09_views.sql` (fuente
```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:35 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (High)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 2 Oct 2026, 2:35 pm

---

## Agent Response

### Thinking

Analyzing the provided history reveals a classic relational database schema, likely for medical orders. The 'ordenes' table seems to store order headers, while 'detalle_ordenes' acts as a bridge for a many-to-many relationship between orders and studies, as indicated by foreign keys linking to order and study tables.


The initial design assumed strict catalog ID input, but real-world usage involves free-text study descriptions. This mismatch resulted in an orphaned detail table, where no data was being inserted. The reliance on catalog IDs creates data integrity issues, as catalog modifications could invalidate historical order information or introduce blocking constraints. Unnecessary joins also cause performance overhead.


The previous relational design's reliance on a separate detail table and catalog IDs led to performance bottlenecks due to complex JOIN operations, particularly with `GROUP_CONCAT` to assemble study lists. A shift to a denormalized JSON array within the `ordenes` table simplifies this. This change eliminates the need for the detail table entirely, directly storing the studies as a JSON array.

This approach offers two key advantages: improved read performance through single-table reads and enhanced data integrity by capturing a fixed "snapshot" of the medical order as entered, independent of future catalog modifications. This is a critical factor for maintaining historical medical records.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.905423222s
- **Model:** Gemini 3.8 Flash (High)
</details>

---

---

*Generated by Chatledger for Antigravity*