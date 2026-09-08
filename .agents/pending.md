# Pendientes Activos del Proyecto Restaurant VOSK Comandas

> **Protocolo**: Este archivo es la lista viva de tareas en vuelo.
> - Actualizar al **iniciar** sesión (verificar estados) y al **cerrar** sesión (registrar lo que quedó a medias).
> - Válido para Claude Code y Google Antigravity/Gemini por igual.
> - Un pendiente se elimina solo cuando está **verificado en BD/UI**, no cuando el agente cree que está listo.

---

## 🔴 PRIORIDAD ALTA

### P-LAESH-SEO-01 🔴 [LAESH] Presencia Google — SEO orgánico + SEM (Google Ads)
**Estado**: En progreso — Plan elaborado 2026-09-07 (Claude Code sesión 8). Base técnica F0 completa.  
**Artefacto de referencia**: https://claude.ai/code/artifact/dd7cc2f4-b287-48ee-88ac-5f178d18b1f9  
**Dominio**: https://laesh.mx/

#### F0 ✅ Base técnica — COMPLETA
- HTTPS/HSTS activo ✅ · robots.txt ✅ · sitemap.xml (laesh.mx) ✅ · canonical ✅ · lang="es-MX" ✅ · og:image ✅ · hreflang ✅ · CMS Pestaña 11 metadatos ✅

#### F1 🔲 Google Search Console + GA4 — Semana 1 · **Acción más urgente**
| Tarea | Responsable | Estado |
|---|---|---|
| Crear propiedad en GSC: `https://laesh.mx/` (método DNS TXT recomendado) | **Usuario** | ⏳ |
| Enviar sitemap: `https://laesh.mx/sitemap.xml` en GSC → Sitemaps | **Usuario** | ⏳ |
| Correr PageSpeed Insights baseline (LCP, CLS, INP) | **Usuario** | ⏳ |
| Crear propiedad GA4 → obtener Measurement ID (G-XXXXXXXX) | **Usuario** | ⏳ |
| Agregar snippet GA4 en PHP base layout + vinculación GA4↔GSC | **Claude/Gemini** | ⏳ |

#### F2 🔲 Google Business Profile — Semana 1–2
| Tarea | Responsable | Estado |
|---|---|---|
| Crear/reclamar ficha GBP: "LAESH Laboratorio Clínico" | **Usuario** | ⏳ |
| Categoría: Laboratorio de análisis clínicos + Laboratorio médico | **Usuario** | ⏳ |
| NAP completo (dirección, teléfono, web laesh.mx, horarios) | **Usuario** | ⏳ |
| Subir fotos: fachada, recepción, áreas de lab, personal | **Usuario** | ⏳ |
| Agregar servicios individuales (estudios) y descripción 750 car. | **Usuario** | ⏳ |
| Generar link de reseña corto + campaña interna de reseñas | **Usuario** | ⏳ |

#### F3 🔲 Schema.org JSON-LD — Semana 2–3 · **Tarea de agente**
| Tarea | Responsable | Estado |
|---|---|---|
| JSON-LD MedicalOrganization/ClinicalLaboratory en `index.php` | **Claude/Gemini** | ⏳ |
| FAQPage: estudios frecuentes (biometría, Q.S., cultivos, etc.) administrable desde CMS | **Claude/Gemini** | ⏳ |
| BreadcrumbList en todas las páginas/portales | **Claude/Gemini** | ⏳ |
| Validar con Rich Results Test + verificar en GSC → Mejoras | **Usuario** | ⏳ |

#### F4 🔲 Contenido CMS — Semana 3–4 · **Usuario via CMS Pestaña 11**
- Títulos únicos por página (50–60 car.) con ciudad + propuesta de valor
- Meta descriptions únicas (140–160 car.) con CTA en cada sección
- og:image 1200×630 dedicada para laesh.mx (slot `seo-og` ya existe en CMS)

#### F5 🔲 Google Ads — Mes 2 · Iniciar cuando F2 tenga 10+ reseñas
- Search Ads: palabras clave locales · $150–250 MXN/día · radio 10–15 km
- Google Maps pin promovido: $100–150 MXN/día
- Configurar conversiones (clic tel, WhatsApp, formulario) — **Claude/Gemini** agrega tag
- Textos de anuncio: título "LAESH Laboratorio Clínico · Resultados el mismo día"

#### F6 🔁 Monitoreo continuo — mensual desde F1
- GSC semanal: cobertura, consultas, Core Web Vitals
- GBP: 1 post/semana, responder reseñas en 24 h
- Google Ads mensual: CPA, keywords negativas, A/B textos
- PageSpeed mensual: objetivo 90+ desktop · 75+ móvil

