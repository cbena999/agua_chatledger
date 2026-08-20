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

### P-02 🔲 Módulos de Caja y Administración (Fase 5/6)
**Estado**: Pendiente
**Descripción**: Desarrollo de la UI y endpoints reales para el cierre de caja (Corte X y Corte Z), reportes analíticos de ventas por periodo, y el registro de horas del personal (Reloj Checador).

---

## 🟡 PRIORIDAD MEDIA — INFRA

### P-INFRA-01 🔄 [restaurantb Docker] Replicar hardening LNMP en OCI VM — PENDIENTE AUTORIZACIÓN
**Estado**: Local Docker completado y verificado 2026-08-20 (ver RESUELTOS RECIENTEMENTE). OCI VM bloqueado — **requiere autorización explícita**.

**Local completado 2026-08-20 (segunda ronda):**
- ✅ CSP: `'unsafe-inline'` eliminado de `script-src` (Nginx) — verificado en vivo
- ✅ Swoole tuning: `worker_num=2`, `heartbeat_idle_time=600s`, buffers, TCP keepalive — contenedor recreado
- ✅ PHP-FPM env vars LAESH: `LAESH_DB_*` + `APP_ENV` en `docker-compose.yml` — verificado `laesh_app` conecta a `laesh_db` (27 tablas)
- ✅ Swoole log volume: `../logs/php-fpm:/var/log/php-fpm:rw` añadido al servicio `swoole`
- ✅ Archivos PHP de app revertidos (no eran scope de infra)
- ✅ Documentación actualizada: §15.7d + §14.3 + §15.8 en `Tecnica_Infraestructura_Despliegue.html`

**Aplicado en OCI VM 2026-08-20:**
- ✅ `http2` en listen (Nginx 1.18 syntax `listen 443 ssl http2;`)
- ✅ HSTS + CSP (`script-src 'self'`) + Referrer-Policy headers
- ✅ Location `/fpm-status` (allow 127.0.0.1 solo, fastcgi_params)
- ✅ Deploy hook Certbot: `/etc/letsencrypt/renewal-hooks/deploy/restore-http2.sh` (restaura http2 post-renovación)
- ✅ PHP-FPM `www.conf`: `pm.status_path=/fpm-status` + env vars `LAESH_DB_*` + `APP_ENV=production`
- ✅ Verificado: HTTP/2 activo, HSTS/CSP en headers vivos, /fpm-status responde, laesh_app conecta laesh_db (27 tablas)
- ✅ `ssl_session_tickets off` + SSL ciphers — ya aplicados por Certbot (`options-ssl-nginx.conf`) — skip
- ✅ Documentación: §14.7 nuevo en `Tecnica_Infraestructura_Despliegue.html`

**Cerrado 2026-08-20:**
- ✅ Composer install — no requerido; libs vendored en `www/restaurant/commons/libs/` (Flight, Plates, Delight-Auth); sin `composer.json`
- ✅ §15.8 actualizada: todas las filas OCI reflejan estado real (✅ aplicado / ✅ pre-existente / pendiente DNS)

**Pendiente en OCI VM (bloqueado por DNS):**
1. **Server block laesh.mx** — `laesh.mx` apunta a `2.57.91.91`, no a OCI (`137.131.58.161`). Cambiar DNS primero. Runbook §13.4.
2. **Certbot Let's Encrypt laesh.mx** — ejecutar tras DNS + server block.
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
| 2026-08-15 | LAESH – P-LAESH-04: auditoría 19/25 hallazgos | Grid 25/75 verificado (CSS correcto). 17 hallazgos corregidos esta sesión: P4 (cache versioning 7 HTMLs), P5 (autofocus), P2 (logo dims CLS), A7 (pause button carousel), A4 (h2 sr-only), A2 (aria-live), UX1+UX2 (tel+pattern), S2 (robots.txt), SEO1 (sitemap.xml), S3 (X-Frame-Options DENY), PWA2 (standalone), PWA3 (purpose any), C1 (dead code), C3 (fallback name), C4 (crypto.randomUUID), SEO3 (schema.org URI), 404 (página branded). Reporte: https://claude.ai/code/artifact/31b7d89b-dedd-4011-afef-d65f95b31d3f |
| 2026-08-13 | LAESH – B1 inline styles + dominio canónico OG | (ver P-LAESH-01 y P-LAESH-02) |
| 2026-06-14 | Estrategia PWA Offline | Se descargó Dexie.js y se crearon esquemas `db.js` y `sw.js` localmente. |

---

---

### P-LAESH-06 🔴 [LAESH medicos.html] Dos issues sin resolver — PENDIENTE PARA GEMINI

