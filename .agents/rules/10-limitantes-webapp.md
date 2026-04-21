# Regla 10: Limitantes Conocidas de la Webapp

Inventario de comportamientos **intencionales, conocidos o teóricos** que no son bugs
sino decisiones de diseño o restricciones de la plataforma.
Clasificados por módulo funcional y nivel de riesgo.

> Fuente: análisis exhaustivo de flujos realizado en sesión 2026-04-15 (contratos, cargos,
> recargos, pagos, tomas, nuevo contrato).  
> Complementa las reglas en `02-reglas-negocio.md`.

---

## 🔴 Gaps Operacionales (Comportamiento Intencional — Sin Auto-corrección)

### L01 — Cancelación Manual de Anualidad Deja Recargos Huérfanos
- **Módulo**: Cancelación de cargos (`pagacancelacargos()` en `cargos.php`, `sp_cancelar_cargo`)
- **Descripción**: Cuando un operador cancela manualmente una anualidad de agua o drenaje
  (`categoria IN (2, 3)`), sus recargos moratorios asociados (`categoria IN (16, 17)`)
  del mismo año-contrato **quedan en estado=0** (pendientes). No existe función automática
  que los cancele en cascada.
- **Por qué es intencional**: La cancelación manual requiere decisión explícita del operador
  sobre qué hacer con los recargos. Auto-cancelar recargos silenciosamente al cancelar la
  anualidad padre podría condonar deuda no autorizada.
- **Detección**: Dimensión 2 de `admin/reportes/auditoria_integridad_bd.php` ("Recargos Huérfanos")
  los detecta y permite descargar CSV para revisión.
- **Acción esperada del operador**: Después de cancelar la anualidad, revisar auditoría de BD
  y cancelar los recargos huérfanos manualmente si corresponde.
- **Riesgo si no se actúa**: Los recargos huérfanos inflan artificialmente la cartera vencida.

### L02 — Desconexión de Toma Deja Recargos Huérfanos
- **Módulo**: Cambio físico de toma (`cambiaEstadoConexion()` en `contratos.php`)
- **Descripción**: Cuando se desconecta físicamente una toma (agua o drenaje),
  `_sincronizaParidadFinanciera()` cancela la anualidad del año actual (`categoria 2 o 3`),
  pero los recargos moratorios ya generados para esa anualidad (`categoria 16 o 17`)
  **permanecen pendientes**.
- **Por qué es intencional**: La desconexión física no implica condonación de deuda histórica.
  El operador debe decidir si los recargos previos se perdonan o se cobran.
- **Detección**: Misma dimensión 2 de `auditoria_integridad_bd.php`.
- **Diferencia con L01**: Aquí la anualidad fue cancelada por sistema (automático); en L01
  fue cancelada por decisión manual del operador.

---

## 🟡 Riesgos Latentes (Teóricos — No Aplican en Condiciones Normales)

### L03 — Race Condition Teórica: `calcula_recargos()` Durante Transición de Estado
- **Módulo**: Facturación (`calcula_recargos()` en `cargos.php`) + Contratos (`contratos.php`)
- **Descripción**: Si `calcula_recargos()` se ejecuta concurrentemente justo mientras un
  contrato transiciona de estado `2→1`, podría no generar los recargos del año actual
  (porque al momento de ejecutar, el contrato aún figuraba en estado 2 y el guard aborta).
  Una vez completada la transición, `_sincronizaParidadFinanciera()` restaura la anualidad
  pero los recargos no se regenerarían automáticamente.
- **Severidad real**: **Nula en condiciones normales** — el sistema opera en entorno
  mono-usuario (cliente único, sin concurrencia real).
- **Patrón**: Mismo patrón estructural que el bug corregido (amnistía antes de paridad),
  pero en sentido inverso y sin transacción atómica.
- **Mitigación si se vuelve multi-usuario**: Envolver el bloque de cambio de estado en
  `START TRANSACTION / COMMIT` en MySQL y agregar `SELECT ... FOR UPDATE` sobre el contrato.

### L04 — Race Condition Teórica: `calcula_recargos()` Post-Amnistía Sin Transacción Atómica
- **Módulo**: Amnistía C06 (`_amnistiaRecargosHistoricos()` en `contratos.php`)
- **Descripción**: El flujo de reactivación 2→1 ejecuta paridad → amnistía en PHP sin
  una transacción MySQL explícita (`START TRANSACTION`). Si `calcula_recargos()` se invocara
  externamente justo después de que `_amnistiaRecargosHistoricos()` cancela los recargos
  históricos pero antes de que el cambio de estado se consolide en BD, podría regenerar
  recargos que la amnistía acaba de poner en `estado=-1`.
