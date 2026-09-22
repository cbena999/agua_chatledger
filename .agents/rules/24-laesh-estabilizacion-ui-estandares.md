# Regla 24 — LAESH: Estándares de Estabilización UI/UX, Accesibilidad (A11y), Rendimiento y Conversión PHP

> **SSOT de Estabilización Frontend & Backend para Ecosistema LAESH**
> Documento fuente: `laesh-swbldi/website/uipv1/estabilizacionUI/reporte-estabilizacion-ui.html`
> Todo desarrollo, refactorización o conversión a PHP en los portales LAESH (`labadmin`, `medicos`, `gestion-web`, `solicitud_dac_impr`) debe acatarse obligatoriamente a esta regla para evitar regresiones visuales o de código.

---

## 🎨 1. Arquitectura CSS, Especificidad y CSP

- **R24-CSS-01 (Cero Inline Styles / CSP):** Queda estrictamente prohibido usar el atributo `style="..."` en código HTML de producción. Todos los estilos deben residir en las hojas de estilo correspondientes (`tokens.css`, `portal.css`, `style.css`), garantizando una Content Security Policy (CSP) restrictiva.
- **R24-CSS-02 (Prohibición de `!important`):** No utilizar `!important` para sobreescribir estilos. Toda regla visual debe gestionarse mediante la especificidad de selectores nativa o la arquitectura modular de capas.
- **R24-CSS-03 (Clases de Input Específicas):** Los elementos `<input type="text">`, `<input type="tel">` y `<input type="number">` deben llevar la clase `.form-input`. Nunca aplicar estilos globales a `input` que afecten indeseadamente a `input[type="checkbox"]` o `input[type="radio"]`.
- **R24-CSS-04 (Etiquetas Form-Label):** Las etiquetas de formulario deben llevar la clase `.form-label`. Usar `<h3 class="orden-estudios-label">` o similar para encabezados semánticos de sección sin atributo `for`.
- **R24-CSS-05 (Tokens Corporativos):** `tokens.css` es la única fuente de verdad para colores. El botón primario `.btn-primary` mantendrá siempre el verde corporativo LAESH (`#71CA11`), reservando los tonos azules para acentos de marcas/portales.

---

## 📱 2. Responsividad por Dispositivo y Plataforma

