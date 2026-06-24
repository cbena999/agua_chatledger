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

### ~~P-02~~ ✅ Análisis encuadre de ingresos — COMPLETADO 2026-04-29

**Documento final**: `docs-dev/doc-estabilizacion/encuadres/analisis-encuadre-3fuentes-2024-2026.md`

**Resultado por período (9 analizados)**:
| Período | Libro | Host C | Diferencia | Estado |
|---|---:|---:|---:|---|
| 2024a | 872,090 | 881,960 | +9,870 | Explicado: folio fecha límite 25/03 |
| 2024b | 264,820 | 255,170 | −9,650 | Explicado: mismo folio, BD lo pone en 2024b |
| 2024c | 150,128 | 150,128 | **$0** | ✅ Empate exacto |
| 2024d | 43,590 | 44,340 | +750 | Explicado: multas desperdicio no desglosadas |
| 2025a | 1,026,660 | 1,020,660 | −6,000 | Explicado: sesgos S3+S5 (con anio_corte=2025) |
| 2025b | 179,562 | 185,686 | +6,124 | Explicado: sesgo asamblea S3 |
| 2025c | 105,609 | 100,087 | −5,522 | Explicado: S3+S5, fechas correctas 28/09 |
| 2026a | 110,260 | 110,344 | +84 | ✅ Empate (inicio 29/09 correcto) |
| 2026b | 539,302 | 540,122 | +820 | ✅ Empate C=B |

**Conclusión**: Todas las diferencias están explicadas. Sesgos estructurales documentados (S1-S5). No hay pérdida de datos ni errores de motor — son diferencias metodológicas (corte de fecha, agrupación asamblea, reclasificación cat 16/17, saneamiento V2).

---

## 🟡 PRIORIDAD MEDIA

### ~~P-03~~ ✅ Suite de Pruebas V2 — COMPLETADA 2026-04-29
**Estado**: Suite completa finalizada 2026-04-29. 42 PASS, 5 IMPEDIDOS documentados.
**`reversal_threshold`**: verificado en BD Host C = `$14,000` ✅ (2026-04-30).

---

### P-04 🔲 Prueba de Estrés: Poka-Yoke Histórico (`_esContratoFacturableEnAnio`)
**Objetivo**: Validar que la reactivación de un contrato previamente suspendido no genere cargos retroactivos indebidos por los años en los que estuvo bajo suspensión. La lógica implementada en `contratos.php` revisa la tabla `cambios` para este fin.
**Candidatos de prueba identificados**:
- **Contratos 1362 y 1363**: Suspendidos el 31 de Marzo de 2025 (`estado = 2`). Tienen historial de cargos en 2024 (correcto porque estaban activos), pero la facturación retroactiva falló al proteger el 2026 debido a una variación en el texto del log.
- **Contrato 142**: Reactivado al Estado 1 el 29/05/2026 tras estar en Suspensión Temporal.
- **Contrato 1284**: Reactivado al Estado 1 el 19/05/2026 tras estar en Suspensión Temporal.
- **Contrato 1021**: Actualmente en Suspensión Temporal (Estado 2) en Host B. *Caso ideal para simular la reactivación en vivo y observar la facturación retroactiva.*
**Acción Pendiente**:
1. ~~Arreglar la expresión regular en `_esContratoFacturableEnAnio` (`contratos.php`).~~ (✅ COMPLETO: Regex cambiado a `/estado.*?\[(-?1|[2-4])\]/i` y lectura de `Cambio de estado de contrato`).
2. Simular la reactivación de estos contratos para confirmar que excluye correctamente los años de suspensión basándose en el historial blindado.

---

### P-05 🔲 Desarrollar Generador SQL Offline para Catch-Up (Versiones A1 y B1)
**Objetivo**: Ejecutar la sincronización de los 64 contratos en el Host C (Kiosko Windows de producción) bajo un entorno sin red/acceso directo a Host B.
**Acción Pendiente**:
1. Crear un script extractor (`generador_catchup_sql.php`) que corra en Host A leyendo de Host B.
2. En lugar de inyectar datos directamente, construir dos archivos planos `.sql` transaccionales (`catchup_camino_A1.sql` y `catchup_camino_B1.sql`).
3. Estos archivos deben contener los `DELETE`, los `INSERT` con el split arquitectónico, y el `UPDATE` global respectivo (1 o 0), garantizando el encode UTF-8 y logs de consola `SELECT '...';`.

---

### P-07 🔲 UI: Parametrizar Cantidad de Copias en `credencial.php`
**Objetivo**: Evitar el desperdicio de papel térmico.
**Acción Pendiente**: La vista de credenciales actualmente está rígida a 2 copias por hoja. Se requiere implementar un control `<select>` en la UI previa para permitir generar 1 sola copia.

---

## ✅ RESUELTOS RECIENTEMENTE (referencia)

