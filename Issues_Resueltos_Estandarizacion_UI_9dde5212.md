# Issues Resueltos — Sesión 2026-06-05
**Conversación:** `9dde5212-45f7-48cb-a67f-85c14d1b1ce5`
**Rama:** `aguad_ac_oferta` (Tenant Tlapa)

---

## Issue 1 — Estandarización de Interfaz en Gestión de Contratos y Credenciales

### Scope Funcional
- **Credencial de Ciudadano**: Se actualizó la leyenda de la credencial a la jurisdicción oficial "Dirección de Agua Potable y Alcantarillado de Tlapa de Comonfort, Gro." y se eliminó el botón "Cerrar" para simplificar la ventana del operador.
- **Grilla de Adeudos**: Se ordenaron los cargos para que aparezcan de derecha a izquierda y del más reciente al más antiguo.
- **Detección de Recargos**: Se implementó una regla de estilo que resalta la palabra "Recargo" en un naranja fuerte (#ea580c) para su rápida identificación como conceptos moratorios.
- **Unificación de Botones**: Los botones de acción de pago y cancelación adoptaron la apariencia estilizada de botones de acción compactos con iconos y tooltips:
  - `💳 Pagar` (tooltip: "Pagar cargos seleccionados")
  - `🚫 Cancelar` (tooltip: "Cancelar cargos seleccionados")
- **Confirmación Dinámica**: La sección "Confirmación" se oculta inicialmente. Al hacer clic en Pagar o Cancelar, se muestra dinámicamente con una animación fluida (`show('fast')`) y se enfoca el control correspondiente (el botón de confirmar para pago, o la llave del Presidente para cancelación).
- **Labels de Deuda**: Los campos de "Total selección" y "No. recibo" se modificaron para eliminar el fondo blanco, mostrándolos en formato cursiva y negrita integrado en la página.
- **Agrupadores**: Los legends de la sección de pagos (MONTOS, OPCIONES, CONFIRMACIÓN) dejaron de parecer botones enormes y pasaron a ser etiquetas limpias y discretas.
- **Pruebas de UI**: Se estableció la regla de no ejecutar de forma implícita pruebas de navegación web con el navegador (`browser_subagent`), salvo instrucción expresa del usuario.

### Scope Técnico
- **Procesamiento de Imagen**: Se generó una nueva versión de `PlantillaCredencial.png` reemplazando el footer con la nueva leyenda oficial centrada.
- **Orden de Consultas**: Se modificó `includes/negocio/contratos.php` para ordenar `vw_ligacargos_pendientes` y `cargos` por `anio DESC` (más recientes al inicio).
- **Mapeo Fila-Columna**: Se refactorizó la lógica en `views/contratos/adeudo_tabla.php` para renderizar el arreglo ordenado DESC de forma horizontal de derecha a izquierda: `idx = ($i * 3) + (2 - $j)`.
- **Efectos y Focos Javascript**: Se modificó `includes/js/paxscript.js` para controlar dinámicamente el contenedor `#seccion-confirmacion` y ejecutar `.focus()` sobre los elementos interactivos correspondientes.
- **CSS global**: Se agregaron en `web-assets/css/paxstyle2.css` los estilos para `#pagos legend` y la personalización de `#botonpagar` / `#botoncancelar`.

---

## Runbook — Cambios en `.agents/`
- **Regla 06**: Se agregó la sección `🚫 Regla: Pruebas de UI y Navegador (browser_subagent)` que prohíbe explícitamente el uso automático/implícito de herramientas de navegación en el chat.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `web-assets/img/PlantillaCredencial.png` | `agua` | Edición gráfica de plantilla |
| `reportes/imprimir_credencial.php` | `agua` | Eliminación botón de cerrar |
| `includes/negocio/contratos.php` | `agua` | Cambio de ordenación SQL |
| `views/contratos/adeudo_tabla.php` | `agua` | Reordenación de grilla, marcado naranja de Recargos, botones de iconos, confirmación dinámica e inputs sin fondo |
| `includes/js/paxscript.js` | `agua` | Animaciones show/hide dinámicas y autofoco de formularios |
| `web-assets/css/paxstyle2.css` | `agua` | CSS de legends y botones unificados |
| `.agents/rules/06-accesos-rutas.md` | `agua_chatledger` | Nueva regla de no pruebas UI implícitas |
| `.agents/pending.md` | `agua_chatledger` | Hito completado en tabla de resueltos |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Validación de Ground Truth (`chatledger_validate.sh`) | ✅ EXITOSO |
| Generación de imagen centrado DejaVuSerif de credencial | ✅ EXITOSO |
| Despliegue automático a Host C (`deploy_http.py`) | ✅ EXITOSO |

---
*Generado por Antigravity — 2026-06-05*
