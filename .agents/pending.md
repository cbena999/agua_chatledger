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

### P-LAESH-05 🔄 [LAESH Website] Deploy OCI + auditoría completa + responsive.css
**Estado**: En progreso — sesión 0969fceb (2026-08-15)
**Descripción**:
1. **Deploy OCI** — ⚠️ REQUIERE AUTORIZACIÓN EXPLÍCITA del usuario antes de ejecutar rsync.
   - Archivos listos: `uipv1/` (7 HTMLs + .htaccess + robots.txt + sitemap.xml + 404.html + **sw.js nuevo**) + `laesh-web-assets-uipv1a/` (app.js + website.js + manifest.json + landing.css + style.css + **register-sw.js nuevo**)
2. **Auditoría: 24/25 completados** — solo S1 (HTTPS/HSTS, infra OCI) pendiente:
   - ✅ A6 (contraste): texto oscuro #0B1830 en btn-primary (8.38:1), nav hover → azul --primary-green-dark (4.6:1)
   - ✅ SEO2 (og:image): cambiado a recepcion-de-pacientes.webp 1920×1080 + width/height/alt
   - ✅ P1 (Service Worker): sw.js (Cache-First assets/Network-First HTML) + register-sw.js (CSP 'self' compliant) en 7 HTMLs
   - ✅ UX3 (carrusel progress): barra scroll-driven con aria-progressbar, animación CSS, prefers-reduced-motion
3. **Plan responsive.css** — diferido, pendiente autorización (plan en `/home/carlos/.claude/plans/mutable-dreaming-scroll.md`)

### P-02 🔲 Módulos de Caja y Administración (Fase 5/6)
**Estado**: Pendiente
**Descripción**: Desarrollo de la UI y endpoints reales para el cierre de caja (Corte X y Corte Z), reportes analíticos de ventas por periodo, y el registro de horas del personal (Reloj Checador).

---

## ✅ RESUELTOS RECIENTEMENTE (referencia)

| Fecha | Item | Detalle |
|---|---|---|
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

*Última actualización: 2026-08-15 — LAESH P-LAESH-05: 24/25 hallazgos auditoría corregidos (A6+SEO2+P1+UX3). Deploy OCI pendiente autorización explícita — Claude Code (sesión 0969fceb)*
