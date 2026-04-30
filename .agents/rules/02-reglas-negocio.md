# Regla 02: Diccionario de Reglas de Negocio por Módulo

Este documento es una entidad viva para registrar el descubrimiento y clasificación de todas las reglas de negocio contenidas en la base de datos `awa` y la webapp **Agua**.

---

## 📋 Clasificación por Módulos Funcionales

### 📂 Módulo 01: Gestión de Contratos (Core)
| ID | Regla | Estado |
|:---:|---|:---:|
| **C01** | Límite de **2 tomas (contratos)** activas por usuario en el mismo domicilio físico. El domicilio comparado es `contrato.domicilio` (dirección física de la toma), **no** `usuario.domicilio` (dato de contacto del titular — campo independiente en tabla `usuario`, sin relación con validaciones de paridad ni tomas). La comparación usa normalización canónica `_normalizaDomicilioSQL()` / `_normalizaDomicilio()` (`contratos.php`) que unifica UPPER, acentos, variantes tipográficas (`n°/nº/no./nO.` → `N`), puntos y espacios múltiples — evita que typos burlen el límite. | Implementada |
| **C02** | Prohibida la modificación de estado de contratos en `4 (SUSPENSIÓN DEFINITIVA)`. | Implementada |
| **C03** | Registro obligatorio de folios únicos por cada nuevo contrato. | Validada |
| **C04** | **Motor de Paridad Universal**: Sincronización obligatoria; si una toma se activa/reconecta, su cargo anual debe restaurarse automáticamente. | Implementada |
| **C05** | **Limpieza por Suspensión Definitiva**: Al pasar a Estado 4, se debe forzar la desconexión física y la cancelación de deuda anual actual. | Implementada |
| **C06** | **Amnistía de Recargos en Reactivación**: Al pasar un contrato de `2 (SUSPENSIÓN TEMPORAL)` a `1 (ACTIVO)`, los recargos de años anteriores al año en curso se cancelan automáticamente (`estado=-1`). Solo permanece vigente la deuda del año actual. **NO aplica si el origen es estado `3 (SUSPENSIÓN ADMINISTRATIVA)`**: el adeudo íntegro se conserva (incluyendo anualidad del año en curso y todos los recargos históricos). Implementado en `_amnistiaRecargosHistoricos()` (contratos.php) + `_sincronizaParidadFinanciera()`. El registro en `cambios` indica explícitamente si se aplicó o no la amnistía. | Implementada |
| **C07** | **Restricción de Transiciones de Suspensión**: Prohibido el salto directo entre estados de suspensión (`2` y `3`). El contrato debe ser regularizado a `1 (ACTIVO)` primero para asegurar que los disparadores de paridad y amnistía se ejecuten según el origen correcto. Enforzado en UI (`ficha.php`) y Servidor (`contratos.php`). | Implementada |
| **C08** | **Límite de Tomas Físicas**: Restricción operativa de un máximo de **2 tomas físicas** registrables por cada contrato/domicilio. Enforzado en la UI de gestión de tomas. | Implementada |
| **C09** | **Límite de Domicilios Distintos por Usuario** (`max_domicilios_por_contrato`, default=3): Al crear un nuevo contrato, si el usuario ya tiene N domicilios físicos distintos (en `contrato.domicilio`) y el nuevo domicilio es diferente a todos ellos, el sistema bloquea la creación. Domicilio ya existente siempre pasa (segunda toma en mismo domicilio). No aplica retroactivamente. Configurable en `config_sistema` clave `max_domicilios_por_contrato`. Usar `0` para sin límite. Implementado en `guardaNuevoContrato()` (`contratos.php`). Basado en análisis real: 91.6% de usuarios tiene 1 domicilio, 7% tiene 2, 1.4% tiene 3, <0.1% tiene 4. | Implementada |
| **C10** | **Normalización canónica de `contrato.domicilio`**: Todo domicilio se normaliza al guardarse vía `_normalizaDomicilio()` en PHP y `_normalizaDomicilioSQL()` para comparaciones SQL. Reglas: UPPER, sin acentos (Á→A, Ñ→N…), variantes de número (`n°/nº/no./nO.` → `N`), sin puntos ni comas, espacios múltiples → uno. Aplica en `guardaNuevoContrato()`, `guardaContrato()` y `validaTomasSync()`. **No aplica a `usuario.domicilio`** — ese es dato de contacto personal y no participa en ninguna validación de paridad. | Implementada |

