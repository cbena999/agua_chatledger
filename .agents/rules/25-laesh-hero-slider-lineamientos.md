# Regla 25 — LAESH: Hero / Slider — Lineamientos por Dispositivo

> **Alcance:** Sitio web público LAESH (`laesh-swbldi/website/index.php`).
> **CSS fuente:** `laesh-web-assets-uipv1a/css/landing.css` — sección `§3 HERO & ANIMACIONES`.
> **Especificación HTML:** `portafolio-dev-2026/blocklabgd/v1.2/et/Especificacion_Tecnica.html` §§ 2.3.1.2 (desktop) y 2.3.1.3 (móviles).
>
> Leer esta regla **antes de editar cualquier CSS del hero/slider** para evitar regresiones.

---

## 1. Dimensiones del contenedor (`.hero-premium`)

Estrategia `vh + min-height + max-height` — no usar altura fija en px:

| Breakpoint | height | min-height | max-height |
|---|---|---|---|
| Base móvil (`<768px`) | `50vh` | `300px` | — |
| Tablet (`≥768px`) | `60vh` | `400px` | — |
| Desktop/Laptop (`≥1025px`) | `70vh` | `500px` | `800px` |

El techo `800px` en desktop evita hero gigante en monitores QHD/4K.

---

## 2. Imagen de fondo — `.hero-slide` base

- **`background-size: 85% auto`** — no usar `cover`. Cover recortaría laterales. El valor `85% auto` muestra la imagen completa al 85 % del ancho, manteniendo proporción.
- Declarada **una sola vez** en `.hero-slide` base. **Nunca** repetir en `.bg-slide-N`.
- Complementos del base (también en `.hero-slide`, no en `.bg-slide-N`):
  - `background-repeat: no-repeat`
  - `background-position: center center` (default; sobreescrito por focal point)

---

## 3. Focal point por imagen — `.bg-slide-N`

Cada regla `.bg-slide-N` contiene **solo** `background-image` + `background-position`. Ninguna otra propiedad `background-*`.

| Selector | Imagen | `background-position` |
|---|---|---|
| `.bg-slide-1` | `recepcion-de-pacientes.webp` | `center 30%` |
| `.bg-slide-2` | `laesh-slider-futurista-a.webp` | `center center` |
| `.bg-slide-3` | `laesh-slider-futurista-c.webp` | `center center` |
| `.bg-slide-4` | `sala-de-espera.webp` | `center 40%` |
| `.bg-slide-5` | `recepcion-lab.webp` | `center center` |

---

## 4. Sin gradientes en el hero

No aplicar `linear-gradient()` combinado con la imagen de fondo en `.hero-slide` ni en `bg_style` del PHP.

- El oscurecimiento para legibilidad lo provee el `backdrop-filter: blur()` + fondo `rgba` de la tarjeta glassmorphic.
- Gradientes en bands rompen el efecto visual y ocultan la fotografía.

---

## 5. Tipografía unificada — todos los slides

- Slide 1 usa `<h1>` (semántica de página principal); slides 2–5 usan `<h2>`.
- CSS unificado con selector doble — **no duplicar** por slide:

```css
.hero-glass-card h1,
.hero-glass-card h2 { font-size: 1.7rem; font-weight: 800; … }
```

---

## 6. Principio DRY — una fuente de verdad por propiedad

| Propiedad | Fuente única | Breakpoints |
|---|---|---|
| `background-size` | `.hero-slide` base | Tablet/móvil sobreescriben a `contain` |
| `padding-bottom` de la tarjeta | `.hero-slide` base (`2.2rem`) | NO redeclarar en breakpoints |
| Tamaño `h1`/`h2` | `.hero-glass-card h1, h2` base | Breakpoints ajustan si es necesario |

Tablet (`≤1024px`) y móvil (`≤767px`) sobreescriben **solo** lo que cambia:
- `background-size: contain` (imagen completa sin recorte lateral)
- `padding-top` y `padding-inline` en móvil
- Tamaño de botones y fuentes si aplica

---

## 7. Cascade — prioridad de landing.css

`@layer base` < `@layer website` < `@layer portal-utils` < **sin capa (landing.css)**

Las reglas hero en `landing.css` son unlayered → siempre ganan sobre `style-website.css` (`@layer website`). Para superar `targeting.css` (`:root[data-input="touch"] .btn`, especificidad 0,3,0), usar selector de especificidad 0,4,0:

```css
.hero-slide .hero-glass-card .flex-center-15 .btn-outline-white { min-height: unset; … }
```

---

## 8. Tableta (≤1024px) — Dimensiones

- Altura: `45vw` (vw, no vh — imagen landscape, el ancho es el factor limitante)
- `min-height: 260px` / `max-height: 500px`
- `background-size: contain` — imagen landscape completa, sin recorte lateral

## 9. Tableta — Tarjeta y tipografía

- La tarjeta hereda el base completo (`padding: 1.7rem`, `width: min(554px, 82%)`) — no se redefine.
- Solo se escala tipografía: `h1, h2 → font-size: 1.6rem`
- `padding-bottom: 2.2rem` heredado del base (DRY — no redeclarar)

## 10. Tableta — Botón CTA

```css
.hero-slide .hero-glass-card .flex-center-15 .btn-outline-white {
    padding: 7px 18px; font-size: 0.8rem; border-radius: 7px; min-height: unset;
}
```

## 11. Teléfono (≤767px) — Dimensiones y fondo

- Altura: `47vw` / `min-height: 200px` / `max-height: 360px`
- `background-size: contain` (igual que tableta)
- `.hero-slide`: solo sobreescribir `padding-top: 0.75rem` y `padding-inline: 0.75rem`
- **`padding-bottom` no se toca** — hereda `2.2rem` del base (DRY)

## 12. Teléfono — Tarjeta glassmorphic

| Propiedad | Valor teléfono |
|---|---|
| `width` | `min(240px, 68%)` |
| `max-width` | `260px` |
| `padding` | `0.65rem 0.75rem` |
| `border-radius` | `11px` |
| `background` | `rgba(0,50,130,0.45)` — más opaco que desktop |
| `backdrop-filter` | `blur(14px)` |

## 13. Teléfono — Priorización de contenido

- `h1, h2 → font-size: 1.05rem; line-height: 1.2; margin-bottom: 0.3rem`
- `p → display: none` — **ocultar el párrafo descriptivo**, no el título ni el botón.
  - Razón: hero ~200px; espacio disponible ~140px; badge+h1+p+botón ≈ 159px → desborde.
  - Alternativa descartada (comentarizada en CSS): comprimir fuentes (h1→0.88rem, p→0.6rem). Resultado: ilegible.
- Badge (`>span`): `font-size: 0.52rem; padding: 3px 10px; margin-bottom: 0.35rem`

## 14. Teléfono — Botón CTA y pausa

```css
/* CTA */
.hero-slide .hero-glass-card .flex-center-15 .btn-outline-white {
    padding: 5px 13px; font-size: 0.72rem; border-radius: 6px; min-height: unset;
}
/* Pausa: solo icono, sin texto */
.hero-pause-label { display: none; }
.hero-pause-btn   { width: 30px; padding: 0; border-radius: 50%; justify-content: center; }
```
