# Stabilizing VOSK PWA Architecture

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `c40e6e0a-44e3-4e4c-8254-2b8c3551cf36` |
| **Cascade ID** | `47312b81-1164-4c0a-ab34-a2b98d7c94b9` |
| **Type** | Agent Conversation |
| **Total Steps** | 312 |
| **Started** | 5 July 2026, 8:28 pm |
| **Completed** | 5 July 2026, 9:09 pm |

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Reset
**Created:** 5 July 2026, 8:28 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:36 pm

---

### Code Edit

**Status:** Reset
**Created:** 5 July 2026, 8:37 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Reset
**Created:** 5 July 2026, 8:43 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:44 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:44 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:44 pm

---

### Code Edit

**Status:** Reset
**Created:** 5 July 2026, 8:44 pm

---

### Code Edit

**Status:** Reset
**Created:** 5 July 2026, 8:44 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:48 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:48 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:48 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:48 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:48 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 8:48 pm

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Reset
**Created:** 5 July 2026, 8:48 pm

---

### Code Edit

**Status:** Reset
**Created:** 5 July 2026, 8:49 pm

---

### Code Edit

**Status:** Reset
**Created:** 5 July 2026, 8:49 pm

---

### Code Edit

**Status:** Reset
**Created:** 5 July 2026, 8:49 pm

---

### Code Edit

**Status:** Reset
**Created:** 5 July 2026, 8:49 pm

---

### Execution Error

**Status:** Reset
**Created:** 5 July 2026, 8:49 pm

---

### Terminal Command Execution

**Status:** Reset
**Created:** 5 July 2026, 8:49 pm

---

### Local File Search

