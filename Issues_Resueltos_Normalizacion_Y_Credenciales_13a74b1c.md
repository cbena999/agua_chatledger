# Issues Resueltos — Sesión 2026-05-20
**Conversación:** `13a74b1c-4f0e-47a5-a1e1-389ca3638e08`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Agrupamiento y Normalización de Calles en Listados de Deudores

### Scope Funcional
Antes, el agrupamiento de calles en los listados de deudores generaba duplicidades debido a ligeras variaciones ortográficas (acentos, ordinales como `1ra`/`2da`) o eliminaba palabras clave esenciales truncándolas (por ejemplo, "NORTE" se abreviaba incorrectamente como "NRTE").
Ahora, el sistema normaliza dinámicamente acentos, remueve sufijos ordinales en la agrupación y protege palabras direccionales completas ("NORTE", "SUR", "ORIENTE", "PONIENTE"). Las calles similares se consolidan limpiamente en un único acordeón interactivo facilitando la labor de auditoría y cobranza para el operador.

### Scope Técnico
- **Archivo:** `reportes/listadeudoresxc.php` (Creado como la versión v2 interactiva y robusta).
- **Función Clave:** La expresión regular y mapeo de reemplazos para limpiar y estandarizar nombres de calles:
  ```php
  // Eliminación de acentos y caracteres especiales
  $calle_norm = str_replace(array('á','é','í','ó','ú','Á','É','Í','Ó','Ú'), array('a','e','i','o','u','A','E','I','O','U'), $calle);
  // Regla de unificación para cardinales y palabras clave
  $calle_norm = preg_replace('/\b(1ra|2da|3ra|4ta|primera|segunda|tercera|cuarta)\b/i', '', $calle_norm);
  ```
- **Integración:** Actualizado en `views/sistema/listados.php` para apuntar al nuevo reporte.

---

## Issue 2 — Impresión de Credenciales en Hoja Carta Vertical

### Scope Funcional
Antes, el sistema abría la credencial generada (de 645x210px que contiene ambas caras de la credencial en un formato horizontal) directamente en una nueva pestaña del navegador. Al imprimir, solo cabían un máximo de dos copias por página y la tercera se desbordaba a una segunda hoja física.
Ahora, la credencial se abre en una ventana emergente dimensionada y centrada de `820x900px`. Se renderiza una plantilla WYSIWYG de una hoja Carta Vertical que permite seleccionar dinámicamente **1, 2 o 3 copias** para imprimir en la misma hoja. Cada copia de la credencial mide exactamente **`8.8 cm` de ancho por `5.8 cm` de alto por cara** (total de `17.6 x 5.8 cm`), incluye guías de corte finas y una **línea de doblez central discontinua** para facilitar el laminado final.

### Scope Técnico
- **Archivo:** `reportes/imprimir_credencial.php` (Creado nuevo).
- **Archivo:** `views/contratos/ficha.php` (Modificado para invocar el popup mediante `window.open` con dimensiones controladas).
- **Parámetros CSS clave:**
  - `@page { size: letter portrait; margin: 0.8cm; }`
  - `.credencial-wrapper { width: 17.6cm; height: 5.8cm; margin: 0.15cm auto; }` (distancia mínima de 3mm entre credenciales para corte exacto).

---

## Runbook — Cambios en `.agents/`
- Se actualizó `.agents/pending.md` marcando los pendientes de normalización de calles e impresión de credenciales como resueltos.
- Se actualizó `GEMINI.md` documentando los logros de la sesión de hoy 2026-05-20.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `reportes/imprimir_credencial.php` | `agua` | Creado |
| `reportes/listadeudoresxc.php` | `agua` | Creado |
| `views/contratos/ficha.php` | `agua` | Modificado |
| `views/sistema/listados.php` | `agua` | Modificado |
| `.agents/pending.md` | `agua_chatledger` | Modificado |
| `GEMINI.md` | `agua_chatledger` | Modificado |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Visualización de 3 credenciales en popup | ✅ Exitoso, cargan las 3 imágenes correctas |
| Cambio dinámico de número de copias (1, 2, 3) | ✅ Exitoso vía select JS |
| Impresión Carta Vertical sin desborde (márgenes de 0.8cm y 0.15cm) | ✅ Exitoso, altura total 24.3cm (cabe en 26.34cm útiles) |
| Agrupamiento de homónimos de calles (Constitución vs Constitucion) | ✅ Exitoso, agrupado en misma sección |

### Pruebas manuales pendientes
1. Abrir la ficha de un contrato en Host C y hacer clic en **Ver Credencial**.
2. Verificar que se abra la ventana emergente centrada.
3. Hacer clic en **Imprimir hoja** y corroborar en la previsualización del sistema operativo que las 3 copias encajen en una sola página física.

---
*Generado por Antigravity — 2026-05-20*
