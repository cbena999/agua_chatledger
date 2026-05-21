# Issues Resueltos — Sesión 2026-05-21
**Conversación:** `13a74b1c-4f0e-47a5-a1e1-389ca3638e08` (Seguimiento)
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 3 — Optimización de Renglones en Impresión de Reportes

### Scope Funcional
Antes, varios reportes estructurados con 4 o 5 columnas (`listacontratosestado.php`, `listacontratos.php`, `listacontratosnuevos.php`, `listausuarios.php` y `listadeudores.php`) limitaban la cantidad de registros por hoja a **42 filas**. Esto generaba un desperdicio constante de espacio (~4 renglones en blanco) en la parte inferior de la hoja tamaño Carta.
Ahora, tras un análisis de distribución de longitudes de nombres y direcciones en la base de datos de producción (Host C), se determinó la viabilidad técnica y se incrementó el límite a **46 registros por hoja**. Esto compacta la información, reduce considerablemente el consumo de hojas físicas y evita desbordes.

### Scope Técnico
- **Archivos Modificados:**
  1. `reportes/listacontratosestado.php`
  2. `reportes/listacontratos.php`
  3. `reportes/listacontratosnuevos.php`
  4. `reportes/listausuarios.php`
  5. `reportes/listadeudores.php`
- **Modificaciones:**
  - Ajuste del cálculo de total de páginas: `ceil($total / 42)` → `ceil($total / 46)`
  - Modificación del inicio de tabla: `($mod % 42) == 0` → `($mod % 46) == 0`
  - Modificación del fin de tabla/salto de página: `($mod % 42) == 41` → `($mod % 46) == 45` o `(($mod - 41) % 42) == 0` → `(($mod - 45) % 46) == 0`
  - Actualización del chequeo de cierre de tabla: `($mod % 42) != 0` → `($mod % 46) != 0`

---

## Issue 4 — Rotación de Respaldos de BD (PowerShell Host C)

### Scope Funcional
En el Host C, el operador realiza pruebas de encendido y apagado constantes. Los scripts de control (`start-webapps.ps1` y `stop-webapps.ps1`) hacían un respaldo automático de la BD en formato ZIP, pero la purga de respaldos era temporal y estática (borraba archivos con fecha de modificación superior a 7 días). Si el operador realizaba múltiples pruebas de apagado en pocos días, la carpeta de respaldos acumulaba decenas de archivos redundantes del mismo periodo.
Para solucionar esto, se implementó un algoritmo de rotación estricto basado en cantidad que garantiza mantener **exactamente los 7 respaldos más recientes** en la carpeta, eliminando de forma segura los archivos excedentes.

### Scope Técnico
- **Archivos Modificados:**
  1. `docs-dev/pase-a-prod/aguav2-2026/scripts/start-webapps.ps1`
  2. `docs-dev/pase-a-prod/aguav2-2026/scripts/stop-webapps.ps1`
- **Modificaciones:**
  - Reemplazo de la lógica basada en tiempo (`(Get-Date).AddDays(-7)`) por una consulta ordenada descendentemente por fecha: `Sort-Object LastWriteTime -Descending`.
  - Verificación de cantidad: si `$allBackups.Count -gt 7`, se seleccionan los elementos más antiguos a partir del índice 7: `$backupsToDelete = $allBackups[7..($allBackups.Count - 1)]`.
  - Eliminación segura y escritura de log para auditoría (`Remove-Item -Path $file.FullName -Force -ErrorAction SilentlyContinue`).

---

## Runbook — Cambios en `.agents/`
- Se actualizó `.agents/pending.md` registrando ambas tareas como resueltas.
- Se actualizó `GEMINI.md` añadiendo el registro de la sesión del 2026-05-21.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `reportes/listacontratosestado.php` | `agua` | Modificado |
| `reportes/listacontratos.php` | `agua` | Modificado |
| `reportes/listacontratosnuevos.php` | `agua` | Modificado |
| `reportes/listausuarios.php` | `agua` | Modificado |
| `reportes/listadeudores.php` | `agua` | Modificado |
| `docs-dev/pase-a-prod/aguav2-2026/scripts/start-webapps.ps1` | `agua` | Modificado |
| `docs-dev/pase-a-prod/aguav2-2026/scripts/stop-webapps.ps1` | `agua` | Modificado |
| `.agents/pending.md` | `agua_chatledger` | Modificado |
| `GEMINI.md` | `agua_chatledger` | Modificado |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Análisis empírico de nombres (>38 chars) en Host C | ✅ Realizado: solo 6 de 1,204 registros exceden (0.5%) |
| Análisis empírico de domicilios (>50 chars) en Host C | ✅ Realizado: solo 4 registros en toda la BD |
| Sintaxis de los 5 archivos PHP (Lint test) | ✅ Exitoso (`php -l` limpio en todos) |
| Simulación de rotación PowerShell (Pruebas unitarias) | ✅ Exitoso: script de prueba rotó 10 archivos dummy a 7 correctamente |
| Integridad del Ground Truth / Runbook | ✅ Exitoso (`chatledger_validate.sh` sin errores) |

---
*Generado por Antigravity — 2026-05-21*
