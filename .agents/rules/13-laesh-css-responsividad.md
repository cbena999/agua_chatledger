# Regla 13 — LAESH: Arquitectura CSS de Responsividad por Dispositivo

> **Leer antes de editar cualquier regla de estilo o layout en los portales LAESH
> (labadmin.html, medicos.html, gestion-web.html, solicitud_dac_impr.html).**
> La hoja maestra es `laesh-web-assets/css/style.css`.

---

## ⚠️ LAESH NO ES PWA — Es Webapp Multi-Dispositivo

> **Regla permanente (2026-08-16):** El proyecto LAESH (sitio corporativo + portales) es una
> **webapp responsive** diseñada para funcionar en todos los dispositivos ya definidos
> (desktop/laptop, tablet, celular; Chrome/Safari/Edge; macOS/Windows/Android/iOS).
> **NO es ni será una Progressive Web App (PWA).**
>
> - No implementar ni activar Service Workers para cache/offline.
> - El archivo `sw.js` existente debe eliminarse junto con su referencia en `register-sw.js`.
> - No referenciar `manifest.json` como PWA — si existe, es solo para metadatos de color/icono en browsers.
> - No proponer modo offline, instalación en pantalla de inicio, ni precache de assets como mejora.
> - La responsividad se resuelve con CSS (`responsive.css` + `targeting.css`), no con caché de SW.

---

## Mapa de Bloques CSS (style.css)

| Bloque | Selector de media query | Propósito | Ejemplos |
|:---|:---|:---|:---|
| **BASE** | _(ninguno — reglas globales)_ | Estructura y tokens válidos en TODOS los viewports | `.portal-access-header`, `.app-layout`, `.main-content`, `.sidebar-float-search { display: none }` |
| **Tablet** | `@media (max-width: 1024px)` | Ajustes para tablets y monitores medianos | Portal header padding, sidebar como tira horizontal, app.js syncHeights |
| **Móvil** | `@media (max-width: 767px)` | Ajustes para smartphones | `portal-header-right { display: none }`, hamburger visible, sidebar mobile |
| **Móvil pequeño** | `@media (max-width: 480px)` | Ajustes extremos de viewport pequeño | Tamaños de texto, íconos |
| **Desktop** | `@media (min-width: 1025px)` _(al FINAL del archivo)_ | Sidebar rail colapsable 65px→260px, SFS, header alignment | `.sidebar { width: 65px }`, `.sidebar-float-search`, `body { padding-top: 0 }` |
| **UltraWide** | `@media (min-width: 1920px)` | Escala proporcional en pantallas muy anchas | `.browser-window { max-width: 1780px }`, fuentes grandes |

---

## Reglas Críticas — NO Violar

### R1 — `.sidebar-float-search { display: none }` debe estar en BASE
- **Dónde:** Sección BASE de style.css, junto a `.sidebar-mobile-only`, `.sidebar-toggle-row`, etc.
- **Por qué:** Si solo está en el bloque `@media (min-width: 1025px)`, en móvil/tablet el `display` hereda `block` y el div flotante aparece como elemento extra en la tira de iconos, corrompiendo la búsqueda móvil.
- **El bloque desktop SOLO lo reactiva** con `.sfs-open { display: flex }`.

### R2 — `.sidebar-toggle-row { display: none }` debe estar en BASE
- **Dónde:** BASE, junto a R1.
- **Por qué:** El toggle del rail es exclusivo de desktop. En tablet/móvil el sidebar usa lógica completamente diferente (tira horizontal, hamburger).

### R3 — El bloque desktop `@media (min-width: 1025px)` es el ÚNICO responsable de:
- Ancho del sidebar rail (65px colapsado, 260px expandido)
- SFS (Sidebar Float Search) popup flotante
- `body { padding-top: 0 }` y `.browser-header { display: none }`
- `.main-content { padding-top: 1rem }` (air gap visual bajo el header)
- Alineación de botones header: `.portal-access-header { padding-right: max(2.5rem, calc((100vw - 1450px) / 2 + 2.5rem)) }`

