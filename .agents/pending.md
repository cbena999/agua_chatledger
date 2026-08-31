# Pendientes Activos del Proyecto Restaurant VOSK Comandas

> **Protocolo**: Este archivo es la lista viva de tareas en vuelo.
> - Actualizar al **iniciar** sesión (verificar estados) y al **cerrar** sesión (registrar lo que quedó a medias).
> - Válido para Claude Code y Google Antigravity/Gemini por igual.
> - Un pendiente se elimina solo cuando está **verificado en BD/UI**, no cuando el agente cree que está listo.

---

## 🔴 PRIORIDAD ALTA
(Ninguno - Todos los componentes clave del MVP y la integración de seguridad han sido estabilizados y validados).

---

## 🟡 PRIORIDAD MEDIA

### P-LAESH-01 ✅ [LAESH Website] B1 — Refactorización de Inline Styles — RESUELTO
**Estado**: Cerrado 2026-08-13  
**Resolución**: ~305 inline styles extraídos a clases CSS.  
- `index.html`: 274 → 110 restantes (164 eliminados). Nuevas clases en `<style>` del archivo: `.carousel-card img/h3/p/.__body`, `.slide-caption`, `.aviso-h4/p/list`, `.flex-ic-8`, `.chevron-open`, `.hr-sep`, `.btn-outline-white`, `.icon-22/24/20`, helpers de texto.  
- `medicos.html`: 101 → 54 restantes (47 eliminados).  
- `labadmin.html`: 151 → 55 restantes (96 eliminados).  
- Clases compartidas portales en `laesh-web-assets-uipv1a/css/style.css`: `.form-label`, `.form-label--sm`, `.req`, `.form-input`, `.form-input--bg`, `.form-select`, `.form-input-sm`, `.select-sm`, `.form-field`, `.select-arrow`, `.modal-sect-hd`, `.progress-label`, `.progress-track`, `.col-group`, y ~15 utilities (`.txt-pgd`, `.txt-muted-sm`, `.flex-1`, `.mb-0`, etc.).  
- Inline styles restantes (~219 total): background-image URLs únicas, grid-template-columns únicos, display:none controlados por JS y valores verdaderamente únicos — costo/beneficio no justifica extracción.  

### P-LAESH-02 ✅ [LAESH Website] Dominio definitivo para OG/canonical — RESUELTO
**Estado**: Cerrado 2026-08-13  
**Resolución**: Dominio canónico = `https://laesh.mx/`. Todos los OG tags y canonicals actualizados en las 9 páginas activas de uipv1a/.

### P-LAESH-03 ✅ [LAESH Website] Infraestructura device targeting + fixes CRÍTICO + deploy OCI — RESUELTO
**Estado**: Cerrado 2026-08-15 — Claude Code (sesión 7b54f662)  
**Resolución**:
- **Device targeting**: Creados `device-detect.js` (sincrónico, antes del primer CSS) y `targeting.css` (selectores `[data-os]`, `[data-browser]`, `[data-input]`, `[data-dpr]`). Inyectados en los 7 HTMLs.
- **Fix portal-initials-mob**: `display:none` en base (style.css) + bloques desktop/tablet de responsive.css.
- **Fix A5 – fieldset/legend**: `medicos.html` Orden → `<fieldset class="fieldset-reset"><legend>Sexo</legend>` + CSS `.fieldset-reset` / `.form-legend`.
- **Fix C7 – WCAG 2.4.7 focus visible**: `input/select:focus` outline con `:focus-visible` guard en style.css.
- **Grid 25/75 contacto/mapa**: `#ubicacion .grid-layout { grid-template-columns: minmax(0,1fr) minmax(0,3fr) !important }` en landing.css. Requiere verificación visual en producción.
- **Mobile form Orden – Celular+Sexo**: `orden-patient-grid` en responsive.css: Celular y Sexo en mismo renglón con input Celular reducido.
- **CSS versiones**: Todos los HTMLs en `?v=20260814` para style.css, fonts.css, targeting.css.
- **Deploy OCI**: `rsync` exitoso de `uipv1a/` + `laesh-web-assets-uipv1a/` a `oci-vm:/home/ubuntu/n8n-php/` — 7 HTMLs, 5 CSS nuevos/actualizados, device-detect.js, 8 × woff2 (Cabin + Outfit).