| Fecha | Item | Detalle |
|---|---|---|
| 2026-06-24 | Saneamiento de Base de Datos y UI (GAPs 1-6) | ✅ PASADO — Normalizadas mensualidades manuales a automatico=0 en cargos. Sanitizadas tipografías y leyendas de Faltas a Asamblea en catalogos/ledger. Reclasificado concepto 'REHABILITACION' de cat 2 a cat 5. Corregido agrupamiento de asambleas del año en curso en adeudo_tabla.php y validada suite completa sin falsos positivos en Host C. |
| 2026-06-22 | Refactorización Acordeón de Mora UI | ✅ PASADO — Reemplazo de lista plana de adeudos por 4 acordeones colapsables en adeudo_tabla.php con estadísticas dinámicas, soporte para multas de asamblea en sus años correspondientes y resaltado visual para la palabra 'RECARGO' en cargos especiales. |
| 2026-05-23 | Habilitación HTTPS y Let's Encrypt | ✅ PASADO — Habilitación de HTTPS en Nginx para oci-vm (www.caelitandem.lat), redirect HTTP → HTTPS y verificación de timers. |
| 2026-04-29 | Sección Reportes RC-1 a RC-5 | ✅ PASADO — empate caja, cartera vencida, trazabilidad segundos |
| 2026-04-29 | Grupo F pruebas (UI-30, 31, 33) | ✅ PASADO — asistencias mini-webapp, TXT MD5, cancelación masiva FALTA ASAMBLEA |
| 2026-04-29 | Grupo E pruebas (UI-21 a UI-29) | ✅ PASADO — usuarios, auditoría, egresos, UX ficha (UI-28 IMPEDIDO) |
| 2026-04-29 | Grupo D pruebas (UI-16 a UI-20) | ✅ PASADO — cargos, cancelaciones, propagación masiva, cruce años |
| 2026-04-29 | Propagación masiva en historial | `historial_mov_cto.php` — registros -MASIVO- visibles en cto afectado (filtro Sistema) |
| 2026-04-29 | Fix resetForm paxscript.js | Formulario edición cargo ya no revierte al guardar |
| 2026-04-29 | Grupo C pruebas (UI-13/14/15) | ✅ PASADO — cobro, sync asamblea, anti-duplicados |
| 2026-04-29 | Bitácora sync asamblea | `cargos.php` — INSERT en `cambios` por cto beneficiado + nota en cobro pagador |
| 2026-04-29 | Link recibo en historial | `historial_mov_cto.php` — link `recibo.php?folio=X` en entradas Cobro de Cargos |
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

| 2026-05-11 | Conectividad y Hardening Host C | ✅ PASADO — Firewall puerto 7002, auto-elevación UAC en scripts, fix Kiosko Chrome |
| 2026-05-11 | Cartera Vencida y Reportes | ✅ PASADO — Modelo homologado, categorías auditadas, UI reportes clarificada |
| 2026-05-10 | Resiliencia y Automatización C | ✅ PASADO — Monitor UPS auto-start, backups pre-vuelo, repair_aria auto |
| 2026-05-08 | Poka-Yoke Categorización Cargos Adm. | `cargos.php` — guard en `creaCargo`/`modificaCargo` fuerza cat 19/20/21/22 |
| 2026-05-08 | Poka-Yoke Egresos Huérfanos | `cargos.php` — `registraegreso()` fallback a `id_categoria=10` si cat inválida |
| 2026-05-08 | Pipeline saneamiento catálogo `cargos` | `10_pipeline_saneamiento.sql` bloque 3-B-1.5 — UPDATE categorías post-sync |

| 2026-05-14 | UI-Optimization & Saneamiento | ✅ PASADO — Fix Lila universal, Saneamiento Zenón (1590 Master), Filtros especiales, Hardening Shutdown C |
| 2026-05-14 | Asamblea & Sync Stabilization | ✅ PASADO — Auto-foco ticket, gracia 7 días, paridad 100% sync, optimización ahorro papel (márgenes -4mm) |
| 2026-05-20 | Normalización de Calles en Listados | ✅ PASADO — Agrupamiento de calles interactivo soportando acentos y ordinales sin truncar palabras clave. |
| 2026-05-20 | Impresión de Credenciales en Lote | ✅ PASADO — Formato carta de 3 copias a 17.6 x 5.8 cm con guía de corte/doblez central y popup centrado. |
| 2026-05-21 | Optimización de Renglones en Impresión | ✅ PASADO — Límite de registros por página incrementado de 42 a 46 en 5 reportes para aprovechar mejor el papel. |
| 2026-05-21 | Rotación de Respaldos de BD | ✅ PASADO — Reemplazado filtrado temporal estático por rotación estricta de máximo 7 respaldos zip más recientes en scripts ps1. |
| 2026-05-22 | Desactivación de Autocompletado en Login | ✅ PASADO — Atributos autocomplete off y new-password aplicados en login/index.php para evitar llenado automático del navegador. |
| 2026-05-23 | Habilitación HTTPS Let's Encrypt OCI VM | ✅ PASADO — Certbot + Nginx para www.caelitandem.lat, redirect HTTP→HTTPS, cron auto-renovación blindado. |
| 2026-05-21-22 | Documentación Entrega Sistema Agua V2 | ✅ PASADO — Manual PDF generado con apéndices de configuracion.php y paleta de colores semáforo. |
| 2026-05-25 | Script dos-repos-branch-git.sh | ✅ PASADO — Guía operativa de flujo Git canónico para cierre de sesión (agua + agua_chatledger). |
| 2026-05-25 | GEMINI.md y docs actualizados + push repos | ✅ PASADO — Hitos 2026-05-23 a 2026-05-25 documentados, commit y push en agua (main) y agua_chatledger (master). |
| 2026-06-23 | Optimización Acordeón UI de Mora (5 Grupos) | ✅ PASADO — Reestructuración a 5 acordeones en adeudo_tabla.php: Año en curso (abierto por defecto), Falta Asamblea histórica (nuevo), Cargos especiales, Historial reciente e Historial antiguo. Concatenación de conteo de años de deuda base y años de recargos-mora en etiqueta principal. |

| 2026-06-24 | Auditoría JIT y UI Condonación | ✅ PASADO — Revisión profunda de ligacargos dual, Poka-Yoke UI oculto, y SP sp_pagar_cargo. |

---

*Última actualización: 2026-06-24 — Sincronización GEMINI.md y repos — Antigravity*