**Status:** Reset
**Created:** 5 July 2026, 9:02 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `Dexie`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 July 2026, 9:02 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `layout-pwa.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L199-349)</summary>

**Path:** `Unknown file`

```
            }
        });
    </script>
    
    <!-- Modal de Diagnóstico PWA -->
    <div id="diag-modal" style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.6); backdrop-filter: blur(10px); z-index: 1000; align-items: center; justify-content: center; padding: 1rem; box-sizing: border-box;">
        <div class="glass-card" style="width: 100%; max-width: 480px; max-height: 90vh; display: flex; flex-direction: column; padding: 1.25rem; overflow: hidden; position: relative;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 0.75rem;">
                <h3 style="margin: 0; font-size: 1.15rem; font-family: 'Outfit', sans-serif; display: flex; align-items: center; gap: 0.5rem;">
                    <i data-lucide="activity" style="color: var(--primary);"></i> Diagnóstico de PWA
                </h3>
                <button class="icon-btn" onclick="closeDiagModal()" style="padding: 0.25rem;">
                    <i data-lucide="x"></i>
                </button>
            </div>
            
            <div style="overflow-y: auto; flex: 1; padding-right: 0.25rem; font-size: 0.85rem;">
                <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 0.5rem; margin-bottom: 0.75rem;">
                    <div style="background: rgba(255,255,255,0.03); padding: 0.5rem; border-radius: 8px; border: 1px solid var(--glass-border);">
                        <div class="text-secondary" style="font-size: 0.7rem; margin-bottom: 0.15rem;">Versión de Catálogo</div>
                        <strong id="diag-cat-ver">-</strong>
                    </div>
                    <div style="background: rgba(255,255,255,0.03); padding: 0.5rem; border-radius: 8px; border: 1px solid var(--glass-border);">
                        <div class="text-secondary" style="font-size: 0.7rem; margin-bottom: 0.15rem;">Productos Locales</div>
                        <strong id="diag-cat-count">-</strong>
                    </div>
                    <div style="background: rgba(255,255,255,0.03); padding: 0.5rem; border-radius: 8px; border: 1px solid var(--glass-border);">
                        <div class="text-secondary" style="font-size: 0.7rem; margin-bottom: 0.15rem;">Delta Hash</div>
                        <strong id="diag-cat-hash" style="font-family: monospace; font-size: 0.7rem; word-break: break-all;">-</strong>
                    </div>
                    <div style="background: rgba(255,255,255,0.03); padding: 0.5rem; border-radius: 8px; border: 1px solid var(--glass-border);">
                        <div class="text-secondary" style="font-size: 0.7rem; margin-bottom: 0.15rem;">Cola Offline (Outbox)</div>
                        <strong id="diag-outbox-count">-</strong>
                    </div>
                </div>

                <div style="background: rgba(255,255,255,0.03); padding: 0.5rem; border-radius: 8px; border: 1px solid var(--glass-border); margin-bottom: 0.75rem;">
                    <div class="text-secondary" style="font-size: 0.7rem; margin-bottom: 0.15rem;">Umbrales Levenshtein</div>
                    <div>Corto (≤5 letras): <strong id="diag-umb-corto">-</strong> | Largo (>5 letras): <strong id="diag-umb-largo">-</strong></div>
                </div>

                <!-- Buscador de productos del catálogo local -->
                <div style="margin-bottom: 0.5rem;">
                    <label for="diag-search" class="text-secondary" style="font-size: 0.75rem; display: block; margin-bottom: 0.2rem;">Buscar en Catálogo Offline:</label>
                    <input type="text" id="diag-search" placeholder="Escribe taco, refresco..." oninput="filterDiagCatalog()" style="width: 100%; padding: 0.4rem; background: rgba(0,0,0,0.2); border: 1px solid var(--glass-border); border-radius: 6px; color: var(--text-primary); outline: none; font-size: 0.85rem; box-sizing: border-box;">
                </div>

                <div id="diag-catalog-list" style="background: rgba(0,0,0,0.2); border-radius: 8px; max-height: 150px; overflow-y: auto; border: 1px solid var(--glass-border); padding: 0.4rem; box-sizing: border-box;">
                    <div class="text-secondary" style="text-align: center; padding: 0.75rem;">Cargando catálogo...</div>
                </div>
            </div>

            <div style="display: flex; gap: 0.5rem; margin-top: 0.75rem; border-top: 1px solid var(--glass-border); padding-top: 0.75rem;">
                <button class="btn btn-secondary" onclick="closeDiagModal()" style="flex: 1; font-size: 0.8rem; padding: 0.4rem;">Cerrar</button>
                <button class="btn btn-primary" onclick="forceDiagnosticSync()" style="flex: 1.5; font-size: 0.8rem; padding: 0.4rem;">Forzar Sincronización</button>
            </div>
        </div>
    </div>

    <script>
        let diagProducts = [];

        async function openDiagModal(event) {
            if (event) event.preventDefault();
            
            // Cerrar menú hamburguesa si está abierto
            const menu = document.getElementById('side-menu');
            const overlay = document.getElementById('side-menu-overlay');
            if (menu) menu.classList.remove('active');
            if (overlay) overlay.classList.remove('active');

            const modal = document.getElementById('diag-modal');
            modal.style.display = 'flex';

            // Cargar datos localStorage
            document.getElementById('diag-cat-ver').innerText = localStorage.getItem('catalogo_version_label') || 'Desconocida';
            document.getElementById('diag-cat-hash').innerText = localStorage.getItem('catalogo_delta_hash') || 'Sin Hash';
            document.getElementById('diag-umb-corto').innerText = localStorage.getItem('umbral_levenshtein_corto') || '1';
            document.getElementById('diag-umb-largo').innerText = localStorage.getItem('umbral_levenshtein_largo') || '3';

            // Query Dexie
            if (typeof Dexie !== 'undefined') {
                try {
                    const db = window.ComandasDB || (() => {
                        const d = new Dexie('ComandasDB');
                        d.version(2).stores({
                            catalog: 'id, categoria_id, nombre, precio, palabras_clave',
                            outbox_comandas: 'uuid_local, mesa_id, timestamp, sync_status',
                            notificaciones: 'id, tipo, leido, timestamp',
                            telemetria_logs: '++id, nivel, mensaje, timestamp'
                        });
                        return d;
                    })();

                    
                    const catCount = await db.catalog.count();
                    document.getElementById('diag-cat-count').innerText = `${catCount} productos`;

                    const outboxCount = await db.outbox_comandas.where('sync_status').equals('pending').count();
                    document.getElementById('diag-outbox-count').innerText = `${outboxCount} pendientes`;

                    // Guardar y renderizar lista
                    diagProducts = await db.catalog.toArray();
                    renderDiagCatalog(diagProducts);

                } catch (e) {
                    console.error("[Diag PWA] Error al consultar DB:", e);
                    document.getElementById('diag-catalog-list').innerHTML = '<div style="color:var(--status-danger); text-align:center; padding:0.5rem;">Error al acceder a base de datos offline.</div>';
                }
            } else {
                document.getElementById('diag-catalog-list').innerHTML = '<div style="color:var(--status-danger); text-align:center; padding:0.5rem;">Dexie.js no está cargado.</div>';
            }

            if (window.lucide) {
                window.lucide.createIcons();
            }
        }

        function closeDiagModal() {
            document.getElementById('diag-modal').style.display = 'none';
        }

        function renderDiagCatalog(products) {
            const container = document.getElementById('diag-catalog-list');
            if (products.length === 0) {
                container.innerHTML = '<div class="text-secondary" style="text-align:center; padding:0.5rem;">El catálogo local está vacío.</div>';
                return;
            }

            container.innerHTML = products.map(p => `
                <div style="padding: 0.35rem 0.25rem; border-bottom: 1px solid rgba(255,255,255,0.03); display: flex; flex-direction: column; gap: 0.1rem;">
                    <div style="display: flex; justify-content: space-between; font-weight: 500;">
                        <span>${p.nombre}</span>
                        <span style="color: var(--primary); font-size: 0.75rem;">$${parseFloat(p.precio).toFixed(2)}</span>
                    </div>
                    <div style="font-size: 0.7rem; color: var(--text-secondary); word-break: break-all;">
                        🔑 Keywords: <span style="font-family: monospace; background: rgba(255,255,255,0.05); padding: 1px 3px; border-radius: 3px;">${p.palabras_clave || '(ninguna)'}</span>
                    </div>
                </div>
            `).join('');
        }

        function filterDiagCatalog() {
            const query = document.getElementById('diag-search').value.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
            if (!query) {
                renderDiagCatalog(diagProducts);
                return;
            }
            const filtered = diagProducts.filter(p => {
                const nombre = p.nombre.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
                const keywords = (p.palabras_clave || '').toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `layout-pwa.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L339-367)</summary>

**Path:** `Unknown file`

```
        }

        function filterDiagCatalog() {
            const query = document.getElementById('diag-search').value.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
            if (!query) {
                renderDiagCatalog(diagProducts);
                return;
            }
            const filtered = diagProducts.filter(p => {
                const nombre = p.nombre.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
                const keywords = (p.palabras_clave || '').toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
                return nombre.includes(query) || keywords.includes(query);
            });
            renderDiagCatalog(filtered);
        }

        function forceDiagnosticSync() {
            if (confirm("¿Estás seguro de que deseas forzar la sincronización? Esto borrará el catálogo local y descargará la última versión publicada.")) {
                localStorage.removeItem('catalogo_delta_hash');
                location.reload();
            }
        }
    </script>

    <!-- Indicadores Globales (Red, Outbox, Notificaciones) -->
    <script src="/web-assets/libs/models/global-indicators.js" defer></script>
</body>
</html>

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `layout-pwa.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover">
    <title><?= $this->e($title ?? 'Comandas VOSK') ?></title>
    
    <!-- PWA Manifest & iOS Support -->
    <link rel="manifest" href="/web-assets/pwa/manifest.json">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <link rel="apple-touch-icon" href="/web-assets/img/icon-192x192.png">
    
    <!-- Outfit Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Estilos de Diseño Glassmorphic PWA -->
    <link rel="stylesheet" href="/web-assets/css/main.css">
    
    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
    
    <!-- Cargador Local Offline de HTMX -->
    <script src="/web-assets/libs/htmx.min.js"></script>
    
    <!-- PWA Service Worker Registration -->
    <script src="/web-assets/libs/models/app-main.js" defer></script>
    <!-- PWA Onboarding (GAP-6) -->
    <script src="/web-assets/libs/models/onboarding-pwa.js" defer></script>
</head>
<body>
    <div class="app-container <?= $this->e($containerClass ?? '') ?>">
        <!-- Header con Menú Hamburguesa -->
        <header class="app-header">
            <div style="display: flex; align-items: center; gap: 1rem;">
                <button class="icon-btn" onclick="toggleMenu(event)">
                    <i data-lucide="menu"></i>
                </button>
                <div>
                    <h1 style="font-size: 1.2rem;"><?= $this->e($headerTitle ?? 'Comanda Nueva') ?></h1>
                    <div class="text-secondary" style="font-size: 0.85rem;">
                        👤 <?= Flight::auth()->isLoggedIn() ? Flight::auth()->getUsername() : 'Invitado' ?>
                    </div>
                </div>
            </div>
            
            <!-- Indicadores Globales de Estado -->
            <div class="global-indicators" style="display: flex; gap: 0.8rem; align-items: center; margin-left: auto; margin-right: 1rem;">
                <div id="ind-network" title="Estado de Red" style="color: #10b981; cursor: pointer;">
                    <i data-lucide="wifi"></i>
                </div>
                <div id="ind-outbox" title="Comandas Pendientes" style="position: relative; color: #94a3b8; cursor: pointer;">
                    <i data-lucide="send"></i>
                    <span id="ind-outbox-badge" style="display:none; position:absolute; top:-5px; right:-8px; background:#ef4444; color:white; border-radius:50%; font-size:0.6rem; padding:0.1rem 0.3rem; font-weight:bold;">0</span>
                </div>
                <div id="ind-notif" title="Notificaciones Cocina" style="position: relative; color: #94a3b8; cursor: pointer;">
                    <i data-lucide="bell"></i>
                    <span id="ind-notif-badge" style="display:none; position:absolute; top:-2px; right:-2px; background:#3b82f6; color:white; border-radius:50%; width:8px; height:8px;"></span>
```

</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 11 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 4f75a451-b8cc-4d33-84c9-10163ce71a32: Finalizing VOSK Voice Command Unification
- Created: 2026-07-04T17:14:40Z
- Last modified: 2026-07-06T02:25:10Z

### USER Objective:
Stabilizing VOSK PWA Production

USER Objective:
Finalize the production-readiness and verification of the VOSK-based voice command PWA.

Goals:
1. Conduct a full-cycle validation of the system using both the automated CLI backend test suite and the manual end-to-end PWA diagnostic protocols.
2. Execute a total "clean-slate" purge of the PWA environment to ensure fresh installation of the 55-product catalog and updated assets.
3. Validate all seven resilience pillars, including the Cache-First Service Worker strategy, AudioWorklet VAD/RMS thresholds, and memory management via Kill-and-Respawn logic.
4. Verify system integrity, responsiveness, and performance across simulated connectivity and hardware-constrained scenarios to confirm operational stability.
5. Consolidate technical documentation and maintenance runbooks, ensuring all architectural improvements (VAD, Cache-First, WASM Watchdog) are formally recorded as the project source of truth.

## Conversation 1d94ff2e-c998-4f28-b6e5-bd37b46816f9: Manual Execution of VOSK Tests
- Created: 2026-07-05T19:46:05Z
- Last modified: 2026-07-05T21:19:05Z

### USER Objective:
Manual Execution of VOSK Tests

Objective: Execute the manual testing phase for the PWA VOSK voice command system to ensure production stability.

Goals:
1. Conduct hands-on testing following the procedures defined in Pruebas_Casos_Validacion_Comandas_VOSK.html.
2. Validate the hybrid "Push-to-Talk" lifecycle for waitstaff and "hands-free" WakeLock for KDS units.
3. Verify offline enqueuing protocols and synchronization reliability during simulated connectivity drops.
4. Confirm UI/UX consistency across smartphone devices during command execution.
5. Identify and document any anomalies found during manual interaction for immediate remediation.

## Conversation 840498da-688d-40ff-adae-2f74e4bae508: 
- Created: 2026-07-03T01:58:51Z
- Last modified: 2026-07-04T17:07:00Z

### USER Objective:
Consolidating PWA Quality Assurance

Main Objective: Finalize the PWA command system stabilization by centralizing all diagnostic and validation protocols into the master QA documentation.

Goals:
1. Complete the migration of scattered test cases and operational validation scenarios from project manuals into the unified Pruebas_Casos_Validacion_Comandas_VOSK.html document.
2. Ensure the QA suite covers the new Browser API diagnostics, including COOP/COEP, WakeLock, EVICT persistence, and PWA onboarding requirements.
3. Eliminate documentation fragmentation by consolidating functional, integration, and operational test procedures into a single source of truth for production maintenance.
4. Maintain full parity between backend CLI automated tests and frontend browser-based diagnostic suites to ensure environment-agnostic stability.

## Conversation 6609794f-111e-455e-9814-990ce143d4d0: WhatsApp vCard Image Compatibility
- Created: 2026-07-03T02:03:19Z
- Last modified: 2026-07-03T02:03:34Z

### USER Objective:
WhatsApp vCard Image Compatibility

Objective: Determine the feasibility of embedding profile photos within .vcf files shared via WhatsApp.

Goals:
1. Verify technical support for `PHOTO` or `LOGO` fields in vCard files within the WhatsApp ecosystem.
2. Identify why WhatsApp frequently rejects vCard files containing embedded images (parsing errors, size limitations, or encoding issues).
3. Evaluate reliable alternatives, such as using digital business card links with metadata previews, to achieve the desired professional presentation without triggering file format errors.

## Conversation f3e8c4e1-9755-46f6-a6bd-8699aad60bcd: Implementing VOSK Voice Command Dataset Manager
- Created: 2026-06-28T21:53:49Z
- Last modified: 2026-07-03T01:55:35Z

## Conversation 7e485cbb-a84d-4084-8993-80411c914ff4: Updating Presentation Card Content
- Created: 2026-07-02T22:23:33Z
- Last modified: 2026-07-03T00:14:53Z

### USER Objective:
Optimizing Professional Business Card

USER Objective:
Refine the layout and print-ready aesthetics of a professional business card in standard 3.5in x 2.0in dimensions.

Goals:
1. Implement a precise CSS-driven print layout that ensures full visibility and professional trimming for physical printing.
2. Optimize typography and spacing, using `white-space: nowrap` and `grid-column: span 2` to prevent layout clipping and text wrapping.
3. Enhance visual hierarchy by replacing emojis with high-resolution, minimal SVG iconography.
4. Correct text nomenclature and formatting, specifically ensuring accents are preserved via UTF-8 encoding and role titles are presented accurately.
5. Provide a streamlined workflow for generating print-ready PDF assets from the web-based design.

## Conversation 0bcb657b-49b3-4e9c-994a-8e5bd805534b: Estabilización Motor Financiero AguaV2
- Created: 2026-06-30T19:46:04Z
- Last modified: 2026-07-02T03:06:33Z

### USER Objective:
Stabilizing Legacy Financial Surcharges

Objective: Eliminate systemic "ghost debt" and orphan surcharge anomalies within the AguaV2 financial engine.
Goals:
1. Conduct forensic audits to reconcile base charges against pending surcharges.
2. Implement automated "Auto-Heal" logic to synchronize surcharge cancellation with paid/depurated base charges.
3. Deploy global SQL sanitization patches across the Host C database to clear historic orphan records.
4. Enhance the JIT financial motor with guard clauses to prevent future surcharge drift and ensure record parity.

## Conversation de8c1b41-674e-4011-afd2-645eeef36fe0: Financial Parity Debt Reconciliation
- Created: 2026-06-29T20:07:43Z
- Last modified: 2026-06-30T15:00:47Z

## Conversation c7d75625-d478-4e18-9089-8088154da029: Excluding Workspace Directories From VS Code
- Created: 2026-06-29T05:29:13Z
- Last modified: 2026-06-29T05:30:26Z

### USER Objective:
Excluding Workspace Directories From VS Code

USER Objective:
Clean up the VS Code workspace explorer by excluding redundant subdirectory views.

Goals:
1. Configure VS Code settings to hide the `www` directory (located at `/home/carlos/GitHub/caelitandem_home/restaurantb/www`) within the `caelitandem_home` project folder.
2. Prevent duplicate file indexing and visual clutter in the file explorer since the `www` directory is already independently managed as a separate repository/workspace entry.
3. Ensure that the exclusion rule is persistent and correctly scoped to the current workspace configuration.

## Conversation bab8619c-4161-48e9-9598-8c39418a3919: Configuring HTTPS For Android Web-Browser
- Created: 2026-06-28T19:43:10Z
- Last modified: 2026-06-28T21:10:05Z

### USER Objective:
Automating HTTPS Local Deployment

Objective: Establish a persistent, production-grade secure local environment for the restaurantb command system.

Goals:
1. Automate the generation and renewal of HTTPS certificates for the local host IP (192.168.1.71) using an intelligent helper script (`setup-ssl.sh`).
2. Centralize configuration through a `.env` file to ensure container parity and eliminate environment variable warnings.
3. Update technical documentation to provide a comprehensive, step-by-step guide for local HTTPS management and troubleshooting across various client operating systems (Android, Windows, macOS, Linux).
4. Ensure full infrastructure reliability by finalizing the phpMyAdmin control user configuration and documenting the new automated SSL workflow as the primary deployment standard.

## Conversation 9df8240f-6a37-4147-b8a3-c44b0ab61092: Restoring Nginx HTTPS Configuration
- Created: 2026-05-24T04:52:15Z
- Last modified: 2026-06-28T18:30:05Z

### USER Objective:
Fixing Nginx Permissions and Routing

USER Objective:
Ensure global accessibility for new web content by resolving Nginx 403 Forbidden errors.

Goals:
1. Diagnose and correct Linux file system permissions (`chmod` 644) for the newly uploaded `landingpagev2` content to allow Nginx (`www-data`) read access.
2. Verify that Nginx correctly serves the static `index.html` file within the sub-path `https://www.caelitandem.lat/landingpagev2/index.html`.
3. Confirm that the configuration change is persistent and documented for future deployments.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 5 July 2026, 9:02 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `layout-pwa.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L60-119)</summary>

**Path:** `Unknown file`

```
                </div>
                <?php if (Flight::auth()->isLoggedIn() && Flight::rbac()->hasPermission('cobrar_mesas')): ?>
                <div id="ind-meseros-offline" title="Meseros Desconectados" style="position: relative; color: #94a3b8; cursor: pointer;"
                     hx-get="/restaurant/api/caja/meseros_offline_detalle" hx-target="body" hx-swap="beforeend">
                    <i data-lucide="users"></i>
                    <!-- El badge se actualiza cada 15 segundos -->
                    <div hx-get="/restaurant/api/caja/indicador_offline" hx-trigger="load, every 15s" hx-swap="outerHTML">
                        <span id="ind-offline-badge" style="display:none;">0</span>
                    </div>
                </div>
                <?php endif; ?>
            </div>

            <?php if (isset($showVoskStatus) && $showVoskStatus): ?>
            <div id="vosk-status-badge" style="display: flex; align-items: center; justify-content: center; width: 36px; height: 36px; border-radius: 50%; background: rgba(255, 255, 255, 0.05); border: 1px solid var(--glass-border); cursor: pointer;" title="Estado de VOSK">
                <span id="pwa-vosk-status" style="display: flex; align-items: center; justify-content: center; color: var(--status-warning);">
                    <i data-lucide="loader-2" style="width: 18px; height: 18px; animation: spin 1s linear infinite;"></i>
                </span>
            </div>
            <?php endif; ?>
        </header>

        <!-- Side Menu -->
        <div class="side-menu-overlay" id="side-menu-overlay" onclick="toggleMenu(event)"></div>
        <aside class="side-menu" id="side-menu">
            <div class="menu-header">
                <h2 style="font-size: 1.25rem;">Caeli Tandem</h2>
                <button class="icon-btn" onclick="toggleMenu(event)">
                    <i data-lucide="x"></i>
                </button>
            </div>
            <nav class="menu-nav">
                <?php if (Flight::rbac()->hasPermission('tomar_ordenes')): ?>
                <a href="/restaurant/mesero" class="menu-item">
                    <i data-lucide="mic"></i> Nueva Comanda
                </a>
                <?php endif; ?>
                <?php if (Flight::rbac()->hasPermission('ver_kds')): ?>
                <a href="/restaurant/cocina" class="menu-item">
                    <i data-lucide="chef-hat"></i> Cocina (KDS)
                </a>
                <?php endif; ?>
                <?php if (Flight::rbac()->hasPermission('cobrar_mesas')): ?>
                <a href="/restaurant/caja" class="menu-item">
                    <i data-lucide="wallet"></i> Caja (Corte)
                </a>
                <?php endif; ?>
                <a href="/restaurant/sistema/reloj" class="menu-item">
                    <i data-lucide="clock"></i> Reloj Checador
                </a>
                <?php if (Flight::rbac()->hasPermission('gestionar_menu')): ?>
                <a href="/restaurant/admin/catalogo" class="menu-item">
                    <i data-lucide="database"></i> Configuración NLP/VOSK
                </a>
                <?php endif; ?>
                <a href="/restaurant/configuracion" class="menu-item">
                    <i data-lucide="settings"></i> ⚙️ Parámetros
                </a>
                <a href="/restaurant/logs" class="menu-item">
                    <i data-lucide="scroll"></i> 📋 Bitácora
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `layout-pwa.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L120-198)</summary>

**Path:** `Unknown file`

```
                </a>
                <hr style="border: 0; border-top: 1px solid var(--glass-border); margin: 0.5rem 0;">
                <a href="#" class="menu-item" onclick="toggleTheme(event)">
                    <i id="theme-toggle-icon" data-lucide="moon"></i> <span id="theme-toggle-text">Cambiar a Claro</span>
                </a>
                <a href="#" class="menu-item" onclick="openDiagModal(event)">
                    <i data-lucide="activity"></i> Diagnóstico PWA
                </a>
                <hr style="border: 0; border-top: 1px solid var(--glass-border); margin: 0.5rem 0;">
                <a href="/restaurant/logout" class="menu-item danger" style="margin-top: auto;">
                    <i data-lucide="log-out"></i> Cerrar Sesión
                </a>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="app-content">
            <?= $this->section('content') ?>
        </main>
    </div>

    <script>
        // Hamburguer Menu logic
        function toggleMenu(event) {
            if (event) event.preventDefault();
            const menu = document.getElementById('side-menu');
            const overlay = document.getElementById('side-menu-overlay');
            menu.classList.toggle('active');
            overlay.classList.toggle('active');
        }

        // Theme Toggle Logic
        function toggleTheme(event) {
            if (event) event.preventDefault();
            const currentTheme = document.documentElement.getAttribute('data-theme');
            const newTheme = currentTheme === 'light' ? 'dark' : 'light';
            
            if (newTheme === 'light') {
                document.documentElement.setAttribute('data-theme', 'light');
                localStorage.setItem('theme', 'light');
            } else {
                document.documentElement.removeAttribute('data-theme');
                localStorage.setItem('theme', 'dark');
            }
            
            updateThemeIcon(newTheme);
        }

        function updateThemeIcon(theme) {
            const themeIconEl = document.getElementById('theme-toggle-icon');
            const themeTextEl = document.getElementById('theme-toggle-text');
            if (themeIconEl && themeTextEl) {
                if (theme === 'light') {
                    themeIconEl.setAttribute('data-lucide', 'sun');
                    themeTextEl.innerText = 'Cambiar a Oscuro';
                } else {
                    themeIconEl.setAttribute('data-lucide', 'moon');
                    themeTextEl.innerText = 'Cambiar a Claro';
                }
                if (window.lucide) {
                    window.lucide.createIcons();
                }
            }
        }

        // Initialize theme and Lucide Icons
        document.addEventListener('DOMContentLoaded', function() {
            // Theme initialization
            const savedTheme = localStorage.getItem('theme') || 'dark';
            if (savedTheme === 'light') {
                document.documentElement.setAttribute('data-theme', 'light');
                updateThemeIcon('light');
            } else {
                document.documentElement.removeAttribute('data-theme');
                updateThemeIcon('dark');
            }

            if (window.lucide) {
                window.lucide.createIcons();
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `dexie`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 July 2026, 9:02 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `dexie`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 July 2026, 9:02 pm

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant/sistema/views`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>Directory: `views` (2 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant/sistema/views`

| Name | Type | Size |
|------|------|------|
| `pruebas_nlp.php` | File | 11104 bytes |
| `reloj.php` | File | 1876 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant/`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>Directory: `restaurant` (12 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant`

| Name | Type | Size |
|------|------|------|
| `.htaccess` | File | 90 bytes |
| `admin` | Directory | - |
| `caja` | Directory | - |
| `cocina` | Directory | - |
| `commons` | Directory | - |
| `index.php` | File | 54952 bytes |
| `login` | Directory | - |
| `logs` | Directory | - |
| `mesero` | Directory | - |
| `reportes` | Directory | - |
| `run_migration.php` | File | 214 bytes |
| `sistema` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant/mesero/`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>Directory: `mesero` (3 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant/mesero`

| Name | Type | Size |
|------|------|------|
| `bd-offline` | Directory | - |
| `lo que ira aqui.txt` | File | 4 bytes |
| `views` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant/mesero/views/`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>Directory: `views` (1 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/www/restaurant/mesero/views`

| Name | Type | Size |
|------|------|------|
| `index.php` | File | 3718 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `index.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php $this->layout('commons/views/layout-pwa', ['title' => 'Mesero PWA — Comandas VOSK', 'headerTitle' => 'Comanda Nueva', 'showVoskStatus' => true]) ?>

<!-- Instruction -->
<div class="glass-panel fade-in" style="padding: 1rem; text-align: center;">
    <p class="text-secondary" style="font-size: 0.9rem; line-height: 1.4;">
        Haz clic una vez sobre el micrófono para dictar la orden. <br>
        Ejemplo: <i>"Mesa cinco, dos tacos de pastor con todo y un refresco"</i>
    </p>
</div>

<!-- Transcription Area -->
<div class="fade-in" style="flex: 1; display: flex; flex-direction: column; justify-content: center; margin-top: 1rem;">
    <h3 style="margin-bottom: 0.5rem; font-size: 0.9rem;" class="text-secondary">Transcripción (Toca para editar):</h3>
    <textarea
        id="live-transcription"
        class="transcription-box"
        placeholder="Haz clic en el micrófono para comenzar a hablar..."
        style="width: 100%; min-height: 120px; outline: none; border: 1px dashed var(--glass-border); background: rgba(0,0,0,0.2); border-radius: 12px; resize: none; font-family: inherit; font-size: 1.1rem; color: var(--text-primary); padding: 1rem;"
    ></textarea>
    
    <!-- Editor Toolbar -->
    <div class="editor-toolbar">
        <button class="editor-btn" title="Deshacer" onclick="document.execCommand('undo')">
            <i data-lucide="undo-2" style="width: 18px; height: 18px;"></i>
        </button>
        <button class="editor-btn" title="Rehacer" onclick="document.execCommand('redo')">
            <i data-lucide="redo-2" style="width: 18px; height: 18px;"></i>
        </button>
        <button class="editor-btn" title="Limpiar" onclick="document.getElementById('live-transcription').value=''">
            <i data-lucide="trash-2" style="width: 18px; height: 18px;"></i>
        </button>
    </div>
</div>

<!-- Manual processing button -->
<button
    id="btn-procesar-comando"
    class="btn btn-primary fade-in"
    style="display: none; margin-top: 1rem; width: 100%; box-shadow: 0 4px 14px 0 rgba(59, 130, 246, 0.39);"
    title="Procesar el texto actual como comando"
>
    ⚡ Procesar Comando
</button>

<!-- Action Buttons Wrapper -->
<div class="action-buttons-wrapper fade-in">
    <!-- Alt / Pencil Input -->
    <button class="alt-btn" title="Escritura Manual" onclick="document.getElementById('live-transcription').focus()">
        <i data-lucide="pencil" style="width: 22px; height: 22px;"></i>
    </button>

    <!-- Main Mic Button styled like mockup, but keeping id 'btn-comenzar-dictado' -->
    <button id="btn-comenzar-dictado" class="mic-btn" title="Iniciar Dictado" style="border: none;">
        <i data-lucide="mic" style="width: 32px; height: 32px;"></i>
    </button>
    
    <!-- People selector -->
    <div style="display: flex; align-items: center; gap: 0.5rem; background: rgba(255,255,255,0.05); border: 1px solid var(--glass-border); border-radius: 10px; padding: 0.5rem 1rem;">
        <label for="input-num-personas" style="font-size: 0.85rem; color: var(--text-secondary); white-space: nowrap;">👥 Personas:</label>
        <input
            id="input-num-personas"
            type="number"
            min="1"
            max="20"
            value="1"
            style="width: 2.5rem; background: transparent; border: none; color: var(--text-primary); font-size: 1rem; font-weight: 700; text-align: center; outline: none;"
        >
    </div>
</div>

<!-- Contenedor para mostrar la comanda previa interpretada para su confirmación -->
<div id="comanda-preview-container" class="fade-in"></div>

<!-- Load PWA voice module as ES module -->
<script type="module" src="/web-assets/libs/models/app-voice.js"></script>

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `app-voice.js`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
import { db, encolarComanda, ejecutarGarbageCollection, forzarSincronizacionManual } from '../../pwa/db.js';

/**
 * ════════════════════════════════════════════════════════════
 * app-voice.js: Main Voice Processing & NLP Client Layer
 * Handles audio context, worklets, vosk-worker connection,
 * catalog syncing, and offline Levenshtein NLP parsing.
 * ════════════════════════════════════════════════════════════
 */

// ─── Telemetría Remota (patrón de vozweb.php) ───────────────────────────────
/**
 * Envía un log de diagnóstico al servidor para análisis remoto en campo.
 * Mirror del patrón logErrorAlServidor() del MVP vozweb.php.
 * @param {string} tipo   Categoría del log (JS_INFO, SPEECH_INFO, SPEECH_ERROR, etc.)
 * @param {string} msg    Descripción del evento.
 * @param {object} extra  Datos adicionales opcionales.
 */
function logRemoto(tipo, msg, extra = {}) {
    console.log(`[VoskPWA][${tipo}] ${msg}`, extra);
    fetch('/restaurant/api/log-client-error', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
            tipo,
            mensaje: msg,
            detalles: extra,
            url: window.location.href,
            ts: new Date().toISOString()
        })
    }).catch(() => { /* silencioso si el servidor no responde */ });
}

// Captura errores globales no manejados en el contexto del módulo ES
window.addEventListener('error', (e) => {
    logRemoto('JS_RUNTIME_ERROR', e.message, { archivo: e.filename, linea: e.lineno, stack: e.error?.stack });
});
window.addEventListener('unhandledrejection', (e) => {
    logRemoto('JS_PROMISE_REJECTION', e.reason?.message ?? 'Promesa rechazada sin razón', { stack: e.reason?.stack });
});
// ─────────────────────────────────────────────────────────────────────────────

let audioContext = null;
let micStream = null;
let workletNode = null;
let voskWorker = null;
let isWorkerReady = false;
let workerReadyPromise = null;
let resolveWorkerReady = null;

let isListening = false;
let catalogCached = [];
let synonymsCached = {};
let umbralLargo = 3;
let umbralCorto = 1;

// Load Dynamic Params
let commandsProcessedCount = 0;
const defaultParams = { BUFFER_SIZE: 4096, MAX_COMMANDS_BEFORE_RESTART: 50, VAD_THRESHOLD: 0.01, LEVENSHTEIN_TOLERANCE: 3 };
const voskParams = JSON.parse(localStorage.getItem('vosk_params')) || defaultParams;
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `db.js`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
import Dexie from '../libs/dexie.esm.js';

/**
 * ════════════════════════════════════════════════════════════
 * ComandasDB: Offline Persistence Layer
 * Basado en Dexie.js (Wrapper IndexedDB)
 * ════════════════════════════════════════════════════════════
 */

export const db = new Dexie('ComandasDB');

// Definición del esquema (Schema Definition) - Versión 2 con telemetría
db.version(2).stores({
  // Catálogo en caché (sincronizado al iniciar sesión) para Levenshtein
  catalog: 'id, categoria_id, nombre, precio, palabras_clave',
  
  // Cola de salida para comandas no enviadas (Offline IT1/IT2)
  outbox_comandas: 'uuid_local, mesa_id, timestamp, sync_status',
  
  // Buzón de notificaciones push y alertas (previene TTS desfasado)
  notificaciones: 'id, tipo, leido, timestamp',

  // Logs locales de telemetría y depuración
  telemetria_logs: '++id, nivel, mensaje, timestamp'
});

/**
 * Registra una comanda en la cola offline.
 * @param {number|null} mesa_id       Número de mesa.
 * @param {Array} productos           Productos interpretados por NLP.
 * @param {string} transcripcion      Texto original del dictado.
 * @param {number} numero_personas    Comensales de la mesa (default 1).
 * @param {string} metodo_captura     'voz' | 'teclado'.
 */
export async function encolarComanda(mesa_id, productos, transcripcion, numero_personas = 1, metodo_captura = 'voz') {
    const comanda = {
        uuid_local: crypto.randomUUID(),
        mesa_id: mesa_id,
        productos: productos, // payload JSON
        transcripcion: transcripcion,
        numero_personas: Math.max(1, parseInt(numero_personas) || 1),
        metodo_captura: metodo_captura === 'teclado' ? 'teclado' : 'voz',
        timestamp: Date.now(),
        sync_status: 'pending'
    };
    
    await db.outbox_comandas.add(comanda);
    await registrarLogLocal('INFO', `Comanda encolada offline para mesa ${mesa_id || 'N/A'} [${comanda.metodo_captura}]`);
    
    // Solicitar Background Sync al Service Worker (si está soportado)
    if ('serviceWorker' in navigator && 'SyncManager' in window) {
        const swRegistration = await navigator.serviceWorker.ready;
        try {
            await swRegistration.sync.register('sync-comandas');
            console.log("Background sync registrado para comandas.");
        } catch (e) {
            console.warn("Background sync falló, se intentará on load: ", e);
        }
    }
    
    return comanda.uuid_local;
}

/**
 * Registra un log local en IndexedDB.
 */
export async function registrarLogLocal(nivel, mensaje) {
    try {
        await db.telemetria_logs.add({
            nivel: nivel,
            mensaje: mensaje,
            timestamp: Date.now()
        });
    } catch (e) {
        console.warn("[DB PWA] No se pudo guardar log local:", e);
    }
}

/**
 * Recupera todas las comandas pendientes de envío
 */
export async function obtenerComandasPendientes() {
    return await db.outbox_comandas.where('sync_status').equals('pending').toArray();
}

/**
 * Marca una comanda como enviada exitosamente para posterior limpieza
 */
export async function confirmarComandaEnviada(uuid_local) {
    await db.outbox_comandas.update(uuid_local, {sync_status: 'synced'});
}

/**
 * Limpia las comandas ya sincronizadas
 */
export async function purgarComandasSincronizadas() {
    await db.outbox_comandas.where('sync_status').equals('synced').delete();
}

/**
 * Intento manual de enviar comandas pendientes al backend (Fallback para iOS/Safari o Post-Login)
 */
export async function forzarSincronizacionManual() {
    const pendientes = await obtenerComandasPendientes();
    if (pendientes.length === 0) return 0;
    
    console.log(`[DB PWA] Forzando sincronización manual de ${pendientes.length} comandas pendientes...`);
    let syncedCount = 0;
    for (const comanda of pendientes) {
        try {
            const payload = {
                mesa_id: comanda.mesa_id,
                productos: comanda.productos,
                transcripcion: comanda.transcripcion,
                numero_personas: comanda.numero_personas ?? 1,
                metodo_captura: comanda.metodo_captura ?? 'voz'
            };
            const response = await fetch('/restaurant/api/comanda.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(payload)
            });
            if (response.ok) {
                await confirmarComandaEnviada(comanda.uuid_local);
                syncedCount++;
            } else if (response.status === 401) {
                console.warn('[DB PWA] Fallo de sesión al sincronizar (401). Se aborta sincronización.');
                break; // Stop if not authenticated
            }
        } catch (err) {
            console.warn('[DB PWA] Sincronización manual falló (red posiblemente aún caída).', err);
        }
    }
    await purgarComandasSincronizadas();
    return syncedCount;
}

/**
 * Ejecuta el Garbage Collection automático
 * - Hard Delete de comandas sincronizadas
 * - Borrado de logs con antigüedad > 3 días (TTL)
 */
export async function ejecutarGarbageCollection() {
    try {
        console.log("[DB GC] Iniciando Recolección de Basura en IndexedDB...");
        
        // 1. Hard Delete inmediato de comandas con éxito
        const comandasBorradas = await db.outbox_comandas.where('sync_status').equals('synced').delete();
        if (comandasBorradas > 0) {
            console.log(`[DB GC] Se purgaron físicamente ${comandasBorradas} comandas sincronizadas.`);
        }

        // 2. TTL de 3 días para logs locales
        const tresDiasAtras = Date.now() - (3 * 24 * 60 * 60 * 1000);
        const logsBorrados = await db.telemetria_logs.where('timestamp').below(tresDiasAtras).delete();
        if (logsBorrados > 0) {
            console.log(`[DB GC] Se purgaron ${logsBorrados} logs antiguos (TTL de 3 días expirado).`);
        }
        
    } catch (e) {
        console.error("[DB GC] Error ejecutando Garbage Collection:", e);
    }
}

// Registrar la instancia de base de datos en window para acceso global
window.ComandasDB = db;


```

</details>

---

## Agent Response

### Thinking

**Analyzing Module Imports**

I've made a key observation: `db.js` elegantly imports Dexie using an ES module import from `../libs/dexie.esm.js`. This is quite clever! As a result, when `app-voice.js` imports `db`, Dexie is already loaded and initialized within the global `window.ComandasDB` instance.


**Identifying Global Namespace Issue**

I've pinpointed a crucial global namespace conflict. The root cause lies in how Dexie is imported in `db.js` using ES modules (`import Dexie from '../libs/dexie.esm.js';`). This prevents `Dexie` from becoming a global variable. Consequently, in `layout-pwa.php` and `global-indicators.js`, `typeof Dexie` is indeed `undefined`, triggering the "Dexie.js not loaded" message. However, `db.js` *does* expose `window.ComandasDB` globally. The fix is to validate `window.ComandasDB` directly.


**Globalizing Dexie Implementation**

I've got a solid plan now. To make `Dexie` universally accessible, I'll assign `window.Dexie = Dexie;` in `db.js` immediately after importing it. This will immediately make it globally available. Additionally, I realized that if `db.js` is imported asynchronously, as part of an ES module, it might not be immediately available during initial page load, causing the Dexie not loaded error. A comprehensive solution is to load `dexie.min.js` directly in the `<head>` of `layout-pwa.php` with a standard `<script>` tag. This eliminates any race conditions.




### Actions

**Tool:** `view_file`
**File:** `app-voice.js`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.278897894s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L119-169)</summary>

**Path:** `Unknown file`

```
}

/**
 * Checks server for updated catalog version, updates Dexie if hash differs.
 */
async function sincronizarCatalogoLocal() {
    try {
        console.log("[Vosk PWA] Verificando versión del catálogo...");
        const res = await fetch('/restaurant/api/catalogo/actual.php');
        if (!res.ok) throw new Error("Error HTTP " + res.status);
        
        const data = await res.json();
        const localHash = localStorage.getItem('catalogo_delta_hash');

        if (localHash !== data.delta_hash || (await db.catalog.count()) !== data.productos.length) {
            console.log("[Vosk PWA] Catálogo desactualizado o vacío. Sincronizando...");
            
            await db.transaction('rw', db.catalog, async () => {
                await db.catalog.clear();
                await db.catalog.bulkAdd(data.productos);
            });

            localStorage.setItem('catalogo_delta_hash', data.delta_hash);
            localStorage.setItem('catalogo_version_label', data.version_label);
            localStorage.setItem('umbral_levenshtein_largo', data.umbral_levenshtein_largo);
            localStorage.setItem('umbral_levenshtein_corto', data.umbral_levenshtein_corto);
            localStorage.setItem('sinonimos_cantidades', JSON.stringify(data.sinonimos_cantidades));
            
            console.log("[Vosk PWA] Catálogo local actualizado exitosamente.");
        } else {
            console.log("[Vosk PWA] Catálogo local en paridad (Delta Hash: " + localHash + ")");
        }

        // Load into memory
        catalogCached = await db.catalog.toArray();
        synonymsCached = JSON.parse(localStorage.getItem('sinonimos_cantidades') || '{}');
        umbralLargo = voskParams.LEVENSHTEIN_TOLERANCE;
        umbralCorto = Math.max(1, voskParams.LEVENSHTEIN_TOLERANCE - 2);

    } catch (err) {
        console.warn("[Vosk PWA] Fallo al conectar con el servidor. Usando catálogo local offline.", err);
        catalogCached = await db.catalog.toArray();
        synonymsCached = JSON.parse(localStorage.getItem('sinonimos_cantidades') || '{}');
        umbralLargo = voskParams.LEVENSHTEIN_TOLERANCE;
        umbralCorto = Math.max(1, voskParams.LEVENSHTEIN_TOLERANCE - 2);
    }
}

/**
 * Compiles a list of allowed words for Vosk closed grammar model.
 */
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `cocina-voice.js`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L49-99)</summary>

**Path:** `Unknown file`

```

// Load Dynamic Params
let commandsProcessedCount = 0;
const defaultParams = { BUFFER_SIZE: 4096, MAX_COMMANDS_BEFORE_RESTART: 50, VAD_THRESHOLD: 0.01, LEVENSHTEIN_TOLERANCE: 3 };
const voskParams = JSON.parse(localStorage.getItem('vosk_params')) || defaultParams;


// Gramática estrictamente limitada para la cocina (reducción dramática de falsos positivos)
const vocabularioCocinero = [
    "[unk]", "preparar", "siguiente", "listo", "mesa", "cancelar", 
    "si", "no", "uno", "dos", "tres", "cuatro", "cinco", 
    "seis", "siete", "ocho", "nueve", "diez", "tomo"
];

// Initialize App
function initCocinaVoice() {
    const btnDiadema = document.getElementById('btn-conectar-diadema');
    if (btnDiadema) {
        btnDiadema.addEventListener('click', toggleEscuchaVoz);
    }
    actualizarUIEstado('desactivado');

    // Pre-cargar el Web Worker de VOSK de forma inmediata (UX Poka-Yoke)
    preCargarVoskWorker().catch(e => console.error("[Vosk KDS] Error en pre-carga de VOSK:", e));
}

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initCocinaVoice);
} else {
    initCocinaVoice();
}

/**
 * Toggles the microphone listener on/off.
 */
async function toggleEscuchaVoz() {
    if (isListening) {
        detenerEscuchaVoz();
    } else {
        await iniciarEscuchaVoz();
    }
}

/**
 * Initializes AudioContext, loads worker, compiles grammar, starts listener.
 */
/**
 * Pre-carga el Web Worker de Vosk de forma asíncrona tras el login (UX Poka-Yoke).
 */
async function preCargarVoskWorker() {
    if (voskWorker) {
```

</details>

---

## Agent Response

### Thinking

**Understanding Kitchen Grammar**

I've realized that kitchen grammar is static and self-contained, not reliant on a local database catalog. It all makes perfect sense now! That means we can skip the validation step in the kitchen context.


**Analyzing Voice Input Flow**

I'm now tracing the voice input flow, specifically the "Nueva Comanda" button. I see the page reloads on click, triggering `initAppVoice()` again, which could explain the orange microphone indicator. The menu's `layout-pwa.php` file is key. We need to prevent the unnecessary re-initialization of VOSK.


**Investigating Worker Lifecycle**

I'm now digging into the VOSK worker lifecycle triggered by `preCargarVoskWorker()`. It goes orange ("cargando") momentarily as it re-initializes, which is expected due to page reload. However, this re-initialization is problematic! If navigating via HTMX, can we prevent the worker's destruction and avoid the re-loading state?


**Examining Menu Behavior**

I'm now focusing on `mesero/views/index.php`. The script `app-voice.js` re-executes on full page reloads, which is the problem. If we're navigating via HTMX or a SPA, this re-execution causes issues, but here we see the menu links use standard `<a>` tags and full page reloads. Each click refreshes the page, and the `app-voice.js` is again triggered on reload.


**Optimizing Worker Instantiation**

I'm now focusing on worker instantiation, noting that reloading the page causes a resource-intensive re-instantiation of the Vosk worker, consuming significant memory and CPU, especially on mobiles. SharedWorkers are a no-go due to cross-platform compatibility. However, the browser's caching capabilities using IndexedDB or Cache Storage, managed by the Service Worker, offer a potential optimization. While the initial instantiation still takes a moment (1-10 seconds), the caching provided by the browser should speed things up after that. This should improve the user experience. The orange microphone indicator during processing is also now better understood.


**Implementing Menu Interception**

I'm now implementing menu interception to prevent unnecessary reloads when clicking "Nueva Comanda." If the user is on the same route, a click will be intercepted and the form cleared instead, avoiding Vosk re-initialization and that pesky orange microphone. This elegant solution will significantly improve the user experience!


**Refining Worker Lifecycle**

I'm now refining the worker lifecycle. I've successfully implemented menu interception, stopping those annoying reloads for "Nueva Comanda." The form clears directly, bypassing the re-initialization and orange microphone issue. Now, I'm analyzing the post-login VOSK compilation and caching.


**Terminating Worker on Logout**

I'm now focusing on worker termination on logout. The core problem is ensuring the VOSK worker isn't running in memory after logout, rather than clearing the IndexedDB cache, which would kill offline functionality and cause a 10-second download on the next login. So, the goal is to terminate the worker instance on logout. This involves calling `terminate()` to free memory.


**Confirming Worker Termination**

I'm now confirming worker termination. A full browser reload to `/restaurant/logout` automatically destroys the main JavaScript thread and its Web Workers, a native behavior for memory management. So, no Web Worker survives the logout. However, I can still ensure IndexedDB and localStorage are clean. I'm removing user session variables from localStorage. I'm also confirming that the login screen at `/restaurant/login` does *not* load `layout-pwa.php` or trigger VOSK.


**Fixing Dexie Race Condition**

I'm focusing now on the "Dexie not loaded" error in the diagnostics modal, stemming from a race condition. I've pinpointed the issue in `layout-pwa.php` where Dexie isn't globally available due to its ES module import. My fix is to add `<script src="/web-assets/libs/dexie.min.js"></script>` to the `<head>` to ensure Dexie is globally accessible, resolving the race and enabling correct DB access.


**Synchronizing Data Dependencies**

I'm now investigating a user-reported issue where the microphone status turns green before products are loaded in IndexedDB. Initially, `sincronizarCatalogoLocal()` downloads and caches product data, but the VOSK worker pre-loads in parallel with potentially outdated information. I plan to condition VOSK initialization to wait until `sincronizarCatalogoLocal()` has finished and product count is greater than zero to ensure the microphone status becomes green only when the local catalog is complete.


**Prioritizing Product Synchronization**

I'm now prioritizing product synchronization before initializing the VOSK worker. I'm focusing on ensuring `sincronizarCatalogoLocal()` completes before the worker begins pre-loading to avoid potentially outdated data. I'm adding a check for the local catalog's product count in `preCargarVoskWorker()`. If the catalog is empty, the worker will wait until data sync is complete, improving the user experience and reliability, especially on first load or with connectivity issues.




### Actions

**Tool:** `view_file`
**File:** `app-voice.js`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 7.803864926s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L219-269)</summary>

**Path:** `Unknown file`

```
 */
async function toggleEscuchaVoz() {
    if (isListening) {
        detenerEscuchaVoz();
    } else {
        await iniciarEscuchaVoz();
    }
}

/**
 * Initializes AudioContext, loads worker, compiles grammar, starts listener.
 */
/**
 * Pre-carga el Web Worker de Vosk de forma asíncrona tras el login (UX Poka-Yoke).
 */
async function preCargarVoskWorker() {
    if (voskWorker) {
        if (!isWorkerReady && workerReadyPromise) {
            return workerReadyPromise;
        }
        return;
    }

    actualizarUIEstado('cargando');
    logRemoto('SPEECH_INFO', 'Iniciando pre-carga de VOSK en segundo plano (Poka-Yoke).');

    isWorkerReady = false;
    workerReadyPromise = new Promise((resolve) => {
        resolveWorkerReady = resolve;
    });

    try {
        voskWorker = new Worker('/web-assets/libs/models/vosk-worker.js');
        voskWorker.onmessage = manejarMensajeWorker;
        voskWorker.onerror = (e) => {
            const errorMsg = e.message || 'Mensaje de error vacío (bloqueado por políticas COEP o CORS en worker secundario / error al compilar WASM)';
            logRemoto('SPEECH_ERROR', `Error fatal en vosk-worker.js (Pre-carga): ${errorMsg}`, {
                archivo: e.filename || 'Desconocido',
                linea: e.lineno || 0,
                columna: e.colno || 0
            });
            isWorkerReady = false;
            if (resolveWorkerReady) {
                resolveWorkerReady();
                resolveWorkerReady = null;
            }
            voskWorker = null;
            actualizarUIEstado('desactivado');
        };

        const grammarList = compilarVocabularioGramatica();
```

</details>

---

## Agent Response

### Thinking

**Refining Pre-loading Logic**

I'm currently revising the `preCargarVoskWorker()` function in `app-voice.js`. The goal is to first check if `catalogCached.length` is zero. If it is, the VOSK loading process is halted, and the status is set to "desactivado" (red), or a descriptive log is written. Next step is an update.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.085279773s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 5 July 2026, 9:03 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `layout-pwa.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L24-34)</summary>

**Path:** `Unknown file`

```
    <!-- Cargador Local Offline de HTMX -->
    <script src="/web-assets/libs/htmx.min.js"></script>
    
    <!-- PWA Service Worker Registration -->
    <script src="/web-assets/libs/models/app-main.js" defer></script>
    <!-- PWA Onboarding (GAP-6) -->
    <script src="/web-assets/libs/models/onboarding-pwa.js" defer></script>
</head>
<body>
    <div class="app-container <?= $this->e($containerClass ?? '') ?>">
        <!-- Header con Menú Hamburguesa -->
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `layout-pwa.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L179-203)</summary>

**Path:** `Unknown file`

```
                if (window.lucide) {
                    window.lucide.createIcons();
                }
            }
        }

        // Initialize theme and Lucide Icons
        document.addEventListener('DOMContentLoaded', function() {
            // Theme initialization
            const savedTheme = localStorage.getItem('theme') || 'dark';
            if (savedTheme === 'light') {
                document.documentElement.setAttribute('data-theme', 'light');
                updateThemeIcon('light');
            } else {
                document.documentElement.removeAttribute('data-theme');
                updateThemeIcon('dark');
            }

            if (window.lucide) {
                window.lucide.createIcons();
            }
        });
    </script>
    
    <!-- Modal de Diagnóstico PWA -->
```

</details>

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 5 July 2026, 9:03 pm

---

## Agent Response

### Thinking

**Analyzing the Solution**

The changes are incredibly clean and address every user concern perfectly. The implementation of Dexie loading in the header completely eliminates the race condition. Also, semaphore implementation is complete. I'm pleased with this update.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.045682963s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

## User Request

Actualiza el HTMLs que corresponda para añadir estas optimizaciones

<details>
<summary>Context</summary>

**Active File:** `app-voice.js`
**Language:** javascript
</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>Directory: `restaurantb` (9 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb`

| Name | Type | Size |
|------|------|------|
| `.gitignore` | File | 755 bytes |
| `bd` | Directory | - |
| `contenedor` | Directory | - |
| `docs` | Directory | - |
| `logs` | Directory | - |
| `setup` | Directory | - |
| `ssl` | Directory | - |
| `tests` | Directory | - |
| `www` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/docs`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>Directory: `docs` (22 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/docs`

| Name | Type | Size |
|------|------|------|
| `Control_Proyecto_Comandas_VOSK.html` | File | 40827 bytes |
| `Especificacion_Funcional_Comandas_VOSK.html` | File | 53630 bytes |
| `Especificacion_Tecnica_Comandas_VOSK.html` | File | 55676 bytes |
| `Ficha_Tecnica_Comercial_Comandas_VOSK.html` | File | 9148 bytes |
| `Funcional_Flujos_Trabajo_Comandas_VOSK.html` | File | 28781 bytes |
| `Instrucciones_Despliegue_Comandas_VOSK.html` | File | 13505 bytes |
| `Manual_Operativo_Catalogo_Versionado_Simulador_NLP.html` | File | 32554 bytes |
| `Manual_Operativo_Comandas_VOSK.html` | File | 24724 bytes |
| `Pruebas_Casos_Validacion_Comandas_VOSK.html` | File | 36542 bytes |
| `Tecnica_API_Backend_Comandas_VOSK.html` | File | 15348 bytes |
| `Tecnica_Arquitectura_Voz_Comandas_VOSK.html` | File | 24667 bytes |
| `Tecnica_Infraestructura_Despliegue_Comandas_VOSK.html` | File | 36470 bytes |
| `Tecnica_Modelo_Datos_Comandas_VOSK.html` | File | 20753 bytes |
| `agua.code-workspace` | File | 155 bytes |
| `demo` | Directory | - |
| `diagrama_arquitectura.png` | File | 188970 bytes |
| `diagrama_flujo_datos.png` | File | 547024 bytes |
| `etc-docs` | Directory | - |
| `referencias` | Directory | - |
| `styles.css` | File | 7866 bytes |
| `topologia_red_local.png` | File | 175319 bytes |
| `v2-Fallbacks` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `badge`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 July 2026, 9:09 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `VOSK`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 July 2026, 9:09 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Tecnica_Arquitectura_Voz_Comandas_VOSK.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
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
<title>Arquitectura de Inteligencia Artificial (VOSK y TTS)</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header class="cover">
  <h1>Arquitectura de Inteligencia Artificial (VOSK y TTS)</h1>
  <div class="cover-meta">
    <div><strong>Documento:</strong> Tecnica_Arquitectura_Voz_Comandas_VOSK</div>
    <div><strong>Fecha:</strong> Junio 2026</div>
  </div>
  <a href="Especificacion_Tecnica_Comandas_VOSK.html" style="display:inline-block; margin-top:20px; color:#2563eb; text-decoration:none; font-weight:600;">&larr; Volver a la Especificación Técnica</a>
</header>
<main>
<!-- ═══════════════ 6. MOTOR VOSK Y RECONOCIMIENTO (STT) ═══════════════ -->
<section id="sec6">
  <h2>6. Arquitectura de Reconocimiento de Voz (STT)</h2>
  
  <p>El sistema implementa dos arquitecturas independientes de dictado de voz a texto (STT), denominadas "Prioridades". <strong>Ambas arquitecturas cubren íntegramente las funcionalidades y flujos de negocio para todos los actores (Meseros y Cocineros)</strong>, y la única diferencia radica en la ubicación física donde ocurre la inferencia de Inteligencia Artificial (Cliente vs. Servidor) y el medio de transmisión subyacente.</p>

  <h3 id="sec6-1">6.1. Prioridad 1: VOSK Frontend (Arquitectura Cliente-Servidor Ligera)</h3>
  <div class="note">
    <strong>Estrategia IT1: Procesamiento Local en el Cliente (PWA)</strong>
    <p>En esta versión, tanto la PWA del Mesero como la WebApp de la Cocina descargan y ejecutan <code>Vosk JS</code> localmente en el navegador asistidos por Web Workers. <strong>El audio nunca viaja por la red.</strong> El canal de transmisión se limita a enviar el texto ya transcrito hacia el backend vía HTTP/AJAX o WebSockets ligeros.</p>
  </div>

  <h4>Flujo de Trabajo y Pipeline (IT1 - Frontend)</h4>
  <ol>
    <li><strong>Captura Local:</strong> El <code>AudioWorkletNode</code> del navegador captura el micrófono a 16 kHz, PCM mono.</li>
    <li><strong>Decodificación WASM:</strong> Los fragmentos PCM se envían al Web Worker local nativo donde el modelo acústico de VOSK genera la transcripción a texto.</li>
    <li><strong>Corrección y Limpieza:</strong> El script del cliente (PWA) aplica la corrección fonética (Levenshtein) basándose en el catálogo local de productos o comandos.</li>
    <li><strong>Sincronización (Offline-First):</strong> El texto limpio se transmite. Si se pierde la red (común en meseros en movimiento), el <strong>texto</strong> se encola en IndexedDB (tabla <code>offline_text_queue</code>) y se sincroniza automáticamente al recuperar la señal.</li>
  </ol>

<pre><code>// Ejemplo Pipeline IT1 (Aplica a Meseros y Cocineros)
const stream = await navigator.mediaDevices.getUserMedia(constraints);
const audioContext = new AudioContext({ sampleRate: 16000 });
await audioContext.audioWorklet.addModule('js/audio-processor.js');
const workletNode = new AudioWorkletNode(audioContext, 'pcm-processor');

workletNode.port.onmessage = (e) =&gt; {
    const pcmBuffer = e.data;
    if (recognizer.acceptWaveform(pcmBuffer)) {
        const result = recognizer.result();
        procesarTextoYEnviar(result.text); // Enviar texto limpio al servidor
    }
};</code></pre>

  <h4>Implementación Técnica Estabilizada (7 Pilares del Pipeline)</h4>
  <p>La estabilización del motor frontend se compone de 7 componentes estructurales y optimizaciones de bajo nivel diseñados para maximizar la resiliencia offline y minimizar el consumo de recursos en dispositivos móviles:</p>
  <ul>
    <li><strong>1. Audio Pipeline 16kHz, AudioWorklet y VAD (Filtro RMS):</strong> Captura nativa del micrófono forceando el <code>AudioContext</code> a 16000 Hz, eliminando el downsampling por software. El procesador <code>pcm-processor.js</code> corre en un hilo de audio no bloqueante y calcula el volumen Root Mean Square (RMS) de cada buffer; si este no supera el umbral matemático de actividad (silencio), el chunk es descartado, ahorrando más de un 40% de CPU y batería en transmisiones inactivas.</li>
    <li><strong>2. Web Worker y SW Cache-First (Carga del Modelo):</strong> La ejecución de <code>vosk.js</code> y el modelo acústico WASM corre en un hilo secundario (<code>vosk-worker.js</code>) para evitar congelar el hilo de UI. Para evitar retrasos de red y fallos de conexión al inicializar, el Service Worker (<code>sw.js</code>) intercepta el modelo comprimido (38MB) y la biblioteca (5.5MB) bajo una política <code>Cache-First</code> estricta, cargándolos en menos de 50ms.</li>
    <li><strong>3. Inicialización Kaldi con Gramática Cerrada (Hot-Reload):</strong> Se compila el vocabulario del catálogo local y se inyecta como parámetro estricto al instanciar <code>KaldiRecognizer</code>. Esto recorta drásticamente el grafo HCLG, ahorrando RAM y evitando alucinaciones fuera del menú. Soporta <strong>Hot-Reloading</strong> para destruir y recrear el reconocedor en caliente si el catálogo cambia.</li>
    <li><strong>4. Capa de Corrección Fonética Levenshtein JS:</strong> Se construyó un motor NLP 100% offline (<code>app-voice.js</code>) que normaliza la transcripción cruda, extrae la mesa, segmenta por conectores ("y", "mas"), resuelve cantidades por sinónimos ("par" &rarr; 2), extrae notas de cocina ("sin cebolla") y empareja productos mediante distancia de Levenshtein (con umbrales largo/corto).</li>
    <li><strong>5. Cola Offline de Transcripciones Dexie.js:</strong> Tras el análisis NLP, la orden se guarda localmente en la tabla <code>outbox_comandas</code> de IndexedDB (usando Dexie.js) con un UUID único y estado <code>pending</code>. Permite operar ininterrumpidamente ante la caída total del Wi-Fi en el restaurante.</li>
    <li><strong>6. Sync HTTP, Control de Desfase, Evicción y GC:</strong> Al iniciar, el cliente consulta un <code>delta_hash</code> MD5 al servidor; si difiere, purga la base local y actualiza la gramática en caliente. Se utiliza <code>navigator.storage.persist()</code> para proteger los datos de IndexedDB contra la purga automática por falta de espacio en Android, y se ejecuta un <strong>Garbage Collection</strong> (Hard Delete de comandas sincronizadas exitosamente y TTL de 3 días para logs locales) previniendo el <em>Storage Bloat</em>.</li>
    <li><strong>7. Resiliencia de Memoria WASM (Kill-and-Respawn):</strong> Para contrarrestar las fugas de memoria inherentes al heap lineal de WebAssembly en escuchas de larga duración (especialmente en el rol "hands-free" de cocina), se implementó un watchdog que destruye (<code>terminate()</code>) y vuelve a crear el Web Worker de VOSK en periodos de inactividad, previniendo fallos por Out-Of-Memory (OOM).</li>
  </ul>

  <h4>Inicialización y Carga de Modelo Local (<code>vosk-model-small-es-0.42.tar.gz</code>)</h4>
  <p>La Progressive Web App del mesero realiza la descarga por única vez del modelo acústico en español comprimido (aproximadamente 39MB) y lo almacena localmente en la caché de IndexedDB, garantizando el funcionamiento 100% offline tras la primera visita:</p>
  <pre><code>// Definición del modelo acústico local de VOSK
const modelUrl = 'web-assets/libs/models/vosk-model-small-es-0.42.tar.gz';
let model;
let recognizer;

async function initVosk() {
    try {
        // Cargar el reconocedor y desempaquetar el modelo en el Web Worker
        model = await Vosk.createModel(modelUrl);
        
        // Configurar el reconocedor con gramática cerrada de negocio
        const vocabularioRestringido = [
            "uno", "dos", "tres", "cuatro", "cinco", "kilo", "kilos", "pesos", 
            "tortillas", "masa", "totopos", "salsa", "cobrar", "limpiar", "pagar"
        ];
        recognizer = new model.KaldiRecognizer(16000, JSON.stringify(vocabularioRestringido));
        console.log("VOSK y modelo offline cargados correctamente.");
    } catch (error) {
        console.error("Error al inicializar VOSK offline:", error);
    }
}</code></pre>


  <h3 id="sec6-2">6.2. Gramática Restringida y Separación de Responsabilidades (Vosk vs. Levenshtein)</h3>
  <p>El concepto de restringir el motor de reconocimiento para que se enfoque exclusivamente en el vocabulario del proyecto es <strong>técnicamente correcto y representa el estándar de optimización más importante del sistema</strong>. Existe una separación de responsabilidades <strong>sin ambigüedades</strong> entre la IA y la capa de lógica:</p>

  <div class="note">
    <strong>1. Responsabilidad del Motor VOSK (Recorte de Grafo / Pruning)</strong><br>
    Al inicializar <code>KaldiRecognizer</code>, se le inyecta un array estricto con las palabras del catálogo (<code>grammar: [...]</code>). VOSK recorta su grafo de decodificación (HCLG.fst) para ignorar el resto del idioma español. <strong>Resultado:</strong> El uso de CPU y RAM cae drásticamente (vital para móviles de gama baja), y la precisión en ruido sube a casi 100%, ya que la IA es matemáticamente incapaz de "alucinar" palabras fuera de esa lista.
    <br><br>
    <strong>2. Responsabilidad del Algoritmo Levenshtein (Capa JavaScript)</strong><br>
    Una vez que VOSK entrega un texto (limitado al vocabulario permitido), Levenshtein toma el relevo. Su única función es calcular la distancia de edición (tolerancia a variaciones fonéticas o plurales) para enlazar el texto reconocido con el <strong>ID exacto del producto o comando</strong> en la base de datos (ej. mapear <em>"coca"</em> al Producto ID 45 <em>"Coca-Cola 600ml"</em>).
  </div>

  <h4>A. Vocabulario y Reglas para Meseros</h4>
<pre><code>// Vocabulario amplio (Catálogo de Productos y Números)
const vocabularioMesero = [
    "uno", "dos", "tres", "cuatro", "mesa",
    "tacos al pastor", "tacos de bistec", "coca",
    "cancelar", "cerrar", "cuenta"
];</code></pre>
  <p><strong>Corrección Levenshtein:</strong> El algoritmo de distancia de edición se ejecuta en el cliente comparando el dictado crudo contra el <code>vocabularioMesero</code>, tolerando variaciones como "taco al pastor" o "huarache".</p>

  <h4>B. Vocabulario y Reglas para Cocineros</h4>
<pre><code>// Vocabulario estricto (Comandos de Control)
const vocabularioCocinero = [
    "preparar", "siguiente", "mesa", "listo", "recuperar",
    "repetir", "orden", "pendientes", "cancelar", "si", "no",
    "uno", "dos", "tres"
];</code></pre>
  <p><strong>Corrección Restrictiva:</strong> Dado el alto nivel de ruido en la cocina, los comandos deben cumplir con expresiones regulares estrictas (Ej. <code>/^preparar siguiente$/i</code>) sin tolerancia a errores graves de transcripción fonética.</p>
</section>

<!-- ═══════════════ 7. TTS ═══════════════ -->
<section id="sec7">
  <h2>7. Síntesis de Voz (TTS)</h2>
  <p>El sistema utiliza la Web Speech API (SpeechSynthesis) del navegador para generar anuncios de voz. Esta API es nativa de Chrome/Android y no requiere instalación de librerías adicionales.</p>

  <h3>7.1. Motor TTS</h3>
<pre><code>function sintetizarVoz(texto, callback = null) {
    const utterance = new SpeechSynthesisUtterance(texto);
    utterance.lang = 'es-MX';
    utterance.rate = 1.1;
    utterance.pitch = 1.0;
    utterance.volume = 1.0;
    // Seleccionar voz en español si está disponible
    const voces = speechSynthesis.getVoices();
    const vozEs = voces.find(v =&gt; v.lang.startsWith('es') &amp;&amp; v.name.includes('Mexico'));
    if (vozEs) utterance.voice = vozEs;
    if (callback) utterance.onend = callback;
    speechSynthesis.speak(utterance);
}</code></pre>

  <h3>7.2. Cola de Mensajes TTS</h3>
  <p>Para evitar solapamiento de mensajes, se implementa una cola FIFO de reproducción:</p>
<pre><code>class ColaTTS {
    constructor() {
        this.cola = [];
        this.reproduciendo = false;
    }

    encolar(texto) {
        this.cola.push(texto);
        if (!this.reproduciendo) this.procesar();
    }

    procesar() {
        if (this.cola.length === 0) {
            this.reproduciendo = false;
            return;
        }
        this.reproduciendo = true;
        const texto = this.cola.shift();
        sintetizarVoz(texto, () =&gt; this.procesar());
    }
}
const colaAltavozCocina = new ColaTTS();
const colaDiademaCocinero = new ColaTTS();
const colaDiademaMesero = new ColaTTS();</code></pre>

  <h3>7.3. Canales de Salida de Audio</h3>
  <table>
    <caption>Tabla 2. Canales de Salida de Audio TTS</caption>
    <thead><tr><th>Canal</th><th>Dispositivo Físico</th><th>Audiencia</th><th>Eventos</th></tr></thead>
    <tbody>
      <tr><td>Altavoz Cocina</td><td>Altavoz conectado a estación PC de cocina</td><td>Todos los cocineros</td><td>Nuevas comandas, cancelaciones autorizadas, cierres</td></tr>
      <tr><td>Diadema Cocinero</td><td>Diadema Bluetooth del cocinero</td><td>Cocinero individual</td><td>Confirmaciones de comandos, solicitudes de cancelación</td></tr>
      <tr><td>Diadema Mesero</td><td>Diadema Bluetooth del mesero</td><td>Mesero individual</td><td>Confirmación de envío, aprobación/rechazo de cancelación, cierre</td></tr>
    </tbody>
  </table>

  <h3 id="sec7-4">7.4. Prevención de la "Voz Fantasma" (TTS Desfasado)</h3>
  <div class="note">
    <strong>Riesgo Crítico de UX y Ruido Acústico</strong>
    <p>Si múltiples notificaciones push de comandas se encolan debido a una desconexión temporal de la red Wi-Fi y luego la conexión se restablece bruscamente, la API <code>SpeechSynthesis</code> nativa del navegador intentará reproducir secuencialmente todas las alertas viejas acumuladas, saturando el canal de audio del mesero o cocinero con información obsoleta ("Voz Fantasma").</p>
    <p><strong>Estrategia de Mitigación en app.js:</strong></p>
    <ul>
      <li>Cada notificación push o comando recibido por el cliente incluye obligatoriamente la marca de tiempo de envío original del servidor (<code>server_sent_timestamp</code>).</li>
      <li>Antes de encolar un mensaje en la <code>ColaTTS</code> local, el script valida si la diferencia de tiempo entre el reloj del cliente y el servidor supera un umbral de <strong>5 segundos</strong>.</li>
      <li>Si el mensaje supera el límite, se cancela la síntesis de voz mediante <code>window.speechSynthesis.cancel()</code> y se descarta auditivamente el mensaje, actualizando la interfaz visual en un panel histórico silencioso de manera que el operario solo escuche notificaciones relevantes para el instante actual.</li>
    </ul>
  </div>
</section>

<!-- ═══════════════ 4. INTERACCIONES DICTADAS DEL COCINERO ═══════════════ -->
<section id="sec4">
  <h2>4. Interacciones Dictadas del Cocinero</h2>
  <p>Esta sección describe con precisión cada interacción de voz que el cocinero puede realizar. Cada interacción incluye: el disparador que la inicia, el comando dictado, la precondición, la acción del sistema y la respuesta de voz (TTS) que recibe el cocinero en su diadema.</p>

  <h3 id="sec4-1">4.1. Tomar una Orden para Preparar</h3>
  <table>
    <caption>Tabla 8. Detalle de Interacción: Tomar Orden</caption>
    <tbody>
      <tr>
        <td><strong>Disparador</strong></td>
        <td>El cocinero decide iniciar la preparación de una nueva orden. Puede ser porque acaba de escuchar la notificación de una nueva comanda, o porque tiene capacidad de preparar más.</td>
      </tr>
      <tr>
        <td><strong>Comando dictado</strong></td>
        <td><em>"Preparar siguiente"</em> (toma la más antigua) o <em>"Tomo mesa [N]"</em> (toma una mesa específica).</td>
      </tr>
      <tr>
        <td><strong>Precondición</strong></td>
        <td>Debe existir al menos una comanda en estado "pendiente".</td>
      </tr>
      <tr>
        <td><strong>Acción del sistema</strong></td>
        <td>Cambia el estado de la comanda de "pendiente" a "en_preparacion". Registra el identificador del cocinero. Actualiza la pantalla banner. Notifica al PWA del mesero que el cocinero tomó la orden.</td>
      </tr>
      <tr>
        <td><strong>Respuesta TTS</strong></td>
        <td><em>"Orden de mesa [numero]: [lista de productos]. En preparación."</em></td>
      </tr>
      <tr>
        <td><strong>Postcondición</strong></td>
        <td>La comanda aparece en la pantalla banner con estado "en_preparacion" y color de tiempo actualizado.</td>
      </tr>
    </tbody>
  </table>

  <h3 id="sec4-2">4.2. Marcar Orden como Lista</h3>
  <table>
    <caption>Tabla 9. Detalle de Interacción: Orden Lista</caption>
    <tbody>
      <tr>
        <td><strong>Disparador</strong></td>
        <td>El cocinero ha terminado de preparar todos los productos de una comanda.</td>
      </tr>
      <tr>
        <td><strong>Comando dictado</strong></td>
        <td><em>"Listo mesa [N]"</em></td>
      </tr>
      <tr>
        <td><strong>Precondición</strong></td>
        <td>La comanda debe estar en estado "en_preparacion".</td>
      </tr>
      <tr>
        <td><strong>Acción del sistema</strong></td>
        <td>Cambia el estado a "listo". Calcula el tiempo transcurrido desde la captura hasta este momento. Envía notificación push y mensaje de voz al mesero.</td>
      </tr>
      <tr>
        <td><strong>Respuesta TTS</strong></td>
        <td><em>"Orden de mesa [numero] lista. Tiempo de preparación: [M] minutos."</em></td>
      </tr>
      <tr>
        <td><strong>Postcondición</strong></td>
        <td>La comanda se mueve a la sección "Listas" de la pantalla banner. El mesero recibe notificación en su PWA.</td>
      </tr>
    </tbody>
  </table>

  <h3 id="sec4-3">4.3. Recuperar Orden por Error</h3>
  <table>
    <caption>Tabla 10. Detalle de Interacción: Recuperar Orden</caption>
    <tbody>
      <tr>
        <td><strong>Disparador</strong></td>
        <td>El cocinero marcó una orden como "listo" por error y necesita revertirla.</td>
      </tr>
      <tr>
        <td><strong>Comando dictado</strong></td>
        <td><em>"Recuperar mesa [N]"</em></td>
      </tr>
      <tr>
        <td><strong>Precondición</strong></td>
        <td>La comanda debe estar en estado "listo" y no haber sido notificada al mesero hace más de 30 segundos.</td>
      </tr>
      <tr>
        <td><strong>Acción del sistema</strong></td>
        <td>Cambia el estado de "listo" a "en_preparacion".</td>
      </tr>
      <tr>
        <td><strong>Respuesta TTS</strong></td>
        <td><em>"Orden de mesa [numero] recuperada a preparación."</em></td>
      </tr>
    </tbody>
  </table>

  <h3 id="sec4-4">4.4. Autorizar Cancelación</h3>
  <table>
    <caption>Tabla 11. Detalle de Interacción: Autorizar Cancelación</caption>
    <tbody>
      <tr>
        <td><strong>Disparador</strong></td>
        <td>El sistema anuncia en la diadema del cocinero que un mesero solicita cancelar un producto o comanda.</td>
      </tr>
      <tr>
        <td><strong>Comando dictado</strong></td>
        <td><em>"Si, cancelar"</em> o <em>"No, no cancelar"</em></td>
      </tr>
      <tr>
        <td><strong>Precondición</strong></td>
        <td>Debe haber una solicitud de cancelación pendiente dirigida a este cocinero, y el producto/comanda no debe estar en estado "listo".</td>
      </tr>
      <tr>
        <td><strong>Acción del sistema (Si)</strong></td>
        <td>Marca el producto o comanda como "cancelado". Responde al mesero con confirmación. Anuncia en altavoz.</td>
      </tr>
      <tr>
        <td><strong>Respuesta TTS (Si)</strong></td>
        <td><em>"Cancelación autorizada."</em></td>
      </tr>
      <tr>
        <td><strong>Acción del sistema (No)</strong></td>
        <td>Rechaza la cancelación. Notifica al mesero del rechazo.</td>
      </tr>
      <tr>
        <td><strong>Respuesta TTS (No)</strong></td>
        <td><em>"Cancelación rechazada. Continúe preparando."</em></td>
      </tr>
    </tbody>
  </table>

  <h3 id="sec4-5">4.5. Consultar Estado General</h3>
  <table>
    <caption>Tabla 12. Detalle de Interacción: Estado General</caption>
    <tbody>
      <tr>
        <td><strong>Disparador</strong></td>
        <td>El cocinero quiere saber cuántas órdenes hay pendientes sin mirar la pantalla.</td>
      </tr>
      <tr>
        <td><strong>Comando dictado</strong></td>
        <td><em>"Ordenes pendientes"</em></td>
      </tr>
      <tr>
        <td><strong>Acción del sistema</strong></td>
        <td>Cuenta comandas por estado.</td>
      </tr>
      <tr>
        <td><strong>Respuesta TTS</strong></td>
        <td><em>"Tienes [N] órdenes pendientes, [M] en preparación y [P] listas esperando recogida."</em></td>
      </tr>
    </tbody>
  </table>

  <h3 id="sec4-6">4.6. Repetir una Orden</h3>
  <table>
    <caption>Tabla 13. Detalle de Interacción: Repetir Orden</caption>
    <tbody>
      <tr>
        <td><strong>Disparador</strong></td>
        <td>El cocinero no escuchó bien el anuncio de una orden o necesita reconfirmar los productos.</td>
      </tr>
      <tr>
        <td><strong>Comando dictado</strong></td>
        <td><em>"Repetir orden mesa [N]"</em></td>
      </tr>
      <tr>
        <td><strong>Acción del sistema</strong></td>
        <td>Busca la comanda más reciente de esa mesa y reproduce los productos.</td>
      </tr>
      <tr>
        <td><strong>Respuesta TTS</strong></td>
        <td><em>"Orden de mesa [numero]: [lista detallada de productos con cantidades]."</em></td>
      </tr>
    </tbody>
  </table>

  <h3 id="sec4-7">4.7. Gestión de Datasets de Voz y NLP en Backend</h3>
  <p>Para dotar de flexibilidad al motor de voz sin obligar a redespliegues del software cliente, se implementa un <strong>Panel de Gestión de Datasets de Voz y Simulador NLP</strong>. Este módulo administrativo centraliza las siguientes capacidades:</p>
  <ul>
    <li><strong>Edición de Contexto Fonético:</strong> Permite personalizar las palabras clave (keywords) asociadas a cada producto del catálogo (por ejemplo, definir que "coca de 600" o "chesco" correspondan a "Refresco").</li>
    <li><strong>Sinónimos de Cantidades:</strong> Configura una tabla JSON de correspondencias numéricas para traducir vocablos coloquiales en valores enteros (ej. "uno" -> 1, "una" -> 1, "media" -> 0.5, "par" -> 2).</li>
    <li><strong>Versionado con Delta Hash (MD5):</strong> Cada guardado del catálogo, sinónimos y parámetros de Levenshtein (umbral largo y corto) genera una nueva versión inmutable con un hash MD5 de verificación. Esto permite invalidar selectivamente los cachés de las PWA cuando se detecta una discrepancia en el hash activo.</li>
    <li><strong>Publicación a Dispositivos:</strong> Los gerentes pueden alternar la versión "publicada" en caliente, la cual será consultada de inmediato por las PWAs meseras al recuperar conexión.</li>
    <li><strong>Simulador NLP Interactivo:</strong> Una consola de pruebas permite dictar o escribir oraciones naturales (ej. "uno taco arto con chesco") para simular en tiempo real cómo las procesará el motor fonético (calculando distancias Levenshtein y asignando los productos correspondientes), validando las variaciones fonéticas antes de publicarlas en producción.</li>
  </ul>
</section>

<!-- ═══════════════ 8. VINCULACIÓN CON SKILLS Y ESTÁNDARES DEL PROYECTO ═══════════════ -->
<section id="sec8">
  <h2>8. Vinculación con Skills del Agente (SSOT)</h2>
  <p>La implementación de la voz, el procesamiento local de audios en el edge y la síntesis en diademas se rige por las directrices y estándares consolidados en la base de conocimiento:</p>
  <ul>
    <li><strong>Vosk Offline STT (<code>.agents/skills/skill-vosk-stt/SKILL.md</code>):</strong> Guía maestro para el despliegue del reconocedor en navegadores locales, calibración de buffers del AudioWorklet, formato PCM y restricciones gramaticales de negocio.</li>
    <li><strong>Web Speech API (TTS) (<code>.agents/skills/skill-speech-synthesis/SKILL.md</code>):</strong> Patrón para el uso robusto de SpeechSynthesis, mitigación de silenciamientos en segundo plano y compatibilidad móvil.</li>
    <li><strong>EasySpeech Wrapper (<code>.agents/skills/skill-easyspeech-wrapper/SKILL.md</code>):</strong> Librería wrapper recomendada para mitigar los fallos nativos de Chrome en Android (pérdida de foco y desconexión aleatoria del motor de síntesis).</li>
  </ul>
</section>

</main>
</body>
</html>

```

</details>

---

## Agent Response

### Thinking

**Adding Optimizations Section**

I'm thinking about how to document recent architectural changes and optimizations. I'll add a new subsection to `Tecnica_Arquitectura_Voz_Comandas_VOSK.html` focusing on July 2026. Specifically, I'll detail enhancements to the "**Implementación Técnica Estabilizada (7 Pilares del Pipeline)**" component. The changes will focus on:




### Actions

**Tool:** `grep_search`
**Query:** `diagnostico`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.046227980s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 July 2026, 9:09 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Especificacion_Tecnica_Comandas_VOSK.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
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
<title>Especificación Técnica — Sistema de comanda por voz con consecución de órdenes y notificaciones duales a cocina (visual y auditiva)</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>

<!-- ═══════════════ PORTADA ═══════════════ -->
<header class="cover">
  <h1>Especificación Técnica<br>Sistema de comanda por voz con consecución de órdenes y notificaciones duales a cocina (visual y auditiva)</h1>
  <div class="cover-meta">
    <div><strong>Documento:</strong> ET-Comandas-VOSK-v2.0</div>
    <div><strong>Fecha:</strong> Junio 2026</div>
    <div><strong>Revisión:</strong> v2.0 (Modificación de Alcance)</div>
  </div>
  <p class="cover-desc">Documento de especificación técnica de implementación. Incluye modificaciones de alcance: motor TTS, gramática restringida para cocineros, cola offline, y exclusión de procesamiento de pagos.</p>
</header>

<!-- ═══════════════ ÍNDICE ═══════════════ -->
<nav class="toc">
  <h2>Índice de Contenidos</h2>
  <ol>
    <li><a href="#sec1">Resumen Ejecutivo Técnico</a></li>
    <li><a href="#sec2">Arquitectura del Sistema</a>
      <ol>
        <li><a href="#sec2-1">Diagrama de Arquitectura</a></li>
        <li><a href="#sec2-2">Flujo de Datos End-to-End</a></li>
        <li><a href="#sec2-3">Estructura de Directorios del Proyecto</a></li>
        <li><a href="#sec2-4">Control de Versiones y Sincronización Multi-Repositorio</a></li>
      </ol>
    </li>
    <li><a href="#sec3">Stack Tecnológico</a>
      <ol>
        <li><a href="#sec3-1">Configuración de PHP-FPM</a></li>
        <li><a href="#sec3-2">Configuración de MariaDB</a></li>
        <li><a href="#sec3-3">Filosofía de Frugalidad del Stack</a></li>
        <li><a href="#sec3-4">Configuración de HTMX en el Ecosistema Ligero</a></li>
      </ol>
    </li>
    <li><a href="#sec4">Modelo de Base de Datos</a>
      <ol>
        <li><a href="#sec4-1">Esquema Completo (DDL)</a></li>
        <li><a href="#sec4-2">Procedimientos Almacenados</a></li>
        <li><a href="#sec4-3">Configuración de Base de Datos</a></li>
        <li><a href="#sec4-4">Tablas Base del Motor de Autenticación (Delight-PHP/Auth)</a></li>
        <li><a href="#sec4-5">Extensiones del Sistema RBAC Personalizado</a></li>
        <li><a href="#sec4-6">Directiva Operativa de Consulta (Indexación y Rendimiento)</a></li>
      </ol>
    </li>
    <li><a href="#sec5">API Backend (PHP / Flight)</a>
      <ol>
        <li><a href="#sec5-1">Endpoints de Comandas</a></li>
        <li><a href="#sec5-2">Endpoints de Cocina (Voz)</a></li>
        <li><a href="#sec5-3">Endpoints de Cancelaciones</a></li>
        <li><a href="#sec5-4">Endpoints de Cierre de Cuenta</a></li>
      </ol>
    </li>
    <li><a href="#sec6">Motor VOSK / WebAssembly</a>
      <ol>
        <li><a href="#sec6-1">Pipeline de Audio</a></li>
        <li><a href="#sec6-2">Gramática Restringida</a></li>
        <li><a href="#sec6-3">Corrección Fonética (Levenshtein)</a></li>
        <li><a href="#sec6-4">Estrategia de Dictado Local (WASM)</a></li>
      </ol>
    </li>
    <li><a href="#sec7">Síntesis de Voz (TTS)</a>
      <ol>
        <li><a href="#sec7-1">Motor TTS</a></li>
        <li><a href="#sec7-2">Cola de Mensajes TTS</a></li>
        <li><a href="#sec7-3">Canales de Salida de Audio</a></li>
        <li><a href="#sec7-4">Prevención de la "Voz Fantasma" (TTS Desfasado)</a></li>
      </ol>
    </li>
    <li><a href="#sec8">Frontend PWA del Mesero</a>
      <ol>
        <li><a href="#sec8-1">Estructura de Archivos</a></li>
        <li><a href="#sec8-2">HTTPS Autofirmado</a></li>
        <li><a href="#sec8-3">Patrones de Interacción y UX (Buenas Prácticas)</a></li>
        <li><a href="#sec8-4">Especificación y Diseño Lógico de app.js</a></li>
      </ol>
    </li>
    <li><a href="#sec9">Frontend Pantalla Banner de Cocina</a></li>
    <li><a href="#sec10">Infraestructura</a>
      <ol>
        <li><a href="#sec10-1">Servidor Ubuntu 22.04</a></li>
        <li><a href="#sec10-2">Dispositivos Android y Diademas</a></li>
        <li><a href="#sec10-3">Red Local</a></li>
        <li><a href="#sec10-4">Ambiente de Desarrollo (localhost)</a></li>
      </ol>
    </li>
    <li><a href="#sec11">Seguridad y Resiliencia</a>
      <ol>
        <li><a href="#sec11-1">Conexión Segura (HTTPS) y Certificados SSL/TLS</a></li>
        <li><a href="#sec11-2">Cola Offline y Resiliencia Wi-Fi</a></li>
        <li><a href="#sec11-3">Control de Concurrencia de CPU en Servidor (Tuning)</a></li>
        <li><a href="#sec11-4">Issues Conocidos y Mitigaciones (PWA Android)</a></li>
        <li><a href="#sec11-5">Control Cronológico y Mitigación de Desfases (Marcas de Tiempo)</a></li>
        <li><a href="#sec11-6">Conflicto de Entornos de Ejecución: Apache/Flight vs. Swoole</a></li>
      </ol>
    </li>
    <li><a href="#sec12">Glosario Técnico</a></li>
    <li><a href="Control_Proyecto_Comandas_VOSK.html">Control de Proyecto (ToDos, Issues, Logros)</a></li>
    <li><a href="#sec13">Referencias</a></li>
    <li><a href="#sec15">Anexos</a></li>
  </ol>
</nav>

<!-- ═══════════════ 1. RESUMEN EJECUTIVO ═══════════════ -->
<section id="sec1">
  <h2>1. Resumen Ejecutivo Técnico</h2>
  <p>El presente documento establece las especificaciones técnicas de implementación para un sistema de comandas por reconocimiento de voz offline basado en el motor VOSK. El sistema opera íntegramente sobre infraestructura local con PHP 8.x, MariaDB y Ubuntu Server 22.04 LTS.</p>
  <p>La arquitectura se fundamenta en un <strong>frontend híbrido (Dual-Stack)</strong>: (1) Las interfaces fijas del restaurante (Cocina, Caja, Admin) utilizan <strong>HTMX</strong> para interactividad server-driven sin JS complejo. (2) Los dispositivos móviles de los meseros operan como <strong>PWA Offline-First</strong>, utilizando <strong>Vanilla JavaScript y Dexie.js</strong> conectándose al servidor mediante una <strong>REST API (JSON)</strong>. El procesamiento de audio se ejecuta 100% offline en el edge (dispositivo del mesero) mediante WebAssembly.</p>

  <div class="pillars">
    <h4>Pilares Tecnológicos del Sistema</h4>
    <ul>
      <li><strong>Frontend Dual:</strong> HTMX para KDS/WebApps; Vanilla JS SPA para PWAs móviles.</li>
      <li><strong>Edge computing con VOSK/WASM:</strong> Transcripción de voz local en el navegador del dispositivo Android.</li>
      <li><strong>Motor NLP Local:</strong> Emparejamiento difuso (Fuzzy Matching / Levenshtein) puramente en JavaScript, sin conexión al servidor.</li>
      <li><strong>Cola offline y Garbage Collection:</strong> Persistencia local de comandas en Dexie.js con estrategias estrictas de limpieza para evitar colapso de almacenamiento.</li>
      <li><strong>Arquitectura Frugal LAMP:</strong> Servidor único con Ubuntu, Apache, PHP-FPM, MariaDB con PDO Crudo, y Capa de Negocio Aislada.</li>
    </ul>
  </div>
</section>

<!-- ═══════════════ 2. ARQUITECTURA ═══════════════ -->
<section id="sec2">
  <h2>2. Arquitectura del Sistema</h2>
  <p>El sistema opera bajo una arquitectura de tres capas con procesamiento distribuido entre el edge (dispositivos móviles) y el servidor central.</p>

  <h3 id="sec2-1">2.1. Diagrama de Arquitectura</h3>
  <div class="diagram-container">
    <img src="diagrama_arquitectura.png" alt="Arquitectura de alto nivel" class="diagram-img">
  </div>
  <p class="diagram-caption">Figura 1. Arquitectura de alto nivel del sistema de comandas VOSK v2.0</p>

  <p>Los componentes principales son:</p>
  <ul>
    <li><strong>Capa de Edge (Clientes):</strong> Teléfonos Android con PWA que ejecutan VOSK/WASM para reconocimiento de voz del mesero. Diademas Bluetooth para entrada de audio. Cocineros con diademas conectadas a estación base para comandos de voz.</li>
    <li><strong>Capa de Aplicación (Servidor):</strong> Apache HTTP Server con PHP-FPM que expone API REST. Gestiona lógica de comandas, cancelaciones, cierres de cuenta, y coordinación TTS.</li>
    <li><strong>Capa de Datos:</strong> MariaDB 11 con esquema relacional para comandas, productos, usuarios y auditoría.</li>
    <li><strong>Capa de Visualización:</strong> Pantalla banner en cocina (solo lectura) con altavoz para TTS. Pantalla de caja para visualización de totales.</li>
  </ul>

  <h3 id="sec2-2">2.2. Flujo de Datos End-to-End</h3>
  <div class="diagram-container">
    <img src="diagrama_flujo_datos.png" alt="Flujo de datos completo" class="diagram-img">
  </div>
  <p class="diagram-caption">Figura 2. Flujo de datos completo incluyendo canales TTS</p>

  <p>El flujo detallado es:</p>
  <ol>
    <li><strong>Captura de audio:</strong> El mesero dicta a su diadema Bluetooth. El AudioWorklet del navegador captura audio PCM a 16 kHz mono.</li>
    <li><strong>Procesamiento local:</strong> El Web Worker de VOSK (WASM) transcribe el audio a texto usando el modelo almacenado en IndexedDB.</li>
    <li><strong>Corrección fonética:</strong> El algoritmo Levenshtein mapea palabras del dictado contra el catálogo de productos.</li>
    <li><strong>POST al servidor:</strong> La PWA envía un JSON vía HTTPS POST al endpoint <code>/api/comanda.php</code>.</li>
    <li><strong>Persistencia:</strong> PHP valida y ejecuta el procedimiento almacenado <code>RegistrarComanda</code> dentro de una transacción atómica en MariaDB.</li>
    <li><strong>TTS Altavoz cocina:</strong> El sistema genera audio TTS y lo reproduce por el altavoz conectado a la estación de cocina: "Nueva orden: mesa [N], [productos]."</li>
    <li><strong>Notificación diadema cocinero:</strong> Si hay comandos pendientes del cocinero (como solicitudes de cancelación), se envían por su diadema.</li>
    <li><strong>Respuesta diadema mesero:</strong> El sistema confirma el envío por TTS en la diadema del mesero.</li>
    <li><strong>Pantalla banner:</strong> La nueva comanda aparece en la pantalla de cocina vía SSE o polling.</li>
    <li><strong>Comandos del cocinero:</strong> El cocinero dicta comandos ("preparar siguiente", "listo mesa cinco") que son procesados por una segunda instancia VOSK con gramática restringida.</li>
  </ol>

  <h4>2.2.1. Ciclo de Vida General de una Petición HTTP / AJAX</h4>
  <p>Cuando el usuario interactúa con la WebApp/PWA, las herramientas del lado del cliente y del servidor cooperan de manera síncrona y asíncrona siguiendo esta secuencia exacta:</p>
  <ol>
    <li><strong>Disparo e Interceptación (Cliente):</strong> El usuario realiza una acción (ej. clic o envío). El motor de HTMX (Vanilla JS) intercepta el evento nativo del navegador, cancela la recarga completa de la página y empaqueta los datos de los formularios de forma asíncrona.</li>
    <li><strong>Control de Red e IndexedDB (PWA):</strong> Antes de salir del navegador, el evento pasa por el Service Worker Nativo. Si el dispositivo está online, la petición continúa hacia el servidor. Si está offline, el script de cliente usa Dexie.js para almacenar la transacción localmente en la IndexedDB de Chrome, quedando encolada en <code>cola_peticiones_pendientes</code> para su posterior sincronización.</li>
    <li><strong>Enrutamiento y Seguridad (Servidor - Apache/Flight):</strong> La petición HTTP llega a Apache 2.4 y es despachada por Flight PHP. Lo primero que ejecuta el controlador es la verificación de sesión y permisos a través del objeto PDO centralizado de Delight-PHP/Auth y las reglas del RBAC Personalizado. Si el usuario no tiene permisos, se detiene el flujo y se retorna un fragmento HTML de error.</li>
    <li><strong>Procesamiento de Negocio e Idempotencia (Servidor - MariaDB):</strong> Si el acceso es concedido, el controlador verifica el token de idempotencia en la sesión de PHP para asegurar que no sea un reenvío duplicado. Posteriormente, se ejecuta de forma segura la lógica de negocio pesada empaquetada dentro de un Stored Procedure en MariaDB 11 mediante PDO crudo.</li>
    <li><strong>Renderizado Parcial (Servidor - Plates):</strong> Tras recibir los resultados de la base de datos, el controlador pasa las variables al motor de plantillas de Plates. Este genera <em>únicamente</em> el fragmento de HTML modificado (el componente de la vista) junto con bloques de actualización global marcados para intercambio fuera de banda (OOB).</li>
    <li><strong>Intercambio de Pantalla y Reactivación (Cliente):</strong> HTMX recibe el fragmento HTML del servidor de manera asíncrona. Remueve los indicadores de carga (spinners), vuelve a habilitar los botones y, mediante métodos nativos de Vanilla JS, inyecta el HTML en las zonas de la pantalla indicadas por los atributos de destino (ej. <code>hx-target</code>) sin alterar el resto de la aplicación.</li>
  </ol>

  <h4>2.2.2. Caso Práctico: Creación de Pedido por Dictado de Voz Inteligente</h4>
  <p>Este escenario describe el flujo de datos exacto cuando un usuario con rol de "Mesero" o "Operario" presiona un botón, dicta un comando de voz (ej: <em>"Registrar pedido de 50 unidades"</em> o comanda de productos), el sistema lo procesa con Inteligencia Artificial, guarda la información en la base de datos de forma segura y actualiza la pantalla junto con las notificaciones push.</p>
  <ul>
    <li><strong>Fase 1: Interacción Inicial en el Navegador:</strong> El operario carga la interfaz generada originalmente por el motor de vistas Plates. Presiona el botón de micrófono. Un script de Vanilla JS activa la API nativa de audio de Chrome para capturar los fragmentos binarios de voz del operario.</li>
    <li><strong>Fase 2: Procesamiento Local de IA en el Cliente (WASM):</strong> El script de cliente procesa el flujo de audio localmente mediante el motor VOSK corriendo en WebAssembly. La IA recorta el grafo HCLG basado en la gramática restringida y procesa el audio sin necesidad de internet, retornando el texto plano transcribido: <code>"Registrar pedido de 50 unidades"</code>.</li>
    <li><strong>Fase 3: Ejecución Transaccional en el Backend:</strong> Al recibir el texto transcribido, HTMX entra en acción automáticamente simulando un envío seguro de formulario enviando un POST hacia la ruta de control <code>/pedidos/crear</code> administrada por Flight PHP. El formulario de HTMX adjunta un token de idempotencia único e invisible. Flight PHP recibe la petición e invoca a Delight-PHP/Auth junto con las tablas de permisos del RBAC personalizado para cerciorarse de que el usuario logueado posee el permiso de escritura <code>CREAR_PEDIDOS</code>. Validada la seguridad, el controlador ejecuta un Stored Procedure en MariaDB 11 usando PDO puro, que inserta el pedido, actualiza los inventarios y confirma la transacción de forma aislada y segura.</li>
    <li><strong>Fase 4: Respuesta de Interfaz y Notificación Push:</strong> Tras el éxito en MariaDB, Flight PHP le solicita a Plates renderizar solo el fragmento de la nueva fila de la tabla de pedidos. Al final del archivo de Plates, se incluye un bloque HTML con el atributo <code>hx-swap-oob="true"</code> conteniendo las nuevas migas de pan actualizadas (<em>Inicio / Pedidos / Creado Exitosamente</em>). HTMX recibe la respuesta asíncrona, inyecta la nueva fila en la tabla de pedidos, actualiza los breadcrumbs externos y apaga el indicador visual de carga (spinner). Paralelamente, el servidor envía un evento push global. El Service Worker Nativo del navegador despierta en segundo plano y muestra una notificación nativa en la pantalla del usuario confirmando el registro del pedido.</li>
  </ul>

  <h3 id="sec2-3">2.3. Estructura de Directorios del Proyecto</h3>
  <p>El código fuente de las webapps y PWA se organiza bajo el repositorio <code>demos-oferta/main</code> siguiendo un patrón de modularidad estricta (Separation of Concerns):</p>

  <table>
    <caption>Tabla 9. Directorios del Proyecto</caption>
    <thead><tr><th>Módulo</th><th>Ruta Base</th><th>Negocio (Lógica)</th><th>Views (Plates/JSON)</th></tr></thead>
    <tbody>
      <tr><td><strong>Raíz del proyecto</strong></td><td><code>restaurantb/www/</code></td><td>—</td><td>—</td></tr>
      <tr><td><strong>Librería Global</strong></td><td><code>restaurant/commons/</code></td><td><strong>Logger.php, DB.php</strong></td><td>—</td></tr>
      <tr><td>PWA Mesero</td><td><code>restaurant/mesero/</code></td><td><code>mesero/negocio/</code></td><td>JSON API / REST</td></tr>
      <tr><td>KDS Cocina</td><td><code>restaurant/cocina/</code></td><td><code>cocina/negocio/</code></td><td><code>cocina/views/</code></td></tr>
      <tr><td>Webapp Caja</td><td><code>restaurant/caja/</code></td><td><code>caja/negocio/</code></td><td><code>caja/views/</code></td></tr>
      <tr><td>Webapp Reportes</td><td><code>restaurant/reportes/</code></td><td><code>reportes/negocio/</code></td><td><code>reportes/views/</code></td></tr>
      <tr><td>Webapp Sistema</td><td><code>restaurant/sistema/</code></td><td><code>sistema/negocio/</code></td><td><code>sistema/views/</code></td></tr>
    </tbody>
  </table>

  <div class="note">
    <strong>Aislamiento de Negocio y Commons:</strong><br>
    Cada módulo cuenta con su directorio <code>negocio/</code>, donde residen las funciones aisladas que operan la base de datos mediante PDO. Los controladores de Flight PHP solo enrutan y pasan datos. El directorio <code>commons/</code> contiene el código transversal (Logger Global, Excepciones, Validadores).
  </div>

  <h4 id="sec2-3-1">2.3.1. Contexto Web (URLs por Módulo)</h4>
  <p>Cada módulo de la aplicación está aislado bajo el contexto raíz <code>/restaurant/</code>, y requiere manejo de seguridad básico mediante control de sesión y autenticación (Delight-PHP/Auth). Las URLs asignadas son:</p>
  <ul>
    <li>Sistema: <a href="https://192.168.1.71:8443/restaurant/sistema">https://192.168.1.71:8443/restaurant/sistema</a></li>
    <li>Reportes: <a href="https://192.168.1.71:8443/restaurant/reportes">https://192.168.1.71:8443/restaurant/reportes</a></li>
    <li>PWA Mesero: <a href="https://192.168.1.71:8443/restaurant/mesero">https://192.168.1.71:8443/restaurant/mesero</a></li>
    <li>Login: <a href="https://192.168.1.71:8443/restaurant/login">https://192.168.1.71:8443/restaurant/login</a></li>
    <li>KDS Cocina: <a href="https://192.168.1.71:8443/restaurant/cocina">https://192.168.1.71:8443/restaurant/cocina</a></li>
    <li>Caja: <a href="https://192.168.1.71:8443/restaurant/caja">https://192.168.1.71:8443/restaurant/caja</a></li>
    <li>Admin: <a href="https://192.168.1.71:8443/restaurant/admin">https://192.168.1.71:8443/restaurant/admin</a></li>
  </ul>

  <div class="important" style="background-color: #eff6ff; border-left: 6px solid #3b82f6; padding: 15px; margin-top: 15px; margin-bottom: 20px; border-radius: 4px;">
    <strong>⚠️ Regla de Oro para Redirecciones en Flight PHP:</strong><br>
    Debido a que el sistema opera bajo una subcarpeta (ej. <code>/restaurant/</code> en la configuración LAN / localhost), el enrutador de Flight PHP autodetecta este contexto y lo añade dinámicamente como prefijo a todas las llamadas del método <code>Flight::redirect()</code>. 
    <br><br>
    Por tanto, al redirigir mediante programación:
    <ul>
      <li><strong>Incorrecto:</strong> <code>Flight::redirect('/restaurant/login');</code> (Produce un desvío inválido a <code>/restaurant/restaurant/login</code> que desencadena errores 404).</li>
      <li><strong>Correcto:</strong> <code>Flight::redirect('/login');</code> (Flight resolverá dinámicamente la URL física como <code>/restaurant/login</code> en runtime).</li>
    </ul>
    La única excepción aplicable son las respuestas para peticiones AJAX manejadas desde el cliente mediante HTMX u otros métodos de red directos, donde se debe inyectar manualmente la ruta absoluta usando la cabecera HTTP nativa <code>header("HX-Redirect: /restaurant/");</code>.
  </div>

  <h4 id="sec2-3-2">2.3.2. Estructura del Directorio de Activos Web (web-assets)</h4>
  <p>Para asegurar una arquitectura limpia e independiente del backend, todos los activos estáticos del frontend (CSS, JS, imágenes y manifiestos de PWA) de <strong>todos los módulos</strong> del producto residen físicamente en un solo directorio raíz compartido <code>web-assets/</code> (situado en <code>restaurantb/www/web-assets/</code>). Esto asegura que tanto las webapps como la PWA consuman los mismos recursos de diseño y lógica de manera global, evitando duplicidad:</p>
  <ul>
    <li><code>web-assets/css/</code> — Hojas de estilo globales (ej. <code>app-voice.css</code>, <code>paxstyle2.css</code>).</li>
    <li><code>web-assets/img/</code> — Elementos visuales, logos e iconos estáticos del sistema.</li>
    <li><code>web-assets/pwa/</code> — Manifiesto de la aplicación (<code>manifest.json</code>) y Service Workers nativos para habilitar el funcionamiento offline.</li>
    <li><code>web-assets/libs/</code> — Módulos y librerías externas de JavaScript organizados de forma aislada para evitar conflictos globales:
      <ul>
        <li><code>web-assets/libs/models/</code> — Subdirectorio especializado que contiene el motor cliente de Vosk, sus AudioWorklets y archivos auxiliares:
          <ul>
            <li><code>vosk.js</code> — Módulo JavaScript principal para la interfaz con el modelo WebAssembly de Vosk.</li>
            <li><code>pcm-processor.js</code> — Script de <code>AudioWorkletProcessor</code> para la captura y conversión de buffer de audio a PCM de 16kHz en segundo plano.</li>
            <li><code>asamblea.js</code> — Lógica de control de dictado y paridad para el módulo de asambleas.</li>
            <li><code>app-voice.js</code> y <code>app-main.js</code> — Orquestadores de inicialización de audio y estados de la UI.</li>
            <li><code>vosk-model-small-es-0.42.tar.gz</code> — Archivo comprimido del modelo acústico en español (39MB) requerido para el funcionamiento local offline de la PWA.</li>
          </ul>
        </li>
      </ul>
    </li>
  </ul>

  <h4 id="sec2-3-3">2.3.3. Reglas de Control de Versiones para Modelos y Activos Pesados</h4>
  <p>Debido al tamaño de los modelos de voz (el modelo small pesa ~39MB), por defecto las políticas de desarrollo globales del ecosistema omiten archivos con extensión <code>.tar.gz</code> para evitar sobrecargar los repositorios remotos de Git. Sin embargo, para garantizar que la PWA cuente con el recurso local necesario en el despliegue inmediato sin requerir descargas externas de terceros, se establece la siguiente regla SSOT:</p>
  <div class="important">
    <strong>Regla de Persistencia del Modelo:</strong>
    El archivo <code>web-assets/libs/models/vosk-model-small-es-0.42.tar.gz</code> debe ser empujado obligatoriamente en el repositorio remoto. Se prohíbe omitir este archivo en el push.
  </div>
  <p>Para implementar esta regla sin alterar el comportamiento general de Git para otros archivos comprimidos temporales, se agregó una excepción (negación) en el archivo <code>restaurantb/www/.gitignore</code> local:</p>
  <pre><code># Ignorar archivos comprimidos por defecto
*.tar.gz

# EXCEPCIÓN: Forzar tracking del modelo de voz
!web-assets/libs/models/vosk-model-small-es-0.42.tar.gz</code></pre>


  <h3 id="sec2-4">2.4. Control de Versiones y Sincronización Multi-Repositorio</h3>
  <p>El desarrollo del proyecto Agua y el módulo de comandas restaurante se distribuye y gestiona a través de los siguientes repositorios Git y herramientas de sincronización:</p>
  <ul>
    <li><strong>Repositorios Git del Ecosistema:</strong>
      <ul>
        <li><code>agua_chatledger/aguad_ac_oferta</code> (Rama: <code>aguad_ac_oferta</code>, Tenant Tlapa)</li>
        <li><code>caelitandem_home/main</code> (Repositorio general de desarrollo)</li>
        <li><code>demos-oferta/main</code> (Repositorio de distribución/demostración)</li>
      </ul>
    </li>
    <li><strong>Herramienta de Automatización de Sincronización:</strong>
      <p>Para garantizar la paridad absoluta del código y documentación en todos los entornos de desarrollo e integración, se ejecuta el script unificado de sincronización multi-repositorio:</p>
      <pre><code>Script: docs-dev/ga-cl-ia/sync_all_repos.sh</code></pre>
      <p>El script automatiza los commits y pushes de manera consistente, sanitizando secretos y credenciales para evitar el bloqueo del API de GitHub.</p>
    </li>
  </ul>
</section>

<!-- ═══════════════ 3. STACK TECNOLÓGICO ═══════════════ -->
<section id="sec3">
  <h2>3. Stack Tecnológico</h2>

  <table>
    <caption>Tabla 1. Stack Tecnológico Completo del Sistema</caption>
    <thead><tr><th>Capa</th><th>Tecnología</th><th>Versión</th><th>Propósito</th></tr></thead>
    <tbody>
      <tr><td>Sistema operativo servidor</td><td>Ubuntu Server LTS</td><td>22.04</td><td>Infraestructura base del servidor local</td></tr>
      <tr><td>Servidor web</td><td>Apache HTTP Server</td><td>2.4+</td><td>Host de aplicación PHP, SSL, virtual hosts</td></tr>
      <tr><td>Lenguaje backend</td><td>PHP</td><td>8.1 – 8.3</td><td>Lógica de negocio, API REST, TTS</td></tr>
      <tr><td>Procesador PHP</td><td>PHP-FPM</td><td>8.1 – 8.3</td><td>Gestión eficiente de procesos PHP concurrentes</td></tr>
      <tr><td>Base de datos</td><td>MariaDB</td><td>11</td><td>Persistencia relacional de comandas y usuarios</td></tr>
      <tr><td>Frontend mesero</td><td>PWA (HTML5 + JS)</td><td>ES2020+</td><td>Interfaz progresiva, captura de voz, offline</td></tr>
      <tr><td>Reconocimiento voz (mesero)</td><td>VOSK (WebAssembly)</td><td>0.3.45+</td><td>Transcripción offline de comandas a texto</td></tr>
      <tr><td>Reconocimiento voz (cocinero)</td><td>VOSK (WebAssembly)</td><td>0.3.45+</td><td>Transcripción de comandos de control del cocinero</td></tr>
      <tr><td>Modelo de lenguaje</td><td>vosk-model-small-es-0.42.tar.gz</td><td>0.42</td><td>Modelo pre-entrenado en español de 39MB (descargado y cacheado localmente)</td></tr>
      <tr><td>Síntesis de voz (TTS)</td><td>Web Speech API (SpeechSynthesis)</td><td>W3C</td><td>Anuncios en altavoz y respuestas en diademas</td></tr>
      <tr><td>Skills del Agente</td><td>Directrices y Estándares (.agents/skills/)</td><td>SSOT</td><td>Guías y patrones técnicos unificados que rigen la arquitectura y el código</td></tr>
      <tr><td>Audio API</td><td>Web Audio API + AudioWorklet</td><td>W3C</td><td>Captura y procesamiento de audio de baja latencia</td></tr>
      <tr><td>Almacenamiento local</td><td>IndexedDB API</td><td>W3C</td><td>Caché del modelo VOSK y cola offline</td></tr>
      <tr><td>Sincronización</td><td>Fetch API + Background Sync</td><td>W3C</td><td>Envío de comandas y sincronización offline</td></tr>
      <tr><td>Notificaciones tiempo real</td><td>Server-Sent Events (SSE)</td><td>W3C</td><td>Push de comandas a pantalla banner y caja</td></tr>
      <tr><td>Bluetooth audio</td><td>Web Bluetooth API / A2DP</td><td>W3C</td><td>Conexión de diademas al dispositivo Android</td></tr>
      <tr><td>Micro-framework backend</td><td>Flight PHP</td><td>3.x</td><td>Routing, middleware, DI Container para API REST</td></tr>
      <tr><td>Motor de plantillas</td><td>Plates (League)</td><td>3.3+</td><td>Vistas PHP nativas con herencia de layouts y secciones</td></tr>
      <tr><td>Interactividad hipermedia</td><td>HTMX</td><td>2.x</td><td>Intercambio parcial de HTML server-driven (WebApps KDS)</td></tr>
      <tr><td>Autenticación</td><td>Delight PHP Auth</td><td>—</td><td>Autenticación nativa segura (login, roles, sesiones)</td></tr>
      <tr><td>Persistencia offline</td><td>Dexie.js (IndexedDB)</td><td>4.x</td><td>Persistencia PWA con Garbage Collection estricto</td></tr>
      <tr><td>Logging y Telemetría</td><td>PSR-3 / custom logger</td><td>—</td><td>Captura centralizada de logs offline y backend</td></tr>
    </tbody>
  </table>

  <h3 id="sec3-1">3.1. Configuración de PHP-FPM</h3>
<pre><code>pm = ondemand
pm.max_children = 10
pm.process_idle_timeout = 10s
pm.max_requests = 500</code></pre>

  <h3 id="sec3-2">3.2. Configuración de MariaDB</h3>
<pre><code>innodb_buffer_pool_size = 512M
innodb_log_file_size = 128M
innodb_flush_log_at_trx_commit = 2
query_cache_size = 0
query_cache_type = 0</code></pre>

  <h3 id="sec3-3">3.3. Filosofía de Frugalidad del Stack</h3>
  <p>El diseño del sistema de comandas se rige por un principio estricto de <strong>frugalidad técnica</strong> y rechazo a frameworks pesados (como React, Angular o Laravel) para optimizar el rendimiento en el hardware local limitado (Servidor y teléfonos de gama media/baja). Se prioriza el intercambio de hipermedia servidor-cliente y el uso de librerías nativas o de bajo peso que no exigen procesos de compilación o empaquetado (build steps) costosos:</p>
  <ul>
    <li><strong>Minimización de JS en Cliente:</strong> Todo el dinamismo de la UI se delega a HTMX, reduciendo el código JS a la gestión de hardware (micrófono, audio) y sincronización (app.js, Web Worker de Vosk).</li>
    <li><strong>Ejecución Server-Side Eficiente:</strong> Flight PHP es un micro-framework de ultra-bajo consumo de memoria (~2MB de RAM por request) comparado con frameworks empresariales que cargan cientos de clases innecesarias en cada petición.</li>
    <li><strong>Persistencia Liviana:</strong> Toda la lógica transaccional compleja se desplaza a <strong>Stored Procedures</strong> optimizados directamente en la base de datos MariaDB, resolviendo peticiones críticas en tiempo submilisegundo y utilizando PDO puro.</li>
  </ul>

  <h3 id="sec3-4">3.4. Configuración de HTMX en el Ecosistema Ligero</h3>
  <p>La adopción de HTMX permite construir una SPA (Single Page Application) ligera manteniendo el control del estado y del HTML en el servidor (Flight/Plates). Las directivas de integración clave son:</p>
  <ul>
    <li><strong>hx-boost:</strong> Habilitado globalmente para interceptar todas las etiquetas <code>&lt;a&gt;</code> y formularios de la aplicación, convirtiendo las recargas tradicionales en llamadas AJAX transparentes.</li>
    <li><strong>Intercambios Fuera de Banda (OOB):</strong> Utilizado activamente (<code>hx-swap-oob="true"</code>) para actualizar elementos de interfaz remotos (ej. barra de estado del mesero, breadcrumbs, totales del día) en una única respuesta HTTP, sin necesidad de realizar múltiples peticiones AJAX paralelas.</li>
    <li><strong>Control de Retroalimentación de UI:</strong> Se configuran las clases <code>.htmx-request</code> y <code>hx-indicator</code> para activar automáticamente spinners e indicadores de carga globales, previniendo la frustración del usuario en llamadas lentas.</li>
  </ul>

<!-- ═══════════════ 4. MODELO DE BASE DE DATOS ═══════════════ -->
<section id="sec4">
  <h2>4. Modelo de Base de Datos</h2>
  <p>El esquema completo de la base de datos (ER, DDL, Procedimientos Almacenados, Delight-PHP/Auth) ha sido extraído a un documento independiente.</p>
  <a href="Tecnica_Modelo_Datos_Comandas_VOSK.html" style="display:inline-block; margin-top:10px; margin-bottom:20px; color:#2563eb; text-decoration:none; font-weight:600;">&rarr; Ver Modelo de Datos (ER y DDL)</a>
</section>

<!-- ═══════════════ 5. API BACKEND Y NEGOCIO ═══════════════ -->
<section id="sec5">
  <p>La especificación de endpoints y request/response ha sido extraída a un documento especializado.</p>
  <a href="Tecnica_API_Backend_Comandas_VOSK.html" style="display:inline-block; margin-top:10px; margin-bottom:20px; color:#2563eb; text-decoration:none; font-weight:600;">&rarr; Ver API Backend</a>
</section>

<!-- ═══════════════ 6. MOTOR VOSK Y RECONOCIMIENTO (STT) ═══════════════ -->
<section id="sec6">
  <h2>6. Motor VOSK / TTS y Arquitectura de Voz</h2>
  <p>Toda la arquitectura, lógica Levenshtein, y WebAssembly de IA ha sido extraída a un documento especializado.</p>
  <a href="Tecnica_Arquitectura_Voz_Comandas_VOSK.html" style="display:inline-block; margin-top:10px; margin-bottom:20px; color:#2563eb; text-decoration:none; font-weight:600;">&rarr; Ver Arquitectura de Voz (IA)</a>
</section>

<!-- ═══════════════ 8. FRONTEND PWA ═══════════════ -->
<section id="sec8">
  <h2>8. Frontend PWA del Mesero (Vanilla JS SPA)</h2>
  <p>A diferencia de las WebApps fijas (KDS, Caja) que usan HTMX, la PWA del Mesero es una <strong>Single Page Application (SPA) en Vanilla JS</strong>. Esto garantiza manipulación total del DOM y retención de estado sin depender del servidor.</p>

  <h3>8.1. Arquitectura Offline-First y Gaps Resueltos</h3>
  <p>El diseño incorpora características críticas de resiliencia (Enterprise PWA):</p>
  <ul>
    <li><strong>Background Sync API:</strong> Si la sincronización (<code>fetch</code>) falla, la tarea se inscribe a nivel de SO (Android). El dispositivo despertará al Service Worker automáticamente al detectar Wi-Fi, vaciando Dexie.js sin que el usuario tenga que abrir la app.</li>
    <li><strong>Actualización del Service Worker (Cache Invalidation):</strong> Se incluye un flujo que lanza un prompt ("Nueva versión disponible") y emite el comando <code>skipWaiting</code> para expulsar el caché del App Shell antiguo.</li>
    <li><strong>Cacheo de IA (WASM permanente):</strong> El modelo de voz de VOSK (~40MB) se descarga y se ancla al <code>CacheStorage</code> nativo del navegador durante el primer acceso, previniendo descargas lentas durante el servicio de mesas.</li>
    <li><strong>Seguridad Offline (RBAC y Session Rehydration):</strong> Al loguearse, la PWA cifra los roles de usuario en Dexie.js para manejar permisos offline. Si la sesión PHP caduca y la PWA intenta sincronizar (HTTP 401), se detiene la cola y se presenta un modal para reingresar el PIN, restaurando el flujo sin perder los pedidos dictados.</li>
    <li><strong>Motor de NLP Local (Levenshtein JS):</strong> Para mapear dictados como "taco arto" a su ID de producto real estando offline, se implementa un algoritmo de emparejamiento difuso (Jaro-Winkler/Levenshtein) puramente en Vanilla JS (<code>nlp_engine.js</code>), evitando depender del servidor para la interpretación fonética.</li>
    <li><strong>Resiliencia de Hardware y SO (Mitigaciones):</strong> Se implementa el <code>WakeLock API</code> en la estación KDS (Cocina) para prevenir la suspensión de la TTS. La PWA solicita <code>navigator.storage.persist()</code> para proteger Dexie.js de evicciones, e implementa un flujo estricto de <strong>Onboarding</strong> interceptando el <code>beforeinstallprompt</code> para asegurar los permisos de micrófono (evitando la falla de iOS/Android Stand-alone). Finalmente, inyecta cabeceras COOP (<code>Cross-Origin-Embedder-Policy: credentialless</code>) para el funcionamiento correcto de <code>SharedArrayBuffer</code> en navegadores modernos.</li>
  </ul>

  <h3>8.2. Gestión de Almacenamiento (Garbage Collection de Dexie.js)</h3>
  <p>Para evitar el colapso de la memoria local y el deterioro del rendimiento de Android (Storage Bloat), se aplica una recolección de basura estricta:</p>
  <ol>
    <li><strong>Destrucción Inmediata (Hard-Delete):</strong> La PWA purga los registros de Dexie.js en el milisegundo en que recibe el HTTP 200 OK de FlightPHP. No se guardan históricos locales de comandas enviadas.</li>
    <li><strong>TTL de Logs:</strong> Un script oculto borra automáticamente la telemetría local mayor a 3 días.</li>
    <li><strong>Actualizaciones Delta del Catálogo:</strong> Para limpiar productos descontinuados (fantasmas), el servidor envía el hash del menú actual. Si hay discrepancia, se borra todo el menú local antes de reinsertarlo.</li>
    <li><strong>Límites Duros (StorageManager):</strong> Si los datos IndexedDB (excluyendo el modelo IA) superan los 50MB, se forzará un barrido purificador.</li>
  </ol>

  <h3>8.3. Estructura de Archivos</h3>
  <table>
    <caption>Tabla 3. Archivos de la PWA del Mesero</caption>
    <thead><tr><th>Archivo</th><th>Función</th></tr></thead>
    <tbody>
      <tr><td><code>index.php</code></td><td>Shell principal y metadatos PWA</td></tr>
      <tr><td><code>web-assets/pwa/manifest.json</code></td><td>Configuración PWA</td></tr>
      <tr><td><code>web-assets/pwa/sw.js</code></td><td>Service Worker (App Shell + Background Sync API)</td></tr>
      <tr><td><code>web-assets/pwa/db.js</code></td><td>Esquema de IndexedDB (con Garbage Collector integrado)</td></tr>
      <tr><td><code>web-assets/libs/models/vosk.js</code></td><td>Inferencia local de voz a texto (WASM)</td></tr>
      <tr><td><code>web-assets/commons/nlp_engine.js</code></td><td>Motor Levenshtein Local para Fuzzy Matching</td></tr>
      <tr><td><code>web-assets/commons/logger.js</code></td><td>Telemetría PWA (Faro de sincronización de errores)</td></tr>
      <tr><td><code>web-assets/libs/models/app-main.js</code></td><td>Lógica principal SPA, UI y control del DOM asíncrono</td></tr>
    </tbody>
  </table>

</section>

<!-- ═══════════════ 9. PANTALLA BANNER ═══════════════ -->
<section id="sec9">
  <h2>9. Frontend Pantalla Banner de Cocina</h2>
  <p>La pantalla de cocina es una interfaz web de solo lectura optimizada para monitores horizontales de 19 a 24 pulgadas. No admite entrada táctil, clic ni teclado.</p>

  <h3>9.1. Técnica de Implementación</h3>
  <ul>
    <li><strong>Actualización:</strong> Server-Sent Events (SSE) o polling cada 5 segundos al endpoint <code>/api/comandas/pendientes.php</code>.</li>
    <li><strong>Renderizado:</strong> DOM virtual ligero para actualización eficiente de tarjetas sin recargar la página completa.</li>
    <li><strong>Ordenamiento:</strong> Las comandas se ordenan por <code>creado_en</code> ascendente (FIFO) en el query SQL.</li>
    <li><strong>Código de colores:</strong> CSS dinámico basado en minutos transcurridos desde <code>creado_en</code>.
      <ul>
        <li>🟢 Verde (<code>border-left: 6px solid #28a745</code>): 0–10 minutos</li>
        <li>🟡 Amarillo (<code>border-left: 6px solid #ffc107</code>): 10–20 minutos</li>
        <li>🔴 Rojo (<code>border-left: 6px solid #dc3545</code>): más de 20 minutos</li>
      </ul>
    </li>
    <li><strong>Tiempo transcurrido:</strong> Actualización del contador vía <code>setInterval</code> en JavaScript del lado del cliente.</li>
  </ul>

  <h3>9.2. Layout CSS del Banner</h3>
<pre><code>/* Estructura del banner de cocina */
.banner-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 16px;
    padding: 16px;
}
.comanda-card {
    border-left: 6px solid #28a745;
    padding: 16px;
    margin: 8px;
    border-radius: 8px;
    background: white;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}
.comanda-card.urgente { border-left-color: #ffc107; }
.comanda-card.critica { border-left-color: #dc3545; }
.mesa-numero { font-size: 48px; font-weight: bold; text-align: center; }
.tiempo-transcurrido { font-family: monospace; font-size: 24px; }</code></pre>

  <h3 id="sec9-3">9.3. Frontend Administrativo (Caja, Reloj Checador y Reportes)</h3>
  <p>Toda la interfaz administrativa y de gestión de personal se rige bajo una <strong>arquitectura server-driven hipermedia (HTMX)</strong>. A diferencia de los dispositivos móviles (PWA), estos módulos (Caja, Reportes y Reloj Checador) no operan offline y no emplean estado local complejo.</p>
  <ul>
    <li><strong>Reloj Checador:</strong> Interfaz HTMX simple (un input de PIN). Al disparar el evento <code>hx-post</code>, el backend PHP registra la Entrada o Salida transaccionalmente en MariaDB (<code>asistencias_personal</code>) y retorna un fragmento OOB con el mensaje de éxito o advertencia.</li>
    <li><strong>Cortes y Arqueos de Caja (Z/X):</strong> Consumen los <code>comanda_id</code> cerrados. HTMX inyecta el cálculo financiero generado por un Procedimiento Almacenado en MariaDB y presenta el botón para realizar el Corte Z final (que bloquea los tickets vinculándolos criptográficamente a un <code>corte_id</code>).</li>
    <li><strong>Reportes Analíticos:</strong> Las peticiones de filtrado de fecha (usando <code>hx-get</code>) devuelven un fragmento HTML que incluye un nuevo bloque <code>&lt;script&gt;</code> embebido con los datos JSON consolidados, disparando la recarga de gráficas nativas de <strong>Chart.js</strong> para visualizar horas pico, ventas y desempeño.</li>
    <li><strong>Dashboard de Telemetría (Log Viewer):</strong> Una tabla con paginación HTMX que consulta la tabla <code>sys_logs</code> del backend. Los logs offline de las PWAs se ingieren mediante peticiones en ráfaga (batch POST JSON) enviadas por los Service Workers de los meseros cuando recuperan conexión, integrando tanto sus errores como el <code>correlation_id</code> y <code>device_id</code> (huella digital de dispositivo).</li>
  </ul>
</section>

<!-- ═══════════════ 10. INFRAESTRUCTURA ═══════════════ -->
<section id="sec10">
  <h2>10. Infraestructura y Despliegue (DevOps)</h2>
  <p>El manual de servidores, red local, seguridad, PWA y troubleshooting Android ha sido extraído a un manual de operaciones.</p>
  <a href="Tecnica_Infraestructura_Despliegue_Comandas_VOSK.html" style="display:inline-block; margin-top:10px; margin-bottom:20px; color:#2563eb; text-decoration:none; font-weight:600;">&rarr; Ver Infraestructura y Despliegue DevOps</a>
</section>

<!-- ═══════════════ 12. GLOSARIO TÉCNICO ═══════════════ -->
<section id="sec12">
  <h2>12. Glosario Técnico</h2>
  <dl>
    <dt><strong>VOSK</strong></dt>
    <dd>Toolkit de reconocimiento de voz offline de código abierto basado en Kaldi. Ejecuta localmente en el navegador vía WebAssembly o centralizado en el servidor mediante contenedores Docker.</dd>
    
    <dt><strong>WASM (WebAssembly)</strong></dt>
    <dd>Formato binario ejecutable en navegadores a velocidad cercana al código nativo. Permite ejecutar el modelo acústico de VOSK en el dispositivo del mesero usando los procesadores locales, sin instalar librerías adicionales.</dd>
    
    <dt><strong>IndexedDB / Dexie.js</strong></dt>
    <dd>Base de datos transaccional integrada en el navegador, utilizada mediante el wrapper Dexie.js para almacenar la cola offline de comandas (IT1/IT2) y el buzón histórico de notificaciones Push PWA.</dd>
    
    <dt><strong>AudioWorklet</strong></dt>
    <dd>API de procesamiento de audio nativa de baja latencia que opera en un hilo secundario y captura el micrófono en un buffer circular a 16 kHz PCM mono, previniendo cuellos de botella en la interfaz de usuario.</dd>
    
    <dt><strong>Server-Sent Events (SSE)</strong></dt>
    <dd>Tecnología de comunicación unidireccional (Servidor a Cliente) de bajo consumo, ideal para inyectar actualizaciones de estado de órdenes en la pantalla Banner del KDS de cocina sin forzar conexiones bidireccionales pesadas.</dd>
    
    <dt><strong>Swoole Async Server</strong></dt>
    <dd>Extensión de PHP que convierte la ejecución en un servidor asíncrono y manejador de WebSockets (Puerto 6003), utilizado para transmitir streams continuos de audio crudo (PCM) en tiempo real para la estrategia IT2.</dd>
  </dl>
</section>

<!-- Plan de Implementación migrado a Control_Proyecto_Comandas_VOSK.html -->

<!-- ═══════════════ 13. REFERENCIAS ═══════════════ -->
<section id="sec13" class="references">
  <h2>13. Referencias</h2>
  <ol>
    <li>Alpha Cephei. (2024). VOSK Speech Recognition Toolkit. Documentación oficial. <a href="https://alphacephei.com/vosk/">https://alphacephei.com/vosk/</a></li>
    <li>Alpha Cephei. (2024). VOSK Models Repository. <a href="https://alphacephei.com/vosk/models">https://alphacephei.com/vosk/models</a></li>
    <li>Alphacephei. (2023). vosk-api. Repositorio GitHub. <a href="https://github.com/alphacep/vosk-api">https://github.com/alphacep/vosk-api</a></li>
    <li>W3C. (2021). Web Audio API. Especificación W3C. <a href="https://www.w3.org/TR/webaudio/">https://www.w3.org/TR/webaudio/</a></li>
    <li>W3C. (2021). Web Speech API. Especificación W3C. <a href="https://wicg.github.io/speech-api/">https://wicg.github.io/speech-api/</a></li>
    <li>W3C. (2015). Indexed Database API 2.0. Especificación W3C. <a href="https://www.w3.org/TR/IndexedDB/">https://www.w3.org/TR/IndexedDB/</a></li>
    <li>Mozilla Developer Network. (2024). Progressive Web Apps (PWAs). MDN Web Docs. <a href="https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps">https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps</a></li>
    <li>Apache Software Foundation. (2024). Apache HTTP Server Documentation. Version 2.4. <a href="https://httpd.apache.org/docs/2.4/">https://httpd.apache.org/docs/2.4/</a></li>
    <li>The PHP Group. (2024). PHP Manual. Version 8.3. <a href="https://www.php.net/docs.php">https://www.php.net/docs.php</a></li>
    <li>MariaDB Foundation. (2024). MariaDB Server Documentation. Version 11. <a href="https://mariadb.com/kb/en/documentation/">https://mariadb.com/kb/en/documentation/</a></li>
  </ol>
</section>

<!-- Backlog migrado a Control_Proyecto_Comandas_VOSK.html -->

<!-- ═══════════════ 15. ANEXOS ═══════════════ -->
<section id="sec15">
  <h2>15. Anexos</h2>
  
  <h3>Anexo 15.1. Prototipo Estructural B.1: Configuración de Rutas, Base de Datos e Idempotencia (index.php)</h3>
  <p>Esqueleto de integración del micro-framework Flight PHP y el puente nativo PDO (para Delight-PHP/Auth y consultas crudas):</p>
<pre><code>&lt;?php
// index.php - Servidor de Rutas Principal bajo Apache 2.4
require_once __DIR__ . '/commons/commons.php';

use Delight\Auth\Auth;

// Estándar de inyección de conexión de Base de Datos en Flight:
// Se prohíbe el uso de Flight::register('db', 'PDO', ...) ya que Flight intentará instanciar la clase
// llamando al constructor de PDO sin parámetros, arrojando excepciones runtime de PHP.
// En su lugar, se debe mapear de forma segura la función retornando la instancia singleton de la BD:
Flight::map('db', function() {
    return \Common\DB::connect();
});

Flight::map('checkPermission', function($permiso) {
    $auth = Flight::auth();
    if (!$auth->isLoggedIn()) return false;
    
    // Verificación de RBAC manual o con query PDO
    return true; // Simplificado para el ejemplo
});

Flight::route('POST /transaccion', function() {
    $token = Flight::request()->data->idempotency_token;
    
    if (!isset($_SESSION['processed_tokens'][$token])) {
        // Ejecución segura mediante Stored Procedures con PDO
        $stmt = Flight::db()->prepare("CALL RegistrarOperacionNegocio(:user_id, :monto)");
        $stmt->execute([
            ":user_id" => 1,
            ":monto" => Flight::request()->data->monto
        ]);
        $_SESSION['processed_tokens'][$token] = true;
    }
    
    echo Flight::view()->render('partials/exito', ['mensaje' => 'Guardado exitosamente']);
});

Flight::start();
</code></pre>

  <h3>Anexo 15.2. Prototipo Estructural B.2: Formulario Declarativo con Controladores HTMX (vistas/formulario.php)</h3>
  <p>Ejemplo de formulario web responsivo que utiliza las directivas declarativas de HTMX para deshabilitar elementos e inyectar actualizaciones fuera de banda:</p>
<pre><code>&lt;?php $this->layout('layout', ['title' => 'Nueva Operación']) ?>

&lt;form hx-post="/transaccion" 
      hx-target="#vista-principal" 
      hx-indicator="#loader" 
      hx-disabled-elt="this, #btn-enviar">
    
    &lt;!-- Token de Idempotencia para evitar reenvíos duplicados -->
    &lt;input type="hidden" name="idempotency_token" value="&lt;?=uniqid('token_', true)?>">
    
    &lt;input type="number" name="monto" required min="1">
    &lt;button type="submit" id="btn-enviar">Confirmar Operación&lt;/button>
&lt;/form>

&lt;!-- Intercambio fuera de banda (OOB) para actualizar migas de pan asíncronamente -->
&lt;nav id="breadcrumbs" hx-swap-oob="true">
    &lt;a href="/">Inicio&lt;/a> / &lt;span>Transacciones&lt;/span>
&lt;/nav>
</code></pre>
</section>

<section id="anexo16">
  <h2>Anexo 16. Arquitectura PWA y Gestión del Motor VOSK WASM Monohilo</h2>
  <p><strong>Problema Estructural (WASM OOM & Cuellos de Botella):</strong> El motor VOSK para el reconocimiento de voz en español se compila en WebAssembly (WASM) utilizando un paradigma monohilo estricto (no requiere <code>SharedArrayBuffer</code> ni políticas COEP/COOP). Dado que el código C++ subyacente asigna memoria en un <em>Heap</em> lineal que no es gestionado por el Garbage Collector de JavaScript, el uso continuo del micrófono durante una jornada laboral de 8 horas conlleva a dos grandes riesgos:</p>
  <ol>
    <li><strong>Fugas de Memoria y Crash:</strong> El objeto <code>KaldiRecognizer</code> retiene la historia acústica si no se destruye explícitamente mediante <code>recognizer.remove()</code> o mediante la terminación absoluta del Web Worker, culminando en un <em>OOM (Out Of Memory)</em> o error <em>Aw Snap</em> del navegador.</li>
    <li><strong>Encolamiento (Backpressure):</strong> Al ser monohilo, si el hardware de la tableta reduce la velocidad de CPU por temperatura térmica (thermal throttling), el motor tarda más en procesar un "chunk" de PCM de 256ms. Esto causa que los chunks se acumulen en el Web Worker, generando "lag" en la transcripción visual.</li>
  </ol>
  
  <h3>Plan de Mitigación y Resiliencia Implementado (Workaround PWA)</h3>
  <p><strong>Nota Arquitectónica:</strong> Las siguientes mitigaciones son consideradas un <em>workaround (solución paliativa)</em> debido a las restricciones inherentes de WebAssembly en el entorno restringido del navegador móvil. Para una solución permanente, se recomienda la portabilidad a una arquitectura Nativa (Kotlin).</p>
  <ul>
    <li><strong>1. Configuración Dinámica (Local Storage):</strong> Se ha implementado un panel de <em>Configuración de Voz</em> local en la PWA, evitando parámetros en duro. Los usuarios ajustan la carga en función de su hardware.</li>
    <li><strong>2. Ciclo de Vida Efímero (Kill-and-Respawn):</strong> Tras un número predefinido de comandos (configurable vía <code>MAX_COMMANDS_BEFORE_RESTART</code>), el hilo secundario (<code>voskWorker.terminate()</code>) es purgado automáticamente y respawneado, forzando la liberación total de la RAM en el sistema operativo cliente sin afectar el hilo principal (UI Thread).</li>
    <li><strong>3. Optimización con VAD (Voice Activity Detection):</strong> El AudioWorklet <code>pcm-processor.js</code> implementa un umbral matemático (<code>VAD_THRESHOLD</code>). Todo audio detectado como "silencio puro" no se encola al Web Worker, ahorrando más del 40% del ciclo de CPU del motor VOSK monohilo durante las pausas del habla.</li>
    <li><strong>4. Timeout Rudo de Contexto:</strong> Cierre agresivo del <code>AudioContext</code> y <code>MediaStreamTrack</code> tras la finalización del dictado para detener la zombificación del micrófono.</li>
    <li><strong>5. Estrategia Cache-First para Activos de Voz (SW):</strong> Se configuró una directiva selectiva <code>Cache-First</code> en el Service Worker (<code>sw.js</code>) para el modelo acústico comprimido (38MB) y la librería <code>vosk.js</code> (5.5MB). Tras la primera descarga, el motor de voz se carga instantáneamente desde el caché local (&lt;50ms) sin depender de validaciones de red inestables.</li>
    <li><strong>6. Forzado de Tasa de Muestreo (16kHz):</strong> Se inicializa el <code>AudioContext</code> con una tasa explícita de 16,000 Hz, adaptando la captura de hardware a la frecuencia nativa del modelo VOSK y eliminando el costo de CPU de un downsampling manual en JavaScript.</li>
    <li><strong>7. Persistencia Evict-Proof (Storage Manager):</strong> La PWA invoca <code>navigator.storage.persist()</code> asíncronamente para marcar la base de datos IndexedDB (Dexie) como persistente, evitando que Android elimine el catálogo de 55 productos o la cola local de comandas bajo presión de almacenamiento.</li>
  </ul>
  
  <h3>Limitante Crítica: Ejecución en Segundo Plano y Bloqueo de Pantalla</h3>
  <p>En el uso operativo real, los meseros tienden a guardar la tablet en el delantal, lo que apaga la pantalla. En nuestra actual PWA:</p>
  <ul>
    <li><strong>El Gap de la Pantalla Apagada:</strong> Los navegadores móviles (Chrome/Safari) pausan severamente o detienen por completo la ejecución de Web Workers y el acceso al micrófono <code>getUserMedia()</code> cuando la pantalla se apaga o la pestaña pasa a segundo plano. Esto causa la desconexión silenciosa del VOSK.</li>
    <li><strong>Workaround Actual (WakeLock):</strong> Hemos implementado <code>navigator.wakeLock.request('screen')</code> durante la escucha, lo que <em>obliga a la pantalla a permanecer encendida</em> mientras el micrófono está activo. Sin embargo, esto genera <strong>dos consecuencias negativas:</strong> calentamiento térmico excesivo de la tableta y drenaje acelerado de la batería.</li>
    <li><strong>Conclusión y Resolución Arquitectónica:</strong> Dado que en una PWA web es técnicamente imposible mantener una escucha continua 100% fiable con la pantalla bloqueada en el bolsillo (sólo resoluble vía app nativa Kotlin), se evaluaron 3 alternativas:
      <ul>
        <li><em>Alternativa A (Push-to-Talk):</em> Eliminar el WakeLock. El micrófono solo se abre al tocar el botón y se cierra agresivamente de forma automática tras enviar la comanda. La tablet puede bloquearse al instante.</li>
        <li><em>Alternativa B (Page Visibility API):</em> Interceptar <code>document.hidden</code> para cerrar el motor automáticamente al apagar la pantalla, reiniciándolo al encenderla.</li>
        <li><em>Alternativa C (Idle Timeout):</em> Auto-apagado por inactividad tras X segundos de silencio.</li>
      </ul>
      <strong>Decisión Implementada (Arquitectura Híbrida):</strong> Se implementó la <strong>Alternativa A (Push-to-Talk Efímero) para Meseros</strong>. Se eliminó el uso de <code>WakeLock</code> en la UI del mesero. El flujo garantiza cero consumo en segundo plano y cero sobrecalentamiento, asumiendo que el mesero inicia y termina la interacción por mesa de manera atómica.<br><br>
      <em>Excepción (Gap de Cocina KDS):</em> Para el rol de Cocinero (<code>cocina-voice.js</code>), se determinó que el KDS es un entorno <strong>Perpetuo con WakeLock activo</strong>. Dado que las tablets de cocina están fijas a la pared y asumen carga eléctrica ilimitada (conectadas a corriente), el WakeLock se mantiene encendido intencionalmente para garantizar un flujo de manos libres <em>(hands-free)</em> continuo sin que la pantalla se apague por inactividad.
    </li>
  </ul>
</section>

</body>
</html>

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Pruebas_Casos_Validacion_Comandas_VOSK.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
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
<title>Pruebas y Validación — Comandas VOSK</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>

<header class="cover">
  <h1>Casos de Prueba y Plan de Validación (QA)</h1>
  <div class="cover-meta">
    <div><strong>Documento:</strong> Pruebas_Casos_Validacion_Comandas_VOSK</div>
    <div><strong>Fecha:</strong> Julio 2026</div>
  </div>
  <p class="cover-desc">Suite unificada de casos de prueba funcionales (automatizados) y plan de validación manual end-to-end (UI, hardware y VOSK WASM) para garantizar la estabilidad del sistema por fases.</p>
</header>

<nav class="toc">
  <h2>Índice de Contenidos</h2>
  <ol>
    <li><a href="#sec1">Casos de Prueba Funcionales (Automatizados)</a></li>
    <li><a href="#sec2">Plan de Validación Manual (UI y Voz End-to-End)</a></li>
  </ol>
</nav>

<main>

<section id="sec1">
  <h2>1. Casos de Prueba Funcionales (Automatizados CLI)</h2>

  <div class="important" style="background-color: #d1fae5; border-left: 6px solid #10b981; padding: 15px; margin-bottom: 20px;">
    <strong>🧪 Ejecutar Suite Automática:</strong> 
    <code>php /home/carlos/GitHub/caelitandem_home/restaurantb/tests/run_functional_tests.php</code><br>
    <small>Requiere conexión a BD vcd01 en localhost:6002. Autogestiona cleanup de datos de prueba. No persiste datos falsos en el entorno real.</small>
  </div>

  <div class="note info" style="background-color: #f8fafc; border-left: 4px solid #64748b; padding: 15px; margin-bottom: 20px; border-radius: 4px; font-size: 0.9em; color: #334155;">
    <strong>🔎 Alcance y Diferencia de Entornos (CLI vs. Navegador):</strong><br>
    Este suite de pruebas automatizadas se ejecuta en el **Backend (CLI de PHP)** y valida la integridad lógica de la base de datos, procedimientos almacenados y flujos ACID transaccionales. Es crucial entender su alcance diferenciado:
    <ul style="margin-top: 5px; margin-bottom: 0; padding-left: 20px;">
      <li><strong>Qué VALIDA:</strong> Estructura del esquema MySQL/MariaDB, asignación de permisos RBAC, ejecución de stored procedures con parámetros extendidos, e inserciones y actualizaciones de estado directamente en base de datos.</li>
      <li><strong>Qué NO VALIDA (Requiere validación de UI/Red):</strong>
        <ul>
          <li><strong>Rutas y Enlaces Estáticos:</strong> Errores 404/500 al cargar recursos CSS, JS o imágenes locales (ya que el script CLI no descarga ni renderiza el marcado HTML).</li>
          <li><strong>Routing y Redirecciones del Servidor:</strong> Redirecciones dinámicas basadas en roles o sesión gestionadas por Flight PHP.</li>
          <li><strong>Seguridad del Cliente (HTTPS y Micrófono):</strong> Las políticas del navegador sobre <code>getUserMedia()</code> y el almacenamiento offline de <code>Dexie.js / Service Worker</code>.</li>
        </ul>
      </li>
    </ul>
    Por lo tanto, la suite automatizada certifica la robustez del **motor de datos**, mientras que el **Plan de Validación Manual (Sección 2)** es indispensable para certificar la visualización de la UI, la seguridad HTTPS y el dictado de voz.
  </div>

  <h3>1.1. Fase 1 — Esquema y Usuarios</h3>
  <table>
    <caption>Casos de Prueba: Estructura de BD y Autenticación de Cocineros</caption>
    <thead><tr><th>ID</th><th>Caso</th><th>Criterio de Aceptación</th><th>Resultado (Automático)</th></tr></thead>
    <tbody>
      <tr><td>F1-01</td><td>Conexión a BD vcd01</td><td>PDO conecta sin excepción al puerto 6002</td><td>✅ OK</td></tr>
      <tr><td>F1-02</td><td>Columna <code>numero_personas</code> en <code>comandas</code></td><td><code>SHOW COLUMNS</code> devuelve la columna</td><td>✅ OK</td></tr>
      <tr><td>F1-03</td><td>Columna <code>metodo_captura</code> en <code>comandas</code></td><td><code>SHOW COLUMNS</code> devuelve la columna</td><td>✅ OK</td></tr>
      <tr><td>F1-04</td><td>Cocinero 1 registrado</td><td><code>cocinero1@restaurante.local</code> existe en tabla <code>users</code></td><td>✅ OK (ID=5)</td></tr>
      <tr><td>F1-05</td><td>Cocinero 2 registrado</td><td><code>cocinero2@restaurante.local</code> existe en tabla <code>users</code></td><td>✅ OK</td></tr>
      <tr><td>F1-06</td><td>Cocinero 3 registrado</td><td><code>cocinero3@restaurante.local</code> existe en tabla <code>users</code></td><td>✅ OK</td></tr>
      <tr><td>F1-07</td><td>Permiso <code>ver_kds</code> asignado a los 3 cocineros</td><td>3 registros en <code>rbac_permisos_usuarios</code> para IDs 5, 6, 7</td><td>✅ OK</td></tr>
      <tr><td>F1-08</td><td>SP <code>RegistrarComanda</code> acepta <code>p_numero_personas</code></td><td><code>SHOW CREATE PROCEDURE</code> incluye el parámetro</td><td>✅ OK</td></tr>
      <tr><td>F1-09</td><td>SP <code>RegistrarComanda</code> acepta <code>p_metodo_captura</code></td><td><code>SHOW CREATE PROCEDURE</code> incluye el parámetro</td><td>✅ OK</td></tr>
      </tbody>
  </table>

  <h3>1.2. Fase 2 — Ciclo Completo de Comanda</h3>
  <table>
    <caption>Casos de Prueba: Registro y validación de comanda transaccional</caption>
    <thead><tr><th>ID</th><th>Caso</th><th>Criterio de Aceptación</th><th>Resultado (Automático)</th></tr></thead>
    <tbody>
      <tr><td>F2-01</td><td>Producto disponible en catálogo</td><td>Al menos 1 producto con <code>disponible=1</code></td><td>✅ OK ("Agua de horchata", $30)</td></tr>
      <tr><td>F2-02</td><td>Ejecución de SP <code>RegistrarComanda</code></td><td>CALL devuelve <code>comanda_id &gt; 0</code> y <code>total &gt; 0</code></td><td>✅ OK</td></tr>
      <tr><td>F2-03</td><td>Persistencia de <code>numero_personas=2</code></td><td>Campo leído de BD coincide con valor enviado</td><td>✅ OK</td></tr>
      <tr><td>F2-04</td><td>Persistencia de <code>metodo_captura='teclado'</code></td><td>Campo leído de BD coincide con valor enviado</td><td>✅ OK</td></tr>
      <tr><td>F2-05</td><td>Estado inicial de comanda es <code>'pendiente'</code></td><td>Campo <code>estado</code> = 'pendiente' al insertar</td><td>✅ OK</td></tr>
      </tbody>
  </table>

  <h3>1.3. Fase 3 — Comandos de Voz del Cocinero</h3>
  <table>
    <caption>Casos de Prueba: Parser NLP de comandos de voz de cocina (simulación SQL directa)</caption>
    <thead><tr><th>ID</th><th>Comando</th><th>Acción Esperada</th><th>Resultado (Automático)</th></tr></thead>
    <tbody>
      <tr><td>F3-01</td><td><em>"preparar siguiente"</em></td><td>Comanda más antigua en <code>pendiente</code> pasa a <code>en_preparacion</code></td><td>✅ OK</td></tr>
      <tr><td>F3-02</td><td><em>"listo mesa N"</em></td><td>Comanda en <code>en_preparacion</code> pasa a <code>listo</code></td><td>✅ OK</td></tr>
      <tr><td>F3-03</td><td><em>"recuperar mesa N"</em></td><td>Comanda en <code>listo</code> regresa a <code>en_preparacion</code></td><td>✅ OK</td></tr>
      <tr><td>F3-04</td><td><em>"ordenes pendientes"</em></td><td>Devuelve conteo de activas (pendiente + en_preparacion)</td><td>✅ OK</td></tr>
      <tr><td>F3-05</td><td><em>"repetir orden mesa N"</em></td><td>Query a <code>detalle_comandas</code> devuelve ≥1 ítems activos</td><td>✅ OK</td></tr>
      </tbody>
  </table>

  <h3>1.4. Fase 4 — Cancelaciones y Cierre</h3>
  <table>
    <caption>Casos de Prueba: Flujo de cancelación y estado de cocina</caption>
    <thead><tr><th>ID</th><th>Caso</th><th>Criterio de Aceptación</th><th>Resultado (Automático)</th></tr></thead>
    <tbody>
      <tr><td>F4-01</td><td>Tabla <code>cancelaciones_pendientes</code> accesible</td><td>SELECT sin excepción</td><td>✅ OK</td></tr>
      <tr><td>F4-02</td><td>Insertar solicitud de cancelación</td><td>INSERT retorna <code>lastInsertId() &gt; 0</code></td><td>✅ OK</td></tr>
      <tr><td>F4-03</td><td><em>"si cancelar"</em> — aprobación</td><td>Transacción actualiza tabla <code>cancelaciones_pendientes</code> y <code>detalle_comandas</code></td><td>✅ OK</td></tr>
      <tr><td>F4-04</td><td><em>"GET /api/cocina/estado"</em></td><td>Devuelve conteo de grupos de estado y cancelaciones</td><td>✅ OK</td></tr>
      <tr><td>F4-05</td><td>Limpieza de datos de prueba</td><td>DELETE en cascada de comanda de prueba y sus detalles sin error</td><td>✅ OK</td></tr>
      </tbody>
  </table>
</section>

<section id="sec2">
  <h2>2. Plan de Validación Manual (UI y Voz End-to-End)</h2>

  <div class="note info" style="background-color: #eff6ff; border-left: 4px solid #3b82f6; padding: 15px; margin-bottom: 20px; border-radius: 4px;">
    <strong>🔒 Requisito de Seguridad (Acceso por HTTPS y Micrófono):</strong><br>
    Para validar la captura VOSK WASM, es <strong>obligatorio</strong> acceder mediante protocolo seguro <code>HTTPS</code> (ej. <code>https://192.168.1.71:8443</code>) para que Google Chrome y otros navegadores no bloqueen el acceso a la API del micrófono. 
    Dado que se utiliza una entidad certificadora local (generada por <code>mkcert</code>), debes instalar la CA raíz en los dispositivos clientes.
    <br><br>
    Las instrucciones paso a paso detalladas para la descarga e instalación del certificado raíz se encuentran en:<br>
    👉 <a href="Instrucciones_Despliegue_Comandas_VOSK.html#sec-pasos-despliegue" style="font-weight: bold; color: #2563eb;">Instrucciones_Despliegue_Comandas_VOSK.html#sec-pasos-despliegue (Guía de Instalación de la CA Local)</a>
  </div>

  <div class="note" style="background-color: #fffbeb; border-left: 4px solid #f59e0b; padding: 15px; margin-bottom: 20px; border-radius: 4px; color: #78350f;">
    <strong>🧪 Recomendación de QA — Limpieza Total vs. Botón "Forzar Sincronización":</strong><br>
    Al realizar pruebas sobre el ciclo de vida de la PWA, es vital diferenciar el alcance de cada mecanismo de restablecimiento:
    <ul style="margin-top: 5px; margin-bottom: 0; padding-left: 20px;">
      <li><strong>Limpieza Total (Fase de Preparación QA):</strong> Se realiza desde las herramientas del desarrollador (Pestaña <em>Application -> Clear site data</em>). <strong>Es obligatoria antes de iniciar un ciclo de QA completo</strong>, ya que desinstala el Service Worker, purga el caché de archivos JS/CSS del servidor y vacía las tablas físicas de IndexedDB (Dexie), garantizando que no queden datos residuales.</li>
      <li><strong>Botón "Forzar Sincronización de Diagnóstico" (UI):</strong> Ubicado en el panel de la PWA, remueve el hash del catálogo en <code>localStorage</code> y recarga la página. <strong>Es una herramienta operativa</strong> diseñada para actualizar en caliente el catálogo de productos (los 55 ítems) y re-compilar la gramática del reconocedor VOSK sin necesidad de limpiar la caché del navegador ni desinstalar el Service Worker.</li>
    </ul>
  </div>

  <h3>2.1. Acceso y Autenticación Unificada (Login por PIN)</h3>
  <div class="test-case-detail" style="background: rgba(255,255,255,0.02); border: 1px solid var(--surface-border); padding: 1.5rem; border-radius: 8px; margin-bottom: 1.5rem;">
    <p><strong>Propósito:</strong> Validar el ingreso seguro mediante PIN (sin requerir correo en la UI) y redirección automática según el rol asignado por Delight Auth.</p>
    <ul>
      <li><strong>URL de Acceso:</strong> <a href="https://192.168.1.71:8443/restaurant/login/" target="_blank" style="color: var(--primary);">https://192.168.1.71:8443/restaurant/login/</a></li>
      <li><strong>Datos de Entrada (PINs de prueba):</strong>
        <ul>
          <li><strong>Mesero (Juan Pérez):</strong> PIN <code>2222</code> (Resuelve email: <code>juan@restaurante.local</code>)</li>
          <li><strong>Cocinero (Cocinero Uno):</strong> PIN <code>3001</code> (Resuelve email: <code>cocinero1@restaurante.local</code>)</li>
          <li><strong>Administrador:</strong> PIN <code>1234</code> (Resuelve email: <code>admin@restaurante.local</code>)</li>
        </ul>
      </li>
      <li><strong>Pasos a seguir:</strong>
        <ol>
          <li>Abra el navegador en un cliente local y navegue a la URL indicada.</li>
          <li>Verifique que la pantalla muestra la tarjeta "Iniciar Sesión" y el campo de entrada <strong>"PIN de Acceso"</strong> configurado como contraseña (oculto).</li>
          <li>Escriba el PIN de mesero <code>2222</code> y haga clic en <strong>"Entrar al Sistema"</strong>.</li>
        </ol>
      </li>
      <li><strong>Resultado Esperado:</strong> 
        El backend autentica al usuario mediante Delight Auth y devuelve un encabezado HTMX <code>HX-Redirect</code>. La página redirige de inmediato y sin parpadeos a la consola correspondiente: <code>/restaurant/mesero/</code>.
      </li>
    </ul>
  </div>

  <h3>2.2. Pruebas de Captura Híbrida y Voz (Rol Mesero)</h3>
  <div class="test-case-detail" style="background: rgba(255,255,255,0.02); border: 1px solid var(--surface-border); padding: 1.5rem; border-radius: 8px; margin-bottom: 1.5rem;">
    <p><strong>Propósito:</strong> Validar el reconocimiento de voz local por VOSK WASM, la opción híbrida por teclado y el procesamiento de la orden.</p>
    <ul>
      <li><strong>URL de Acceso:</strong> <a href="https://192.168.1.71:8443/restaurant/mesero/" target="_blank" style="color: var(--primary);">https://192.168.1.71:8443/restaurant/mesero/</a> (requiere sesión activa de mesero).</li>
      <li><strong>Pasos a seguir:</strong>
        <ol>
          <li>Al cargar, verifique que el indicador de estado del motor de voz en la parte superior derecha (Badge) se muestra como <strong>"VOSK Inactivo"</strong>. (Esto es debido a las políticas de seguridad del navegador que exigen interacción del usuario antes de habilitar el hardware de audio).</li>
          <li>Haga clic en el botón inferior de micrófono azul (<strong>"Iniciar Dictado"</strong>).</li>
          <li>Verifique que en este momento el navegador solicite permisos de acceso al micrófono (si es la primera vez). Conceda los permisos.</li>
          <li>Observe que el Badge superior transiciona a <strong>"Iniciando Voz..."</strong> mientras compila la gramática del catálogo y, al cabo de unos segundos, cambia a <strong>"VOSK Activo"</strong> (color verde), reproduciendo un pitido de inicio.</li>
          <li>Hable claro y a velocidad normal al micrófono dictando la frase: <br>
              <span style="font-family: monospace; color: var(--warning); font-size: 1.1rem; display: block; margin: 0.5rem 0;">"mesa tres dos tacos de pastor con todo y un boing de mango"</span>
          </li>
          <li>Observe cómo el texto transcrito se escribe automáticamente en el recuadro <strong>"live-transcription"</strong> en tiempo real.</li>
          <li><strong>Detener Dictado:</strong> Al terminar de hablar, diga el comando <strong>"listo"</strong> o presione el botón del micrófono para detener la escucha. Verifique que el Badge cambia a <strong>"VOSK Listo"</strong> y se reproduce el pitido de parada.</li>
          <li><strong>Ruta Alterna / Híbrida:</strong> Si requiere edición manual, haga clic dentro del cuadro de texto de la transcripción y use el teclado físico o de su móvil para editar el texto (ej. agregue <em>"sin cebolla"</em>). Verifique que al detectar cambios por teclado, aparece de inmediato el botón auxiliar <strong>"⚡ Procesar Comando"</strong>.</li>
          <li>Establezca la cantidad en el control de número de personas (👥 Personas) en <strong>2</strong>.</li>
          <li>Haga clic en enviar o en "⚡ Procesar Comando".</li>
        </ol>
      </li>
      <li><strong>Resultado Esperado:</strong>
        <ul>
          <li>VOSK procesa localmente y el backend interpreta el comando SQL estructurando la orden: Mesa 3, 2x Taco al Pastor, 1x Boing de Mango, con método de captura por voz (o teclado si se editó), y 2 personas.</li>
          <li>El contenedor <code>#comanda-preview-container</code> renderiza el desglose con subtotales y solicita confirmación.</li>
          <li>Al confirmar, el sistema de síntesis de voz (TTS) confirma: <em>"Comanda registrada para mesa tres."</em></li>
        </ul>
      </li>
    </ul>
  </div>

  <h3>2.3. Pruebas de Cocina Voice-KDS y TTS (Rol Cocinero)</h3>
  <div class="test-case-detail" style="background: rgba(255,255,255,0.02); border: 1px solid var(--surface-border); padding: 1.5rem; border-radius: 8px; margin-bottom: 1.5rem;">
    <p><strong>Propósito:</strong> Validar el flujo de preparación mediante diademas de voz (manos libres), pooling HTMX y síntesis de voz interactiva en KDS.</p>
    <ul>
      <li><strong>URL de Acceso:</strong> <a href="https://192.168.1.71:8443/restaurant/cocina" target="_blank" style="color: var(--primary);">https://192.168.1.71:8443/restaurant/cocina</a> (sesión de Cocinero, PIN <code>3001</code>).</li>
      <li><strong>Pasos a seguir:</strong>
        <ol>
          <li>Observe que la comanda registrada por el mesero en la Mesa 3 aparece en la grilla de comandas en la columna de <strong>PENDIENTE</strong> (color azul). El grid se refresca automáticamente cada 5 segundos mediante <code>hx-trigger="load, every 5s"</code> de HTMX.</li>
          <li>Haga clic en el botón <strong>"🎧 Conectar Diadema"</strong> en la parte superior.</li>
          <li>Escuche la confirmación por audio TTS: <em>"Diadema conectada. Esperando comandos."</em> El botón cambiará a <em>"⏹️ Desconectar"</em> y el estado a color verde: <em>"Diadema Activa - Escuchando comandos"</em>.</li>
          <li>Diga en voz alta el comando: <strong>"preparar siguiente"</strong>.
            <ul>
              <li><strong>Resultado Esperado:</strong> La comanda de la Mesa 3 cambia a <code>en_preparacion</code> (borde amarillo). El sistema emite la confirmación TTS: <em>"Preparando orden de mesa tres."</em></li>
            </ul>
          </li>
          <li>Diga en voz alta el comando: <strong>"listo mesa tres"</strong>.
            <ul>
              <li><strong>Resultado Esperado:</strong> La comanda se archiva/marca como <code>listo</code>. El sistema emite la confirmación TTS: <em>"Mesa tres marcada como lista."</em> La UI de cocina remueve el panel de la mesa 3 de forma inmediata.</li>
            </ul>
          </li>
          <li>Diga en voz alta el comando: <strong>"recuperar mesa tres"</strong>.
            <ul>
              <li><strong>Resultado Esperado:</strong> La comanda recién terminada de la Mesa 3 se recupera y vuelve al estado <code>en_preparacion</code>. El sistema emite el TTS: <em>"Orden de mesa tres recuperada en preparacion."</em></li>
            </ul>
          </li>
          <li>Diga en voz alta el comando: <strong>"repetir orden mesa tres"</strong> (o "repetir mesa tres").
            <ul>
              <li><strong>Resultado Esperado:</strong> El sistema lee detalladamente los ítems de la orden mediante TTS: <em>"Mesa tres: dos taco al pastor, uno boing de mango."</em></li>
            </ul>
          </li>
          <li>Diga en voz alta el comando: <strong>"ordenes pendientes"</strong> (o "comandas pendientes").
            <ul>
              <li><strong>Resultado Esperado:</strong> El KDS devuelve por TTS el estado cuantitativo actual de la cocina: <em>"Hay X ordenes pendientes y Y en preparacion."</em></li>
            </ul>
          </li>
        </ol>
      </li>
    </ul>
  </div>

  <h3>2.4. Pruebas de Cancelación por Voz y Timeout de Expiración</h3>
  <div class="test-case-detail" style="background: rgba(255,255,255,0.02); border: 1px solid var(--surface-border); padding: 1.5rem; border-radius: 8px;">
    <p><strong>Propósito:</strong> Validar el flujo interactivo de solicitudes de cancelación de ítems entre el Mesero y el Cocinero, incluyendo la regla Poka-Yoke de expiración por timeout de 30 segundos.</p>
    <ul>
      <li><strong>Pasos a seguir:</strong>
        <ol>
          <li>Desde la consola del <strong>Mesero</strong>, abra la orden activa de la Mesa 3 y solicite la cancelación de uno de los productos (Taco al Pastor) pulsando el botón de cancelación de detalle.</li>
          <li>En la pantalla de <strong>Cocina (KDS)</strong>, verifique que se genera una alerta visual y auditiva TTS inmediata: <em>"Nueva solicitud de cancelacion."</em></li>
          <li><strong>Escenario A (Aprobación):</strong> 
            <ul>
              <li>Diga por voz en el KDS: <strong>"si cancelar"</strong> (o simplemente <em>"si"</em>).</li>
              <li>Observe que la alerta se cierra. El KDS habla: <em>"Cancelacion aprobada."</em> y en el siguiente ciclo el Mesero recibe el estado de cancelación aprobada. El ítem se tacha y el subtotal es descontado del total de la comanda en la BD.</li>
            </ul>
          </li>
          <li><strong>Escenario B (Rechazo):</strong>
            <ul>
              <li>Genere otra solicitud de cancelación de la Mesa 3.</li>
              <li>Diga por voz en el KDS: <strong>"no cancelar"</strong> (o simplemente <em>"no"</em>).</li>
              <li>Observe que la alerta desaparece. El KDS habla: <em>"Cancelacion rechazada."</em> La orden del mesero continúa intacta.</li>
            </ul>
          </li>
          <li><strong>Escenario C (Timeout Poka-Yoke de 30 segundos):</strong>
            <ul>
              <li>Genere una nueva solicitud de cancelación desde la pantalla del Mesero.</li>
              <li>En la cocina, **no responda** a la alerta (ignore el dictado de voz y botones).</li>
              <li>Espere 30 segundos exactos.</li>
              <li>Al cumplirse el plazo, el backend en su ciclo de polling de KDS (<code>/api/cocina/estado.php</code>) detectará que superó el tiempo y ejecutará la sentencia server-side de expiración.</li>
              <li><strong>Resultado Esperado:</strong> La base de datos actualiza el estado de la solicitud en la tabla <code>cancelaciones_pendientes</code> a <code>'expirada'</code>. La alerta emergente del KDS desaparece automáticamente y el KDS notifica el fin de la alerta por voz.</li>
            </ul>
          </li>
        </ol>
      </li>
    </ul>
  </div>

  <h3>2.5. Ejecución de la Suite de Diagnóstico Browser API</h3>
  <div class="test-case-detail" style="background: rgba(255,255,255,0.02); border: 1px solid var(--surface-border); padding: 1.5rem; border-radius: 8px; margin-bottom: 1.5rem;">
    <p><strong>Propósito:</strong> Validar programáticamente la disponibilidad y ejecución de las APIs de hardware nativas requeridas para la PWA (Service Worker, WakeLock, IndexedDB Storage Persist, y Cross-Origin Isolation).</p>
    <ul>
      <li><strong>URL de Acceso:</strong> <a href="https://192.168.1.71:8443/tests/run_browser_diagnostics.html" target="_blank" style="color: var(--primary);">https://192.168.1.71:8443/tests/run_browser_diagnostics.html</a></li>
      <li><strong>Pasos a seguir:</strong>
        <ol>
          <li>Abra el navegador en el dispositivo cliente (Tablet/Móvil) y navegue a la URL indicada. Asegúrese de que es por HTTPS.</li>
          <li>Verifique que la interfaz cargue la tarjeta <em>"🛠️ Diagnóstico de Mitigaciones Hardware/PWA"</em> con 5 elementos en estado <strong>Pendiente</strong>.</li>
          <li>Haga clic en el botón azul <strong>"Ejecutar Diagnóstico"</strong>.</li>
        </ol>
      </li>
      <li><strong>Resultado Esperado (Criterios de Aceptación):</strong>
        <ul>
          <li><strong>1. COOP/COEP Headers:</strong> Debe marcar <span style="color:#10b981; font-weight:bold;">PASS</span> verificando que el servidor Flight PHP emite cabeceras <code>credentialless</code>.</li>
          <li><strong>2. Storage Persist (EVICT):</strong> Debe marcar <span style="color:#10b981; font-weight:bold;">PASS</span> indicando que el navegador concedió permiso para evitar purgas automáticas de IndexedDB.</li>
          <li><strong>3. WakeLock API (TTS-BLK):</strong> Debe marcar <span style="color:#10b981; font-weight:bold;">PASS</span> si se tiene la pantalla activa (el navegador permite bloquear el apagado de la pantalla).</li>
          <li><strong>4. PWA Manifest Enlazado:</strong> Debe marcar <span style="color:#10b981; font-weight:bold;">PASS</span> verificando que el archivo <code>manifest.json</code> responde correctamente.</li>
          <li><strong>5. Service Worker Registrado:</strong> Debe marcar <span style="color:#10b981; font-weight:bold;">PASS</span> verificando que el registro principal de la PWA está operando.</li>
        </ul>
      </li>
    </ul>
  </div>

  <h3>2.6. Validación Operativa: Dictado de Voz y Registro Central Offline (Prioridad #1)</h3>
  <div class="test-case-detail" style="background: rgba(255,255,255,0.02); border: 1px solid var(--surface-border); padding: 1.5rem; border-radius: 8px; margin-bottom: 1.5rem;">
    <p><strong>Propósito:</strong> Asegurar que el micrófono y el modelo VOSK funcionan correctamente incluso si la conexión a la base de datos central presenta latencia o está ausente temporalmente.</p>
    <ul>
      <li><strong>Paso 1: Prueba de Dictado (Sin enviar a cocina)</strong>
        <ul>
          <li><em>Instrucción:</em> Ingrese al sistema con su PIN de Gerente/Mesero. Pulse "Iniciar Dictado" y pronuncie una orden compleja (ej. "mesa cinco, dos de pastor sin verdura y un refresco").</li>
          <li><em>Resultado Esperado (Éxito):</em> La pantalla debe mostrar el texto que usted dijo e inmediatamente abrir la ventana de "Confirmar Comanda" con los productos correctos y el total a cobrar. Esto debe ser instantáneo gracias al NLP local.</li>
          <li><em>🚨 Qué reportar a Soporte TI si falla:</em> "Falla en Paso 1: El sistema no me escucha, se queda cargando, o no entiende los productos del menú". (Indique el modelo de la tablet/celular).</li>
        </ul>
      </li>
      <li><strong>Paso 2: Prueba de Envío Exitoso</strong>
        <ul>
          <li><em>Instrucción:</em> Estando en la ventana de "Confirmar Comanda" de la prueba anterior, pulse el botón verde <strong>"🚀 Enviar a Cocina"</strong>.</li>
          <li><em>Resultado Esperado (Éxito):</em> Aparecerá un mensaje verde de éxito ("Comanda encolada correctamente"). Además, la mesa debe aparecer de inmediato en la pantalla de Cocina (KDS).</li>
          <li><em>🚨 Qué reportar a Soporte TI si falla:</em> "Falla en Paso 2: La comanda se queda pasmada al enviar o no aparece en la pantalla de la Cocina".</li>
        </ul>
      </li>
    </ul>
  </div>

  <h3>2.7. Validación de Caídas de Internet y Recuperación de Sistema (GAPs 1 y 3)</h3>
  <div class="test-case-detail" style="background: rgba(255,255,255,0.02); border: 1px solid var(--surface-border); padding: 1.5rem; border-radius: 8px; margin-bottom: 1.5rem;">
    <p><strong>Propósito:</strong> El Gerente debe ejecutar esta prueba semanalmente para asegurar que no se pierdan pedidos (cero pérdidas) cuando el internet del restaurante falla o las tablets se desconectan.</p>
    <ul>
      <li><strong>Escenario A: Caída de Internet de la Tablet (Modo Avión)</strong>
        <ul>
          <li><em>Instrucción:</em> Active el <strong>Modo Avión</strong> en la tablet del mesero (para apagar el Wi-Fi). Dicte una orden y pulse "Enviar a Cocina". </li>
          <li><em>Resultado Esperado (Éxito offline):</em> El sistema dirá que la orden está guardada localmente.</li>
          <li><em>Recuperación:</em> Apague el Modo Avión (reconecte al Wi-Fi). Cierre la aplicación y vuelva a abrirla (o recargue la página). Al abrir, la orden pendiente debe desaparecer de la tablet y llegar automáticamente a la pantalla de la Cocina.</li>
          <li><em>🚨 Qué reportar a Soporte TI si falla:</em> "Falla en Escenario A: Las órdenes tomadas sin internet no llegan a cocina cuando regresa el Wi-Fi al recargar la app".</li>
        </ul>
      </li>
      <li><strong>Escenario B: Cierre Inesperado de Sesión por Inactividad Offline</strong>
        <ul>
          <li><em>Instrucción:</em> Active el <strong>Modo Avión</strong>. Tome una orden y envíela (guardado local). Luego, pida a otro gerente que borre la sesión de ese mesero en la computadora central (o espere a que expire la sesión por tiempo).</li>
          <li><em>Recuperación:</em> Apague el Modo Avión en la tablet. Como la sesión expiró, la PWA intentará sincronizar, recibirá un error HTTP 401 y lo expulsará de la vista de mesas a la pantalla de "Ingrese su PIN" (Session Rehydration). Ingrese el PIN de nuevo.</li>
          <li><em>Resultado Esperado (Éxito):</em> Inmediatamente después de poner el PIN y entrar, el sistema rehidratará la sesión, empujará la orden atorada en Dexie.js y esta llegará a la Cocina sin perderse ni requerir re-escribirla.</li>
          <li><em>🚨 Qué reportar a Soporte TI si falla:</em> "Falla en Escenario B: Al meter el PIN después de estar desconectado, las comandas offline desaparecen o nunca llegan a cocina".</li>
        </ul>
      </li>
    </ul>
  </div>

  <h3>2.8. Validación de Prevención de Fugas de Memoria (OOM) y Ajustes VAD</h3>
  <div class="test-case-detail" style="background: rgba(255,255,255,0.02); border: 1px solid var(--surface-border); padding: 1.5rem; border-radius: 8px; margin-bottom: 1.5rem;">
    <p><strong>Propósito:</strong> Garantizar que el motor VOSK no agote la memoria RAM (OOM) de la tableta durante una jornada de 8 horas debido a limitaciones monohilo de WebAssembly (WASM).</p>
    <ul>
      <li><strong>Escenario A: Auto-Apagado de Micrófono (Push-to-Talk Validado con Servidor)</strong>
        <ul>
          <li><em>Instrucción:</em> Toque el botón de micrófono, dicte "un taco al pastor" y espere. Aparecerá la ventana de confirmación (previa). Toque "Enviar a Cocina".</li>
          <li><em>Resultado Esperado (Éxito):</em> El sistema intentará sincronizar con el servidor de inmediato. Si el servidor devuelve código de estado 200 (Éxito), mostrará una alerta verde indicando que el servidor lo recibió. <strong>En ese preciso milisegundo, el micrófono se apaga automáticamente</strong>. La tablet puede bloquearse sin generar consumo de fondo. Si hay error de red, mostrará que se encoló offline y de igual manera apagará el micrófono por seguridad.</li>
          <li><em>🚨 Qué reportar a Soporte TI si falla:</em> "El micrófono sigue encendido o la luz verde/roja de la tablet no se apaga después de enviar la comanda".</li>
        </ul>
      </li>
      <li><strong>Escenario B: Ciclo Kill-and-Respawn Exitoso</strong>
        <ul>
          <li><em>Instrucción:</em> Active el micrófono sin hablar. Asegúrese de que el entorno sea medianamente ruidoso o tenga estática ambiental. Hable después de 15 segundos.</li>
          <li><em>Resultado Esperado (Éxito):</em> El procesador PCM debe descartar automáticamente el ruido de fondo (silencios puros) basándose en <code>VAD_THRESHOLD</code>, ahorrando procesamiento al Worker y evitando cuellos de botella ("lag"). La tablet no debe sobrecalentarse excesivamente.</li>
          <li><em>🚨 Qué reportar a Soporte TI si falla:</em> "Falla en Escenario B: Las palabras llegan con mucho lag o se saltan palabras, la tableta se sobrecalienta notablemente".</li>
        </ul>
      </li>
    </ul>
```

</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 11 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 4f75a451-b8cc-4d33-84c9-10163ce71a32: Finalizing VOSK Voice Command Unification
- Created: 2026-07-04T17:14:40Z
- Last modified: 2026-07-06T02:25:10Z

### USER Objective:
Stabilizing VOSK PWA Production

USER Objective:
Finalize the production-readiness and verification of the VOSK-based voice command PWA.

Goals:
1. Conduct a full-cycle validation of the system using both the automated CLI backend test suite and the manual end-to-end PWA diagnostic protocols.
2. Execute a total "clean-slate" purge of the PWA environment to ensure fresh installation of the 55-product catalog and updated assets.
3. Validate all seven resilience pillars, including the Cache-First Service Worker strategy, AudioWorklet VAD/RMS thresholds, and memory management via Kill-and-Respawn logic.
4. Verify system integrity, responsiveness, and performance across simulated connectivity and hardware-constrained scenarios to confirm operational stability.
5. Consolidate technical documentation and maintenance runbooks, ensuring all architectural improvements (VAD, Cache-First, WASM Watchdog) are formally recorded as the project source of truth.

## Conversation 1d94ff2e-c998-4f28-b6e5-bd37b46816f9: Manual Execution of VOSK Tests
- Created: 2026-07-05T19:46:05Z
- Last modified: 2026-07-05T21:19:05Z

### USER Objective:
Manual Execution of VOSK Tests

Objective: Execute the manual testing phase for the PWA VOSK voice command system to ensure production stability.

Goals:
1. Conduct hands-on testing following the procedures defined in Pruebas_Casos_Validacion_Comandas_VOSK.html.
2. Validate the hybrid "Push-to-Talk" lifecycle for waitstaff and "hands-free" WakeLock for KDS units.
3. Verify offline enqueuing protocols and synchronization reliability during simulated connectivity drops.
4. Confirm UI/UX consistency across smartphone devices during command execution.
5. Identify and document any anomalies found during manual interaction for immediate remediation.

## Conversation 840498da-688d-40ff-adae-2f74e4bae508: 
- Created: 2026-07-03T01:58:51Z
- Last modified: 2026-07-04T17:07:00Z

### USER Objective:
Consolidating PWA Quality Assurance

Main Objective: Finalize the PWA command system stabilization by centralizing all diagnostic and validation protocols into the master QA documentation.

Goals:
1. Complete the migration of scattered test cases and operational validation scenarios from project manuals into the unified Pruebas_Casos_Validacion_Comandas_VOSK.html document.
2. Ensure the QA suite covers the new Browser API diagnostics, including COOP/COEP, WakeLock, EVICT persistence, and PWA onboarding requirements.
3. Eliminate documentation fragmentation by consolidating functional, integration, and operational test procedures into a single source of truth for production maintenance.
4. Maintain full parity between backend CLI automated tests and frontend browser-based diagnostic suites to ensure environment-agnostic stability.

## Conversation 6609794f-111e-455e-9814-990ce143d4d0: WhatsApp vCard Image Compatibility
- Created: 2026-07-03T02:03:19Z
- Last modified: 2026-07-03T02:03:34Z

### USER Objective:
WhatsApp vCard Image Compatibility

Objective: Determine the feasibility of embedding profile photos within .vcf files shared via WhatsApp.

Goals:
1. Verify technical support for `PHOTO` or `LOGO` fields in vCard files within the WhatsApp ecosystem.
2. Identify why WhatsApp frequently rejects vCard files containing embedded images (parsing errors, size limitations, or encoding issues).
3. Evaluate reliable alternatives, such as using digital business card links with metadata previews, to achieve the desired professional presentation without triggering file format errors.

## Conversation f3e8c4e1-9755-46f6-a6bd-8699aad60bcd: Implementing VOSK Voice Command Dataset Manager
- Created: 2026-06-28T21:53:49Z
- Last modified: 2026-07-03T01:55:35Z

## Conversation 7e485cbb-a84d-4084-8993-80411c914ff4: Updating Presentation Card Content
- Created: 2026-07-02T22:23:33Z
- Last modified: 2026-07-03T00:14:53Z

### USER Objective:
Optimizing Professional Business Card

USER Objective:
Refine the layout and print-ready aesthetics of a professional business card in standard 3.5in x 2.0in dimensions.

Goals:
1. Implement a precise CSS-driven print layout that ensures full visibility and professional trimming for physical printing.
2. Optimize typography and spacing, using `white-space: nowrap` and `grid-column: span 2` to prevent layout clipping and text wrapping.
3. Enhance visual hierarchy by replacing emojis with high-resolution, minimal SVG iconography.
4. Correct text nomenclature and formatting, specifically ensuring accents are preserved via UTF-8 encoding and role titles are presented accurately.
5. Provide a streamlined workflow for generating print-ready PDF assets from the web-based design.

## Conversation 0bcb657b-49b3-4e9c-994a-8e5bd805534b: Estabilización Motor Financiero AguaV2
- Created: 2026-06-30T19:46:04Z
- Last modified: 2026-07-02T03:06:33Z

### USER Objective:
Stabilizing Legacy Financial Surcharges

Objective: Eliminate systemic "ghost debt" and orphan surcharge anomalies within the AguaV2 financial engine.
Goals:
1. Conduct forensic audits to reconcile base charges against pending surcharges.
2. Implement automated "Auto-Heal" logic to synchronize surcharge cancellation with paid/depurated base charges.
3. Deploy global SQL sanitization patches across the Host C database to clear historic orphan records.
4. Enhance the JIT financial motor with guard clauses to prevent future surcharge drift and ensure record parity.

## Conversation de8c1b41-674e-4011-afd2-645eeef36fe0: Financial Parity Debt Reconciliation
- Created: 2026-06-29T20:07:43Z
- Last modified: 2026-06-30T15:00:47Z

## Conversation c7d75625-d478-4e18-9089-8088154da029: Excluding Workspace Directories From VS Code
- Created: 2026-06-29T05:29:13Z
- Last modified: 2026-06-29T05:30:26Z

### USER Objective:
Excluding Workspace Directories From VS Code

USER Objective:
Clean up the VS Code workspace explorer by excluding redundant subdirectory views.

Goals:
1. Configure VS Code settings to hide the `www` directory (located at `/home/carlos/GitHub/caelitandem_home/restaurantb/www`) within the `caelitandem_home` project folder.
2. Prevent duplicate file indexing and visual clutter in the file explorer since the `www` directory is already independently managed as a separate repository/workspace entry.
3. Ensure that the exclusion rule is persistent and correctly scoped to the current workspace configuration.

## Conversation bab8619c-4161-48e9-9598-8c39418a3919: Configuring HTTPS For Android Web-Browser
- Created: 2026-06-28T19:43:10Z
- Last modified: 2026-06-28T21:10:05Z

### USER Objective:
Automating HTTPS Local Deployment

Objective: Establish a persistent, production-grade secure local environment for the restaurantb command system.

Goals:
1. Automate the generation and renewal of HTTPS certificates for the local host IP (192.168.1.71) using an intelligent helper script (`setup-ssl.sh`).
2. Centralize configuration through a `.env` file to ensure container parity and eliminate environment variable warnings.
3. Update technical documentation to provide a comprehensive, step-by-step guide for local HTTPS management and troubleshooting across various client operating systems (Android, Windows, macOS, Linux).
4. Ensure full infrastructure reliability by finalizing the phpMyAdmin control user configuration and documenting the new automated SSL workflow as the primary deployment standard.

## Conversation 9df8240f-6a37-4147-b8a3-c44b0ab61092: Restoring Nginx HTTPS Configuration
- Created: 2026-05-24T04:52:15Z
- Last modified: 2026-06-28T18:30:05Z

### USER Objective:
Fixing Nginx Permissions and Routing

USER Objective:
Ensure global accessibility for new web content by resolving Nginx 403 Forbidden errors.

Goals:
1. Diagnose and correct Linux file system permissions (`chmod` 644) for the newly uploaded `landingpagev2` content to allow Nginx (`www-data`) read access.
2. Verify that Nginx correctly serves the static `index.html` file within the sub-path `https://www.caelitandem.lat/landingpagev2/index.html`.
3. Confirm that the configuration change is persistent and documented for future deployments.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 5 July 2026, 9:09 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Especificacion_Tecnica_Comandas_VOSK.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L579-623)</summary>

**Path:** `Unknown file`

```
    &lt;a href="/">Inicio&lt;/a> / &lt;span>Transacciones&lt;/span>
&lt;/nav>
</code></pre>
</section>

<section id="anexo16">
  <h2>Anexo 16. Arquitectura PWA y Gestión del Motor VOSK WASM Monohilo</h2>
  <p><strong>Problema Estructural (WASM OOM & Cuellos de Botella):</strong> El motor VOSK para el reconocimiento de voz en español se compila en WebAssembly (WASM) utilizando un paradigma monohilo estricto (no requiere <code>SharedArrayBuffer</code> ni políticas COEP/COOP). Dado que el código C++ subyacente asigna memoria en un <em>Heap</em> lineal que no es gestionado por el Garbage Collector de JavaScript, el uso continuo del micrófono durante una jornada laboral de 8 horas conlleva a dos grandes riesgos:</p>
  <ol>
    <li><strong>Fugas de Memoria y Crash:</strong> El objeto <code>KaldiRecognizer</code> retiene la historia acústica si no se destruye explícitamente mediante <code>recognizer.remove()</code> o mediante la terminación absoluta del Web Worker, culminando en un <em>OOM (Out Of Memory)</em> o error <em>Aw Snap</em> del navegador.</li>
    <li><strong>Encolamiento (Backpressure):</strong> Al ser monohilo, si el hardware de la tableta reduce la velocidad de CPU por temperatura térmica (thermal throttling), el motor tarda más en procesar un "chunk" de PCM de 256ms. Esto causa que los chunks se acumulen en el Web Worker, generando "lag" en la transcripción visual.</li>
  </ol>
  
  <h3>Plan de Mitigación y Resiliencia Implementado (Workaround PWA)</h3>
  <p><strong>Nota Arquitectónica:</strong> Las siguientes mitigaciones son consideradas un <em>workaround (solución paliativa)</em> debido a las restricciones inherentes de WebAssembly en el entorno restringido del navegador móvil. Para una solución permanente, se recomienda la portabilidad a una arquitectura Nativa (Kotlin).</p>
  <ul>
    <li><strong>1. Configuración Dinámica (Local Storage):</strong> Se ha implementado un panel de <em>Configuración de Voz</em> local en la PWA, evitando parámetros en duro. Los usuarios ajustan la carga en función de su hardware.</li>
    <li><strong>2. Ciclo de Vida Efímero (Kill-and-Respawn):</strong> Tras un número predefinido de comandos (configurable vía <code>MAX_COMMANDS_BEFORE_RESTART</code>), el hilo secundario (<code>voskWorker.terminate()</code>) es purgado automáticamente y respawneado, forzando la liberación total de la RAM en el sistema operativo cliente sin afectar el hilo principal (UI Thread).</li>
    <li><strong>3. Optimización con VAD (Voice Activity Detection):</strong> El AudioWorklet <code>pcm-processor.js</code> implementa un umbral matemático (<code>VAD_THRESHOLD</code>). Todo audio detectado como "silencio puro" no se encola al Web Worker, ahorrando más del 40% del ciclo de CPU del motor VOSK monohilo durante las pausas del habla.</li>
    <li><strong>4. Timeout Rudo de Contexto:</strong> Cierre agresivo del <code>AudioContext</code> y <code>MediaStreamTrack</code> tras la finalización del dictado para detener la zombificación del micrófono.</li>
    <li><strong>5. Estrategia Cache-First para Activos de Voz (SW):</strong> Se configuró una directiva selectiva <code>Cache-First</code> en el Service Worker (<code>sw.js</code>) para el modelo acústico comprimido (38MB) y la librería <code>vosk.js</code> (5.5MB). Tras la primera descarga, el motor de voz se carga instantáneamente desde el caché local (&lt;50ms) sin depender de validaciones de red inestables.</li>
    <li><strong>6. Forzado de Tasa de Muestreo (16kHz):</strong> Se inicializa el <code>AudioContext</code> con una tasa explícita de 16,000 Hz, adaptando la captura de hardware a la frecuencia nativa del modelo VOSK y eliminando el costo de CPU de un downsampling manual en JavaScript.</li>
    <li><strong>7. Persistencia Evict-Proof (Storage Manager):</strong> La PWA invoca <code>navigator.storage.persist()</code> asíncronamente para marcar la base de datos IndexedDB (Dexie) como persistente, evitando que Android elimine el catálogo de 55 productos o la cola local de comandas bajo presión de almacenamiento.</li>
  </ul>
  
  <h3>Limitante Crítica: Ejecución en Segundo Plano y Bloqueo de Pantalla</h3>
  <p>En el uso operativo real, los meseros tienden a guardar la tablet en el delantal, lo que apaga la pantalla. En nuestra actual PWA:</p>
  <ul>
    <li><strong>El Gap de la Pantalla Apagada:</strong> Los navegadores móviles (Chrome/Safari) pausan severamente o detienen por completo la ejecución de Web Workers y el acceso al micrófono <code>getUserMedia()</code> cuando la pantalla se apaga o la pestaña pasa a segundo plano. Esto causa la desconexión silenciosa del VOSK.</li>
    <li><strong>Workaround Actual (WakeLock):</strong> Hemos implementado <code>navigator.wakeLock.request('screen')</code> durante la escucha, lo que <em>obliga a la pantalla a permanecer encendida</em> mientras el micrófono está activo. Sin embargo, esto genera <strong>dos consecuencias negativas:</strong> calentamiento térmico excesivo de la tableta y drenaje acelerado de la batería.</li>
    <li><strong>Conclusión y Resolución Arquitectónica:</strong> Dado que en una PWA web es técnicamente imposible mantener una escucha continua 100% fiable con la pantalla bloqueada en el bolsillo (sólo resoluble vía app nativa Kotlin), se evaluaron 3 alternativas:
      <ul>
        <li><em>Alternativa A (Push-to-Talk):</em> Eliminar el WakeLock. El micrófono solo se abre al tocar el botón y se cierra agresivamente de forma automática tras enviar la comanda. La tablet puede bloquearse al instante.</li>
        <li><em>Alternativa B (Page Visibility API):</em> Interceptar <code>document.hidden</code> para cerrar el motor automáticamente al apagar la pantalla, reiniciándolo al encenderla.</li>
        <li><em>Alternativa C (Idle Timeout):</em> Auto-apagado por inactividad tras X segundos de silencio.</li>
      </ul>
      <strong>Decisión Implementada (Arquitectura Híbrida):</strong> Se implementó la <strong>Alternativa A (Push-to-Talk Efímero) para Meseros</strong>. Se eliminó el uso de <code>WakeLock</code> en la UI del mesero. El flujo garantiza cero consumo en segundo plano y cero sobrecalentamiento, asumiendo que el mesero inicia y termina la interacción por mesa de manera atómica.<br><br>
      <em>Excepción (Gap de Cocina KDS):</em> Para el rol de Cocinero (<code>cocina-voice.js</code>), se determinó que el KDS es un entorno <strong>Perpetuo con WakeLock activo</strong>. Dado que las tablets de cocina están fijas a la pared y asumen carga eléctrica ilimitada (conectadas a corriente), el WakeLock se mantiene encendido intencionalmente para garantizar un flujo de manos libres <em>(hands-free)</em> continuo sin que la pantalla se apague por inactividad.
    </li>
  </ul>
</section>

</body>
</html>

```

</details>

---

## Agent Response

### Thinking

**Adding Optimizations Detail**

I'm currently focused on the document `Especificacion_Tecnica_Comandas_VOSK.html` within "Annex 16." I'm planning to insert new points, 8 and 9, to comprehensively document recent optimization efforts in the architecture concerning PWA and VOSK WASM Monothread Management. The aim is a clear and complete technical description.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.045419130s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 5 July 2026, 9:09 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Tecnica_Arquitectura_Voz_Comandas_VOSK.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L49-64)</summary>

**Path:** `Unknown file`

```
    }
};</code></pre>

  <h4>Implementación Técnica Estabilizada (7 Pilares del Pipeline)</h4>
  <p>La estabilización del motor frontend se compone de 7 componentes estructurales y optimizaciones de bajo nivel diseñados para maximizar la resiliencia offline y minimizar el consumo de recursos en dispositivos móviles:</p>
  <ul>
    <li><strong>1. Audio Pipeline 16kHz, AudioWorklet y VAD (Filtro RMS):</strong> Captura nativa del micrófono forceando el <code>AudioContext</code> a 16000 Hz, eliminando el downsampling por software. El procesador <code>pcm-processor.js</code> corre en un hilo de audio no bloqueante y calcula el volumen Root Mean Square (RMS) de cada buffer; si este no supera el umbral matemático de actividad (silencio), el chunk es descartado, ahorrando más de un 40% de CPU y batería en transmisiones inactivas.</li>
    <li><strong>2. Web Worker y SW Cache-First (Carga del Modelo):</strong> La ejecución de <code>vosk.js</code> y el modelo acústico WASM corre en un hilo secundario (<code>vosk-worker.js</code>) para evitar congelar el hilo de UI. Para evitar retrasos de red y fallos de conexión al inicializar, el Service Worker (<code>sw.js</code>) intercepta el modelo comprimido (38MB) y la biblioteca (5.5MB) bajo una política <code>Cache-First</code> estricta, cargándolos en menos de 50ms.</li>
    <li><strong>3. Inicialización Kaldi con Gramática Cerrada (Hot-Reload):</strong> Se compila el vocabulario del catálogo local y se inyecta como parámetro estricto al instanciar <code>KaldiRecognizer</code>. Esto recorta drásticamente el grafo HCLG, ahorrando RAM y evitando alucinaciones fuera del menú. Soporta <strong>Hot-Reloading</strong> para destruir y recrear el reconocedor en caliente si el catálogo cambia.</li>
    <li><strong>4. Capa de Corrección Fonética Levenshtein JS:</strong> Se construyó un motor NLP 100% offline (<code>app-voice.js</code>) que normaliza la transcripción cruda, extrae la mesa, segmenta por conectores ("y", "mas"), resuelve cantidades por sinónimos ("par" &rarr; 2), extrae notas de cocina ("sin cebolla") y empareja productos mediante distancia de Levenshtein (con umbrales largo/corto).</li>
    <li><strong>5. Cola Offline de Transcripciones Dexie.js:</strong> Tras el análisis NLP, la orden se guarda localmente en la tabla <code>outbox_comandas</code> de IndexedDB (usando Dexie.js) con un UUID único y estado <code>pending</code>. Permite operar ininterrumpidamente ante la caída total del Wi-Fi en el restaurante.</li>
    <li><strong>6. Sync HTTP, Control de Desfase, Evicción y GC:</strong> Al iniciar, el cliente consulta un <code>delta_hash</code> MD5 al servidor; si difiere, purga la base local y actualiza la gramática en caliente. Se utiliza <code>navigator.storage.persist()</code> para proteger los datos de IndexedDB contra la purga automática por falta de espacio en Android, y se ejecuta un <strong>Garbage Collection</strong> (Hard Delete de comandas sincronizadas exitosamente y TTL de 3 días para logs locales) previniendo el <em>Storage Bloat</em>.</li>
    <li><strong>7. Resiliencia de Memoria WASM (Kill-and-Respawn):</strong> Para contrarrestar las fugas de memoria inherentes al heap lineal de WebAssembly en escuchas de larga duración (especialmente en el rol "hands-free" de cocina), se implementó un watchdog que destruye (<code>terminate()</code>) y vuelve a crear el Web Worker de VOSK en periodos de inactividad, previniendo fallos por Out-Of-Memory (OOM).</li>
  </ul>

  <h4>Inicialización y Carga de Modelo Local (<code>vosk-model-small-es-0.42.tar.gz</code>)</h4>
```

</details>

---

## Agent Response

### Thinking

**Renaming the Core Principles**

I've been contemplating a shift. The "7 Pillars of the Pipeline" is becoming a bit outdated. Now that the Pre-Login Poka-Yoke and the Side Menu Click Interception are implemented, I'm thinking of renaming it to "9 Pillars of the Pipeline," incorporating them as pillars 8 and 9. This reflects the evolution of the system.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.038769223s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 5 July 2026, 9:09 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Tecnica_Arquitectura_Voz_Comandas_VOSK.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L39-69)</summary>

**Path:** `Unknown file`

```
const stream = await navigator.mediaDevices.getUserMedia(constraints);
const audioContext = new AudioContext({ sampleRate: 16000 });
await audioContext.audioWorklet.addModule('js/audio-processor.js');
const workletNode = new AudioWorkletNode(audioContext, 'pcm-processor');

workletNode.port.onmessage = (e) =&gt; {
    const pcmBuffer = e.data;
    if (recognizer.acceptWaveform(pcmBuffer)) {
        const result = recognizer.result();
        procesarT  <h4>Implementación Técnica Estabilizada (9 Pilares del Pipeline)</h4>
  <p>La estabilización del motor frontend se compone de 9 componentes estructurales y optimizaciones de bajo nivel diseñados para maximizar la resiliencia offline y minimizar el consumo de recursos en dispositivos móviles:</p>
  <ul>
    <li><strong>1. Audio Pipeline 16kHz, AudioWorklet y VAD (Filtro RMS):</strong> Captura nativa del micrófono forceando el <code>AudioContext</code> a 16000 Hz, eliminando el downsampling por software. El procesador <code>pcm-processor.js</code> corre en un hilo de audio no bloqueante y calcula el volumen Root Mean Square (RMS) de cada buffer; si este no supera el umbral matemático de actividad (silencio), el chunk es descartado, ahorrando más de un 40% de CPU y batería en transmisiones inactivas.</li>
    <li><strong>2. Web Worker y SW Cache-First (Carga del Modelo):</strong> La ejecución de <code>vosk.js</code> y el modelo acústico WASM corre en un hilo secundario (<code>vosk-worker.js</code>) para evitar congelar el hilo de UI. Para evitar retrasos de red y fallos de conexión al inicializar, el Service Worker (<code>sw.js</code>) intercepta el modelo comprimido (38MB) y la biblioteca (5.5MB) bajo una política <code>Cache-First</code> estricta, cargándolos en menos de 50ms.</li>
    <li><strong>3. Inicialización Kaldi con Gramática Cerrada (Hot-Reload):</strong> Se compila el vocabulario del catálogo local y se inyecta como parámetro estricto al instanciar <code>KaldiRecognizer</code>. Esto recorta drásticamente el grafo HCLG, ahorrando RAM y evitando alucinaciones fuera del menú. Soporta <strong>Hot-Reloading</strong> para destruir y recrear el reconocedor en caliente si el catálogo cambia.</li>
    <li><strong>4. Capa de Corrección Fonética Levenshtein JS:</strong> Se construyó un motor NLP 100% offline (<code>app-voice.js</code>) que normaliza la transcripción cruda, extrae la mesa, segmenta por conectores ("y", "mas"), resuelve cantidades por sinónimos ("par" &rarr; 2), extrae notas de cocina ("sin cebolla") y empareja productos mediante distancia de Levenshtein (con umbrales largo/corto).</li>
    <li><strong>5. Cola Offline de Transcripciones Dexie.js:</strong> Tras el análisis NLP, la orden se guarda localmente en la tabla <code>outbox_comandas</code> de IndexedDB (usando Dexie.js) con un UUID único y estado <code>pending</code>. Permite operar ininterrumpidamente ante la caída total del Wi-Fi en el restaurante.</li>
    <li><strong>6. Sync HTTP, Control de Desfase, Evicción y GC:</strong> Al iniciar, el cliente consulta un <code>delta_hash</code> MD5 al servidor; si difiere, purga la base local y actualiza la gramática en caliente. Se utiliza <code>navigator.storage.persist()</code> para proteger los datos de IndexedDB contra la purga automática por falta de espacio en Android, y se ejecuta un <strong>Garbage Collection</strong> (Hard Delete de comandas sincronizadas exitosamente y TTL de 3 días para logs locales) previniendo el <em>Storage Bloat</em>.</li>
    <li><strong>7. Resiliencia de Memoria WASM (Kill-and-Respawn):</strong> Para contrarrestar las fugas de memoria inherentes al heap lineal de WebAssembly en escuchas de larga duración (especialmente en el rol "hands-free" de cocina), se implementó un watchdog que destruye (<code>terminate()</code>) y vuelve a crear el Web Worker de VOSK en periodos de inactividad, previniendo fallos por Out-Of-Memory (OOM).</li>
    <li><strong>8. Precarga Predictiva (Poka-Yoke) tras Autenticación:</strong> Instanciación inmediata y compilación del Web Worker de VOSK al iniciar sesión de mesero/cocinero, eliminando los 10 segundos de espera y latencia cuando el operador presiona el botón del micrófono por primera vez.</li>
    <li><strong>9. Navegación Limpia sin Destrucción de Worker:</strong> Intercepción del menú de navegación lateral para evitar la recarga completa del navegador si ya se está en la página `/restaurant/mesero/`, limpiando la interfaz localmente y reteniendo el worker compilado en RAM.</li>
  </ul>elve a crear el Web Worker de VOSK en periodos de inactividad, previniendo fallos por Out-Of-Memory (OOM).</li>
  </ul>

  <h4>Inicialización y Carga de Modelo Local (<code>vosk-model-small-es-0.42.tar.gz</code>)</h4>
  <p>La Progressive Web App del mesero realiza la descarga por única vez del modelo acústico en español comprimido (aproximadamente 39MB) y lo almacena localmente en la caché de IndexedDB, garantizando el funcionamiento 100% offline tras la primera visita:</p>
  <pre><code>// Definición del modelo acústico local de VOSK
const modelUrl = 'web-assets/libs/models/vosk-model-small-es-0.42.tar.gz';
let model;
let recognizer;

```

</details>

---

## Agent Response

### Thinking

**Analyzing the Breakpoint**

I've pinpointed a breakpoint within the `workletNode.port.onmessage` event handler. The error seems to stem from line 47, where the `recognizer.acceptWaveform(pcmBuffer)` call is made, specifically when it is called repeatedly. My focus is on the data buffer received and the subsequent interaction with the recognizer.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.059012571s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 5 July 2026, 9:09 pm

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 11 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 4f75a451-b8cc-4d33-84c9-10163ce71a32: Finalizing VOSK Voice Command Unification
- Created: 2026-07-04T17:14:40Z
- Last modified: 2026-07-06T02:25:10Z

### USER Objective:
Stabilizing VOSK PWA Production

USER Objective:
Finalize the production-readiness and verification of the VOSK-based voice command PWA.

Goals:
1. Conduct a full-cycle validation of the system using both the automated CLI backend test suite and the manual end-to-end PWA diagnostic protocols.
2. Execute a total "clean-slate" purge of the PWA environment to ensure fresh installation of the 55-product catalog and updated assets.
3. Validate all seven resilience pillars, including the Cache-First Service Worker strategy, AudioWorklet VAD/RMS thresholds, and memory management via Kill-and-Respawn logic.
4. Verify system integrity, responsiveness, and performance across simulated connectivity and hardware-constrained scenarios to confirm operational stability.
5. Consolidate technical documentation and maintenance runbooks, ensuring all architectural improvements (VAD, Cache-First, WASM Watchdog) are formally recorded as the project source of truth.

## Conversation 1d94ff2e-c998-4f28-b6e5-bd37b46816f9: Manual Execution of VOSK Tests
- Created: 2026-07-05T19:46:05Z
- Last modified: 2026-07-05T21:19:05Z

### USER Objective:
Manual Execution of VOSK Tests

Objective: Execute the manual testing phase for the PWA VOSK voice command system to ensure production stability.

Goals:
1. Conduct hands-on testing following the procedures defined in Pruebas_Casos_Validacion_Comandas_VOSK.html.
2. Validate the hybrid "Push-to-Talk" lifecycle for waitstaff and "hands-free" WakeLock for KDS units.
3. Verify offline enqueuing protocols and synchronization reliability during simulated connectivity drops.
4. Confirm UI/UX consistency across smartphone devices during command execution.
5. Identify and document any anomalies found during manual interaction for immediate remediation.

## Conversation 840498da-688d-40ff-adae-2f74e4bae508: 
- Created: 2026-07-03T01:58:51Z
- Last modified: 2026-07-04T17:07:00Z

### USER Objective:
Consolidating PWA Quality Assurance

Main Objective: Finalize the PWA command system stabilization by centralizing all diagnostic and validation protocols into the master QA documentation.

Goals:
1. Complete the migration of scattered test cases and operational validation scenarios from project manuals into the unified Pruebas_Casos_Validacion_Comandas_VOSK.html document.
2. Ensure the QA suite covers the new Browser API diagnostics, including COOP/COEP, WakeLock, EVICT persistence, and PWA onboarding requirements.
3. Eliminate documentation fragmentation by consolidating functional, integration, and operational test procedures into a single source of truth for production maintenance.
4. Maintain full parity between backend CLI automated tests and frontend browser-based diagnostic suites to ensure environment-agnostic stability.

## Conversation 6609794f-111e-455e-9814-990ce143d4d0: WhatsApp vCard Image Compatibility
- Created: 2026-07-03T02:03:19Z
- Last modified: 2026-07-03T02:03:34Z

### USER Objective:
WhatsApp vCard Image Compatibility

Objective: Determine the feasibility of embedding profile photos within .vcf files shared via WhatsApp.

Goals:
1. Verify technical support for `PHOTO` or `LOGO` fields in vCard files within the WhatsApp ecosystem.
2. Identify why WhatsApp frequently rejects vCard files containing embedded images (parsing errors, size limitations, or encoding issues).
3. Evaluate reliable alternatives, such as using digital business card links with metadata previews, to achieve the desired professional presentation without triggering file format errors.

## Conversation f3e8c4e1-9755-46f6-a6bd-8699aad60bcd: Implementing VOSK Voice Command Dataset Manager
- Created: 2026-06-28T21:53:49Z
- Last modified: 2026-07-03T01:55:35Z

## Conversation 7e485cbb-a84d-4084-8993-80411c914ff4: Updating Presentation Card Content
- Created: 2026-07-02T22:23:33Z
- Last modified: 2026-07-03T00:14:53Z

### USER Objective:
Optimizing Professional Business Card

USER Objective:
Refine the layout and print-ready aesthetics of a professional business card in standard 3.5in x 2.0in dimensions.

Goals:
1. Implement a precise CSS-driven print layout that ensures full visibility and professional trimming for physical printing.
2. Optimize typography and spacing, using `white-space: nowrap` and `grid-column: span 2` to prevent layout clipping and text wrapping.
3. Enhance visual hierarchy by replacing emojis with high-resolution, minimal SVG iconography.
4. Correct text nomenclature and formatting, specifically ensuring accents are preserved via UTF-8 encoding and role titles are presented accurately.
5. Provide a streamlined workflow for generating print-ready PDF assets from the web-based design.

## Conversation 0bcb657b-49b3-4e9c-994a-8e5bd805534b: Estabilización Motor Financiero AguaV2
- Created: 2026-06-30T19:46:04Z
- Last modified: 2026-07-02T03:06:33Z

### USER Objective:
Stabilizing Legacy Financial Surcharges

Objective: Eliminate systemic "ghost debt" and orphan surcharge anomalies within the AguaV2 financial engine.
Goals:
1. Conduct forensic audits to reconcile base charges against pending surcharges.
2. Implement automated "Auto-Heal" logic to synchronize surcharge cancellation with paid/depurated base charges.
3. Deploy global SQL sanitization patches across the Host C database to clear historic orphan records.
4. Enhance the JIT financial motor with guard clauses to prevent future surcharge drift and ensure record parity.

## Conversation de8c1b41-674e-4011-afd2-645eeef36fe0: Financial Parity Debt Reconciliation
- Created: 2026-06-29T20:07:43Z
- Last modified: 2026-06-30T15:00:47Z

## Conversation c7d75625-d478-4e18-9089-8088154da029: Excluding Workspace Directories From VS Code
- Created: 2026-06-29T05:29:13Z
- Last modified: 2026-06-29T05:30:26Z

### USER Objective:
Excluding Workspace Directories From VS Code

USER Objective:
Clean up the VS Code workspace explorer by excluding redundant subdirectory views.

Goals:
1. Configure VS Code settings to hide the `www` directory (located at `/home/carlos/GitHub/caelitandem_home/restaurantb/www`) within the `caelitandem_home` project folder.
2. Prevent duplicate file indexing and visual clutter in the file explorer since the `www` directory is already independently managed as a separate repository/workspace entry.
3. Ensure that the exclusion rule is persistent and correctly scoped to the current workspace configuration.

## Conversation bab8619c-4161-48e9-9598-8c39418a3919: Configuring HTTPS For Android Web-Browser
- Created: 2026-06-28T19:43:10Z
- Last modified: 2026-06-28T21:10:05Z

### USER Objective:
Automating HTTPS Local Deployment

Objective: Establish a persistent, production-grade secure local environment for the restaurantb command system.

Goals:
1. Automate the generation and renewal of HTTPS certificates for the local host IP (192.168.1.71) using an intelligent helper script (`setup-ssl.sh`).
2. Centralize configuration through a `.env` file to ensure container parity and eliminate environment variable warnings.
3. Update technical documentation to provide a comprehensive, step-by-step guide for local HTTPS management and troubleshooting across various client operating systems (Android, Windows, macOS, Linux).
4. Ensure full infrastructure reliability by finalizing the phpMyAdmin control user configuration and documenting the new automated SSL workflow as the primary deployment standard.

## Conversation 9df8240f-6a37-4147-b8a3-c44b0ab61092: Restoring Nginx HTTPS Configuration
- Created: 2026-05-24T04:52:15Z
- Last modified: 2026-06-28T18:30:05Z

### USER Objective:
Fixing Nginx Permissions and Routing

USER Objective:
Ensure global accessibility for new web content by resolving Nginx 403 Forbidden errors.

Goals:
1. Diagnose and correct Linux file system permissions (`chmod` 644) for the newly uploaded `landingpagev2` content to allow Nginx (`www-data`) read access.
2. Verify that Nginx correctly serves the static `index.html` file within the sub-path `https://www.caelitandem.lat/landingpagev2/index.html`.
3. Confirm that the configuration change is persistent and documented for future deployments.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 5 July 2026, 9:09 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Tecnica_Arquitectura_Voz_Comandas_VOSK.html`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L34-69)</summary>

**Path:** `Unknown file`

```
    <li><strong>Corrección y Limpieza:</strong> El script del cliente (PWA) aplica la corrección fonética (Levenshtein) basándose en el catálogo local de productos o comandos.</li>
    <li><strong>Sincronización (Offline-First):</strong> El texto limpio se transmite. Si se pierde la red (común en meseros en movimiento), el <strong>texto</strong> se encola en IndexedDB (tabla <code>offline_text_queue</code>) y se sincroniza automáticamente al recuperar la señal.</li>
  </ol>

<pre><code>// Ejemplo Pipeline IT1 (Aplica a Meseros y Cocineros)
const stream = await navigator.mediaDevices.getUserMedia(constraints);
const audioContext = new AudioContext({ sampleRate: 16000 });
await audioContext.audioWorklet.addModule('js/audio-procesworkletNode.port.onmessage = (e) => {
    const pcmBuffer = e.data;
    if (recognizer.acceptWaveform(pcmBuffer)) {
        const result = recognizer.result();
        procesarTextoYEnviar(result.text); // Enviar texto limpio al servidor
    }
};</code></pre>

  <h4>Implementación Técnica Estabilizada (9 Pilares del Pipeline)</h4>
  <p>La estabilización del motor frontend se compone de 9 componentes estructurales y optimizaciones de bajo nivel diseñados para maximizar la resiliencia offline y minimizar el consumo de recursos en dispositivos móviles:</p>
  <ul>
    <li><strong>1. Audio Pipeline 16kHz, AudioWorklet y VAD (Filtro RMS):</strong> Captura nativa del micrófono forceando el <code>AudioContext</code> a 16000 Hz, eliminando el downsampling por software. El procesador <code>pcm-processor.js</code> corre en un hilo de audio no bloqueante y calcula el volumen Root Mean Square (RMS) de cada buffer; si este no supera el umbral matemático de actividad (silencio), el chunk es descartado, ahorrando más de un 40% de CPU y batería en transmisiones inactivas.</li>
    <li><strong>2. Web Worker y SW Cache-First (Carga del Modelo):</strong> La ejecución de <code>vosk.js</code> y el modelo acústico WASM corre en un hilo secundario (<code>vosk-worker.js</code>) para evitar congelar el hilo de UI. Para evitar retrasos de red y fallos de conexión al inicializar, el Service Worker (<code>sw.js</code>) intercepta el modelo comprimido (38MB) y la biblioteca (5.5MB) bajo una política <code>Cache-First</code> estricta, cargándolos en menos de 50ms.</li>
    <li><strong>3. Inicialización Kaldi con Gramática Cerrada (Hot-Reload):</strong> Se compila el vocabulario del catálogo local y se inyecta como parámetro estricto al instanciar <code>KaldiRecognizer</code>. Esto recorta drásticamente el grafo HCLG, ahorrando RAM y evitando alucinaciones fuera del menú. Soporta <strong>Hot-Reloading</strong> para destruir y recrear el reconocedor en caliente si el catálogo cambia.</li>
    <li><strong>4. Capa de Corrección Fonética Levenshtein JS:</strong> Se construyó un motor NLP 100% offline (<code>app-voice.js</code>) que normaliza la transcripción cruda, extrae la mesa, segmenta por conectores ("y", "mas"), resuelve cantidades por sinónimos ("par" &rarr; 2), extrae notas de cocina ("sin cebolla") y empareja productos mediante distancia de Levenshtein (con umbrales largo/corto).</li>
    <li><strong>5. Cola Offline de Transcripciones Dexie.js:</strong> Tras el análisis NLP, la orden se guarda localmente en la tabla <code>outbox_comandas</code> de IndexedDB (usando Dexie.js) con un UUID único y estado <code>pending</code>. Permite operar ininterrumpidamente ante la caída total del Wi-Fi en el restaurante.</li>
    <li><strong>6. Sync HTTP, Control de Desfase, Evicción y GC:</strong> Al iniciar, el cliente consulta un <code>delta_hash</code> MD5 al servidor; si difiere, purga la base local y actualiza la gramática en caliente. Se utiliza <code>navigator.storage.persist()</code> para proteger los datos de IndexedDB contra la purga automática por falta de espacio en Android, y se ejecuta un <strong>Garbage Collection</strong> (Hard Delete de comandas sincronizadas exitosamente y TTL de 3 días para logs locales) previniendo el <em>Storage Bloat</em>.</li>
    <li><strong>7. Resiliencia de Memoria WASM (Kill-and-Respawn):</strong> Para contrarrestar las fugas de memoria inherentes al heap lineal de WebAssembly en escuchas de larga duración (especialmente en el rol "hands-free" de cocina), se implementó un watchdog que destruye (<code>terminate()</code>) y vuelve a crear el Web Worker de VOSK en periodos de inactividad, previniendo fallos por Out-Of-Memory (OOM).</li>
    <li><strong>8. Precarga Predictiva (Poka-Yoke) tras Autenticación:</strong> Instanciación inmediata y compilación del Web Worker de VOSK al iniciar sesión de mesero/cocinero, eliminando los 10 segundos de espera y latencia cuando el operador presiona el botón del micrófono por primera vez.</li>
    <li><strong>9. Navegación Limpia sin Destrucción de Worker:</strong> Intercepción del menú de navegación lateral para evitar la recarga completa del navegador si ya se está en la página <code>/restaurant/mesero/</code>, limpiando la interfaz localmente y reteniendo el worker compilado en RAM.</li>
  </ul></li>
  </ul>elve a crear el Web Worker de VOSK en periodos de inactividad, previniendo fallos por Out-Of-Memory (OOM).</li>
  </ul>

  <h4>Inicialización y Carga de Modelo Local (<code>vosk-model-small-es-0.42.tar.gz</code>)</h4>
  <p>La Progressive Web App del mesero realiza la descarga por única vez del modelo acústico en español comprimido (aproximadamente 39MB) y lo almacena localmente en la caché de IndexedDB, garantizando el funcionamiento 100% offline tras la primera visita:</p>
  <pre><code>// Definición del modelo acústico local de VOSK
const modelUrl = 'web-assets/libs/models/vosk-model-small-es-0.42.tar.gz';
let model;
```

</details>

---

## Agent Response

### Thinking

**Implementing the File Replacement**

I'm ready to move forward. My plan is to use `replace_file_content` to swap out lines 39 to 65 in the `/home/carlos/GitHub/caelitandem_home/restaurantb/docs/Tecnica_Arquitectura_Voz_Comandas_VOSK.html` file. This action will restore the specified content precisely.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.002223815s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

---

*Generated by Chatledger for Antigravity*