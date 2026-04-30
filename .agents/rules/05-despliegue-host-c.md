# Regla 05: Despliegue y Automatización (Host C)

Reglas para la migración e implementación de mejoras en el ambiente **Host C** (MariaDB 10.4.27 / XAMPP 7.4.33).

---

## Estado Actual (2026-04-14) — Host C UP & RUNNING ✓ — Pipeline COMPLETO, CORRECTO Y VERIFICADO

La migración está **completada, consolidada y declarada verificada**. Host C tiene:
- BD `awa` con schema v2 completo (17 tablas InnoDB, utf8mb4, FKs, SPs, 3 vistas)
- `ligacargos` split: activa ≥2026 + `ligacargos_historico` ≤2025
- Webapp `feature/upgrade-v2-win-xampp` adaptada al schema v2 — reportes de caja y cartera homologados
- Scripts de setup versionados: `docs-dev/migration-aguav2/host-c-setup/` (02→09, manual/)
- `tusuario` eliminada de BD y de todos los scripts (tabla fantasma — no usada por PHP)
- Pipeline de saneamiento integrado y automatizado en `run_sync.sh` (Paso 8)
- Protocolo de migración documentado: `docs-dev/doc-estabilizacion/pase-a-prod/MIGRATION_PROTOCOL.md`
- Declaración de homologación reportes: `docs-dev/doc-estabilizacion/encuadres/REPORTES_CAJA_CARTERA_DECLARACION.md`
- **Terminología de Sesión**: Este conjunto de documentos constituye el **Ground Truth (para Claude)** y el **Runbook (para Gemini)**.

### Pipelines probados (ejecución de referencia: 2026-04-14; última validación: 2026-04-18)
- **B→A**: ejecutado y validado — 8 pasos OK
- **A→C**: ejecutado y validado — Pasos 1–8 → 8-C → 8-B → 9 + 7/7 checks OK
- **Retención de artefactos**: 2 logs + 2 backups por pipeline (rotación automática en cada ejecución)

---

## Propósito del Host C

Ambiente **Target V2 FINAL** — esquema optimizado (MariaDB), split histórico de ligacargos, FKs/SPs/vistas nuevas. Host C es el destino final de la migración y la referencia de producción V2.

---

## Estrategia de Refresh de Datos (B → A → C)

El refresh de datos hacia el Target V2 **siempre** sigue esta ruta de transformación:

```
Host B (Legado V1) → Host A (Transición V1+) → Host C (Destino V2)
```

**Por qué no B→C directo**: el schema de B (v1) es incompatible con C (v2). Host A actúa como la capa de transformación Bridge (limpieza y normalización V1+). El salto a V2 ocurre en el paso A→C vía el split de tablas.

### Comando canónico (orquestador maestro)
```bash
cd docs-dev/migration-aguav2/
./Full-Pipeline-Sync.sh                    # Producción: B→A→C (datos vienen de Host B)
./Full-Pipeline-Sync.sh --skip-b           # Offline: salta volcado de B, usa A tal como está → C
./Full-Pipeline-Sync.sh --with-qa          # Testing: B→A→C + inyecta datos sintéticos en A→C
./Full-Pipeline-Sync.sh --with-qa --skip-b # Testing offline: sin conectar a Host B
# Cualquier otra flag causa exit 1 con "Flag desconocida: X"
```

Los scripts individuales siguen disponibles para uso aislado de emergencia (ver tabla de comandos en esta misma regla).

El protocolo A→C aplica automáticamente:
- `cambios`: importa con columnas explícitas (C tiene `id` AUTO_INCREMENT col 1)
- `ligacargos.idpago_vinc`: convierte `''` → `NULL` (C usa `int NULL`)
- `ligacargos.fcobro/fpago`: trunca datetime → date
- `egresos.id_categoria`: inserta `NULL` (columna no existe en A)
- Ejecuta `06_split_ligacargos.sql`: **Particionamiento de Migración** (idempotente vía TRUNCATE) — mueve registros `anio ≤ 2025` a la tabla histórica para aplicar el schema V2 de tablas divididas. Incluye `INSERT INTO cambios` con métricas del split (Paso 5 — agregado 2026-04-18).
- Ejecuta `10c_saneamiento_duplicados.sql`: consolida usuarios duplicados reales Martín (751→750) y Zenón (1590→1057). Incluye `INSERT INTO cambios` de trazabilidad (agregado 2026-04-18).

---

## 🛉 Filosofía de Uso: Herramientas de Migración vs Operación

Estos scripts son **Herramientas de Migración y Transición** diseñadas para el ciclo de desarrollo del proyecto. NO son procesos operativos de la aplicación.

