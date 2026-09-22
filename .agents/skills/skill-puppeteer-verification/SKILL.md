# SKILL: Verificación de Bugs de Renderizado con Navegador Real (puppeteer-core)
---
name: Puppeteer Real Browser Verification
description: Cómo y cuándo usar puppeteer-core + Chrome real para confirmar (o descartar) bugs de layout/CSS/DOM que jsdom no puede detectar, usando la sesión real del usuario. No sustituye ni contradice la prohibición de R24-DIAG-01 sobre navegador automatizado para diagnóstico de espasmos/latencia — ese uso sigue prohibido.
---

## ⚡ Contexto

Caso real (2026-09-22, Portal Médico LAESH): un `</div>` sobrante en `medicos.php` sacaba 5 de 6 paneles del portal fuera de `#main-content`. Sospecha inicial: bug de JS. Verificación con **jsdom** (simulación de DOM + eventos) mostró `display:block` correcto y cero errores — pero jsdom **no calcula layout real** (no hay motor de render/reflow), así que no pudo detectar que los paneles quedaban físicamente fuera del contenedor visible. Solo un navegador real, con la sesión real del usuario, reveló el `getBoundingClientRect()` con coordenadas fuera de viewport.

**Lección:** jsdom verifica lógica JS (¿se ejecuta sin errores?, ¿cambia el atributo `display`?). Puppeteer con Chrome real verifica renderizado real (¿el elemento realmente ocupa espacio visible en pantalla?). Son complementarios, no intercambiables.

---

## 1. Cuándo usar cada herramienta

| Síntoma reportado | Herramienta | Por qué |
|---|---|---|
| "El botón no hace nada" / lógica condicional / cálculo | **jsdom** (`node` + `JSDOM`) | Prueba rápida, sin red, sin Chrome — basta con DOM+eventos simulados |
| "No se ve nada" / "aparece en blanco" / "se ve cortado" pese a que el JS no marca errores | **puppeteer-core + Chrome real** | Layout, flexbox, overflow, posición real — jsdom no lo puede confirmar ni descartar |
| Espasmos de UI, latencia de teclado, picos de CPU | **NINGUNA automatización de navegador** | Prohibido por R24-DIAG-01 — usar telemetría real (`microtime()` backend, `performance.now()` frontend). Los subagentes de navegador introducen retardos sintéticos que distorsionan la medición. |

Regla práctica: si jsdom dice "todo bien" pero el usuario insiste en que ve algo roto visualmente, **no confíes en el resultado de jsdom** — escala a puppeteer antes de declarar "no puedo reproducirlo".

---

## 2. Disponibilidad en este entorno

Ya están instalados y no requieren instalación adicional:
- `/usr/bin/google-chrome` y `/usr/bin/chromium-browser`
- `puppeteer-core` cacheado en `/home/carlos/.npm/_npx/<hash>/node_modules/puppeteer-core` (localizar con `find / -iname puppeteer-core -path "*/node_modules/*" 2>/dev/null`, la ruta exacta puede variar por reinstalación)

No usar `puppeteer` (con headless Chromium propio) si ya existe Chrome del sistema — apuntar `executablePath` directo evita una descarga innecesaria.

---

## 3. Cargar la sesión real del usuario (cookies)

Para reproducir exactamente lo que ve el usuario (no un login sintético), reutilizar el cookie-jar de curl ya generado en la sesión de diagnóstico (`curl -c /tmp/jar_X.txt -b /tmp/jar_X.txt ...`).

**Gotcha real que costó una ronda de debug:** curl escribe las cookies `HttpOnly` con el prefijo literal `#HttpOnly_` al inicio de la línea (formato Netscape). Un parser ingenuo que descarta toda línea que empiece con `#` como "comentario" **descarta silenciosamente `PHPSESSID` y el JWT** — Puppeteer navega sin sesión y termina en la pantalla de login, sin ningún error visible que lo delate.

```js
function parseNetscapeCookies(file) {
  const lines = fs.readFileSync(file, 'utf8').split('\n');
  const cookies = [];
  for (let line of lines) {
    if (!line.trim()) continue;
    if (line.startsWith('#')) {
      if (line.startsWith('#HttpOnly_')) line = line.substring('#HttpOnly_'.length);
      else continue; // comentario real, descartar
    }
    const parts = line.split('\t');
    if (parts.length < 7) continue;
    const [domain, , cpath, secure, expiry, name, value] = parts;
    cookies.push({
      name, value,
      domain: domain.replace(/^\./, ''),
      path: cpath,
      secure: secure === 'TRUE',
      expires: parseInt(expiry, 10) || undefined,
      httpOnly: true
    });
  }
  return cookies;
}
```

Tras `page.setCookie(...)`, verificar SIEMPRE con `page.url()` que no redirigió a `/login` antes de confiar en cualquier otra aserción.

---

## 4. Patrón de verificación (ejemplo real, adaptar según el bug)

```js
const path = require('path');
const puppeteer = require(path.join('<ruta-encontrada-con-find>', 'puppeteer-core'));

const browser = await puppeteer.launch({
  executablePath: '/usr/bin/google-chrome',
  headless: 'new',
  args: ['--no-sandbox', '--disable-setuid-sandbox'] // requerido en este entorno (root/contenedor)
});
const page = await browser.newPage();
await page.setCookie(...cookiesParseadas.map(c => ({...c, url: 'https://dominio-real.mx'})));
await page.setViewport({ width: 1069, height: 1128 }); // reproducir el ancho reportado por el usuario
await page.goto('https://dominio-real.mx/ruta/', { waitUntil: 'networkidle2' });
await page.click('.nav-item[data-panel="panel-x"]'); // simular la interacción exacta reportada

const diag = await page.evaluate(() => {
  const el = document.getElementById('elemento-sospechoso');
  const r = el.getBoundingClientRect();
  return {
    visible: r.width > 0 && r.height > 0,
    rect: { x: r.x, y: r.y, w: r.width, h: r.height }, // x/y fuera del viewport = el bug real
    parentId: el.parentElement.id,                      // ¿está anidado donde debería?
    textLen: el.innerText.trim().length
  };
});
```

Si `rect.x`/`rect.y` caen fuera del viewport, o `parentId` no es el contenedor esperado (`#main-content`, etc.), el elemento existe y tiene contenido pero está mal anidado en el DOM — típico de una etiqueta de cierre sobrante/faltante en el HTML fuente. Confirmar contando aperturas/cierres de `<div>` con una pasada regex en el archivo fuente antes de asumir CSS.

---

## 5. Reglas de higiene

- **Nunca** dejar el navegador de Puppeteer abierto entre turnos — siempre `await browser.close()` al final, incluso en el `catch`.
- Usar `headless: 'new'` (no el headless legado, deprecado y con diferencias de renderizado).
- Los scripts de verificación son desechables — igual que los de jsdom, viven en el scratchpad/`/tmp`, nunca se commitean al repo del proyecto.
- Reutilizar cookies de sesión real solo con autorización implícita del contexto de diagnóstico en curso (el usuario ya está reportando el bug en esa sesión) — no capturar/almacenar credenciales fuera de ese propósito puntual.