### P-LAESH-04 ✅ [LAESH Website] Verificar grid 25/75 + corregir hallazgos de auditoría — RESUELTO (parcial)
**Estado**: Cerrado 2026-08-15 — Claude Code (sesión 0969fceb)  
**Resolución**:
- **Grid 25/75**: Confirmado CSS correcto por análisis de cascada. `#ubicacion .grid-layout` (especificidad 110+!important en landing.css) gana sobre `.grid-layout` (010) de responsive.css en desktop/tablet. Mobile: override correcto con mismo selector en responsive.css (cascade order). No requiere cambios.
- **19/25 hallazgos corregidos** — reporte actualizado: https://claude.ai/code/artifact/31b7d89b-dedd-4011-afef-d65f95b31d3f
  - ✅ P4 (device-detect ?v=20260815 — 7 HTMLs), P5 (autofocus removido), P2 (logo width/height CLS), A7 (pause button carousel), A4 (h2 sr-only Nueva Orden), A2 (aria-live labadmin), A1 (keydown ya estaba), UX1+UX2 (inputmode+pattern celular), S2 (robots.txt), SEO1 (sitemap.xml), S3 (X-Frame-Options DENY), PWA2 (standalone), PWA3 (maskable→any), C1 (dead code), C3 (fallback name), C4 (crypto.randomUUID), SEO3 (schema.org URI), 404 (página personalizada)
  - ⏸ Diferidos: S1 (HTTPS/HSTS — infra OCI), A6 (color contrast — decisión diseño), P1 (Service Worker — iteración PWA), SEO2 (og:image — asset dedicado)
  - 🔲 Pendiente: UX3 (dots carrusel especialidades)
- **Plan responsive.css**: guardado en `/home/carlos/.claude/plans/mutable-dreaming-scroll.md` — listo para próxima sesión
- **Deploy pendiente**: rsync de cambios de hoy a OCI (uipv1/ + laesh-web-assets-uipv1a/)

### P-LAESH-05 🔄 [LAESH Website] Deploy OCI + corrección 22 hallazgos nuevos
**Estado**: En progreso — sesión 0969fceb (2026-08-15) · Batch completo aplicado
**Descripción**:
1. **Deploy OCI** — ⚠️ REQUIERE AUTORIZACIÓN EXPLÍCITA del usuario antes de ejecutar rsync.
   - Archivos listos: `uipv1/` (8 HTMLs + sitemap.xml + 404.html) + `laesh-web-assets-uipv1a/` (app.js + website.js + manifest.json + landing.css + style.css + responsive.css + medicos.js)
2. **Auditoría R1 (25): 24/25** — S1 (HTTPS/HSTS) diferido infra OCI
3. **Auditoría R2 (22 hallazgos): 20/22 corregidos** (2 eran falsos positivos):
   - ✅ WCAG-1 (CSS-1a/b/c): responsive.css Tier 0 → .carousel-progress-fill + @keyframes pulse + pulse-ring suprimidos; landing.css @media movido
   - ✅ WCAG-2: #quality-pause-btn con SVG pause/play, aria-pressed, aria-label dinámico
   - ✅ WCAG-3: role="region" + aria-label + aria-roledescription en .hero-slides y #quality-carousel-container; aria-live polite announcer para ambos carruseles
   - ✅ CSS-2: lang="es" → lang="es-MX" en los 8 HTMLs (7 portales + index)
   - ✅ CSS-3: color-scheme:light en :root (style.css) + <meta name="color-scheme"> en 8 HTMLs + 404.html
   - ✅ PERF-1: 15 quality-slides style="background-image" → data-bg + IntersectionObserver lazy-load en website.js
   - ✅ PERF-2: preloads slides 2-4 eliminados de index.html
   - ✅ PERF-4: font preloads cabin-latin-normal-w400.woff2 + outfit-latin-normal-w300.woff2 en index.html
   - ✅ UX-1: touch/swipe para quality carousel (pointerdown/up + delta ≥50px)
   - ✅ UX-2: style="padding:1rem;text-align:center;" → class="noscript-msg" (CSS en landing.css)
   - ✅ SEO-1: sitemap.xml → URLs laesh.mx (antes caelitandem.lat)
   - ✅ SEO-2: aviso_de_privacidad.html og:image → recepcion-de-pacientes.webp + width/height/alt + twitter:image
   - ✅ PWA-1: manifest.json start_url → /mvps/laesh-ui/uipv1a/ (staging)
   - ✅ CODE-1: app.js seed data → guard hostname staging/local; no corre en laesh.mx producción
   - ✅ CODE-2: laesh_mock_orders → laesh_orders; laesh_mock_catalog → laesh_catalog (app.js + medicos.js comment)
   - ✅ CODE-3: aviso_de_privacidad.html robots content="index, follow" + hreflang
   - ✅ SEC-1: solicitud_dac_impr.html frame-ancestors 'self' comentado como intencional
   - ✅ SEC-2: 404.html → CSP meta con style-src 'unsafe-inline'
   - ✅ SEO-3: (falso positivo — hreflang ya presente en index.html:30)
   - ✅ UX-3: (falso positivo — aria-label en nav buttons ya presente)
   - ⏸ PERF-3: srcset specialty cards — diferido (necesita variantes 400px; imágenes actuales 1000px)