### R4 — Alineación de botones header con el contenido (desktop)
- El `.browser-window` tiene `max-width: 1450px` y está centrado en el body.
- El `.portal-access-header` es `position: fixed; left: 0; right: 0` → abarca todo el viewport.
- En monitores ≥1440px los botones quedan más allá del margen derecho del contenido sin el ajuste.
- La fórmula `max(2.5rem, calc((100vw - 1450px) / 2 + 2.5rem))` en `padding-right` del header compensa dinámicamente.
- **⚠️ NO duplicar** fuera del bloque desktop. **NO tocar** `padding-left` (el logo ya está correctamente posicionado).

### R5 — `solicitud_dac_impr.html`: override de body SOLO en `<style>` de la página
- style.css base define `body { display: flex; justify-content: center }`.
- Esto haría que `.dac-action-bar` y `.doc-container` sean flex items en ROW (uno al lado del otro).
- El archivo sobreescribe con `body { flex-direction: column; align-items: center }` en su propio `<style>`.
- **⚠️ NO agregar** `flex-direction` al body en style.css ni en docs.css — rompería otras páginas.
- docs.css tiene el comentario `/* body de style.css ya es flex + justify-content:center */` como recordatorio.

### R6 — Elementos ocultos en impresión (`solicitud_dac_impr.html`)
- `.dac-action-bar { display: none !important }` — barra Imprimir/Cerrar
- `.doc-doctor { display: none !important }` — sección Dr. Hedilberto (placeholder, no debe imprimirse)
- Ambos solo en el bloque `@media print` del `<style>` de la página, NO en style.css ni docs.css.

### R7 — `sidebar-rail.js` es la única fuente de verdad para el toggle del rail
- **Archivo:** `laesh-web-assets/js/sidebar-rail.js`
- Maneja: `syncPad()`, toggle expand/collapse, `localStorage['laesh_sidebar_expanded']`, evento `laesh:sidebarExpand`
- Las 3 páginas (labadmin, medicos, gestion-web) cargan este script. **NO duplicar** la lógica del toggle inline en ninguna página.
- Las páginas solo tienen código ESPECÍFICO de SFS (Sidebar Float Search) o breadcrumb.

### R8 — Prohibición Estricta de `!important` en Hojas CSS
- **MANDATO ESTRICTO:** Queda estrictamente prohibido usar declaraciones `!important` en los archivos CSS (`style.css`, `portal.css`, `landing.css`, `tokens.css`).
- **Razón:** Previene contaminación visual, parches superficiales y deuda técnica en incrementos futuros. Toda invalidez o conflicto de reglas CSS debe resolverse mediante la jerarquía de especificidad de selectores nativa.

### R9 — Control Sólido de Layout de Formulario del Paciente y Separadores por Dispositivo
- **Desktop / Laptop (≥768px / ≥1025px):**
  - **Botones de Acción (Limpiar y Crear e Imprimir Orden):** Botones rectangulares estándar con icono y texto completo visible (`.btn-imprimir-texto { display: inline }`).
  - **Renglón 1:** `Nombre del Paciente` (máx 290px / 35+1 char), `Edad` (58px), `Sexo` (H/M), `Celular` (130px), **[Separador Vertical Reforzado de 2px `.orden-patient-vsep` empujado con `margin-left: 18px; margin-right: 16px`]** y `Diagnóstico / Motivo Clínico` (a la derecha) conviven en una única fila horizontal (`.orden-patient-row1`).
  - **Sección Fichas:** Grilla de 18 fichas de selección por categoría (`.fichas-estudios-wrap`).
  - **[Separador Horizontal Reforzado de 2px `border-top: 2px solid rgba(0,82,183,0.25)`]**
  - **Otros Estudios:** `Otros Estudios — adicionales no incluidos en el listado` ubicado al final, tras las fichas (`.otros-estudios-wrapper`).