### 📂 Módulo 02: Facturación, Cargos y Recargos
| ID | Regla | Estado |
|:---:|---|:---:|
| **F01** | Solo contratos en estado `1 (ACTIVO)` y `3 (SUSPENSIÓN ADMINISTRATIVA)` generan recargos automáticos. Estado `2 (SUSPENSIÓN TEMPORAL)` está **excluido** — la anualidad ya está cancelada (`estado=-1`) y no procede recargo sobre ella. Estado `4` también excluido. Implementado en `calcula_recargos()` (`cargos.php`). **Guard G01 (2026-04-26)**: `calcula_recargos()` retorna inmediatamente si `recargo=0` en el cargo (ruta aplicación manual). La ruta de paridad automática (`_sincronizaDeudaPendienteContrato()`) usa `categoria IN (2,3)` por diseño y no pasa por este guard. | Implementada |
| **F02** | Cargos manuales a contratos en `4 (SUSPENSIÓN DEFINITIVA)` están prohibidos. | Crítica |
| **F03** | **Auditoría de Reasignación de Cargos**: `regresarCargoCancelado()` valida estado del contrato (bloquea en estado 4) y registra la identidad del operador (`$_SESSION['usuario']`) en la tabla `cambios`. Requiere confirmación de usuario en la UI. | Implementada |
| **F04** | El cálculo de la deuda debe ser atómico (Cargos + Recargos = Deuda Total). | Validada |
| **F05** | **Semántica dual del campo `recargo` — NUNCA contabilizar como monto financiero ni usar como filtro de tipo en `ligacargos`** — El campo `recargo` existe con dos semánticas incompatibles según la tabla: (1) En `cargos` (catálogo): es un **flag entero `INT(0/1)`** que indica si el tipo de cargo puede generar recargo moratorio — uso correcto en UI y filtros sobre la tabla `cargos`. (2) En `ligacargos` / `ligacargos_historico`: es un **monto decimal heredado** del catálogo al momento del INSERT — en Host C vale `0.00` para casi todos los registros; en datos migrados de Host A/B puede valer `1.00` (artefacto histórico de cuando el flag se copió como float). **Reglas críticas**: (a) Nunca sumar `ligacargos.recargo` como parte de la deuda o ingreso. (b) Nunca usar `AND ligacargos.recargo = 1` como filtro de tipo de cargo — siempre falla en Host C produciendo falsos negativos silenciosos. (c) El discriminador canónico para identificar recargos moratorios es `categoria IN (16, 17)` (configurables en `config_sistema`: `recargo_categoria_agua`, `recargo_categoria_drenaje`) o el alias `es_recargo_moratorio` de las vistas. (d) Para reclasificaciones de leyendas especiales usar `leyenda LIKE + categoria` como fuente de verdad, sin `recargo`. **Archivos corregidos** (2026-04-15): `admin/reportes/auditoria_integridad_bd.php` líneas 69 y 136 (recargos huérfanos), `docs-dev/migration-aguav2/host-c-setup/07_patch_categorias_v2.sql` (reclasificación cat 19-22). **Usos válidos de `recargo` que NO deben tocarse**: filtros sobre tabla `cargos` (`AND recargo=0` en contratos.php:55/399), coloreado UI en `views/cargos/` y `views/contratos/ficha.php` — todos operan sobre el catálogo donde `recargo` sí es flag INT. | Implementada |

