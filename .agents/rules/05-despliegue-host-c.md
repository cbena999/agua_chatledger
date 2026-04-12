# Regla 05: Despliegue y Automatización (Host C)

Reglas para la migración e implementación de mejoras en el ambiente **Host C** (MariaDB 10.4.27 / XAMPP 7.4.33).

---

## Estado Actual (2026-04-07) — Host C UP & RUNNING ✓ — Procesos validados

La migración inicial está **completada y ambos pipelines probados en ejecución real**. Host C tiene:
- BD `awa` con schema v2 completo (17 tablas InnoDB, utf8mb4, FKs, SPs, 3 vistas)
- `ligacargos` split: activa ≥2026 (~2,607 filas) + `ligacargos_historico` ≤2025 (~191,906 filas)
- Webapp `feature/upgrade-v2-win-xampp` adaptada al schema v2
- Scripts de setup versionados: `docs-dev/migration-stack2/win10_aguav2/host-c-setup/` (01–08)
- Script rollback completo: `host-c-setup/08_rollback.sql`
- `tusuario` eliminada de BD y de todos los scripts (tabla fantasma — no usada por PHP)

### Pipelines probados (2026-04-07)
- **Proceso 1 (A→C)**: ejecutado y validado — 7/7 checks OK, 25 seg
- **Proceso 2 (setup desde cero + carga)**: simulado completo — scripts 01–05 + sync + split + validaciones 7/7 OK

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
cd docs-dev/migration-stack2/win10_aguav2/syncawa_hostb_to_hosta/
./run_sync.sh
```

### Paso 2 — Sync A → C (pipeline)
```bash
cd docs-dev/migration-stack2/win10_aguav2/sync_hosta_to_hostc/
./run_sync.sh
```

El pipeline A→C aplica automáticamente:
- `cambios`: importa con columnas explícitas (C tiene `id` AUTO_INCREMENT col 1)
- `ligacargos.idpago_vinc`: convierte `''` → `NULL` (C usa `int NULL`)
- `ligacargos.fcobro/fpago`: trunca datetime → date
- `egresos.id_categoria`: inserta `NULL` (columna no existe en A)
- Re-ejecuta `06_split_ligacargos.sql` (idempotente vía TRUNCATE)

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
**Nota para Gemini**: Al recibir instrucción de "refrescar Host C" o "sync producción→C", el flujo es SIEMPRE B→A→C (dos scripts separados). Nunca B→C directo.