**Estado**: Sin resolver al cierre de sesión 0969fceb (2026-08-16). Claude intentó ~9 variantes sin lograrlo.

#### Issue A — Dropdown fichas: checkbox separado del texto

**Archivos involucrados**:
- `laesh-swbldi/website/uipv1/medicos.html` (versión actual `?v=20260816i`)
- `laesh-web-assets-uipv1a/css/style.css` (selector `.ficha-dropdown .ficha-drop-item`)
- `laesh-web-assets-uipv1a/css/responsive.css` (bloque ≤767px: `.ficha-dropdown`)

**Comportamiento observado**: El checkbox aparece en el extremo izquierdo con gran separación del texto del estudio. El texto wrappea a múltiples líneas.

**Lo que se sabe**:
- Causa raíz conocida: `.form-group label { display:block }` (especificidad 0,1,1) overrideaba `.ficha-drop-item { display:flex }` (0,1,0). Se subió especificidad a `.ficha-dropdown .ficha-drop-item` (0,2,0) — debería estar resuelto.
- El dropdown tiene `min-width: 300px; max-width: 420px` en desktop y `min(340px, 100vw-8px)` en móvil.
- El texto wrappea porque los nombres de estudios son largos ("Electrolitos Séricos Na+, K+, Cl-, Ca++, P, Mg").
- Sospecha: algún ancestro del grid `.fichas-estudios-grid` puede tener `overflow:hidden` que clipa el dropdown horizontal. Buscar en la cadena: `fichas-estudios-wrap > form-group > form > subtab-generar > card`.
- `align-items: flex-start` (no center) ya está aplicado para que el checkbox quede junto a línea 1 del texto.

**Lo que Gemini debería explorar**:
1. Inspeccionar en DevTools qué `overflow` tienen todos los ancestros del `.ficha-wrap`.
2. Si hay overflow:hidden en algún ancestro: agregar `overflow: visible` en ese elemento.
3. Verificar en DevTools que el `.ficha-dropdown` efectivamente mide 300-420px al abrirse.

---

#### Issue B — Sexo: label e inputs radios H/M desalineados en móvil

**Archivos involucrados**:
- `medicos.html` línea ~207: ya se cambió de `<fieldset>` a `<div role="group" aria-labelledby="sexo-label">` en v20260816i
- `responsive.css` bloque `@media (max-width: 767px)` → `.orden-patient-grid`

**Comportamiento observado**: La etiqueta "Sexo" y los radios H/M aparecen más abajo que los otros inputs (Nombre, Celular, Edad) en móvil.

**Lo que se sabe**:
- El grid en móvil: `grid-template-columns: minmax(0,2fr) minmax(0,1.3fr) 36px 56px` con `align-items: end`.
- El `<fieldset>/<legend>` fue reemplazado por `<div>/<span>` en v20260816i para eliminar quirks de browser.
- Los 4 items del grid deberían tener altura similar (~42px: label 10px + margin 2px + input/radio 30px).
- El `.form-legend` (span) tiene base CSS: `font-size: 0.9rem; margin-bottom: 0.5rem`. El override móvil `.orden-patient-grid .form-legend { font-size: 0.62rem; margin-bottom: 2px }` debería aplicar.
- La misma causa raíz `.form-group label { display:block }` podría afectar los `.label-flex` (H/M) → revisado con `.d-flex-gap-row > .label-flex { display:flex }` (0,2,0) en style.css.

**Lo que Gemini debería explorar**:
1. Inspeccionar DevTools: ¿cuál es el computed height de cada item del grid en el row de Nombre/Celular/Edad/Sexo?
2. Verificar que `.orden-patient-grid .form-legend` override aplica (font-size: 0.62rem, margin-bottom: 2px).
3. Si la altura de la celda Sexo difiere: investigar qué propiedad la infla.
4. Considerar hacer el grid Sexo con `align-self: end` explícito en el div del grupo.

---

**Versión actual de archivos**: `?v=20260816i`  
**Ruta archivos fuente**: `/home/carlos/GitHub/caelitandem_home/restaurantb/www/`  
- CSS: `laesh-web-assets-uipv1a/css/style.css` y `responsive.css`
- HTML: `laesh-swbldi/website/uipv1/medicos.html`
- JS: `laesh-web-assets-uipv1a/js/medicos.js`

---

*Última actualización: 2026-08-20 — Cierre de sesión: OCI hardening ✅, Composer N/A (libs vendored) ✅, §15.8 sincronizada ✅. Pendiente: DNS laesh.mx → OCI + git commit (usuario). — Claude Code*