- **Severidad real**: **Nula** — no hay proceso externo que invoque `calcula_recargos()`
  concurrentemente; es mono-usuario.
- **Nota histórica**: Este patrón ya ocurrió en forma no-concurrente (amnistía corría antes
  de paridad dentro del mismo request). Fue corregido en 2026-04-15 invirtiendo el orden.
- **Mitigación futura**: Si se agrega un cron/job que calcule recargos automáticamente,
  debe respetar un lock o ejecutarse solo en horarios sin sesiones activas.

---

## 🟠 Artefactos Históricos (Sin Impacto Financiero Real, Requieren Cuidado)

### L05 — Campo `recargo` en `ligacargos`: Decimal $0.00–$1.00 Sin Significado Monetario
- **Módulo**: Todas las tablas de cargos (`ligacargos`, `ligacargos_historico`)
- **Descripción**: El campo `recargo` en `ligacargos` almacena el valor del campo homónimo
  del catálogo `cargos` en el momento del INSERT. En el catálogo `cargos`, `recargo` es un
  **flag INT (0/1)**. Al copiarse a `ligacargos` se convierte en **DECIMAL**, resultando en
  `$0.00` o `$1.00`. En Host C vale `0.00` para la mayoría de registros; en datos migrados
  de Host A/B puede aparecer `1.00` como artefacto de migración.
- **Impacto financiero**: **Ninguno** — ningún reporte suma este campo como monto. Los
  reportes operativos, cortes de caja y cartera vencida usan `SUM(monto)` clasificado por
  `categoria`, nunca `SUM(recargo)`.
- **Trampa para agentes IA**: Ver los "$1.00" en este campo y confundirlos con una tarifa
  real o un recargo moratorio no documentado. **No es un cargo cobrable.**
- **Ver regla completa**: F05 en `02-reglas-negocio.md` — incluye lista de archivos corregidos
  y usos válidos del campo que NO deben tocarse.

---

## 🔵 Restricciones de Calendario y UI

### L06 — Suspensión Temporal Solo Disponible en Diciembre
- **Módulo**: Cambio de estado (`contratos.php`, `views/contratos/ficha.php`)
- **Descripción**: La transición hacia estado `2 (SUSPENSIÓN TEMPORAL)` está bloqueada en
  la UI fuera del mes de diciembre. El mensaje es: *"La Suspensión Temporal solo puede
  solicitarse en Diciembre."*
- **Por qué**: Regla administrativa del municipio — la suspensión temporal se tramita al
  cierre del año fiscal para exonerar el cargo del siguiente ejercicio.
- **Impacto en pruebas**: Al probar flujos de reactivación (2→1) fuera de diciembre, no es
  posible poner contratos en estado 2 desde la UI. Usar contratos que ya estén en estado 2
  en BD, o cambiar temporalmente la restricción de mes en código de prueba.

---

## 🟤 Ausencias de Atomicidad (Diseño Legado)

### L07 — Sin Transacción MySQL en Cambios de Estado
- **Módulo**: Cambio de estado (`contratos.php`, función principal de transición)
- **Descripción**: El bloque PHP que ejecuta cambio de estado (UPDATE contrato + paridad +
  amnistía + INSERT en cambios) no está envuelto en `START TRANSACTION / COMMIT / ROLLBACK`.
  Si ocurre un error a mitad del proceso (ej. paridad OK, amnistía falla por timeout de BD),
  el estado queda parcialmente actualizado sin posibilidad de rollback automático.
- **Severidad actual**: **Baja** — entorno controlado, sin timeouts habituales, mono-usuario.
- **Detección post-facto**: `auditoria_integridad_bd.php` detectaría el estado inconsistente
  como recargos huérfanos o anualidades duplicadas.
- **Recomendación a futuro**: Envolver en transacción explícita si se migra a entorno
  multi-usuario o se agrega procesamiento en batch.

---

## Matriz Resumen

