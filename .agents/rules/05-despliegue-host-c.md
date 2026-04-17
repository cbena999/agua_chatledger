# Regla 05: Despliegue y Automatización (Host C)

Reglas para la migración e implementación de mejoras en el ambiente **Host C** (MariaDB 10.4.27 / XAMPP 7.4.33).

---

## Estado Actual (2026-04-14) — Host C UP & RUNNING ✓ — Pipeline COMPLETO, CORRECTO Y VERIFICADO

La migración está **completada, consolidada y declarada verificada**. Host C tiene:
- BD `awa` con schema v2 completo (17 tablas InnoDB, utf8mb4, FKs, SPs, 3 vistas)
- `ligacargos` split: activa ≥2026 + `ligacargos_historico` ≤2025
- Webapp `feature/upgrade-v2-win-xampp` adaptada al schema v2 — reportes de caja y cartera homologados
- Scripts de setup versionados: `docs-dev/migration-aguav2/host-c-setup/` (01–12, incluye validador)
- Script rollback completo: `host-c-setup/08_rollback.sql`
- `tusuario` eliminada de BD y de todos los scripts (tabla fantasma — no usada por PHP)
- Pipeline de saneamiento integrado y automatizado en `run_sync.sh` (Paso 8)
- Protocolo de migración documentado: `docs-dev/migration-aguav2/MIGRATION_PROTOCOL.md`
- Declaración de homologación reportes: `docs-dev/doc-estabilizacion/REPORTES_CAJA_CARTERA_DECLARACION.md`
- **Terminología de Sesión**: Este conjunto de documentos constituye el **Ground Truth (para Claude)** y el **Runbook (para Gemini)**.

### Pipelines probados (ejecución de referencia: 2026-04-14 — BD Host C regenerada desde cero)
- **B→A**: ejecutado y validado — 8 pasos OK
- **A→C**: ejecutado y validado — 9 pasos (incluyendo Paso 8-B nuevo) + 7/7 checks de integridad OK

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

### Paso 1 — Sync B → A (script existente)
```bash
cd docs-dev/migration-aguav2/syncawa_hostb_to_hosta/
./run_sync.sh
```

### Paso 2 — Sync A → C (pipeline)
```bash
cd docs-dev/migration-aguav2/sync_hosta_to_hostc/
./run_sync.sh
```

El protocolo A→C aplica automáticamente:
- `cambios`: importa con columnas explícitas (C tiene `id` AUTO_INCREMENT col 1)
- `ligacargos.idpago_vinc`: convierte `''` → `NULL` (C usa `int NULL`)
- `ligacargos.fcobro/fpago`: trunca datetime → date
- `egresos.id_categoria`: inserta `NULL` (columna no existe en A)
- Ejecuta `06_split_ligacargos.sql`: **Particionamiento de Migración** (idempotente vía TRUNCATE) — mueve registros `anio ≤ 2025` a la tabla histórica para aplicar el schema V2 de tablas divididas.

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

## Split `ligacargos` — Implementado

| Tabla | Criterio | Filas aprox |
|-------|---------|-------------|
| `ligacargos` (activa) | `anio >= 2026` | ~2,607 |
| `ligacargos_historico` | `anio <= 2025` | ~191,906 |

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
2. Actualización de `08_rollback.sql`
3. Actualizar la tabla de diferencias de schema arriba

**Para revertir toda la migración**:
```bash
mysql -u root -pcomite_2026 -h 192.168.1.128 awa < host-c-setup/08_rollback.sql
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

1. **Sin flag (Default)**:
   - Preserva la estructura actual de Host C.
   - Solo refresca los datos (B → A → C). Es el flujo más rápido y seguro para el ciclo diario.
2. **Con flag `--setup`**:
   - Realiza un `DROP` y recreación total del esquema V2 en Host C antes de iniciar la carga de datos.
   - Uso: Simulaciones de "Setup Producción" o desastre en la BD del Host C.

---

### Regla de Simulación de Producción (`Setup-Full-C`)
Cuando el usuario solicite un **"Case: Setup Full C"** o similar, se asume un escenario de despliegue limpio:
1. Se invoca el orquestador `run_setup.sh`.
2. El script realiza el `DROP DATABASE IF EXISTS awa;` y recrea el esquema V2 completo (tablas, catálogos, vistas, SPs, validador) antes de cualquier carga.

---
**Notas para Agentes IA (Claude/Gemini)**:
- Al recibir instrucción de "refrescar Host C" o "sync producción→C", el flujo es SIEMPRE B→A→C (dos scripts separados). Nunca B→C directo.
- Usar los comandos orquestadores definidos en la tabla anterior para asegurar consistencia.