- **R24-RESP-01 (Prohibición de `resize: both`):** No habilitar la propiedad CSS `resize: both` en elementos de interfaz para evitar manijas inservibles o colapsos visuales en dispositivos táctiles.
- **R24-RESP-02 (Viewport Móvil Dinámico):** Los contenedores principales del layout en dispositivos móviles deben declarar `min-height: 100dvh` para evitar recortes de viewport causados por las barras dinámicas del navegador (Chrome Mobile, Safari iOS).
- **R24-RESP-06 (Estructura de Renglones en Formulario Paciente, Fichas y Separadores):**
  - **Desktop / Laptop (≥768px):**
    - **Botones de Acción:** Muestran icono + texto completo ("Limpiar" y "Crear e Imprimir Orden").
    - **Renglón 1:** `Nombre del Paciente` (35+1 char, máx 290px), `Edad` (58px), `Sexo` (H/M), `Celular` (130px), **[Separador Vertical 2px empujado `margin-left: 18px; margin-right: 16px`]** y `Diagnóstico / Motivo Clínico` (a la derecha).
    - **Sección Intermedia:** Grilla de 18 fichas de selección por categoría.
    - **[Separador Horizontal 2px]**
    - **Página de Inicio (`index.html`):**
    - **Reorganización en Apilamiento Horizontal Independiente:** Se desmanteló la grilla de 2 columnas de la sección "Ubicación y Contacto". La Ficha 1 ("Datos de Contacto") se convirtió en una tarjeta horizontal superior a ancho completo (`.contact-card-horizontal`) con distribución plana (`.contact-grid-horizontal`). La Ficha 2 ("Mapa") se ubica abajo de forma independiente a ancho completo (`.map-card`), renderizando el Croquis y el Mapa Interactivo en cotas estrictas 1:1 de 400px en Desktop / 300px en Móvil. Eliminados todos los problemas de arrastre de altura y espacios en blanco.
    - **Homologación Tipográfica:** Título H3 en `<h3 class="acerca-h3">` (`1.15rem`, `700`) y cuerpos de texto homologados a `0.92rem` (`1.55` line-height).
  - **Dispositivos Móviles (≤767px):**
    - **Header Móvil Justificado a la Izquierda:** Logotipo reducido a 36px de altura (`.logo img { height: 36px }`). Todo el contenido (`Logo` → `Campanita Móvil` → `Punto Estatus` → `Iniciales` → `Hamburguesa`) se alinea hacia la izquierda en secuencia continua con `gap: 0.45rem`, removiendo `margin-left: auto`.
    - **Campanita Móvil con Scroll Suave (`#bell-wrap-mob`):** Inyectada dinámicamente en el header superior junto al estatus en línea. Incluye badge de conteo sincronizado y respuesta a touch/clic navegando con `scrollIntoView({ behavior: 'smooth' })` directo hacia la sección de notificaciones al final de la página.
    - **Reordenamiento Móvil de Notificaciones y Footer (Fix de Raíz):** `.app-layout` en móvil gestiona `.main-content` (`order: 1; flex: 0 0 auto`), `.sidebar-right` / Notificaciones (`order: 2; flex: 0 0 auto`, tarjeta blanca limpia con `border-radius: 12px` y `display: block`), y `.portal-footer` (`order: 3; flex: 0 0 auto; margin-top: auto; padding: 0.75rem 1rem`), anulando cualquier deformación de altura y asegurando la posición final del footer verde al fondo de la pantalla. En Desktop/Laptop (≥768px), `portal-footer.js` mantiene el footer como hijo interno de `.main-content`, preservando la alineación limpia de 3 columnas sin alterar la vista. Aplicado en `medicos.html`, `labadmin.html` y `gestion-web.html`.
    - **Barra de Pestañas y Acciones:** Comportamiento de flujo estático original (`margin-bottom: 1rem`), sin anclaje sticky/fixed.
    - **Botones de Acción Cuadrados (Solo Iconos 1:1):** Selector por ID `#tab-bar-btns button, #tab-bar-btns .btn-primary, #tab-bar-btns .btn-imprimir-orden, #tab-bar-btns .badge-reset, #tab-bar-btns .badge-reset-sm` anula paddings heredados de `.btn-primary` y fija `overflow: hidden; padding: 0; width: 26px; height: 26px` eliminando cualquier desbordamiento o estiramiento vertical de texto.
    - **Renglón 1:** `Nombre` (máx. 35 char), `Edad` (3 dig), `Sexo` (H/M) en 1 solo renglón.
    - **Renglón 2:** `Celular` (10 dig, 115px a la izquierda) y `Diagnóstico / Motivo Clínico` (lado derecho flexible) en 1 solo renglón.
    - **Renglón 3:** Grilla de fichas por categoría.
    - **Renglón 4:** `Otros Estudios` precedido del separador horizontal de 2px.

---

## ♿ 3. Accesibilidad WCAG 2.1 SC

- **R24-A11Y-01 (Modales y Dropdowns ARIA):** Todo dropdown o panel flotante interactivo debe declarar `role="dialog"` o `role="region"`, `aria-modal="true"` (si aplica), e implementar Focus Trap cíclico en JS con autoenfoque en el primer elemento activo.
- **R24-A11Y-02 (Botones con Iconos):** Todo botón interactivo que en dispositivos móviles muestre únicamente un ícono visual DEBE declarar un atributo `aria-label="..."` descriptivo explícito (ej. `aria-label="Limpiar selección"`).
- **R24-A11Y-03 (Ocultamiento para Lectores de Pantalla):** Los elementos visualmente ocultos que deban ser leídos por asistencias tecnológicas NUNCA deben usar `display: none` o `visibility: hidden`. Deben emplear la clase `.visually-hidden`.
- **R24-A11Y-04 (Anuncios Dinámicos):** Las zonas donde el contenido o el estado cambie dinámicamente mediante JS o HTMX deben incluir un contenedor contenedor con `aria-live="polite"`.
- **R24-A11Y-05 (Navegación por Teclado):** Todos los elementos interactivos personalizados deben responder a la activación mediante las teclas `Enter` y `Space`.
- **R24-A11Y-06 (Estructura de Tablist):** Un elemento con `role="tablist"` debe contener única y exclusivamente elementos con `role="tab"`. Los botones de acción auxiliares deben colocarse fuera del tablist.
- **R24-A11Y-07 (Skip Link):** Todo documento HTML maestro debe mantener el enlace de salto al contenido principal `<a href="#main-content" class="skip-link">Saltar al contenido principal</a>` al inicio del `<body>`.

---

## 🖱️ 4. Usabilidad UX y Performance

