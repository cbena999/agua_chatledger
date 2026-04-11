# Agua V2 — Scope Funcional y Técnico: Estabilización Fiscal y Saneamiento

**Versión:** 1.0  
**Fecha:** 2026-04-11  
**Rama:** `feature/upgrade-v2-win-xampp`  
**Commit de referencia:** `a36a4cd`  
**Sesiones consolidadas:** 3 (conversaciones `24485b9b`, `a966039d`, `67884311`)

---

## 1. Resumen Ejecutivo

Este documento consolida los logros técnicos y funcionales alcanzados a lo largo de tres sesiones de desarrollo enfocadas en la **estabilización fiscal**, la **auditoría de datos** y el **saneamiento de cartera** del sistema Agua V2. El trabajo cubre desde la corrección de bugs financieros críticos hasta la creación de herramientas administrativas de control masivo.

---

## 2. Features Implementadas

### 2.1 Panel de Saneamiento Administrativo (NUEVO)

| Dato | Detalle |
|:---|:---|
| **Archivo** | `admin/saneamiento_administrativo.php` |
| **Commit** | `a36a4cd` |
| **Acceso** | Menú de engrane → "Panel de Saneamiento Fiscal" |

**Descripción funcional:**  
Herramienta administrativa para la depuración controlada de adeudos en contratos con Suspensión Temporal (Estado 2) y Suspensión Administrativa (Estado 3). El Estado 4 queda excluido de esta herramienta (se gestiona automáticamente por el pipeline).

**Características:**
- Filtros mandatorios: Estado del contrato, Periodo de Corte (periodos oficiales trimestrales 2018-2026), Categorías de cargo (dinámicas desde BD).
- Botón "Calcular Impacto": genera un diagnóstico previo que indica la reducción esperada en **Cartera Vencida Activa** y **Rezago Histórico**, sin modificar datos.
- Layout de dos columnas: Col. 1 = Resumen numérico + botón de ejecución. Col. 2 = Desglose por categoría.
- Ejecución con `batch_id` (timestamp) para trazabilidad completa.
- Aplicación en ambas tablas físicas: `ligacargos` + `ligacargos_historico`.

**Periodos oficiales integrados:**  
Desde `01/01/2018` hasta `04/01/2026`, organizados por trimestre con agrupación por año en el `<select>`. Incluye opciones de "Todo el año" por cada año.

---

### 2.2 Bitácora de Saneamiento y Auditoría (REFINADA)

| Dato | Detalle |
|:---|:---|
| **Archivo** | `admin/bitacora_saneamiento.php` |
| **Commits** | `0ae3e1b`, `a36a4cd` |
| **Acceso** | Menú de engrane → "Bitácora de Saneamiento" / Ficha de contrato → "Cargos Depurados" |

**Descripción funcional:**  
Reporte de auditoría interna que registra cada operación de saneamiento (manual o automática). Cada fila expone el detalle completo del contrato afectado.

**Características:**
- **Grilla de Auditoría**: Fecha, CTO, Nombre del usuario, Estado del contrato (badge con color), ID de Lote, Acción/Justificación, Detalle del cambio, Notas del contrato.
- **Grilla de Cargos Depurados**: CTO, Usuario, Año, Categoría, Leyenda, Monto, con totalizador al pie.
- Filtros avanzados: rango de fechas, ID de lote (batch), contrato.
- Cargos depurados se muestran filtrados por batch cuando se selecciona un lote (ya no aparece vacío).
- **Modo impresión**: CSS `@media print` con cabecera "AUDITORÍA DE SANEAMIENTO FISCAL" y firma del administrador.

---

### 2.3 Sistema de Lotes (batch_id) para Trazabilidad

| Dato | Detalle |
|:---|:---|
| **Schema** | `ALTER TABLE cambios ADD COLUMN batch_id INT DEFAULT 0` |
| **Commit** | `0ae3e1b` |

**Descripción técnica:**  
Columna `batch_id` en la tabla `cambios` que permite agrupar operaciones masivas bajo un único identificador. Esto habilita:
- Reversiones selectivas por lote.
- Filtrado rápido en la bitácora.
- Auditoría agrupada (ej: "¿qué hizo el pipeline en la última sincronización?").