| **F06** | **Cobertura dual obligatoria en operaciones sobre ligacargos (Host C split-schema)** — En Host C, los cargos de `anio<=2025` viven en `ligacargos_historico` y los de `anio>=2026` en `ligacargos` activa. Cualquier operación PHP que lea, modifique o cancele cargos **debe cubrir ambas tablas**. Reglas concretas: **(a) SELECTs de cargos cancelados/pendientes**: usar siempre `vw_ligacargos_all` o `vw_ligacargos_pendientes` (las vistas hacen UNION automáticamente) — nunca `FROM ligacargos` directo en queries de ficha/cartera. **(b) Subqueries de id_cargo**: usar `COALESCE((SELECT id FROM ligacargos WHERE ...), (SELECT id FROM ligacargos_historico WHERE ...))` para obtener el PK correcto sin importar en qué tabla vive el registro. **(c) UPDATEs de estado**: cuando se opera por `id_cargo` conocido, ejecutar UPDATE en ambas tablas siempre — la que no contiene el registro simplemente afecta 0 filas, sin daño. `UPDATE ligacargos SET estado=X WHERE id=$id AND numcontrato='$c'` + `UPDATE ligacargos_historico SET estado=X WHERE id=$id AND numcontrato='$c'`. Es más robusto que pasar un flag `en_historico` que puede llegar incorrecto. **(d) Fallback por leyenda**: también cubrir ambas tablas. **Por qué se repite el bug**: cada sesión tiende a escribir solo `FROM ligacargos` olvidando el histórico. Si el fix solo opera en una tabla, el cargo del año equivocado no se modifica y el INSERT de auditoría en `cambios` puede ejecutarse pero sin efecto real en BD. **Archivos críticos**: `includes/negocio/cargos.php` (`regresarCargoCancelado`, `pagacancelacargos`), `includes/negocio/contratos.php` (SELECT cancelados para ficha), `_amnistiaRecargosHistoricos` (ya correcto: opera en ambas tablas). | Implementada |
| **F07** | **Exención de Recargos 1er Año**: Los contratos nuevos están exentos de recargos moratorios durante su primer año calendario de vida (año de alta). Enforzado por el flag `contrato.exento_recargo_primer_anio=1` y saneamiento D1. | Implementada |
| **F08** | **Coherencia de Infraestructura**: Prohibido el cobro de servicios (ej. drenaje) en contratos que no cuenten con la infraestructura instalada (`contrato.drenaje=0`). La UI debe bloquear la asignación manual de estos cargos. | Implementada |
| **F09** | **Guard de Categoría para flag `recargo` (G02, 2026-04-26)**: `creaCargo()` y `modificaCargo()` fuerzan `recargo=0` en server-side para cualquier categoría distinta a `2 (AGUA)` y `3 (DRENAJE)`, independientemente de lo que envíe el formulario. Esto cierra la vía UI donde el checkbox "Es una multa" podía activar `recargo=1` en categorías incorrectas. Implementado en `includes/negocio/cargos.php` líneas 584 y 635. | Implementada |

### 📂 Módulo 03: Usuarios y Segmentación
| ID | Regla | Estado |
|:---:|---|:---:|
| **U01** | Usuario estado `2` = **No Localizado**. Excluido de búsquedas estándar. | Implementada |
| **U02** | Clasificación de "Usuarios Especiales": Aquellos sin contratos vinculados o con todos en suspensión definitiva. | Reporte V2 |
| **U03** | **Tratamiento de No Localizados**: Usuarios con `estado=2` disparan la suspensión definitiva de sus contratos vinculados. Su deuda **no segmenta ni contabiliza** en los reportes financieros operativos (cortes de caja, cartera vencida) — ver R06. | Implementada |
| **U04** | **Purga de Usuarios Placeholder**: Usuarios sin nombre (NULL o vacío) se eliminan automáticamente del padrón **solo si no tienen contratos vinculados** (para evitar huérfanos). Saneamiento D10. | Implementada |

### 📂 Módulo 06: Asambleas y Participación
| ID | Regla | Estado |
|:---:|---|:---:|
| **A01** | **Consolidación de Asambleas**: Máximo de **3 asambleas permitidas por fecha** calendario. Enforzado por el trigger `tr_asamblea_limit_3` en Host C. El saneamiento D9 consolida asambleas duplicadas históricas (B→A) eligiendo como "ganadora" la de mayor asistencia y reasignando asistentes automáticamente. | Implementada |

### 📂 Módulo 04: Pagos, Caja y Folios
| ID | Regla | Estado |
|:---:|---|:---:|
| **P01** | Cada pago debe generar un folio único e incremental que vincule a `ligacargos`. | Validada |
| **P02** | Los folios de pago manuales no deben solaparse con folios de contratos nuevos. | En Revisión |