- **R24-UX-01 (Confirmación Preventiva):** Las acciones que descarten información o limpien órdenes completas deben solicitar confirmación al usuario antes de ejecutar la purga de datos.
- **R24-UX-02 (Sanitización y Teclado Móvil):** Todo campo de entrada numérico o telefónico debe incluir los atributos `inputmode="numeric"` o `inputmode="tel"`, `pattern`, `title` y la sanitización en tiempo real vía `oninput` (`replace(/[^0-9]/g, '')`).
- **R24-UX-03 (Auto-cierre al Desplazar):** Los dropdowns activos deben cerrarse automáticamente al detectar un evento de scroll en la ventana.
- **R24-UX-04 (Control de Peticiones Duplicadas):** Todo botón de submit o guardado debe deshabilitarse o pasar a estado de carga al ser clickeado para prevenir envíos dobles.
- **R24-UX-05 (Ocultar Spinners Nativos):** Ocultar los incrementadores nativos de `input[type="number"]` mediante CSS cross-browser (`-webkit-appearance: none; -moz-appearance: textfield`).
- **R24-PERF-01 (Lazy Rendering de Componentes Pesados):** Para listas o fichas extensas (ej. 67 checkboxes), inyectar los nodos en el DOM bajo demanda al interactuar con la categoría, manteniendo los datos base en estructuras JS en memoria.
- **R24-PERF-02 (Invalidación de Caché):** Todos los recursos estáticos cargados en HTML deben llevar el parámetro de versión `?v=YYYYMMDD`.
- **R24-PERF-03 (Preload de CSS Crítico):** Declarar `<link rel="preload" as="style">` para las hojas de estilo críticas en la cabecera `<head>`.

---

## 🐘 5. Gaps e Incidencias para Conversión a PHP (Flight PHP + Plates)

- **R24-PHP-01 (Parametrización de Rutas de Activos):** Al migrar a plantillas de Plates (`League\Plates`), reemplazar las rutas estáticas locales por la función helper `$this->asset('/css/portal.css')` o constantes globales de activos.
- **R24-PHP-02 (Mapeo de Nomenclatura CMS):** En `gestion-web.html`, la propiedad `name` de los campos de formulario del CMS debe estructurarse de forma jerárquica para corresponder con la tabla `web_contenidos`: `name="cms[seccion][subseccion][clave]"`, garantizando un procesamiento `POST` atómico en controladores Flight PHP.
- **R24-PHP-03 (Atributos Declarativos HTMX):** Reemplazar los simuladores JS locales por atributos declarativos de HTMX en las vistas Plates: `hx-post="/api/ordenes/guardar"`, `hx-target="#panel-resultado"`, `hx-swap="innerHTML"`, `hx-indicator="#spinner-cargando"`, e inyectar el campo de idempotencia `<input type="hidden" name="idempotency_token" value="...">`.
- **R24-PHP-04 (Autenticación y Sesión Servidor):** Eliminar por completo el prototipo de autenticación simulado en `localStorage`. El control de acceso debe migrar al objeto de sesión seguro de `Delight\Auth` y al middleware backend `\Common\RbacManager`.
- **R24-PHP-05 (SEO Preconnect):** Incluir la etiqueta `<link rel="preconnect" href="https://fonts.googleapis.com">` en el bloque `<head>` del layout maestro.

---

## 📸 6. Estándares CMS, Visibilidad de Imágenes y Homologación de Slides

- **R24-MEDIA-01 (Visibilidad Superior de Imágenes `center top`):** Para evitar recortes no deseados en la parte superior de las fotografías, aplicar `object-fit: contain; object-position: center top;` en contenedores de imágenes de tarjetas o productos, y `background-position: center top;` en elementos con imagen de fondo (Hero Sliders, Quality Sliders).
- **R24-CMS-01 (Filtro por ESTABLECER y Desactivación):** Todo ítem del CMS que contenga `/ESTABLECER/i` en su título o atributo alt debe ser filtrado automáticamente en JavaScript antes de renderizarse en la portada pública. Incluir el botón `🚫 Desactivar Ficha` alineado horizontalmente en la barra de ayuda del CMS para limpiar campos y desactivar la ficha.
- **R24-CMS-02 (Homologación de Hero Slides):** Estandarizar la longitud de los textos en los Hero Slides para garantizar tarjetas translúcidas (*glassmorphism*) de altura simétrica: Badges (`<span>`) de 25–35 char, Encabezados (`<h1>`/`<h2>`) de 35–45 char, Párrafos (`<p>`) de 130–150 char y Botones CTA Blancos de 2–3 palabras.
- **R24-CMS-03 (Paridad 1:1 de Secciones):** Las pestañas del panel CMS (`gestion-web.html`) deben coincidir exactamente en nombre y anclas con las secciones principales de `index.html` (`#inicio`, `#acerca-de`, `#especialidades`, `#promociones`, `#calidad`, `#ubicacion`).