**Batch IDs reservados:**
| ID | Uso |
|:---|:---|
| `9999` | Saneamiento automático del pipeline (`03_sync_host_a.sql`) |
| `timestamp` | Saneamiento manual desde el panel administrativo |

---

### 2.4 Amnistía de Recargos en Reactivación (Regla C06)

| Dato | Detalle |
|:---|:---|
| **Archivo** | `includes/negocio/contratos.php` |
| **Commit** | `4e57f2f` |

**Descripción funcional:**  
Al reactivar un contrato (transición → Estado 1), los recargos de agua y drenaje de años anteriores al año en curso se cancelan automáticamente (`estado = -1`). Esto evita la "Avalancha Punitiva" donde un usuario que paga para reactivarse se encuentra con una deuda impagable por recargos acumulados.

**Función:** `_amnistiaRecargosHistoricos($contrato, $y)`  
**Reglas:** Solo se ejecuta en transiciones genuinas a Estado 1. Registra la cantidad de recargos cancelados en `cambios`.

---

### 2.5 Auditoría de Reasignación de Cargos (Regla F03)

| Dato | Detalle |
|:---|:---|
| **Archivos** | `includes/negocio/cargos.php`, `views/contratos/ficha.php` |
| **Commit** | `4e57f2f` |

**Descripción funcional:**  
La función `regresarCargoCancelado()` ahora:
- **Valida** que el contrato no esté en Estado 4 antes de ejecutar.
- **Registra** al operador que ejecutó la acción en el log de `cambios`.
- Botón "Reasignar" en la ficha muestra un `confirm()` con nombre y monto del cargo antes de ejecutar.

---

### 2.6 Panel de Referencia de Tomas (Solo Lectura)

| Dato | Detalle |
|:---|:---|
| **Archivo** | `views/contratos/ficha.php` |
| **Commit** | `4e57f2f` |

**Descripción funcional:**  
Panel informativo junto al botón "Guardar Cambios" en la ficha de edición del contrato. Muestra el estado actual de las tomas (1ra/2da) con indicadores de color para agua y drenaje. No es editable; sirve como referencia visual para el cajero.

---

## 3. Fixes Críticos

### 3.1 Exclusión de Deuda Zombi en Cartera Vencida

| Dato | Detalle |
|:---|:---|
| **Archivo** | `reportes/carteravencida.php` |
| **Commit** | `a36a4cd` |

**Problema:** Los contratos en Suspensión Definitiva (Estado 4) con cargos pendientes inflaban artificialmente el reporte de Cartera Vencida.  
**Fix:** Se inyectó `AND c.estado != 4` en la consulta SQL del reporte. Los cargos siguen existiendo en la BD pero ya no se contabilizan como deuda cobrable.

---

### 3.2 Unificación de Reportes (Eliminación V2 Duplicados)

| Dato | Detalle |
|:---|:---|
| **Archivos eliminados** | `carteravencida_v2.php`, `concentradocortecaja_v2.php`, `concentradocortecajaresumen_v2.php` |
| **Archivos renombrados** | Las versiones `_v2` pasaron a ser el estándar oficial sin sufijo |
| **Commit** | `a36a4cd` |

**Problema:** Coexistían dos versiones de cada reporte (legado y V2), generando confusión en la UI y riesgo de inconsistencia.  
**Fix:** Se eliminaron las versiones legadas, se promovieron las V2 como únicas, se actualizaron las vistas (`listados.php`) y las funciones JS (`paxscript.js`).

---

### 3.3 Normalización de Terminología Fiscal

| Dato | Detalle |
|:---|:---|
| **Archivo** | `admin/reporte_adeudos_fantasmas.php` |
| **Commit** | `a36a4cd` |

**Cambio:** Todas las etiquetas de "borrar/eliminar" fueron sustituidas por "Depurar/Archivar". Se añadió enlace directo al Panel de Saneamiento Masivo. Título actualizado a "Auditoría Forense".

---

### 3.4 Reporte de Contratos por Toma — Bug de Conteo Físico

| Dato | Detalle |
|:---|:---|
| **Archivo** | `admin/reporte_contratos_toma.php` |
| **Commits** | `8dfad27`, `667b202`, `2ff645c`, `07e53bb` |