### 📂 Módulo 05: Reportes y Validación de Datos
| ID | Regla | Estado |
|:---:|---|:---:|
| **R01** | Sincronización estricta entre sumatoria de listas y totales de encabezado en todos los reportes operativos. | Validada |
| **R02** | **Filtros Canónicos de Cartera y Deuda** — Todos los reportes financieros deben aplicar los mismos filtros para consistencia entre sí. `excluir_cartera = [6, 19, 20, 21, 22]`: categorías excluidas de cartera vencida y deuda total (cat 6=multas asamblea, 19-22=conceptos únicos CB/PROP, MLT/DESP, CNT/NADO, CNC/FUGA). Cat 16/17 (REC/AGUA, REC/DREN) **SÍ se incluyen** en cartera desde v2 — sus rezagos (anio < anio_ref) van a R.CART. `sin_anio = [6]`: solo FALTAS DE ASAMBLEA es sin filtro de año (acumulativa por diseño); cats 16/17 usan `anio = anio_ref`. Cat 11 (recargos normales) SÍ se incluye en cartera. Siempre añadir `AND c.estado != 4` y `AND u.estado != 2` explícito en reportes de cartera. Implementado en `concentradocortecaja.php`, `concentradocortecajaresumen.php`, `carteravencida.php`, `listadeudores.php`. | Implementada |
| **R03** | **Semántica canónica de estados en `ligacargos` / `ligacargos_historico`** — `estado=0`: pendiente de cobro. `estado=1`: pagado (por `sp_pagar_cargo` o caja.php). `estado=-1`: cancelado canónico (por `sp_cancelar_cargo`, D7, Paso 8-B, saneamiento 10c). **`estado=2` NO EXISTE** como valor válido en ligacargos — era un bug en scripts previos; todos corregidos. `estado=-2`: legacy pre-2018 (≈68 registros históricos, solo lectura). `estado=-3`: legacy pre-2018 (≈166 registros históricos, solo lectura). Para cartera y deuda solo consultar `estado=0`. Toda cancelación produce `estado=-1` con `fpago=NOW()`. Documentado en `docs-dev/doc-estabilizacion/pase-a-prod/MIGRATION_PROTOCOL.md`. | Implementada |
| **R04** | **SQL dinámico desde catálogo** — `concentradocortecaja.php` y `concentradocortecajaresumen.php` construyen sus CASE/COUNT dinámicamente desde `SELECT id, nombre, nombrecorto FROM categorias ORDER BY id`. Esto asegura que las categorías 19–22 (V2) estén incluidas automáticamente sin hardcoding. Nunca hardcodear IDs de categoría en los reportes de caja; leer siempre desde el catálogo. | Implementada |
| **R05** | **Conteo de folios en caja** — Un folio puede cubrir múltiples contratos del mismo usuario. El contador por columna en `concentradocortecaja.php` usa `$folios_c[$cid][$folio] = true` (array-set) para contar folios únicos, no filas del GROUP BY. El total al pie usa `COUNT(DISTINCT folio)`. Ambos deben coincidir con los `(n=X)` de `concentradocortecajaresumen.php`. Verificado $0 diferencia en 5 períodos 2024-2026. | Implementada |
| **R06** | **C.N.L. (Cartera No Localizada, `u.estado=2`) excluida de reportes financieros** — Usuarios con `estado=2` (NO LOCALIZADO) y sus cargos de cartera se excluyen de todos los reportes: `concentradocortecaja.php` (columna eliminada, `u.estado != 2` en R.CART), `concentradocortecajaresumen.php` (línea eliminada, `u.estado != 2` en cartera), `carteravencida.php` (segmentación eliminada, tabla unificada). En `concentradocortecaja.php` queda solo la definición en el Glosario de Conceptos como referencia informativa. En Host C actualmente no existen usuarios con `estado=2`, por lo que el impacto numérico es $0. | Implementada |
| **R07** | **Parámetros URL de reportes de caja** — `concentradocortecaja.php`: `inicio` (DD/MM/AAAA), `fin` (DD/MM/AAAA), `anio_corte` (opcional, override de año de ciclo). `concentradocortecajaresumen.php`: ídem + `existencia_anterior` (requerido). `anio_corte` solo es necesario cuando `inicio` y `fin` son de años distintos (período que cruza cambio de año); sin él el PHP usa `anio_i` como default (correcto para todos los períodos reales del sistema). El modal HTML en `listados.php` / `paxscript.js` muestra el campo `anio_corte` condicionalmente y con nota explicativa. `carteravencida.php`: solo `anio` (default = año actual). | Implementada |

---

## 🔍 Bitácora de Descubrimiento (Pendientes de Validar)
Espacio para anotar comportamientos detectados en el código legado o procedimientos manuales que deben formalizarse como reglas:
1.  **[D001]**: Investigar el trigger exacto de `calcula_recargos.php` para definir la fecha de corte mensual.
2.  **[D002]**: Validar la lógica de "Metros Lineales" y su impacto en la deuda histórica.
3.  **[D003]**: Determinar si existen descuentos automáticos por "Pronto Pago" no documentados.

---

---

**Nota para todos los agentes IA (Claude Code y Antigravity/Gemini)**: Al explorar el código, si descubres una nueva restricción o lógica condicional, agrégala aquí con un ID incremental y su módulo correspondiente.