| Fase | Actividad | Estado de Scripts |
|------|-----------|------------------|
| **Desarrollo** (actual) | Ejecutar iterativamente para estabilizar Host C. | ✅ Activos |
| **Go-Live** | Ejecución **única** con datos reales de producción. | ✅ Ejecución final |
| **Post Go-Live** | Host C es fuente de verdad autónoma. | ⛔ Retirados |

> Una vez en producción real, Host C **no recibe más sincronizaciones externas**. No existe un proceso "nocturno" ni programado. El particionamiento de tablas se hizo **una sola vez** durante la migración.

---

## Configuración Portable (XAMPP 7.4.33)

- **Modo**: XAMPP portable en `F:\xampp` — sin servicios Windows.
- **Directorio webapp**: `F:\xampp\htdocs\agua`
- **Rama git**: `feature/upgrade-v2-win-xampp`

---

## DML del Pipeline — Inventario (2026-04-18)

| Script | DML | Tabla(s) afectada(s) | Registra en `cambios` |
|---|---|---|:---:|
| `10_pipeline_saneamiento.sql` | UPDATE×6, REPLACE×2 | ligacargos, ligacargos_historico, egresos, categorias, categorias_egresos | ✅ 1 cabecera global |
| `10b_saneamiento_exencion_recargos.sql` | UPDATE | ligacargos (estado→-1) | ✅ 1 por contrato afectado |
| `10c_saneamiento_duplicados.sql` | UPDATE×3 | contrato, usuario | ✅ 1 cabecera global |
| `06_split_ligacargos.sql` | INSERT + **DELETE** | ligacargos_historico, ligacargos | ✅ 1 cabecera global |
| `run_sync.sh` Paso 6 (SDF) | UPDATE | ligacargos (contratos estado=4) | ✅ 1 cabecera global |

> ⚠️ **Único DELETE del pipeline**: `06_split_ligacargos.sql` Paso 3 — `DELETE FROM ligacargos WHERE anio < YEAR(NOW())`. Es seguro: los registros ya fueron copiados a `ligacargos_historico` en el Paso 1 del mismo script.

---

## Split `ligacargos` — Implementado

| Tabla | Criterio | Filas (ref. 2026-04-17) |
|-------|---------|-------------|
| `ligacargos` (activa) | `anio >= 2026` | 4,993 |
| `ligacargos_historico` | `anio <= 2025` | 193,040 |

Las vistas `vw_ligacargos_all` y `vw_ligacargos_pendientes` unifican ambas tablas. Los PHPs no consultan `ligacargos_historico` directamente.