---

## ⚡ 7. Diagnóstico de Espasmos UI / Rendimiento (MANDATO ESTRICTO PARA IA)

> [!IMPORTANT]
> **PROHIBICIÓN DE NAVEGADOR AUTOMATIZADO PARA ESPASMOS Y PREDICHO DE LATENCIA:**
> Gemini y Claude **NO DEBEN** utilizar el agente de navegador automatizado (`browser_subagent`) para diagnosticar espasmos de la UI, latencias de teclado o picos de CPU. Los subagentes de navegador introducen retardos sintéticos (capturas, clics por coordenadas, latencias de motor) que distorsionan y ocultan el rendimiento real del usuario.
>
> **Alcance de esta prohibición — no aplica a verificación de renderizado/DOM.** Esta prohibición cubre exclusivamente diagnóstico de *rendimiento/latencia*. Para confirmar o descartar bugs de layout, CSS o anidamiento de DOM (ej. un elemento con `display:block` correcto pero invisible o mal posicionado) — algo que **jsdom no puede detectar porque no calcula layout real** — sí está permitido y es el método recomendado usar `puppeteer-core` con Chrome del sistema y la sesión real del usuario. Ver [skill-puppeteer-verification](../skills/skill-puppeteer-verification/SKILL.md) (caso real: div sin cerrar en `medicos.php` que sacaba 5 paneles fuera de `#main-content`, invisible para jsdom, confirmado solo con Chrome real).

### R24-DIAG-01 (Mecanismo Obligatorio `TIME_TRACKING` / Telemetría Interna)
- **Backend (PHP):** Usar marcas `microtime(true)` al inicio/fin del request y registrar los milisegundos reales en `sys_logs` o `Logger::log` para aislar si la latencia proviene de MariaDB/Flight PHP.
- **Frontend (JS):** Usar `performance.now()` y `requestAnimationFrame` en consola o arreglos locales de telemetría para medir duraciones de renderizado y respuestas de red en tiempo real.

### R24-PERF-04 (Causa Raíz de Espasmos y Patrones Anti-Exponenciales)
1. **Sanitización de Inputs No-Mutativa (`sanitizeInputPreserveSelection`):**
   - **Anti-patrón prohibido:** `oninput="this.value = this.value.replace(...)"` inline en HTML. Reasignar `this.value` en cada tecla fuerza la pérdida/recreación de la selección del cursor, re-evalúa `pattern="..."` en bucle y satura la CPU al 100%.
   - **Estándar:** Usar la función `sanitizeInputPreserveSelection(el, regex, maxLen)` en JS. Muta `el.value` ÚNICAMENTE si se ingresan caracteres inválidos reales, preservando la selección y evitando re-renders inútiles.
2. **Asignación de DOM en 1 Solo Paso (`Single-Pass innerHTML`):**
   - **Anti-patrón prohibido:** `tbody.innerHTML += ...` dentro de un bucle `forEach` sobre arreglos de $N$ elementos. Concatenar `innerHTML +=` en bucle obliga al navegador a re-destruir y re-parsear el DOM $N$ veces ($O(N^2)$), parseando decenas de miles de nodos en milisegundos.
   - **Estándar:** Usar `.map(...).join('')` para asignar `tbody.innerHTML` una sola vez en 1 reflow.
3. **Endpoints Parciales Ultraligeros para HTMX:**
   - **Anti-patrón prohibido:** Configurar `hx-get="/full-page"` con `hx-select="#tabla tbody"`. Descargar 54 KB de HTML completo obliga a ejecutar `DOMParser` sobre 730 líneas de HTML en el hilo principal de JS durante cada refresco de notificaciones.
   - **Estándar:** Crear rutas PHP que entreguen únicamente los renglones `<tbody>` (ej. `GET /tabla-ordenes` de 0.4 KB).
4. **Carga Diferida de Pestañas (Lazy Loading):**
   - **Estándar:** Al cargar un portal, ÚNICAMENTE inicializar los componentes del panel activo (ej. *Nueva Orden*). Los tableros secundarios (Catálogo, Historial, Pacientes) se cargan desfasados bajo demanda (Lazy Loading) al hacer clic en su pestaña correspondiente.