4. **CSS versiones**: responsive.css → ?v=20260815 en todos los HTMLs

---

## 🟡 PRIORIDAD MEDIA — INFRA

### P-INFRA-01 🔄 [LAESH OCI] DNS laesh.mx + Certbot — BLOQUEADO POR DNS
**Estado**: Bloqueado — hardening local y OCI completados 2026-08-20. Solo falta DNS.  
**Pendiente**:
1. Cambiar DNS `laesh.mx` → OCI IP `137.131.58.161` (hoy apunta a `2.57.91.91`)
2. Tras propagación DNS: crear server block Nginx `laesh.mx` + ejecutar Certbot
**Referencia**: §13.4 + §14.7 en `Tecnica_Infraestructura_Despliegue.html`.

---

## ✅ RESUELTOS RECIENTEMENTE (referencia)

| Fecha | Item | Detalle |
|---|---|---|
| 2026-08-20 | restaurantb — Migración Apache→Nginx + Hardening LNMP completo | Stack migrado a Nginx 1.27 + PHP-FPM 8.3 + MariaDB 11.8.8. Hardening: ssl_ciphers AEAD, HSTS, CSP, http2, ssl_session_tickets off, /swoole-status, /fpm-status. Tuning: client_max_body_size 40M, fastcgi_buffers, PHP-FPM pool (max_children=20), MariaDB max_statement_time=10s. PHP error 1969 manejado en DB.php + commons.php (HTTP 503). Docs centralizados en §15 Tecnica_Infraestructura_Despliegue.html (9 subsecciones). Verificado: HTTP/2 activo, /fpm-status respondiendo, /swoole-status OK. |
| 2026-07-05 | Tuning Fino y Estabilización VOSK | Implementación de estrategia Cache-First en sw.js (modelo 38MB/vosk.js), persistencia Dexie (storage.persist), filtro de silencio (RMS VAD en AudioWorklet) y watchdog Kill-and-Respawn contra fugas de memoria WASM. Documentación de pruebas y arquitectura actualizada. |
| 2026-07-05 | Alineación Fonética y Catálogo | Refactorización de seed data (IDs explícitos, Taco tripa ID 14, Refresco ID 25), corrección de setup.sh (telemetría), y precarga de versión semilla v1.0.0 publicada con delta_hash exacto. |
| 2026-07-05 | Observabilidad y Ficha Comercial | Implementación de telemetría PWA (Heartbeat), indicadores de red/cola/cocina, bitácora de desconexión del cajero, optimización Push-to-Talk vs WakeLock, suite QA extendida y Ficha Técnica Comercial (Product Sheet). |
| 2026-07-04 | Homologación PWA Multi-Rol | Adaptación de vistas Cocinero (KDS) y Administrador (NLP) a layout-pwa con soporte offline y corrección de bugs de carga. |
| 2026-07-04 | Corrección Rutas Estáticas | Remoción de symlinks y estandarización a rutas absolutas `/web-assets/...` alineadas con la PWA. |
| 2026-07-04 | Guía Rápida de Despliegue | Creación de `Instrucciones_Despliegue_Comandas_VOSK.html` y actualización de Rule 14. |
| 2026-07-03 | Resolución de Error 500 | Corrección de inyección de PDO y redirecciones en Flight. Configuración de entrypoint auto-reparable en Docker. |
| 2026-07-03 | Voice-KDS Cocina Real | Integración del parser de voz cocina con base de datos real (19 palabras, sin Levenshtein). |
| 2026-07-03 | Delight Auth & RBAC | Integración real de Delight Auth, Middleware RBAC e inicio de sesión por NIP. |
| 2026-07-03 | Simulador NLP y Delta Hash | Creación del panel de administración de datasets y validador en tiempo real de gramática VOSK. |
| 2026-06-14 | Creación BD y Orquestador | Se creó `setup.sh` conectando a MCP, creando esquemas transaccionales, de auth e índices. |
| 2026-08-15 | LAESH – Targeting, fixes CRÍTICO, deploy OCI | device-detect.js + targeting.css inyectados en 7 HTMLs; fieldset/legend Sexo (A5); focus-visible outline (C7); grid 25/75 contacto/mapa; mobile Celular+Sexo renglón único; rsync completo a OCI (uipv1a/ + laesh-web-assets-uipv1a/). Auditoría publicada: https://claude.ai/code/artifact/31b7d89b-dedd-4011-afef-d65f95b31d3f |
| 2026-08-30 | LAESH – Limpieza de assets huérfanos `laesh-web-assets-uipv1a/` | **CSS**: `aviso-privacidad.css`, `perfil-medico.css` eliminados. **JS**: `perfil-medico.js`, `docs.js` eliminados. **img/**: `25a.webp`, `mapa-laesh.webp` eliminados (ref. en `gestion_web.php:1134` actualizada a `01mapa-laesh.webp` antes del borrado). **img/cms/**: 7 JPEGs + 16 WebP pre-20260829 + `carousel-1-20260824-a8d752fe.webp` (confirmado huérfano en BD `web_contenidos`) eliminados. Quedan 19 hero-slides 20260829 (2.2 MB). `uipv1/`, `uipv2/`, `uipv0/` — ya movidos a `portafolio-dev-2026/blocklabgd/v1.2/mockup1.0/` (sesión anterior). `commons/seed_first_users.php` y `commons/swoole_server.php` — conservados intencionalmente. |
| 2026-08-15 | LAESH – P-LAESH-04: auditoría 19/25 hallazgos | Grid 25/75 verificado (CSS correcto). 17 hallazgos corregidos esta sesión: P4 (cache versioning 7 HTMLs), P5 (autofocus), P2 (logo dims CLS), A7 (pause button carousel), A4 (h2 sr-only), A2 (aria-live), UX1+UX2 (tel+pattern), S2 (robots.txt), SEO1 (sitemap.xml), S3 (X-Frame-Options DENY), PWA2 (standalone), PWA3 (purpose any), C1 (dead code), C3 (fallback name), C4 (crypto.randomUUID), SEO3 (schema.org URI), 404 (página branded). Reporte: https://claude.ai/code/artifact/31b7d89b-dedd-4011-afef-d65f95b31d3f |
| 2026-08-30 | LAESH – G-CMS-01: 14 cms/ huérfanos eliminados | 14 WebP no referenciados en `web_contenidos` eliminados (1.7 MB). img/cms/ queda con 5 slides activos (448 KB). |
| 2026-08-30 | LAESH – G-CMS-02: sección Promociones funciona sin imágenes | `promociones-2026.webp` eliminada (era solo preview UI en `gestion-web.js:60`, no usada en sitio público). `gestion-web.js:60` actualizado a `sala-de-espera.webp`. Sección promociones confirmada funcional solo con texto. |
| 2026-08-13 | LAESH – B1 inline styles + dominio canónico OG | (ver P-LAESH-01 y P-LAESH-02) |
| 2026-06-14 | Estrategia PWA Offline | Se descargó Dexie.js y se crearon esquemas `db.js` y `sw.js` localmente. |

---

## 🟡 PRIORIDAD MEDIA — LAESH Assets (Squoosh — tarea del usuario)

### G-IMG-01 🟡 Carrusel especialidades — 14 WebP sobre presupuesto
**Spec objetivo**: 800×580 px · WebP Q75 · ≤25 KB por imagen  
**Directorio destino**: `laesh-web-assets-uipv1a/img/`

| Archivo | Actual | Δ peso |
|---|---|---|
| `area-bacteriologia-dos.webp` | 999×666 · 44 KB | −19 KB |
| `area-bacteriologia.webp` | 1000×562 · 36 KB | −11 KB |
| `area-centrifugacion.webp` | 1000×562 · 28 KB | −3 KB |
| `area-coagulacion.webp` | 1000×1000 · 36 KB | aspect ratio + −11 KB |
| `area-estudios-especiales.webp` | 1000×562 · 52 KB | −27 KB |
| `area-hematologia-dos.webp` | 1000×1000 · 64 KB | aspect ratio + −39 KB |
| `area-hematologia-uno.webp` | 1000×562 · 44 KB | −19 KB |
| `area-quimica-clinica-dos.webp` | 1000×1000 · 68 KB | aspect ratio + −43 KB |
| `area-quimica-clinica.webp` | 1000×562 · 84 KB | −59 KB |
| `area-toma-de-muestras.webp` | 1000×666 · 36 KB | −11 KB |
| `area-uroanalisis.webp` | 1000×666 · 32 KB | −7 KB |
| `toma-de-cultivos.webp` | 1000×666 · 32 KB | −7 KB |
| `toma-de-muestras.webp` | 1000×666 · 44 KB | −19 KB |
| `toma-pediatricas.webp` | 1000×666 · 48 KB | −23 KB |

---

### G-IMG-02 🟡 Assets estáticos con spec incorrecta — requieren asset nuevo o Squoosh

| Archivo | Actual | Problema | Acción |
|---|---|---|---|
| `recepcion-lab.webp` | 1000×461 · 36 KB | ⚠️ ancho < 1280 px mínimo hero | Usuario provee imagen ≥1280 px |
| `01mapa-laesh.webp` | 656×477 · 40 KB | ⚠️ spec: 1136×615 · Q85 · ≤90 KB | Usuario provee imagen o recorte |
| `hero-slide5` activo (cms/) | 1152×532 · 36 KB | ⚠️ en BD pero < 1280 px mínimo | Usuario re-sube slide 5 vía CMS |
| `sala-de-espera.webp` | 1920×1080 · **260 KB** | ⚠️ CSS bg slide 4 — peso alto | Squoosh: mismas dims · Q75 · target ≤120 KB |

---

## 🟡 PRIORIDAD MEDIA — LAESH Dev (código)

### G-DEV-01 🟡 Modal perfil médico — no persiste en BD
**Estado**: Feature incompleta · `labadmin.js:894` → solo `console.log`, no llama al backend  
**Acción**: Endpoint PHP en `admrc/` + `INSERT/UPDATE perfiles_medicos`

### G-DEV-02 ⏸ Cache-busting `?v=time()` — diferido a producción
**Estado**: Diferido  
**Problema**: `index.php` + `medicos.php` regeneran timestamp en cada request → sin cacheo de assets  
**Fix**: `filemtime()` en lugar de `time()` para todos los `<link>`/`<script>`

---

## 🟡 PRIORIDAD MEDIA — LAESH Website Responsividad/Performance (Sesión 2026-08-30)

### P-01 ⏸ [LAESH Website] Cache-busting `?v=time()` → `filemtime()` en `index.php`
**Estado**: Diferido — aplicar en producción  
**Problema**: 6 `<link>` CSS + 1 `<script>` en `website/index.php` usan `?v=<?= time() ?>` → browser re-descarga ~210 KB de assets en cada pageview, sin cacheo  
**Archivos afectados** (en orden del `<head>`):
- `device-detect.js`
- `tokens.css`, `fonts.css`, `style.css`, `style-website.css`, `landing.css`, `targeting.css`
**Fix**: Reemplazar `time()` por `filemtime(BASE_PATH . '/laesh-web-assets-uipv1a/...')` en cada línea  
**Nota**: Alineado con G-DEV-02 (mismo problema en `medicos.php`); puede cerrarse junto

### P-03 ⏸ [LAESH Website] Reoptimizar imágenes `area-*.webp` del carrusel de especialidades — tarea usuario
**Estado**: Diferido — requiere acción manual del usuario en Squoosh  
**Problema**: 14+ imágenes del carrusel exceden el presupuesto de ≤25 KB. Peores offenders:
- `area-quimica-clinica.webp` → 80 KB
- `area-quimica-clinica-dos.webp` → 66 KB (cuadrada, spec incorrecta)
- `area-hematologia-dos.webp` → 63 KB (1000×1000 cuadrada)
**Spec correcta**: exacto 800×580 px · WebP · Q75 · ≤25 KB  
**Acción**: Usuario → Squoosh: Resize 800×580, Format WebP, Quality 75, re-exportar cada archivo  
**Ubicación**: `laesh-web-assets-uipv1a/img/area-*.webp`

### R-02 ⏸ [LAESH Website] Corregir dims HTML de imágenes en `calidad.php` tras P-03
**Estado**: Bloqueado por P-03 (requiere que las imágenes estén re-exportadas a 800×580)  
**Problema**: `calidad.php` tiene `width="1000" height="562"` en sus `<img>` → ratio incorrecto (16:9 vs 1.38:1 real) → posible CLS  
**Fix**: Cambiar a `width="800" height="580"` después de confirmar que los assets de calidad también están en 800×580  
**Archivo**: `laesh-swbldi/website/sections/calidad.php`

---

## 🟡 PRIORIDAD MEDIA — LAESH Portal Médico

### P-LAESH-06 🟡 [LAESH Portal Médico] Issues A y B — verificación visual pendiente

**Estado**: Reevaluado 2026-08-30 (Claude Code). CSS corregido en sesiones anteriores. Pendiente solo verificación visual en browser.

> ⚠️ **SSOT cambió**: El archivo de referencia ya NO es `website/uipv1/medicos.html`.  
> **El SSOT activo del portal médico es `laesh-swbldi/md/views/medicos.php`** (Plates view, stack PHP).  
> El HTML en `uipv1/medicos.html` es legado — tiene solo 10 fichas vs 18 en el PHP. No editar el HTML.

**Archivos SSOT activos**:
- Vista PHP: `laesh-swbldi/md/views/medicos.php`
- CSS compartido: `laesh-web-assets-uipv1a/css/style.css` · `portal.css` · `targeting.css`
- JS: `laesh-web-assets-uipv1a/js/medicos.js` · `medicos-a11y.js` · `app.js`

---

#### Issue A — Dropdown fichas: checkbox separado del texto

**Estado en CSS**: ✅ Resuelto estructuralmente (sesión anterior).
- `.ficha-dropdown` usa `position: fixed` (CSS-01) — escapa de cualquier `overflow:hidden` ancestro.
- JS posiciona con `getBoundingClientRect()`.
- `.ficha-dropdown .ficha-drop-item { display:flex; flex-wrap:nowrap; align-items:flex-start; gap:5px }` — especificidad (0,2,0), no hay conflicto con reglas ancestro.
- Regla `.form-group label { display:block }` **NO existe** en el CSS cargado (`uipv1a/style.css`). Conflicto original era con archivo diferente.

**Acción pendiente**: Abrir `medicos.php` en browser, verificar visualmente que checkbox queda junto al texto en cada ficha. Si persiste → reportar con captura de pantalla.

---

#### Issue B — Sexo: radios H/M desalineados en móvil

**Estado en CSS**: ✅ Resuelto estructuralmente (sesión anterior).
- Grid `orden-patient-row1` en `@media ≤767px`: `grid-template-columns: minmax(0,115px) minmax(0,1fr) 42px auto; align-items: end`.
- `.form-legend` (Sexo) y `.form-label` (Nombre/Edad) normalizados a `font-size:0.62rem; margin-bottom:2px` en móvil.
- `.d-flex-gap-row` → `height:38px`. `.label-flex` → `min-height:38px`. Inputs → `height:38px`. Alturas homogéneas.

**Acción pendiente**: Abrir `medicos.php` en browser a 375px de ancho, verificar visualmente que Sexo alinea con Nombre/Edad. Si persiste → DevTools → Computed height del `form-group-sexo` vs `form-group-nombre`.

---

**Nota adicional — fichas desactualizadas en legado**:  
`website/uipv1/medicos.html` tiene 10 fichas y label "10 fichas principales".  
`md/views/medicos.php` tiene **18 fichas** (8 adicionales: F. Tiroidea, Lípidos, Marc. Tumorales, Infectología, PFH, Gasometrías, Reumatología, Bacteriología).  
El HTML legado **no necesita sincronizarse** — el PHP es el SSOT.

---

*Última actualización: 2026-08-30 — Realineación completa de pendientes. Activos: P-LAESH-05 (Deploy OCI), P-LAESH-06 (verificación visual medicos.php), P-INFRA-01 (DNS laesh.mx), G-IMG-01 (14 carrusel Squoosh), G-IMG-02 (recepcion-lab/mapa/slide5 asset nuevo + sala-de-espera Squoosh), G-DEV-01 (modal médico BD), G-DEV-02 (cache-busting diferido), P-01 (filemtime index.php), P-03 (reoptimizar area-*.webp usuario), R-02 (dims calidad.php tras P-03). Cerrados: G-CMS-01 (14 huérfanos cms/), G-CMS-02 (promociones solo texto OK). — Claude Code*
