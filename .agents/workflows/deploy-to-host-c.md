---
description: Refresh de datos y despliegue de cambios en Host C (v2 MariaDB)
---

Este workflow cubre dos escenarios para Host C:
1. **Refresh de datos** — traer datos frescos de producción hacia Host C
2. **Despliegue de cambios de schema/PHP** — aplicar mejoras nuevas en Host C

> [!IMPORTANT]
> Host C ya tiene schema v2 completo y webapp adaptada (estado: UP & RUNNING desde 2026-04-06).
> Ambos pipelines validados en ejecución real (2026-04-07): Proceso 1 y Proceso 2 — 7/7 checks OK.
> Ver [Regla 05](./../rules/05-despliegue-host-c.md) para diferencias de schema A vs C y comandos canónicos (Sync-A2C).
> `tusuario` eliminada de BD y scripts — tabla fantasma no usada por la webapp.

---

## Escenario 1: Refresh de Datos de Producción → Host C

**Flujo obligatorio**: B → A → C (nunca B→C directo — schemas incompatibles).

### Paso 1 — Sync B → A
```bash
cd docs-dev/migration-aguav2/syncawa_hostb_to_hosta/
./run_sync.sh
```
Esperar que complete con éxito (≈32 segundos). Verificar log final sin errores.

### Paso 2 — Sync A → C (Comando canónico: Sync-A2C)
```bash
cd docs-dev/migration-aguav2/sync_hosta_to_hostc/
./run_sync.sh
```

El pipeline A→C ejecuta automáticamente:

| Paso | Acción |
| :---: | :--- |
| 1 | Verifica conectividad A y C |
| 2 | Backup comprimido de Host C (`backups/backup_host_c_*.sql.gz`) |
| 3 | Dump desde Host A con transformaciones (idpago_vinc, fechas) |
| 4 | Vacía tablas de negocio en C (FK-safe) |
| 5 | Importa datos con transformaciones de schema v1+→v2 |
| 6 | Re-ejecuta split `ligacargos` (TRUNCATE historico + re-split) |
| 7 | Validaciones finales (`05_validate.sql`) |

### Configuración del sync A→C
Editar `sync_hosta_to_hostc/sync_config.sh` para actualizar conteos esperados tras cada sync exitoso.

---

## Escenario 2: Despliegue de Cambios de Schema en Host C

Para cualquier cambio estructural nuevo en la BD de Host C:

1. Desarrollar y validar el cambio en Host A (`main`)
2. Crear script numerado en `docs-dev/migration-aguav2/host-c-setup/`
3. Actualizar `08_rollback.sql` con el DROP/REVERT correspondiente
4. Ejecutar en Host C:
   ```bash
   mysql -u root -pcomite_2026 -h 192.168.1.128 awa < host-c-setup/NN_nuevo_cambio.sql
   ```
5. Actualizar la tabla de diferencias en [Regla 05](./../rules/05-despliegue-host-c.md)

Para cambios PHP:
1. Desarrollar en rama `feature/upgrade-v2-win-xampp`
2. Commit y push al remoto
3. En Host C: `git pull origin feature/upgrade-v2-win-xampp`

---

## Scripts de Setup Iniciales (referencia)

En caso de necesitar re-crear Host C desde cero:

```bash
# Ejecutar en orden en Host C
mysql -u root -pcomite_2026 awa < host-c-setup/01_create_database.sql
mysql -u root -pcomite_2026 awa < host-c-setup/02_schema_tablas_base.sql
mysql -u root -pcomite_2026 awa < host-c-setup/03_config_datos_catalogo.sql
mysql -u root -pcomite_2026 awa < host-c-setup/04_views.sql
mysql -u root -pcomite_2026 awa < host-c-setup/05_stored_procedures.sql
# Transferir datos desde Host A (ver 07_transferir_datos.md)
mysql -u root -pcomite_2026 awa < host-c-setup/06_split_ligacargos.sql
```

Rollback completo:
```bash
mysql -u root -pcomite_2026 awa < host-c-setup/08_rollback.sql
```

---

## Logs y Evidencia (sync A→C)

- `sync_hosta_to_hostc/logs/sync_YYYYMMDD_HHMMSS.log`
- `sync_hosta_to_hostc/backups/backup_host_c_*.sql.gz` (máx. 5)

---
**Nota para Gemini**: Antes de proponer cualquier cambio en Host C, verificar si ya existe un script en `host-c-setup/` que lo cubra. El rollback en `08_rollback.sql` debe mantenerse actualizado siempre.