#### Palabras clave objetivo principales
`laboratorio clínico [ciudad]` · `análisis de sangre [ciudad]` · `biometría hemática [ciudad]` · `química sanguínea precio` · `estudios clínicos resultados mismo día` · `LAESH laboratorio`

---

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

### P-LAESH-E2E-01 ✅ [LAESH KVM2] Trazabilidad E2E — G1–G5 todos resueltos

**Estado**: Cerrado 2026-09-06 (G2–G5) + 2026-09-06 (G1). **Deploy KVM2 confirmado 2026-09-06.**

**Resueltos:**
| Gap | Fix | Verificado |
|-----|-----|-----------|
| G1 | `Logger::logAlways()` añadido en `commons/Logger.php` (bypass filtro nivel mín.). Call-sites actualizados: login exitoso, logout, orden recepción creada, solicitud médica creada, cambio estado orden, CMS sección publicada, médico registrado, admin cambió estado médico | ✅ 2026-09-06 — deploy KVM2 confirmado |
| G2 | `RbacManager::requirePermission()` emite `Logger::log('WARN',...)` en denegaciones e `Logger::log('INFO',...)` en redirects | ✅ entry WARN en sys_logs + app.log |
| G3 | `Logger::$requestId` estático (`bin2hex(random_bytes(8))`), columna `request_id CHAR(16)` en sys_logs | ✅ `[REQ:1068fa52d9b0b134]` en app.log |
| G4 | Columnas `url VARCHAR(500)` + `metodo VARCHAR(10)` en sys_logs; capturadas en Logger | ✅ `[GET /laesh/md/estudios/todos]` |
| G5 | Columna `session_id CHAR(26)` en sys_logs; capturada con `session_id()` (CLI-safe) | ✅ session_id en sys_logs row |

**Fix adicional (2026-09-06):** `commons/commons.php` — `Flight::map('rbac',...)` movido fuera del try/catch de `DB::connect()`. Antes causaba `"rbac must be a mapped method"` cuando la BD tenía fallo transitorio.

> ⚠️ **G1 requiere deploy a KVM2** — cambios en `Logger.php`, `login.php`, `logout.php`, `rc/negocio/Ordenes.php`, `md/negocio/Ordenes.php`, `admrc/index.php`.

---

### P-LAESH-NGINX-SYNC-01 ✅ [LAESH KVM2] Nginx config verificado — local == servidor
**Estado**: Resuelto 2026-09-06 — verificación manual confirmada.

**Nota**: `~/laesh-src/setup/deploy/` no existe en el servidor (solo se sincroniza código web), así que el diff automatizado no funcionó. Se comparó el output del diff contra el template local con sustitución `__LAESH_DOMAIN__ → laesh.mx`: **287 líneas, contenido idéntico**.

| Fix verificado | Estado |
|---|---|
| `try_files $uri @md_php` / `@rc_php` / `@adrc_php` (sin `$uri/`) | ✅ |
| `include fastcgi_params` como primera línea en los 3 named locations | ✅ |
| `SCRIPT_NAME /laesh/{md\|rc\|adrc}/index.php` explícito | ✅ |
| SHA256 servidor: `6e22c74ef5132218819142f1879c5c437c02bdf52d0be74522562e866ee8e080` | ✅ |

---

### P-INFRA-02 ✅ [LAESH KVM2] PHP CLI hang: OPcache JIT + Swoole — RESUELTO
**Estado**: Resuelto 2026-09-04 (sesión 3)  
**Síntoma original**: `php8.3` CLI cuelga indefinidamente con `opcache.jit=tracing` + `opcache.enable_cli=1` + `extension=swoole.so`.  
**Fix aplicado en `07_security_harden.sh`**: Se generan **dos** OPcache ini distintos:
- FPM: `10-opcache-laesh.ini` completo con `opcache.jit=tracing` (JIT activo para requests HTTP)
- CLI: mismo ini pero con `opcache.jit=0` + `opcache.jit_buffer_size=0M` (sin JIT, sin hang)

`cache_renew.cron` (5 AM) funciona correctamente. `08_verify.sh` usa `php8.3 -n` para checks internos y `strings` para versión Swoole (sin invocar PHP). `03_install_swoole.sh` también usa `strings` para idempotencia.