**Problema:** El conteo de tomas reportaba incorrectamente el 81% de los contratos.  
**Fix:** Corrección del conteo físico real, homologación de nombres camelCase, filtro 9 para contratos con 2+ tomas, resaltado visual.

---

## 4. Mejoras de Infraestructura

### 4.1 Blindaje del Pipeline de Sincronización (B → A → C)

| Dato | Detalle |
|:---|:---|
| **Archivo** | `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/03_sync_host_a.sql` |
| **Commit** | `a36a4cd` |

**Antes:** La sección D7 cancelaba cargos de contratos Estado 4 sin dejar rastro.  
**Después:** Ahora:
1. Genera `batch_id = 9999`.
2. Inserta un registro de auditoría por contrato afectado en `cambios` ANTES de actualizar.
3. Ejecuta la depuración solo para Estado 4, categorías 2 (Agua) y 3 (Drenaje).
4. Terminología actualizada: "cancelados" → "depurados".

---

### 4.2 Menú de Engrane Actualizado

| Dato | Detalle |
|:---|:---|
| **Archivo** | `index2.php` |
| **Commit** | `a36a4cd` |

Se añadieron dos entradas al dropdown del engrane (⚙) con separador visual:
- ⚙ Panel de Saneamiento Fiscal → `admin/saneamiento_administrativo.php`
- 📄 Bitácora de Saneamiento → `admin/bitacora_saneamiento.php`

---

### 4.3 Funciones JS Unificadas

| Dato | Detalle |
|:---|:---|
| **Archivo** | `includes/js/paxscript.js` |
| **Commit** | `a36a4cd` |

Las funciones `carteraVencidaV2()`, `concentradoCorteCajaV2()`, `concentradoCorteCajaResumenV2()` fueron convertidas en stubs que redirigen a las funciones base. Esto garantiza compatibilidad hacia atrás sin archivos duplicados.

---

## 5. Pruebas de Validación Realizadas

| Prueba | Resultado | Detalle |
|:---|:---:|:---|
| Saneamiento masivo (10 contratos E4) | ✅ | 139 cargos depurados con batch_id=9999 en Host C |
| Auditoría en bitácora | ✅ | 10 registros de log correctamente vinculados al lote |
| Cartera Vencida sin E4 | ✅ | Cifras reflejan solo deuda cobrable |
| Pipeline D7 con log | ✅ | INSERT en `cambios` ejecutado antes del UPDATE |
| Unificación de reportes | ✅ | Archivos V2 eliminados, stubs JS funcionando |
| `php -l` en archivos modificados | ✅ | Sin errores de sintaxis |

---

## 6. Pendientes

### 6.1 Asociados a lo logrado

| # | Pendiente | Prioridad | Notas |
|:---:|:---|:---:|:---|
| P01 | Ejecutar saneamiento masivo real para contratos Estado 4 (histórico 2018-2024, 734 cargos / $107,082) | Alta | Usar el panel administrativo; los 10 de prueba ya están hechos |
| P02 | Validar periodos oficiales del panel de saneamiento con el Excel del usuario | Media | Periodos 2018-2022 extrapolados trimestralmente; confirmar exactitud |
| P03 | Probar amnistía de recargos (Regla C06) en caso real: suspender→reactivar un contrato con recargos históricos | Alta | Verificar que `cambios` registra la amnistía |
| P04 | Probar bloqueo de reasignación en contrato Estado 4 (Regla F03) | Media | Verificar que el botón no ejecuta la acción |
| P05 | Probar panel de referencia de tomas en contrato con 2 tomas | Baja | Verificar layout visual |
| P06 | Sincronización de scripts de migración con campo `batch_id` | Media | Verificar que `migration_v2_schema.sql` se ejecute correctamente en deploys nuevos |
| P07 | Refinamiento de la bitácora: filtro por rango de cargos y paginación si crece el volumen | Baja | Para cuando haya > 500 registros depurados |

### 6.2 No asociados (recopilados de sesiones anteriores)

