---
description: Sincronización de Datos Frescos de Negocio (Host B → Host A)
---

Este workflow describe el proceso seguro de refresco de datos operativos desde el espejo de producción (Host B / Win 7) hacia el ambiente de desarrollo (Host A / Ubuntu 22).

> [!IMPORTANT]
> Los scripts están implementados y fueron utilizados exitosamente.
> Directorio: `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/`
> Consultar [Regla 03](./../rules/03-sincronizacion-b-a.md) para el protocolo completo y comando Sync-B2A.

---

### Pipeline de 8 Pasos (Comando canónico: Sync-B2A)

```bash
cd docs-dev/migration-aguav2/syncawa_hostb_to_hosta/

# Opcional pero recomendado antes de un sync:
./run_sync.sh --pre-flight   # Detecta drift de schemas A vs B sin modificar datos

# Sync completo:
./run_sync.sh
```

El orquestador `run_sync.sh` ejecuta automáticamente:

| Paso | Script | Acción |
| :---: | :--- | :--- |
| 1 | `run_sync.sh` | Verifica conectividad A y B |
| 2 | `01_backup_host_a.sh` | Backup comprimido de A (guardado en `backups/`) |
| 3 | Inline | Dump de tablas de negocio desde B → `work/*.sql` |
| 4 | Inline | Vacía tablas de negocio en A (FK-safe, preserva catálogos) |
| 5 | Inline | Importa `work/*.sql` en A (orden FK-safe) |
| 6 | Inline | Post-procesa campos nuevos de A (`exento_recargo`, `monto_comercial`, `idpago_vinc`) |
| 7 | `04_recalc_contrato_toma.sql` | Recalcula `contrato_toma` (tabla solo-A) |
| 8 | `05_validate.sql` | Valida conteos y consistencia referencial |

---

## Antes de Cada Sync — Revisar `sync_config.sh`

`sync_config.sh` es el **único archivo a editar** entre syncs. Verificar:

1. **Credenciales** de Host A y B actualizadas
2. **`TABLES_BUSINESS`** — ¿hay tablas nuevas de negocio que deban venir de B?
3. **`TABLES_A_ONLY`** — ¿hay tablas nuevas creadas en A que no deben tocarse?
4. **`EXPECTED_*`** — actualizar conteos de referencia tras cada sync exitoso

---

## Logs y Evidencia

Cada ejecución genera:
- `logs/sync_YYYYMMDD_HHMMSS.log` — log completo del pipeline
- `backups/backup_host_a_YYYYMMDD_HHMMSS.sql.gz` — backup de A (máx. 5 conservados)
- `work/conteos_b_YYYYMMDD_HHMMSS.txt` — conteos de referencia de B

---

## Rollback Manual

Si el sync produjo inconsistencias:
```bash
gunzip -c backups/backup_host_a_TIMESTAMP.sql.gz | /opt/lampp/bin/mysql -u root -p awa
```

---

## Continuar hacia Host C

Si el objetivo es también refrescar Host C, ejecutar después:
```bash
cd ../migration-aguav2/sync_hosta_to_hostc/
./run_sync.sh
```
Ver workflow [deploy-to-host-c.md](deploy-to-host-c.md) para detalles sobre el comando Sync-A2C.
