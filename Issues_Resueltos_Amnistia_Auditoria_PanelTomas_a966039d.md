# Issues Resueltos — Sesión 2026-04-10
**Conversación:** `a966039d-cd86-440d-b61b-0788fab82e28`  
**Rama:** `feature/upgrade-v2-win-xampp`  
**Commit en:** `agua` (PHP) + `agua_chatledger` (Runbook)

---

## Issue 1 — Amnistía de Recargos en Reactivación (Regla C06)

### Scope Funcional
Al reactivar un contrato que estaba suspendido (estado 2, 3 o 5 → estado 1 ACTIVO), el sistema generaba una **"Avalancha Punitiva"**: todos los recargos acumulados de años anteriores permanecían pendientes de cobro, creando una deuda impagable que desincentivaba la regularización voluntaria.

**Comportamiento anterior:** El cajero reconectaba el servicio, pero el sistema presentaba recargos de 2018, 2019, 2020… junto con los del año actual.  
**Comportamiento nuevo:** Al reactivar, solo queda vigente la deuda del año en curso. Los recargos históricos (años anteriores al actual) se congelan automáticamente.

### Scope Técnico
- **Archivo modificado:** `includes/negocio/contratos.php`
- **Función nueva:** `_amnistiaRecargosHistoricos($contrato, $y)` — se llama desde `cambiaestado()` cuando `$estado === 1`, antes de `_sincronizaParidadFinanciera()`.
- **Query núcleo:**
  ```sql
  UPDATE ligacargos
     SET estado = -1
   WHERE numcontrato = '$contrato'
     AND recargo = 1
     AND anio < YEAR(CURDATE())
     AND estado = 0;
  -- Idem en ligacargos_historico (esquema V2 split)
  ```
- **Auditoría:** INSERT en `cambios` con descripción `'Amnistia de Recargos en Reactivacion (C06)'` y conteo de registros afectados.
- **Regla formalizada:** C06 en `.agents/rules/02-reglas-negocio.md`

---

## Issue 2 — Punto Ciego de Auditoría en `regresarCargoCancelado` (Regla F03)

### Scope Funcional
La función que permite restituir cargos cancelados a estado pendiente tenía dos vulnerabilidades:
1. **Sin barrera de estado:** Podía ejecutarse sobre contratos en Suspensión Definitiva (estado 4), violando las reglas C02 y F02.
2. **Sin trazabilidad de operador:** El log en `cambios` no registraba quién ejecutó la acción; cualquier cajero podía revivir cargos de forma anónima.
3. **Sin confirmación UI:** El botón "Reasignar" ejecutaba la acción con un solo clic, sin pedir confirmación.

**Comportamiento anterior:** Un cajero hacía clic en "Reasignar" → cargo reactivado sin rastro de quién lo hizo, y sin control sobre el estado del contrato.  
**Comportamiento nuevo:** (a) Los contratos en estado 4 son inmunes. (b) El log incluye el nombre del operador. (c) La UI pide confirmación con nombre y monto del cargo.

### Scope Técnico
- **Archivo modificado:** `includes/negocio/cargos.php` — función `regresarCargoCancelado()`
  - Guard clause al inicio: `SELECT estado FROM contrato WHERE numcontrato = '$contrato'` → si `estado = 4`, retorna sin ejecutar.
  - Log enriquecido: campo `despues` incluye `"| Operador: $operador"` donde `$operador = $_SESSION['usuario'] ?? 'cajero'`.
  - Sincronización con `ligacargos_historico` ya existente, confirmada correcta.
- **Archivo modificado:** `views/contratos/ficha.php` — botón "Reasignar"
  - `onclick` ahora envuelve con `confirm('¿Desea restituir este cargo...? \n\n[leyenda] ($ [monto])')`.
- **Regla formalizada:** F03 en `.agents/rules/02-reglas-negocio.md` (la anterior F03 "deuda atómica" renumerada a F04).

---

## Issue 3 — Panel de Referencia de Tomas en Formulario de Edición

### Scope Funcional
En la pantalla de edición de datos del contrato (`#formato`), el cajero no tenía visibilidad del estado de infraestructura actual de las tomas al momento de editar. Debía memorizar los valores o cerrar el formulario para consultarlos.

**Comportamiento anterior:** Al abrir "Modificar información de este contrato", solo se mostraba el formulario editable; no había referencia del estado actual de tomas.  
**Comportamiento nuevo:** Debajo de los campos del usuario y al lado izquierdo del botón "Guardar Cambios", aparece un panel de **solo lectura** con el estado actual de la 1ra y 2da toma (tipo Normal/Comercial, Agua y Drenaje: conectado/desconectado/sin instalación), con colores semánticos verde/rojo.

### Scope Técnico
- **Archivo modificado:** `views/contratos/ficha.php` — bloque del botón Guardar Cambios (líneas ~245-249)
- **Técnica:** El div solitario centrado fue refactorizado a un **flex row** (`justify-content: space-between`):
  - **Izquierda:** `div#panel_tomas_ref` — itera `$tomas` (ya disponible en el contexto de la plantilla Plates, sin costo AJAX). Fondo `#f0f4ff`, borde `#b8cdf8`, tarjetas blancas por toma.
  - **Derecha:** Botón "Guardar Cambios" (verde, con hover effect CSS inline).
- Los datos provienen de `$tomas` cargado en `cargaContrato()` desde `contrato_toma`.
- Sin impacto en lógica de negocio; puramente presentacional.

---

## Runbook — Cambios en `.agents/rules/02-reglas-negocio.md`

| ID | Cambio |
|:---:|:---|
| **C06** | Nueva regla: Amnistía de Recargos en Reactivación |
| **F03** | Renombrada/ampliada: Auditoría de Reasignación de Cargos |
| **F04** | Renumerada desde F03 anterior: Deuda atómica |

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `includes/negocio/contratos.php` | `agua` | Nueva función + llamada en `cambiaestado()` |
| `includes/negocio/cargos.php` | `agua` | Guard clause + log de operador en `regresarCargoCancelado()` |
| `views/contratos/ficha.php` | `agua` | Panel tomas (solo lectura) + confirm() en Reasignar |
| `.agents/rules/02-reglas-negocio.md` | `agua_chatledger` | Reglas C06, F03 (nueva), F04 (renumerada) |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| `php -l contratos.php` | ✅ Sin errores de sintaxis |
| `php -l cargos.php` | ✅ Sin errores de sintaxis |
| `php -l ficha.php` | ✅ Sin errores de sintaxis |

### Pruebas manuales recomendadas

1. **C06:** Buscar contrato en estado 2/3 con recargos de años < 2026 → cambiar a Activo → verificar que `vw_ligacargos_pendientes` no muestra recargos históricos y que `cambios` registra el evento de amnistía.
2. **F03 — Bloqueo estado 4:** En contrato en Suspensión Definitiva → "Cargos Cancelados" → intentar "Reasignar" → no debe ejecutarse nada.
3. **F03 — Trazabilidad:** En contrato activo → reasignar un cargo → verificar en `cambios` que el campo `despues` incluye `Operador: [nombre]`.
4. **Panel Tomas:** Abrir ficha de contrato con 1 o 2 tomas → clic "Modificar información" → verificar panel azul de referencia al izquierdo del botón Guardar.

---
*Generado por Antigravity (Google Gemini) — 2026-04-10*
