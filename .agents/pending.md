# Pendientes Activos del Proyecto Agua

> **Protocolo**: Este archivo es la lista viva de tareas en vuelo.
> - Actualizar al **iniciar** sesión (verificar estados) y al **cerrar** sesión (registrar lo que quedó a medias).
> - Válido para Claude Code y Google Antigravity/Gemini por igual.
> - Un pendiente se elimina solo cuando está **verificado en BD/UI**, no cuando el agente cree que está listo.

---

## 🔴 PRIORIDAD ALTA

### ~~P-01~~ ✅ UI-5R: Reversión de estado cto 405 — RESUELTO 2026-04-26
**Qué falta**: Ejecutar los sub-casos A, B y C de UI-5R en Host C.

**Estado BD (verificado 2026-04-26)**:
- `contrato.estado = 1` (Activo) — cambio 3→1 ya ejecutado en sesión anterior
- `REVERSAL_SNAPSHOT id=4934` con `despues='PENDIENTE'` — listo para reversión
- `deuda_pre = $10,686` | `deuda_post = $66,940` | `lc_ids_nuevos` = 29 cargos generados
- `lc_ids_cancelados = []`, `hist_ids_amnist = []` (correcto: 3→1 no aplica amnistía)

**Sub-casos pendientes**:
- **A**: Verificar/insertar `reversal_threshold=10000` en `config_sistema`
- **B**: Verificar que botón `#btn-revertir-transicion` aparece en ficha cto 405 (deuda $66,940 > umbral $10,000)
- **C**: Ejecutar reversión → verificar: estado=3 restaurado, snapshot=REVERTIDO, 29 cargos cancelados, deuda=$10,686

**Assert SQL post-reversión**:
```sql
SELECT estado FROM contrato WHERE numcontrato='405';                                          -- → 3
SELECT despues FROM cambios WHERE numcontrato='405' AND descripcion='REVERSAL_SNAPSHOT'
  ORDER BY id DESC LIMIT 1;                                                                   -- → REVERTIDO
SELECT IFNULL(SUM(monto),0) FROM vw_ligacargos_pendientes WHERE numcontrato='405';            -- → 10686
```

**Revert final**: `UPDATE config_sistema SET valor='15000' WHERE clave='reversal_threshold'`

---

### P-02 — Análisis encuadre de ingresos — 4 períodos con diferencia

**Qué falta**: Investigar diferencias entre reportes archivados (HTML) y webapp Host C hasta lograr encuadre exacto.

| Período | Archivado | Webapp C | Diferencia | Hipótesis activa |
|---|---:|---:|---:|---|
| 2024a | 872,090 | 881,760 | +9,670 webapp | Folio en fecha límite compartido con 2024b |
| 2024b | 264,820 | 255,160 | -9,660 webapp | Mismo folio movido de período |
| 2025a | 1,026,660 | 1,020,160 | -6,500 webapp | Diferencias c6 (asamblea) y c2/c3 |
| 2025b | 179,562 | 184,288 | +4,726 webapp | Diferencias c6, c16/c17 y cartera |

**Fuentes**: Archivos HTML en `/home/carlos/Documents/tmp01/xlsx/*.html`
**Empezar por**: 2024a y 2024b — sospecha de que $9,670 ≈ $9,660 es el mismo folio en corte de fecha.

---

## 🟡 PRIORIDAD MEDIA

### P-03 — UI-9: Validar recálculo de tarifa Normal↔Comercial — Contrato 500
**Qué falta**: Ejecutar UI-9 completo para contrato 500.

**Prerequisito verificado 2026-04-26**: `tipo=0` (Normal) ✅ — contrato limpio, sin contaminación.

**Contexto**: Validar que cambio Normal→Comercial dispara `_sincronizaParidadFinanciera()` con recálculo multi-año de cargos c2/c3 según tarifa comercial.

---

## ✅ RESUELTOS RECIENTEMENTE (referencia)

| Fecha | Item | Detalle |
|---|---|---|
| 2026-04-26 | Guards G01/G02 motor recargos | `cargos.php` — guards en `calcula_recargos()` |
| 2026-04-26 | `config_sistema.descripcion` → TEXT | Schema ampliado para textos largos |
| 2026-04-26 | UI configuracion.php rediseñada | Nueva UI de configuración global |
| 2026-04-26 | `paridad_anios_max_recargo` en config | Límite configurable de años con recargo |
| 2026-04-26 | P-04 Split anual | Ya existe UI manual en `admin/operaciones/cierre_anual/index.php` — descartado |
| 2026-04-26 | P-05 egresos.id_categoria NULL | BD verificada: 0 nulos en 473 registros — descartado |
| 2026-04-26 | P-06 warnings sync Host B | Sin impacto operativo en Host C — descartado |
| 2026-04-07 | Saneamiento estructural asambleas | UNIQUE keys, consolidación duplicados |
| 2026-04-07 | Pipeline sync B→A→C | 7/7 validaciones OK |
| 2026-04-07 | Bugs split ligacargos en PHPs | `vw_ligacargos_all` en listadeudores, cartera, etc. |

---

*Última actualización: 2026-04-26 — Claude Code*