| ID | Tipo | Módulo afectado | Detectado por | Severidad real |
|:---:|---|---|---|:---:|
| **L01** | Gap operacional intencional | Cancelación manual cargos | Auditoría BD dim.2 | Media |
| **L02** | Gap operacional intencional | Desconexión de toma | Auditoría BD dim.2 | Media |
| **L03** | Race condition teórica | `calcula_recargos` / transición estado | N/A | Nula (mono-user) |
| **L04** | Race condition teórica | Amnistía C06 / `calcula_recargos` | N/A | Nula (mono-user) |
| **L05** | Artefacto histórico decimal | `ligacargos` campo `recargo` | Revisión manual | Ninguna (no financiero) |
| **L06** | Restricción calendario UI | Cambio estado →2 | Error en UI | Baja (solo pruebas) |
| **L07** | Ausencia atomicidad | Bloque cambio de estado | Auditoría BD | Baja (mono-user) |
| **L08** | Fatal Error PHP 7.4 | Cualquier PHP con `$_SESSION['usuario']` como string | Error fatal en UI | **Alta — detiene ejecución** |
| **L09** | Link folio→recibo requiere sesión activa | `concentradocortecaja.php` columna FOLIO | Redirige a login | Baja (uso normal dentro de sesión) |

---

### L08 — `$_SESSION['usuario']` es Objeto `User`, NO un String — PHP 7.4 Fatal Error
- **Módulo**: Cualquier PHP que use `$_SESSION['usuario']` como string directamente
- **Descripción**: `$_SESSION['usuario']` almacena un objeto `User` (clase en `login/usuario.php`)
  con propiedades privadas y métodos `getId()`, `getNombre()`, `getClave()`, `getRol()`.
  En PHP 7.4, si la clase `User` **no está cargada** cuando se deserializa la sesión,
  PHP crea un `__PHP_Incomplete_Class`. Usar ese objeto como string causa **Fatal Error** inmediato.
  Incluso cuando la clase sí está cargada, el objeto no puede interpolarse como string.
- **Por qué ocurre en PHP 7.4 específicamente**: PHP 7.4 endureció el manejo de objetos
  incompletos — la conversión implícita a string que en versiones anteriores era silenciosa
  ahora lanza `Fatal error: Object could not be converted to string`.
- **Patrón incorrecto** (no usar):
  ```php
  // ❌ Fatal error si $_SESSION['usuario'] es objeto User
  $op = $_SESSION['usuario'];  // objeto, no string
  "INSERT ... '$op'";          // explota en interpolación
  ```
- **Patrón correcto** (usar siempre):
  ```php
  // ✅ Robusto ante objeto, string o clase incompleta
  $ses_u = isset($_SESSION['usuario']) ? $_SESSION['usuario'] : null;
  $operador = is_string($ses_u) && $ses_u !== ''
      ? $ses_u
      : (is_object($ses_u) && method_exists($ses_u, 'getNombre') ? $ses_u->getNombre() : 'cajero');
  ```
- **Para verificar rol**: usar `$_SESSION['usuario']->getRol()` — eso sí es correcto porque
  llama al getter, no convierte el objeto a string.
- **Archivos ya corregidos**: `includes/negocio/cargos.php:716`, `config/Conexion.php:118`
- **Acción para agentes IA**: Al escribir cualquier PHP que necesite el nombre del operador
  de sesión, usar siempre el patrón correcto de arriba. Nunca interpolar `$_SESSION['usuario']`
  directamente en un string SQL o de texto.

---

### L09 — Link a recibo en `concentradocortecaja.php` requiere sesión activa
- **Módulo**: `reportes/concentradocortecaja.php` — columna FOLIO
- **Descripción**: El número de folio en cada fila es un `<a href='recibo.php?folio=X' target='_blank'>`. `recibo.php` verifica `$_SESSION['usuario']` al inicio — si la sesión expiró o el link se abre desde un contexto sin sesión, redirige al login.
- **Por qué es intencional**: `recibo.php` es un documento oficial con datos de pago; requiere autenticación.
- **Impacto operativo**: Ninguno en uso normal (el reporte se genera dentro de la sesión activa).

---

**Nota para agentes IA**: Antes de proponer "auto-cancelar recargos en cascada" o "agregar
transacciones" como mejora, verificar esta tabla. Los gaps L01/L02 son **intencionales**.
Los riesgos L03/L04/L07 son **teóricos** en el entorno actual (mono-usuario, XAMPP local).
No resolver problemas que no existen en producción.