> **CRÍTICO para nuevos PHPs**: Todo SELECT sobre `ligacargos` debe usar `vw_ligacargos_all` (todos) o `vw_ligacargos_pendientes` (estado=0). Los UPDATE masivos de cargos pendientes deben ejecutarse en **ambas** tablas: `ligacargos` y `ligacargos_historico`. Ver regla completa en [skill-database-evolution/SKILL.md](./../skills/skill-database-evolution/SKILL.md#3-regla-crítica--consultas-php-sobre-ligacargos-en-host-c).
>
> Bugs corregidos el 2026-04-07 (commit `bd1cb2f`): `listadeudores.php`, `carteravencida.php`, `concentradocortecajaresumen.php`, `cargos.php`, `genera_csv.php`.

---

## Regla: PHPs en `feature` son exclusivos para Host C

> **CRÍTICO — No compatibilizar con Host A.**
> Todo el código PHP en la rama `feature/upgrade-v2-win-xampp` tiene como **único target Host C**.
> Host A es un Bridge V1+ intencional con schema diferente — los PHPs que corren en esta rama
> usan objetos de BD que **solo existen en Host C** (vistas, SPs, `ligacargos.id`, `cambios.id`).
> **Nunca degradar código para hacerlo compatible con Host A** — si algo falla en Host A
> es esperado; si falla en Host C es un bug real.
>
> Patrón correcto para `ligacargos`: usar `WHERE id = $id_cargo` (Host C tiene PK `id`).
> Patrón correcto para `cambios`: usar `ORDER BY id DESC` (Host C tiene PK `id`).
> Patrón correcto para `cambios` INSERT: usar `NOW()` (Host C tiene PK `id` AUTO_INCREMENT — sin riesgo de colisión).

---

## Diferencias de Schema A (v1+) vs C (v2)

| Tabla | Columna | Host A | Host C |
|-------|---------|--------|--------|
| `cambios` | `id` | no existe | `int AUTO_INCREMENT` col 1 |
| `ligacargos` | PK | composite `(numcontrato,leyenda,repetido)` | `id AUTO_INCREMENT` |
| `ligacargos` | `idpago_vinc` | `varchar('')` | `int NULL` |
| `ligacargos` | `fcobro`/`fpago` | `datetime` | `date` |
| `ligacargos` | `monto`/`recargo` | `float`/`int` | `decimal(10,2)` |
| `egresos` | `id_categoria` | no existe | `int NULL` (FK→categorias_egresos, ON DELETE SET NULL) |
| `contrato_toma` | tabla | calculada post-sync B→A | nativa con FKs |
| `folios_recibo` | tabla | no existe | nueva — AUTO_INCREMENT para folios |
| `tusuario` | tabla | existe (sin uso) | **eliminada** — ningún PHP la consulta |

---

## Rollback

Cualquier cambio estructural en Host C requiere:
1. Script versionado en `host-c-setup/`
2. Actualizar la tabla de diferencias de schema arriba

**Para revertir toda la migración** (reconstrucción desde cero):
```bash
cd docs-dev/migration-aguav2/
./Full-Pipeline-Sync.sh        # Reconstruye C completo (DROP implícito) y repuebla datos
# O si solo se quiere reconstruir el schema sin datos:
cd host-c-setup/
./run_setup.sh
```

---

### 🚀 Scripts de Inicio de Flujos

Para estandarizar y facilitar las ejecuciones durante el desarrollo, se han definido scripts **orquestadores** que encapsulan toda la lógica validada. A continuación las rutas exactas según el Runbook (GEMINI) / Ground Truth (CLAUDE):

**Formalización de Comandos Canónicos**:
- **Setup-Full-C**: Reconstrucción total (con DROP) — simulación de pase a producción.
- **Sync-B2A**: Refresco de datos operativos desde el espejo (B) hacia Desarrollo (A).
- **Sync-A2C**: Particionamiento y migración de datos desde Host A al Target V2 (C).
- **Full-Pipeline-Sync**: Orquestador maestro B → A → C.

| Comando | Script a Ejecutar | Acción |
| :--- | :--- | :--- |
| **`Setup-Full-C`** | `docs-dev/migration-aguav2/host-c-setup/run_setup.sh` | Simulación de pase a producción desde cero en Host C. |
| **`Sync-B2A`** | `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/run_sync.sh` | Refresco de datos operativos desde el espejo (B) hacia Desarrollo (A). |
| **`Sync-A2C`** | `docs-dev/migration-aguav2/sync_hosta_to_hostc/run_sync.sh` | Migración y transformación de datos desde Host A hacia el Target V2 (C). |
| **`Full-Pipeline-Sync`** | `docs-dev/migration-aguav2/Full-Pipeline-Sync.sh` | Orquestador Maestro: cadena completa B → A → C. |

---

### 🛠️ Comportamiento de `Full-Pipeline-Sync.sh`

El script **siempre ejecuta `DROP DATABASE` en Host C** (vía `run_setup.sh`). No hay modo que lo omita. Los flags solo controlan fuente de datos y datos de prueba:

| Flag | B→A | Setup C (DROP) | A→C | Datos QA (9001–9008) |
|------|:---:|:---:|:---:|:---:|
| *(sin flag)* | ✅ | ✅ | ✅ | ❌ |
| `--skip-b` | SALTADO | ✅ | ✅ | ❌ |
| `--with-qa` | ✅ | ✅ | ✅ | ✅ inyecta en A→C |
| `--with-qa --skip-b` | SALTADO | ✅ | ✅ | ✅ inyecta en A→C |

> El DROP DATABASE en Host C **siempre ocurre** en todos los modos, sin excepción.
> La inyección QA (Contratos Mártires 9001–9008) ocurre como pre-condición al inicio de `run_sync.sh` A→C, no afecta el pipeline B→A.

> **Importante para agentes IA**: No existe flag `--setup`. El DROP es incondicional y está documentado en el log `setup_YYYYMMDD_HHMMSS.log` dentro de `sync_hosta_to_hostc/logs/`.

---

### Regla de Simulación de Producción (`Setup-Full-C`)
Cuando el usuario solicite un **"Case: Setup Full C"** o similar, se asume un escenario de despliegue limpio:
1. Se invoca el orquestador `run_setup.sh`.
2. El script realiza el `DROP DATABASE IF EXISTS awa;` y recrea el esquema V2 completo (tablas, catálogos, vistas, SPs, validador) antes de cualquier carga.

---
**Notas para Agentes IA (Claude/Gemini)**:
- Al recibir instrucción de "refrescar Host C" o "sync producción→C", el flujo es SIEMPRE B→A→C (dos scripts separados). Nunca B→C directo.
- Usar los comandos orquestadores definidos en la tabla anterior para asegurar consistencia.