- **Dispositivos Móviles (≤767px):**
  - **Header Justificado a la Izquierda y Logotipo Reducido:** Logotipo `.logo img` reducido a **36px** de altura. Se elimina `margin-left: auto` de los elementos del header, desplegando todo el grupo (`Logo 36px` → `Campanita Móvil 32px` → `Punto Estatus` → `Iniciales 32px` → `Hamburguesa`) justificado a la izquierda de forma continua con un gap uniforme de `0.45rem`.
  - **Campanita Móvil de Notificaciones en Header (`#bell-wrap-mob`):** Inyectada por `app.js` en `.portal-access-header` al lado del punto de estatus en línea (`#conn-status-mob`). Cuenta con badge de conteo rojo (`#badge-notif-mob`) sincronizado en tiempo real mediante `MutationObserver`. Al darle touch o clic, ejecuta scroll suave (`scrollIntoView({ behavior: 'smooth' })`) directo hacia la tarjeta de notificaciones (`#sidebar-right`) al final de la vista. Oculta en Desktop (`#bell-wrap-mob { display: none }`).
  - **Reordenamiento Estructural y Control de Altura (Fix de Raíz):** `.app-layout` en móvil gestiona `.main-content` (`order: 1; flex: 0 0 auto`), `.sidebar-right` / Notificaciones (`order: 2; flex: 0 0 auto`, formateada como tarjeta limpia blanca `border-radius: 12px` de ancho completo con `display: block`), y `.portal-footer` (`order: 3; flex: 0 0 auto; margin-top: auto; padding: 0.75rem 1rem`), eliminando expansiones o deformaciones de altura y garantizando que el footer se asiente como la barra de cierre compacta al fondo de la página.
  - **Single Source Footer Reactivo (`portal-footer.js`):** En Desktop (≥768px), inyecta el footer como hijo de `.main-content` preservando la estructura horizontal flex de `.app-layout` a 3 columnas sin deformaciones. En Móviles (≤767px), conmuta la inyección al final de `.app-layout` (`order: 3`) para posicinarlo abajo de la tarjeta de notificaciones (`order: 2`). Aplicado en `medicos.html`, `labadmin.html` y `gestion-web.html`.
  - **Barra de Pestañas y Acciones:** Comportamiento estático original (`margin-bottom: 1rem`), sin anclaje sticky/fixed.
  - **Botones de Acción (Limpiar y Crear e Imprimir Orden):** Texto 100% oculto (`#tab-bar-btns .btn-imprimir-texto { display: none }`). Se aplica la especificidad por ID `#tab-bar-btns button, #tab-bar-btns .btn-primary, #tab-bar-btns .btn-imprimir-orden, #tab-bar-btns .badge-reset, #tab-bar-btns .badge-reset-sm` anulando paddings heredados y forzando `overflow: hidden; padding: 0; margin: 0; width: 26px; height: 26px;`, garantizando botones cuadrados compactos 1:1 de lados idénticos sin estiramiento vertical.
  - **Renglón 1:** `Nombre del Paciente` (máx. 35 char), `Edad` (máx. 3 dig) y `Sexo` (H/M) en 1 solo renglón.
  - **Renglón 2:** `Celular` (10 dig, 115px a la izquierda) y `Diagnóstico / Motivo Clínico` (a la derecha) en 1 solo renglón.
  - **Renglón 3:** Grilla de fichas por categoría.
  - **Renglón 4:** `Otros Estudios` en la parte inferior precedido del separador horizontal.

### R10 — Sanitización NRF de Inputs en Tiempo Real (No Mask / Regex OnInput)
- **Nombre del Paciente:** `oninput="this.value = this.value.replace(/[^a-zA-ZáéíóúÁÉÍÓÚñÑ\s]/g, '').slice(0,35)"`
- **Edad:** `oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0,3)"`
- **Celular:** `oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0,10)"`

