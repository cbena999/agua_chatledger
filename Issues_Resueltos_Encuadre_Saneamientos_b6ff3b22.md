# Issues Resueltos — Sesión 2026-04-13
**Conversación:** `b6ff3b22-bba8-417c-91df-a47a4b085ec0`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Encuadre $0 en Caja: Refactor Completo concentradocortecaja.php

### Scope Funcional
Antes: columnas hardcodeadas para IDs 1-18, conceptos especiales identificados por `leyenda LIKE` sobre categorías genéricas, cat 6/16/17 filtraban por `anio=$anio_f` (incorrecto para acumulativas), cat 11 excluida de cartera (recargos de años anteriores invisibles = desencuadre).
Ahora: SQL dinámico desde catálogo `categorias`. Encuadre validado con $0 diferencia en 5 períodos reales del operador 2024-2026.

### Scope Técnico
- `$sin_anio = [6, 16, 17]` — categorías sin filtro de año
- `$excluir_cartera = [6, 16, 17, 19, 20, 21, 22]` — excluidas de columna cartera
- Cat 11 (recargos normales) incluida en cartera — recargos de años anteriores aparecen en R.CART
- CASE SQL construido dinámicamente desde loop sobre tabla `categorias`
- Columna cartera: `SUM CASE WHEN l.anio != $anio_f AND categoria NOT IN (...excluir_cartera) THEN monto ELSE 0`

**Archivo:** `reportes/concentradocortecaja.php`

---

## Issue 2 — Refactor concentradocortecajaresumen.php

### Scope Funcional
Antes: SELECT hardcodeado con 32 columnas posicionales (c1..c18 + especiales), 14 queries COUNT individuales, criterios LIKE para CB/PROP, MLT/DESP, CNT/NADO, CNC/FUGA. En Host C esos LIKE no matcheaban (cats 19-22 correctamente clasificadas) → columnas en cero.
Ahora: mismo patrón dinámico que concentradocortecaja.php. Un solo query COUNT reemplaza 14 individuales. Egresos via `id_categoria` JOIN en lugar de text matching.

**Archivo:** `reportes/concentradocortecajaresumen.php`

---

## Issue 3 — Filtros Canónicos en 4 Reportes

### Scope Funcional
Reportes de cartera vencida, lista de deudores, reporte de morosos y auditoría de recargos por estado no aplicaban los mismos filtros que concentradocortecaja.php — inconsistencia que permitía "deuda fantasma" de contratos estado=4 y categorías especiales aparecer en reportes.

### Scope Técnico
Filtro añadido en todos: `AND c.estado != 4` + `AND l.categoria NOT IN (6, 16, 17, 19, 20, 21, 22)`

| Archivo | Cambio específico |
|---|---|
| `reportes/carteravencida.php` | `NOT IN (6,16,17,19-22)` — `estado!=4` ya existía |
| `reportes/listadeudores.php` | Ambos filtros en query principal y en query de total |
| `admin/saneamiento/reporte_morosos.php` | `$excluir_deuda_sql` + `AND c.estado != 4` en WHERE externo |
| `admin/saneamiento/cv_por_tipo_edo_cto.php` | `leyenda LIKE 'RECARGO%'` → `categoria IN (11, 16, 17)` en 3 queries |

---

## Issue 4 — Cuantificación de Deuda Fantasma Eliminada por Saneamientos

### Scope Funcional
Análisis comparativo Host B (antes) vs Host C (después) para validar el impacto financiero de los saneamientos aplicados.

### Resultados verificados en BD

| Concepto | Host B | Host C | Diferencia |
|---|---:|---:|---:|
| Deuda bruta total (estado=0) | $3,254,369 | $3,083,403 | −$170,966 |
| Contratos estado=4 | $107,082 | $0 | −$107,082 |
| Multas asamblea (cat 6) | $1,093,600 | $1,000,200 | −$93,400 |
| Recargos acumulativos (16,17) | $922,564 | $902,718 | −$19,846 |
| **Deuda reportable** | $1,179,665 | $1,180,455 | +$790 |

**Cartera vencida por año (B vs C):**

