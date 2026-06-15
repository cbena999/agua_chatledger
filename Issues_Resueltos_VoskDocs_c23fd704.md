# Issues Resueltos — Sesión 2026-06-15
**Conversación:** `c23fd704-b153-4653-a5e0-a53e3e0ee891`
**Rama:** `main` (caelitandem_home) / `aguad_ac_oferta` (agua_chatledger)

---

## Issue 1 — Rediseño de Diagramas e Integración de Catálogo de Gramática de Voz

### Scope Funcional
El suite de documentación técnica del sistema de comandas por voz (VOSK) se encontraba fragmentado, contenía diagramas con texto redundante o erróneo en inglés/Spanglish y símbolos ajenos al flujo (como códigos QR para pedidos de clientes). Además, la especificación de comandos de voz y el comportamiento ante excepciones de meseros y cocineros estaba dispersa en varios archivos sin hipervínculos de referencia y con tablas duplicadas que comprometían el principio de SSoT (Single Source of Truth).

Ahora:
- Todos los diagramas ASCII legados de arquitectura, flujo de datos y topología local han sido reemplazados por imágenes PNG de alta fidelidad, con estilo minimalista sobre fondo blanco y todo el texto normalizado al español. Se eliminaron los nodos de códigos QR.
- Se concentró la gramática interactiva de voz de todos los actores en el manual operativo (`Funcional_Flujos_Trabajo_Comandas_VOSK.html`), creando la Sección 8 con el catálogo unificado de frases ordinarias, variaciones, respuestas TTS del sistema y comportamientos detallados ante fallos o excepciones.
- Se eliminaron las tablas redundantes de la especificación funcional (`Especificacion_Funcional_Comandas_VOSK.html`) y se sustituyeron por notas de advertencia estructuradas con enlaces HTML directos a la nueva sección unificada.

### Scope Técnico
- **Modificado:** `Especificacion_Funcional_Comandas_VOSK.html`: Eliminación de la Tabla 3 (Comandos de Voz del Mesero) y la Tabla 6 (Comandos del Cocinero), reemplazándolas por cuadros de nota con enlaces dinámicos a la Sección 8 de `Funcional_Flujos_Trabajo_Comandas_VOSK.html`.
- **Modificado:** `Funcional_Flujos_Trabajo_Comandas_VOSK.html`: Adición de la sección `8. Catálogo Completo de Gramática de Voz y Comandos Operativos` con dos tablas exhaustivas (Tabla 8 y Tabla 9) que describen flujos ordinarios y manejo de excepciones (Ej. sin número de mesa, palabras no reconocidas por catálogo con Levenshtein fuzzy, timeouts de 30 segundos, permisos denegados, y comandos no reconocidos).
- **Modificado/Agregado:** `diagrama_arquitectura.png`, `diagrama_flujo_datos.png`, `topologia_red_local.png`: Assets en formato PNG sobre fondo blanco puro, alineados al diseño minimalista y con etiquetas en español.
- **Sincronización:** Ejecución del flujo de git global `sync_all_repos.sh` para propagar los cambios de forma íntegra a los repositorios de desarrollo y auditoría.

---

## Runbook — Cambios en `.agents/`
No se realizaron cambios en `.agents/rules/` ya que el foco fue la suite de documentación técnica del sistema de comandas por voz (`restaurantb/docs/`), y el Runbook indexa principalmente las reglas del sistema Agua.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `restaurantb/docs/Especificacion_Funcional_Comandas_VOSK.html` | `caelitandem_home` | Modificación / Eliminación de redundancias |
| `restaurantb/docs/Funcional_Flujos_Trabajo_Comandas_VOSK.html` | `caelitandem_home` | Modificación / Nueva Sección 8 |
| `restaurantb/docs/diagrama_arquitectura.png` | `caelitandem_home` | Actualización de Imagen (Minimalista PNG) |
| `restaurantb/docs/diagrama_flujo_datos.png` | `caelitandem_home` | Actualización de Imagen (Minimalista PNG) |
| `restaurantb/docs/topologia_red_local.png` | `caelitandem_home` | Actualización de Imagen (Minimalista PNG) |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Rediseño minimalista de diagramas (Fondo blanco, sin códigos QR, textos en español) | ✅ PASADO |
| Eliminación de tablas duplicadas en Especificación Funcional | ✅ PASADO |
| Incorporación de Sección 8 y catálogos en Manual Operativo | ✅ PASADO |
| Presencia de hipervínculos HTML cruzados entre documentos | ✅ PASADO |
| Ejecución e integridad de `sync_all_repos.sh` | ✅ PASADO |

---
*Generado por Antigravity — 2026-06-15*