---

## Elementos Exclusivos por Dispositivo

| Elemento HTML | BASE | Tablet (≤1024px) | Móvil (≤767px) | Desktop (≥1025px) |
|:---|:---:|:---:|:---:|:---:|
| `.sidebar-toggle-row` | `none` | `none` | `none` | `flex` |
| `.sidebar-float-search` | `none` | `none` | `none` | `none` (base); `flex` cuando `.sfs-open` |
| `.sidebar-search-btn` (lupita) | `none` | `flex` | `flex` | col. `flex`, exp. `flex` |
| `.portal-header-right` (usuario+logout) | `flex` | `flex` | `none` | `flex` |
| `.nav-hamburger` | — | `none` | `flex` | `none` |
| `.sidebar-mobile-only` | `none` | — | — | `none` |
| `.browser-header` (falso navegador) | visible | `none` | `none` | `none` |

---

## Archivos y Responsabilidades

| Archivo | Responsabilidad |
|:---|:---|
| `laesh-web-assets/css/style.css` | Estilos globales + todos los bloques media query de portales |
| `laesh-web-assets/css/docs.css` | Estilos del documento imprimible (solicitud_dac_impr). Depende del body flex de style.css |
| `laesh-web-assets/js/sidebar-rail.js` | Toggle sidebar rail + syncPad — compartido entre los 3 portales |
| `laesh-web-assets/js/app.js` | syncHeights para medicos y labadmin. Inyecta `.nav-hamburger` en tablet/móvil |
| `laesh-swbldi/.../medicos.html` | Solo SFS IIFE + lógica de órdenes médico. Sin toggle rail inline |
| `laesh-swbldi/.../labadmin.html` | Solo SFS IIFE + lógica de recepción. Sin toggle rail inline |
| `laesh-swbldi/.../gestion-web.html` | Sin SFS. Carga app.js (hamburger) + sidebar-rail.js (toggle rail). sidebar-mobile-only en sidebar, portal-header-right en nav |
| `laesh-swbldi/.../solicitud_dac_impr.html` | Override `body { flex-direction: column }` en su propio `<style>` |

---

## Tipografía — Decisiones Permanentes

### T1 — Mosquito Std Black: NO usar, NO buscar archivos
- **Decisión (2026-08-13):** Los archivos de fuente Mosquito Std Black (`.woff2`/`.woff`) **no serán entregados ni utilizados** en ningún entorno.
- **Fallback permanente y canónico** para todos los `h1`–`h6` y `.logo`:
  ```css
  font-family: 'Mosquito Std Black', 'Arial Black', Impact, sans-serif;
  ```
  El nombre `'Mosquito Std Black'` se mantiene en el `font-family` para compatibilidad futura si el cliente cambia de opinión, pero en la práctica el navegador cargará `'Arial Black'` o `Impact`.
- **No instalar** la fuente en el directorio `fonts/`, no buscarla, no reportarla como pendiente.

---

### R8 — Browser-Window Simulation: ELIMINADO
- **Decisión (2026-08-13):** El feature de "simulación de ventana de navegador" (`.browser-window` con dots decorativos, URL-bar ficticia, border-radius y box-shadow) fue **eliminado permanentemente** de `index.html`.
- `<main class="browser-window">` → `<main>` (class removida). El DOM del `.browser-header` fue eliminado del HTML.
- El CSS `.browser-window { }` permanece en `style.css` como dead code inofensivo; no se aplica a ninguna página activa.
- `body { padding: 0 env(safe-area-inset-right, 1rem) }` en index.html → homologado con los márgenes laterales de medicos.html y labadmin.html (~16px = 1rem fijo por lado).
- **NO restaurar** este feature. Si se necesita un efecto de card/frame, usar otra estrategia CSS.

---

**Última actualización:** 2026-08-13 · R8 Browser-window eliminado; T1 Mosquito Std Black → fallback permanente