### P-INFRA-01 ✅ [LAESH KVM2] DNS laesh.mx + HTTPS/HSTS — RESUELTO 2026-09-07
**Estado**: Cerrado — DNS verificado apuntando a KVM2 `83.136.219.193`; CNAME `www→laesh.mx`; HTTPS HTTP/2 + HSTS `max-age=31536000; includeSubDomains` activo. ✅

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
| 2026-09-05 | LAESH – Portal 404 fix KVM2 (nginx SCRIPT_NAME + try_files + include order) | Causa raíz: `try_files $uri $uri/` generaba internal redirect via index directive → bypasseaba `@rc_php`/`@md_php`/`@adrc_php` → generic PHP handler sin SCRIPT_NAME correcto → Flight `dirname()` calculaba base `/rc` en vez de `/laesh/rc` → sin strip → 404. Fix: `try_files $uri @portal_php` (sin `$uri/`) + `include fastcgi_params` primero + `SCRIPT_NAME /laesh/{portal}/index.php` explícito. Verificado: ADMIN→RC 200 ✅, MEDICO→MD 200 ✅ (browser). Local: también verificado 200. |
| 2026-08-30 | LAESH – Limpieza de assets huérfanos `laesh-web-assets-uipv1a/` | **CSS**: `aviso-privacidad.css`, `perfil-medico.css` eliminados. **JS**: `perfil-medico.js`, `docs.js` eliminados. **img/**: `25a.webp`, `mapa-laesh.webp` eliminados (ref. en `gestion_web.php:1134` actualizada a `01mapa-laesh.webp` antes del borrado). **img/cms/**: 7 JPEGs + 16 WebP pre-20260829 + `carousel-1-20260824-a8d752fe.webp` (confirmado huérfano en BD `web_contenidos`) eliminados. Quedan 19 hero-slides 20260829 (2.2 MB). `uipv1/`, `uipv2/`, `uipv0/` — ya movidos a `portafolio-dev-2026/blocklabgd/v1.2/mockup1.0/` (sesión anterior). `commons/seed_first_users.php` y `commons/swoole_server.php` — conservados intencionalmente. |
| 2026-08-15 | LAESH – P-LAESH-04: auditoría 19/25 hallazgos | Grid 25/75 verificado (CSS correcto). 17 hallazgos corregidos esta sesión: P4 (cache versioning 7 HTMLs), P5 (autofocus), P2 (logo dims CLS), A7 (pause button carousel), A4 (h2 sr-only), A2 (aria-live), UX1+UX2 (tel+pattern), S2 (robots.txt), SEO1 (sitemap.xml), S3 (X-Frame-Options DENY), PWA2 (standalone), PWA3 (purpose any), C1 (dead code), C3 (fallback name), C4 (crypto.randomUUID), SEO3 (schema.org URI), 404 (página branded). Reporte: https://claude.ai/code/artifact/31b7d89b-dedd-4011-afef-d65f95b31d3f |
| 2026-08-30 | LAESH – G-CMS-01: 14 cms/ huérfanos eliminados | 14 WebP no referenciados en `web_contenidos` eliminados (1.7 MB). img/cms/ queda con 5 slides activos (448 KB). |
| 2026-08-30 | LAESH – G-CMS-02: sección Promociones funciona sin imágenes | `promociones-2026.webp` eliminada (era solo preview UI en `gestion-web.js:60`, no usada en sitio público). `gestion-web.js:60` actualizado a `sala-de-espera.webp`. Sección promociones confirmada funcional solo con texto. |
| 2026-09-07 | LAESH KVM2 — Sesión 7+8: Estabilización integral home site, CMS, infra y seguridad | **Sesión 7 (CMS/Assets/CSS):** `cms_cleanup.php` 3 bugs; `admrc/index.php` auto-detección tipo+ON DUPLICATE KEY; BD 13 filas tipo fix; 6 promos re-subidas; cron cache-renew LAESH_DB_PASS; gestion-web.js 3 refs -dos.webp; website.js tooltip; @layer Chrome 92 fix; Issue-3 hero contain; landing.css responsividad 4 secciones; seed_catalogs.sql fallback estático; orphans eliminados. **Sesión 8 (continuación):** `landing.css` grid-acerca-cards Opción B — base 2col + min-width:1025px 3col + selector triple-clase @media(641–1024px) con display+grid-template !important — **verificado tablet portrait ✅**. **Infra/Seguridad:** P-INFRA-01 DNS laesh.mx→KVM2 verificado ✅; S1 HTTPS HTTP/2 + HSTS max-age=31536000 activo ✅; PERF-03 Gzip/Brotli Nginx ✅ (realizado por usuario); A6 contraste color ✅ (realizado por usuario). **CMS seguridad upload:** `admrc/index.php` validación dims servidor con `getimagesize()` por slot (hero/carousel/calidad/promo/croquis/seo-og/default) → HTTP 422 si no cumple spec; `gestion_web.php` accept promo `image/webp,image/png,image/jpeg` → `image/webp`. Deploy KVM2 ✅. ⏳ git commit pendiente instrucción explícita. |
| 2026-08-13 | LAESH – B1 inline styles + dominio canónico OG | (ver P-LAESH-01 y P-LAESH-02) |
| 2026-06-14 | Estrategia PWA Offline | Se descargó Dexie.js y se crearon esquemas `db.js` y `sw.js` localmente. |

---

## 🟡 PRIORIDAD MEDIA — LAESH Assets (Squoosh — tarea del usuario)

### G-IMG-01 ✅ Carrusel especialidades — RESUELTO 2026-09-07
**Estado**: Cerrado — verificado por usuario 2026-09-07.  
Imágenes `area-*.webp` validadas en producción (KVM2 CMS). ✅

---

### G-IMG-02 ✅ Assets estáticos — RESUELTO 2026-09-07
**Estado**: Cerrado — todos los assets verificados/corregidos por usuario 2026-09-07.
- `01mapa-laesh.webp` 656×477 — dentro de spec real 656–756×477–577px ✅
- `sala-de-espera.webp` — seed local reemplazado con CMS hero-slide4 1600×800·101KB ✅
- `recepcion-lab.webp` y `hero-slide5 CMS` — verificados correctos ✅

---

## 🟡 PRIORIDAD MEDIA — LAESH Dev (código)

### G-DEV-01 ✅ Modal perfil médico — resuelto 2026-09-06
**Estado**: Cerrado. **Deploy KVM2 confirmado 2026-09-06.**  
**Análisis**: El backend `POST /laesh/rc/medico/crear` ya existía y estaba completo en `rc/index.php` → `RC\Negocio\Ordenes::registrarMedico()`. El stub JS (`console.log`) era código muerto — el form tenía `hx-post` y HTMX lo manejaba, pero sin validación completa de celular ni feedback de error correcto.  
**Fix aplicado**: `labadmin.js` — reemplazado stub `console.log` con interceptor de `submit` que hace `fetch('/laesh/rc/medico/crear')`. Validación añadida: celular `^\d{10}$`. Distinción éxito/error por header `HX-Refresh: true`. Feedback correcto en ambos casos.

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

### R-02 ✅ [LAESH Website] Dims HTML imágenes `calidad.php` — RESUELTO 2026-09-07
**Estado**: Cerrado — verificado por usuario 2026-09-07. ✅

### PERF-01 ⏸ [LAESH Website] Minificación y bundle de CSS — 6 archivos → 1 archivo minificado
**Estado**: Diferido — requiere tooling (Node/npm o script PHP)  
**Impacto estimado**: ⭐⭐⭐ Alto — elimina 5 RTTs extra en HTTP/1.1 y reduce tamaño total ~30–40% vía minificación  
**Problema**: `index.php` carga 6 `<link rel="stylesheet">` independientes que bloquean el render en serie:
```
tokens.css · fonts.css · style.css · style-website.css · landing.css · targeting.css
```
**Fix recomendado**:
- Opción A (build step): `npx csso-cli` o similar para concatenar + minificar → `dist/laesh-bundle.min.css`; actualizar `<link>` a un solo archivo + `filemtime()`
- Opción B (sin build): PHP en-línea con `ob_start()` + strip de comentarios/espacios + header `Content-Type: text/css` + `Cache-Control` agresivo
- Mantener archivos fuente separados en `css/` como SSOT de edición
**Archivos**: `laesh-web-assets-uipv1a/css/*.css` · `index.php` · `medicos.php`

### PERF-02 ⏸ [LAESH Website] Minificación de JS — `device-detect.js` y demás scripts
**Estado**: Diferido — requiere tooling  
**Impacto estimado**: ⭐⭐ Medio — reduce peso de JS transferido ~25–35%; `device-detect.js` bloquea parser al estar en `<head>`  
**Problema**:
- `device-detect.js` está en `<head>` sin `defer`/`async` → bloquea render hasta que el script se descarga y ejecuta
- JS no está minificado → comentarios, whitespace y nombres largos viajan al browser
**Fix recomendado**:
1. Añadir `defer` a `<script src="device-detect.js?v=...">` si el script no necesita ejecutar antes del DOM (verificar dependencias)
2. Minificar con `npx terser` o equivalente → `dist/device-detect.min.js`
3. Aplicar mismo criterio a otros scripts inline o archivos JS del sitio web
**Archivo**: `laesh-web-assets-uipv1a/js/device-detect.js` · `index.php` `<head>`

### PERF-04 ✅ [LAESH Website] Ficha "25 años de experiencia" no centrada/completa en iPad — RESUELTO
**Estado**: Cerrado 2026-09-04 — informado como corregido por el usuario  
**Resolución**: CSS corregido (alineación y visibilidad completa en viewport tablet ~768–1024 px).  
**Archivos afectados**: `laesh-web-assets-uipv1a/css/landing.css` · `style-website.css`

### PERF-03 ⏸ [LAESH Website] Verificar y activar Gzip/Brotli en XAMPP (Host A y OCI)
**Estado**: Diferido — verificar configuración de Apache  
**Impacto estimado**: ⭐⭐⭐ Alto — compresión texto 60–80%; CSS/JS/HTML entregados en fracción del tamaño  
**Problema**: No confirmado si `mod_deflate` o `mod_brotli` están activos en el XAMPP de Host A ni en el VPS OCI  
**Fix recomendado**:
```bash
# Verificar en Host A
/opt/lampp/bin/apachectl -M | grep -E 'deflate|brotli'
curl -I -H "Accept-Encoding: gzip" http://localhost/laesh-swbldi/website/ | grep Content-Encoding
```
Si no está activo → agregar en `.htaccess` de `laesh-swbldi/`:
```apache
<IfModule mod_deflate.c>
    AddOutputFilterByType DEFLATE text/html text/css application/javascript text/javascript application/json
</IfModule>
```
Repetir verificación en OCI tras deploy P-LAESH-05  
**Archivos**: `laesh-swbldi/.htaccess` · Apache conf XAMPP

---

## 🟡 PRIORIDAD MEDIA — LAESH Portal Médico

### P-LAESH-06 ✅ [LAESH Portal Médico] Issues A y B — RESUELTO 2026-09-07

**Estado**: Cerrado 2026-09-07 — verificación por análisis de código (Claude Code sesión 8).

- **Issue A (dropdown checkbox):** `portal.css` — `.ficha-dropdown` con `position:fixed` + JS `getBoundingClientRect()`. `.ficha-drop-item { display:flex; flex-wrap:nowrap; align-items:flex-start; gap:5px }` + checkbox `flex-shrink:0; width:14px; margin-top:1px` + span `flex:1`. Checkbox y texto siempre alineados. ✅
- **Issue B (Sexo móvil):** `portal.css @media ≤767px` — grid `minmax(0,115px) minmax(0,1fr) 42px auto`; `form-group-sexo: grid-column:4; grid-row:1`; labels `0.62rem; margin-bottom:2px`; inputs `height:38px`. Alineación homogénea garantizada. ✅

---

---

## ✅ Cerrados en Sesión 9 — 2026-09-08

### G-SWOOLE-01 ✅ config.php — Swoole host `0.0.0.0` → `127.0.0.1` en KVM2 nativo
Docker-aware: `$inDocker ? '0.0.0.0' : '127.0.0.1'`. Eliminada dependencia de UFW para seguridad del bridge. Desplegado y verificado KVM2. ✅

### G-SWOOLE-02 ✅ logrotate-laesh.conf — 4 correcciones
- `systemctl kill -s USR1` → `systemctl reload` (SIGHUP, no worker-reload)
- `backup.log` → `backup-db.log` (nombre real del script)
- `cert-check.log` → `cert-expiry.log` (nombre real del script)
- Añadido `cms-cleanup.log` (cron 01:00 AM). Desplegado y verificado con `--debug`. ✅

### G-SWOOLE-03 ✅ swoole-laesh.service — ExecStartPost health check
`ExecStartPost=/bin/bash -c 'sleep 3 && curl -sf http://127.0.0.1:9502/status > /dev/null'`. systemd ahora falla si Swoole no levanta correctamente. ✅

### G-SWOOLE-04 ✅ swoole-laesh.service — ExecReload SIGHUP
`ExecReload=/bin/kill -HUP $MAINPID`. logrotate postrotate ahora recibe SIGHUP real para reopen del fd del log sin desconectar clientes WS. ✅

### G-SWOOLE-05 ✅ swoole_server.php — echo callbacks silenciados
4 `echo "[WS]..."` y `echo "[Bridge]..."` → `// Logger::log(..., 'DEBUG')`. Banner de arranque usa `{$swooleHost}:{$swoolePort}` en vez de hardcoded. ✅

---

*Última actualización: 2026-09-08 (sesión 9) — G-SWOOLE-01..05 cerrados: estabilización integral Swoole KVM2 (config.php, logrotate, swoole-laesh.service ×2, swoole_server.php). Pendiente: git commit sesiones 7+8+9 (instrucción explícita del usuario). — Claude Code*
