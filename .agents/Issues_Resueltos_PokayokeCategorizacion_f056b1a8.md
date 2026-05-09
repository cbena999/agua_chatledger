# Issues Resueltos — Sesión 2026-05-08
**Conversación:** `f056b1a8-79e6-4c2a-95f5-54a33ea06e98`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Poka-Yoke: Categorización de Cargos Administrativos

### Scope Funcional
**Antes:** Al aplicar un cargo administrativo (ej. "CAMBIO DE PROPIETARIO") desde la ficha del contrato, el sistema insertaba el cargo en `ligacargos` con `categoria = 0` o `categoria = 1` (herencia incorrecta del catálogo de Host A). Esto generaba descuadres en el Corte de Caja y requería que el pipeline de saneamiento los corrigiera a posteriori.

**Ahora:** Las funciones `creaCargo()` y `modificaCargo()` en PHP contienen un Guard que intercepta el nombre del cargo e impone la categoría correcta server-side, ignorando cualquier categoría enviada por el formulario. Los nuevos cargos nacen correctamente clasificados sin depender del pipeline.

**Impacto:** Reportes de Corte de Caja desglosarán correctamente las categorías 19–22 en tiempo real, sin necesidad de ejecuciones de saneamiento.

### Scope Técnico

**Guard implementado en `creaCargo()` y `modificaCargo()`:**
```php
// POKA-YOKE: Forzar categorías para conceptos administrativos fijos
if (strpos($leyenda, 'CAMBIO DE PROPIETARIO') !== false) {
    $cat = 19;
} elseif (strpos($leyenda, 'CONSTANCIA') !== false) {
    $cat = 21;
} elseif (strpos($leyenda, 'MULTA POR DESPERDICIO') !== false) {
    $cat = 20;
} elseif (strpos($leyenda, 'CANCELACION DE TOMA') !== false || strpos($leyenda, 'CANCELACIÓN DE TOMA') !== false) {
    $cat = 22;
}
```

**Catálogo saneado en Host C (BD `awa`):**
```sql
UPDATE cargos SET categoria = 19 WHERE nombre LIKE '%CAMBIO DE PROPIETARIO%'; -- 1 afectado
UPDATE cargos SET categoria = 21 WHERE nombre LIKE '%CONSTANCIA%';             -- 3 afectados
UPDATE cargos SET categoria = 20 WHERE nombre LIKE '%MULTA POR DESPERDICIO%';  -- 4 afectados
UPDATE cargos SET categoria = 22 WHERE nombre LIKE '%CANCELACION DE TOMA%'...;  -- 7 afectados
```

**Pipeline actualizado (`10_pipeline_saneamiento.sql` — bloque 3-B-1.5):**
```sql
-- 3-B-1.5: Saneamiento del catálogo maestro de cargos (proveniente de Host A)
UPDATE `cargos` SET categoria = 19 WHERE nombre LIKE '%CAMBIO DE PROPIETARIO%';
UPDATE `cargos` SET categoria = 21 WHERE nombre LIKE '%CONSTANCIA%';
UPDATE `cargos` SET categoria = 20 WHERE nombre LIKE '%MULTA POR DESPERDICIO%';
UPDATE `cargos` SET categoria = 22 WHERE nombre LIKE '%CANCELACION DE TOMA%' OR nombre LIKE '%CANCELACIÓN DE TOMA%';
```
Este bloque garantiza que cada vez que el pipeline importe el catálogo desde Host A, las categorías queden correctas en Host C.

---

## Issue 2 — Poka-Yoke: Egresos Huérfanos (`id_categoria = NULL`)

### Scope Funcional
**Antes:** Si el Host A exportaba egresos con valor numérico `0` (o texto inválido) en el campo `categoria`, la función `registraegreso()` insertaba `id_categoria = NULL`. El pipeline de saneamiento necesitaba reclasificarlos a `id_categoria = 10` (SIN CATEGORÍA) en cada sync.

**Ahora:** La función `registraegreso()` tiene un fallback directo: si la categoría enviada no existe en el catálogo `categorias_egresos`, el egreso se asigna inmediatamente a `id_categoria = 10` y `categoria = 'SIN CATEGORÍA'`. Nunca llega un `NULL` a la BD.

### Scope Técnico

**Poka-Yoke implementado en `registraegreso()`:**
```php
// POKA-YOKE: Si no existe la categoría enviada, hereda '10 - SIN CATEGORÍA'
$id_cat = $row_cat ? intval($row_cat['id']) : 10;
if ($id_cat === 10) {
    $cat_esc = 'SIN CATEGORÍA'; // Fuerza la consistencia de texto
}
$id_cat_sql = $id_cat;
```

---

## Estado del Blindaje del Pipeline Post-Sync

| Issue Histórico | Pipeline lo repara | Webapp V2 lo previene | Estado |
|:---|:---:|:---:|:---:|
| Folios mixtos (pagado + cancelado) | ✅ Pasos 1–2C | ✅ `sp_cancelar_cargo` (WHERE estado=0) | 🔒 Blindado |
| Recargos en contratos exentos 1er año | ✅ `10b_saneamiento_exencion_recargos.sql` | ✅ Guard en `calcula_recargos()` | 🔒 Blindado |
| Desincronización multas asamblea | ✅ Paso 3 + `sp_sinc_asamblea_bulk` | ✅ `pagacancelacargos()` llama `sp_sinc_asamblea_puntual` | 🔒 Blindado |
| Categorías admin incorrectas (0, 1) | ✅ Paso 3-B | ✅ Poka-Yoke en `creaCargo/modificaCargo` | 🔒 Blindado |
| Egresos con `id_categoria = NULL` | ✅ Paso 3-B-4 | ✅ Poka-Yoke en `registraegreso()` | 🔒 Blindado |

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `includes/negocio/cargos.php` | `aguaclmhj` | feat: Poka-Yoke en `creaCargo`, `modificaCargo`, `registraegreso` |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/10_pipeline_saneamiento.sql` | `aguaclmhj` | feat: Bloque 3-B-1.5 — saneamiento catálogo `cargos` |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Guard `creaCargo` intercepta 'CAMBIO DE PROPIETARIO' → cat=19 | ⬜ Prueba manual pendiente |
| Guard `modificaCargo` intercepta 'CONSTANCIA' → cat=21 | ⬜ Prueba manual pendiente |
| Egreso con categoría inválida → `id_categoria=10` | ⬜ Prueba manual pendiente |
| Corte de Caja muestra cat 19-22 correctamente | ⬜ Prueba manual pendiente |
| `10_pipeline_saneamiento.sql` actualiza `cargos` post-sync | ⬜ Validar en próxima ejecución del pipeline |

### Pruebas manuales pendientes
1. Desde `admin/operaciones/cargos.php` → crear cargo "CAMBIO DE PROPIETARIO 2026" asignando categoría "OTROS" (cat=1) → verificar que en BD quede `categoria=19`.
2. Aplicar cargo "CAMBIO DE PROPIETARIO" a un contrato de prueba → verificar `ligacargos.categoria=19`.
3. Registrar un egreso con categoría escrita a mano incorrecta → verificar `egresos.id_categoria=10`.

---
*Generado por Antigravity/Gemini — 2026-05-08*
