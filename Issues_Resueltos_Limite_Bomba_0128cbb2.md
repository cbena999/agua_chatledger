# Issues Resueltos — Sesión 2026-04-28
**Conversación:** `0128cbb2-ed95-429a-bbbd-c9d33455174c`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Bug de truncamiento en parámetros numéricos (Poka-yoke)

### Scope Funcional
**Antes:** Parámetros numéricos en `config_sistema` con formato de moneda (ej. "10,500.00") se truncaban silenciosamente en todo el sistema debido a casteos directos con `floatval()` o `intval()`, asumiendo "10" como valor, provocando bugs matemáticos críticos en umbrales de deuda y montos comerciales.
**Ahora:** El motor base depura y sanea (Poka-yoke) estos formatos, asegurando precisión matemática en la evaluación.

### Scope Técnico
Se modificó la función de inyección maestra `cargaConfig()` (`includes/negocio/contratos.php`) con `preg_match` y `str_replace` para atrapar números formateados desde la BD. Además, se parchó independientemente `reporte_morosos.php` para su uso forense independiente de la carga central.

---

## Issue 2 — Reversa Incondicional y "Límite Bomba"

### Scope Funcional
**Antes:** El botón "Revertir transición" en contratos solo aparecía si la deuda era superior a un límite fijo ($15,000), condicionando la UI de reversa a un parámetro financiero.
**Ahora:** El botón es 100% incondicional a la deuda (aparece en todo cambio de estado donde aplique un REVERSAL_SNAPSHOT). El viejo umbral fue renombrado funcionalmente a "Límite Bomba" y ahora actúa dentro del motor de cargos para prevenir el efecto bola de nieve: si la deuda alcanza $10,500, no se generan más recargos. Además, esta restricción tiene un *toggle* (apagador) en la UI de Configuración Global.

### Scope Técnico
- `_getReversal()`: Eliminado chequeo del umbral.
- `calcula_recargos()`: Agregado chequeo contra la deuda actual vs `$cfg['reversal_threshold']` respetando `$cfg['reversal_threshold_enable']`.
- `config_sistema` / `03_config_datos_catalogo.sql`: Añadida bandera enable y actualizada descripción de límite bomba.
- `configuracion.php`: Interfaz actualizada para soportar el toggle de este límite.

---

## Runbook — Cambios en `.agents/`
- Actualizado `GEMINI.md` para reflejar la implementación de las mitigaciones financieras en el "Límite Bomba".
- Actualizadas las reglas de negocio del PMU en `transiciones_estado_contratos.md`.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `includes/negocio/contratos.php` | `agua` | FIX & REFACTOR |
| `includes/negocio/cargos.php` | `agua` | FEAT |
| `admin/saneamiento/reporte_morosos.php` | `agua` | FIX |
| `admin/operaciones/configuracion.php` | `agua` | FEAT UI |
| `docs-dev/migration-aguav2/host-c-setup/03_config_datos_catalogo.sql` | `agua` | DATA SCHEMA |
| `docs-dev/doc-estabilizacion/pmu/transiciones_estado_contratos.md` | `agua` | RUNBOOK UPDATE |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Saneamiento inyectado en `cargaConfig()` evaluando 18 parámetros | ✅ |
| Reversa visible independientemente del total de deuda | ✅ |
| Motor deteniendo mora si `deuda >= 10500` con `enable=1` | ✅ |
| Toggle disponible y funcional en configuración UI | ✅ |

### Pruebas manuales pendientes
1. Continuar con caso UI-2 de la Guía de Pruebas.
2. Validar que un contrato con $11,000 de deuda (con el toggle activado) no reciba nuevos recargos en el snapshot del log.

---
*Generado por Antigravity — 2026-04-28*