| Año | Host B | Host C | Diff |
|---|---:|---:|---:|
| 2020 | $75,500 | $75,100 | −$400 |
| 2021 | $111,800 | $111,000 | −$800 |
| 2022 | $125,850 | $125,650 | −$200 |
| 2023 | $87,030 | $86,830 | −$200 |
| 2024 | $87,950 | $87,750 | −$200 |
| 2025 | $66,150 | $66,150 | $0 |
| 2026 | $140,010 | $140,830 | +$820 |
| **Total** | **$694,290** | **$693,310** | **−$980** |

**Cortes de caja Host C — 5 períodos reales:**

| Período | Total |
|---|---:|
| Jul–Sep 2024 | $150,428 |
| Oct 2024–Ene 2025 | $572,430 |
| Feb–Jun 2025 | $680,346 |
| Jul 2025–Ene 2026 | $219,941 |
| Feb–Mar 2026 | $480,402 |
| **Total** | **$2,103,547** |

---

## Issue 5 — Alineación BD Host C con Scripts de Migración

### Scope Funcional
Verificación final de que la BD de Host C está completamente alineada con los scripts de migración. 9 checks ejecutados — todos ✅.

### Checks verificados

| Check | Resultado |
|---|---|
| `categorias` ids 1-22 completas | ✅ |
| `categorias_egresos` ids 1-10 (incl. id=10 SIN CATEGORÍA) | ✅ |
| `egresos.id_categoria` sin NULLs | ✅ |
| Folios mixtos activa | ✅ 0 |
| Folios mixtos histórico | ✅ 0 |
| Multas asamblea pendientes | ✅ 0 |
| `ligacargos` cats 19-22 | ✅ 2 registros |
| `ligacargos_historico` cats 19-22 | ✅ 121 registros |
| `egresos` categoría='NINGUNA' | ✅ 0 |

Scripts que cubren estos estados: `07_patch_categorias_v2.sql`, `10_pipeline_saneamiento.sql` Paso 3-B, `work/categorias.sql`, `work/categorias_egresos.sql`.

---

## Runbook — Cambios en `.agents/`

| Regla | Cambio |
|---|---|
| `02-reglas-negocio.md` | Agregadas R02 (filtros canónicos de cartera) y R03 (semántica estados ligacargos). R01 actualizada a "Validada". |

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `reportes/concentradocortecaja.php` | agua | Refactor completo v2 |
| `reportes/concentradocortecajaresumen.php` | agua | Refactor completo v2 |
| `reportes/carteravencida.php` | agua | Filtros canónicos + ANTES/AHORA |
| `reportes/listadeudores.php` | agua | Filtros canónicos + ANTES/AHORA |
| `admin/saneamiento/reporte_morosos.php` | agua | Filtros canónicos + ANTES/AHORA |
| `admin/saneamiento/cv_por_tipo_edo_cto.php` | agua | LIKE → categoria IN |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/10_pipeline_saneamiento.sql` | agua | Actualización pipeline |
| `docs-dev/migration-aguav2/host-c-setup/07_patch_categorias_v2.sql` | agua | Nuevo script patch |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/saneamiento_duplicados_marzo_2026.sql` | agua | Nuevo script saneamiento |
| `views/cargos/egresos.php` | agua | Fix id_categoria |
| `views/contratos/ficha.php` | agua | Fix restricción transición estados |
| `.agents/rules/02-reglas-negocio.md` | agua_chatledger | R02 + R03 agregadas |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Encuadre $0 en 5 períodos reales 2024-2026 | ✅ |
| Deuda fantasma estado=4 eliminada en Host C | ✅ |
| Multas asamblea sincronizadas (sp_sinc_asamblea_bulk) | ✅ |
| 9 checks BD Host C vs scripts migración | ✅ |
| Filtros canónicos consistentes entre 6 reportes | ✅ |
| Cartera vencida B vs C validada por año 2020-2026 | ✅ |

### Pruebas manuales pendientes en Host C
- Abrir `concentradocortecaja.php` para un período reciente y verificar que Diferencia = $0
- Abrir `listadeudores.php` y confirmar que contratos estado=4 no aparecen
- Abrir `carteravencida.php?anio=2024` y comparar total con tabla verificada ($87,750)

---

*Generado por Claude Code (claude-sonnet-4-6) — 2026-04-13*
