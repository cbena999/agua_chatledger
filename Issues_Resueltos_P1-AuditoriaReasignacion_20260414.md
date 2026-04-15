# Issues Resueltos — Sesión 2026-04-14
**Rama:** `feature/upgrade-v2-win-xampp`
**Commits:** `73502bc` → `2dcdd50` (agua) · `609fa40` (chatledger)

---

## Issue 1 — Reasignación de cargo cancelado no registraba auditoría

### Scope Funcional
El botón **Reasignar** en cargos cancelados (ficha de contrato) no generaba entrada en el historial de movimientos (`cambios`). El cargo sí pasaba a estado 0, pero el movimiento no aparecía al hacer click en **Movimientos** (historial_auditoria.php). Detectado en contrato 649 / cargo "FALTA ASAMBLEA 04 ENE 2026" (`id=136757`).

### Scope Técnico
**Causa raíz (commit `73502bc` de esta misma sesión):** se introdujo `WHERE id = $id_cargo` en el UPDATE de `ligacargos`, pero la subquery que obtenía `id_cargo` en `contratos.php` solo buscaba en `ligacargos` activa (anio>=2026), sin cubrir cargos históricos en `ligacargos_historico`. Para el cargo 649 (`anio=2026` pero ya en historico post-sync) retornaba NULL → `id_cargo=0` → caía al fallback por texto que sí funcionaba, pero el INSERT en `cambios` dependía del branch erróneo.

**Fix aplicado (commit `2dcdd50`):**
- `cargos.php` — `regresarCargoCancelado()`: branch `if ($id_cargo > 0)` usa `WHERE id=$id_cargo` (correcto para Host C), fallback por PK compuesta cuando `id_cargo=0`. Agrega monto al texto de auditoría.
- `contratos.php` — subquery `SELECT id FROM ligacargos ... AS id_cargo` restaurada (solo busca en `ligacargos` activa estado=-1, cubre anio>=2026).
- `ficha.php` — onclick Reasignar: restaurado `intval($cc['id_cargo'])` (no `0` hardcoded).
- `historial_auditoria.php` — `ORDER BY id DESC` restaurado (correcto para Host C donde `cambios.id` es PK AUTO_INCREMENT).

```php
// cargos.php — regresarCargoCancelado() — lógica final
if ($id_cargo > 0) {
    $res_monto = $y->q("SELECT monto FROM ligacargos WHERE id = $id_cargo ...");
    $y->q("UPDATE ligacargos SET estado = 0 WHERE id = $id_cargo AND numcontrato = '$contrato'");
} else {
    // fallback PK compuesta
    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato=... AND UPPER(TRIM(leyenda))=... AND repetido=...");
}
// INSERT cambios siempre se ejecuta después del if/else
$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), ...)");
```

---

## Issue 2 — Historial de movimientos mostraba datos insuficientes

### Scope Funcional
`historial_auditoria.php` no diferenciaba visualmente entre tipos de movimiento (cancelación, reasignación, declaratoria). Solo mostraba "cancelacion" como etiqueta genérica.

### Scope Técnico
- Agregados badges de color por tipo: rojo=cancelación, verde=reasignación, amarillo=declaratoria, azul=otro.
- Labels contextuales: "Razón de Cancelación" / "Cargo(s) Cancelado(s)" según tipo.
- Header enriquecido: nombre en MAYÚSCULAS, Usuario #N, conteo de registros.
- Fecha con segundos (`H:i:s`) para trazabilidad fina.
- Query ampliada para incluir registros de `Reasignacion de cargo cancelado` (antes solo mostraba `cancelacion`).

---

## Issue 3 — Degradación de código Host C para compatibilidad con Host A (raíz)

### Scope Funcional
Los fixes del commit `73502bc` (sesión de hoy) asumieron erróneamente que debían ser compatibles con Host A. Host A no tiene `ligacargos.id` ni `cambios.id`. El código resultante nunca ejecutaba el branch principal en Host C (aunque Host C sí tiene `id`) por un problema en la subquery de obtención de `id_cargo`.

### Scope Técnico
**Análisis:** Todo el código PHP en `feature/upgrade-v2-win-xampp` tiene target exclusivo Host C. Host A es Bridge V1+ intencional — sus diferencias de schema son por diseño, no bugs. La regla no estaba documentada explícitamente → se tomó la decisión incorrecta de degradar.

**Fix:** Camino A — revertir degradación, restaurar versión Host C correcta.

**Regla nueva en Ground Truth** ([05-despliegue-host-c.md](.agents/rules/05-despliegue-host-c.md)):
> PHPs en `feature` son exclusivos para Host C. Nunca degradar para compatibilidad con Host A.
> Patrones canónicos: `WHERE id=$id_cargo`, `ORDER BY id DESC`, `NOW()` en cambios.

---

## Runbook — Cambios en `.agents/`

| Regla | Cambio |
|:---|:---|
| `05-despliegue-host-c.md` | Nueva sección "PHPs en `feature` son exclusivos para Host C" con patrones canónicos |

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `includes/negocio/cargos.php` | agua | Fix: discriminador id + monto en auditoría |
| `includes/negocio/contratos.php` | agua | Fix: subquery id_cargo restaurada |
| `views/contratos/ficha.php` | agua | Fix: id_cargo real en onclick |
| `reportes/historial_auditoria.php` | agua | Fix: ORDER BY id DESC + mejoras visuales |
| `.agents/rules/05-despliegue-host-c.md` | chatledger | Nueva regla PHPs exclusivos Host C |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| BD Host C schema alineado | ✅ |
| Scripts migration-aguav2 alineados | ✅ |
| PHPs feature alineados con Host C | ✅ |
| Ground Truth actualizado | ✅ |
| Push feature branch | ✅ `2dcdd50` |
| Push chatledger | ✅ `609fa40` |

### Pruebas manuales pendientes (P1)
1. Abrir ficha contrato con cargos cancelados en Host C
2. Click **Reasignar** en cualquier cargo estado=-1
3. Verificar en `ligacargos`: `estado=0`
4. Click **Movimientos** → debe aparecer entrada verde "Reasignación de Cargo" con monto y operador
5. Verificar que `ORDER BY id DESC` muestra el movimiento más reciente primero

---
*Generado por Claude Sonnet 4.6 — 2026-04-14*