| # | Pendiente | Origen | Prioridad | Notas |
|:---:|:---|:---|:---:|:---|
| G01 | Reporte de Cancelaciones del Cajero (diario, por errores de cobro) | Conv. `67884311` | Media | Distinto al saneamiento masivo; el cajero necesita ver qué cargos canceló hoy |
| G02 | Blindaje defensivo de `cargaContrato()` contra Avalancha Punitiva | Conv. `24485b9b` | Alta | Limitar generación automática de cargos al año fiscal en curso |
| G03 | Purga selectiva de cargos "1 de Abril" (2018-2026) | Conv. `24485b9b` | Media | Cargos automáticos inyectados a contratos suspendidos en esa fecha |
| G04 | Motor de paridad para Suspensión Temporal → contrato tiene deuda pero no servicio | Conv. `a966039d` | Media | Definir política: ¿cuota mínima o congelamiento total? |
| G05 | Despliegue de cambios en Host C (producción V2) | Workflow `/deploy-to-host-c` | Alta | Copiar archivos modificados al entorno XAMPP Windows |
| G06 | Revisión de stored procedures: `sp_cancelar_cargo` y `sp_pagar_cargo` para consistencia con `estado = -1` | Conv. `24485b9b` | Media | Verificar que SPs no interfieran con cargos archivados |
| G07 | Optimización de `vw_ligacargos_all` (UNION de 2 tablas) para reportes pesados | Conv. `8c334798` | Baja | Slow query log activo; evaluar índices covering |
| G08 | Asamblea V2: finalizar integración de attendance y compatibilidad TXT | Conv. `bdc4ae35` | Baja | Módulo standalone pendiente de testing de integración |
| G09 | Documentación de la regla de "No Localizado" (`usuario.estado = 2`) y su impacto en Cartera | Conv. `24485b9b` | Baja | El corte de caja ya separa `cartera_no_loc`; falta formalizar en Runbook |
| G10 | Normalización de `ligacargos.folio`: NULL y '' → 0 post-sync | Script `03_sync_host_a.sql` D5-extra | Baja | Ya implementado en pipeline; verificar en operación diaria |

---

## 7. Arquitectura de Archivos Modificados

```
agua/
├── admin/
│   ├── bitacora_saneamiento.php          ← REFINADO (filtros, detalle, impresión)
│   ├── reporte_adeudos_fantasmas.php     ← TERMINOLOGÍA (depurar vs borrar)
│   ├── reporte_contratos_toma.php        ← FIX (conteo físico de tomas)
│   └── saneamiento_administrativo.php    ← NUEVO (panel de control fiscal)
├── docs-dev/migration-aguav2/
│   └── syncawa_hostb_to_hosta/
│       ├── 03_sync_host_a.sql            ← BLINDADO (D7 con audit trail)
│       └── migration_v2_schema.sql       ← EVOLUCIÓN (batch_id en cambios)
├── includes/
│   ├── js/paxscript.js                   ← UNIFICADO (stubs V2)
│   └── negocio/
│       ├── cargos.php                    ← F03 (validación E4 + operador)
│       └── contratos.php                 ← C06 (amnistía recargos)
├── index2.php                            ← MENÚ (engrane actualizado)
├── reportes/
│   ├── carteravencida.php                ← CONSOLIDADO + FIX E4
│   ├── concentradocortecaja.php          ← CONSOLIDADO
│   └── concentradocortecajaresumen.php   ← CONSOLIDADO
└── views/
    ├── contratos/ficha.php               ← UX (panel tomas referencia)
    └── sistema/listados.php              ← LIMPIADA (sin duplicados V2)
```

---

## 8. Commits Relevantes (Cronológico)

| Commit | Fecha | Descripción |
|:---|:---|:---|
| `a36a4cd` | 2026-04-11 | Unificación de reportes V2, panel de saneamiento, blindaje pipeline |
| `0ae3e1b` | 2026-04-10 | batch_id, limpieza visual ficha, bitácora de saneamiento |
| `667b202` | 2026-04-10 | Resaltado de contratos con 2+ tomas en reporte |
| `8dfad27` | 2026-04-10 | Fix conteo físico de tomas (bug masivo 81%) |
| `4e57f2f` | 2026-04-10 | C06 amnistía recargos, F03 auditoría, panel tomas referencia |
| `c888dc1` | 2026-04-09 | Motor de paridad universal y saneamiento de susp. definitiva |
| `d97cc8c` | 2026-04-09 | Rediseño semántico de tomas y blindaje E4 |

---

*Documento generado automáticamente por Antigravity. Fuente de verdad: rama `feature/upgrade-v2-win-xampp`.*
