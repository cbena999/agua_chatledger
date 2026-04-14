# Regla 03: Procedimiento de Sincronización de Datos (B -> A)

Reglas para transformar datos operativos del espejo legado (Host B) hacia el ambiente de TRANSICIÓN (Host A / V1+).

---

## 🗑️ Borrado Selectivo (Mandatario)
Al actualizar la BD en el Host A, se debe priorizar la limpieza de **"datos de negocio"** para evitar duplicidades o inconsistencias:
- **Borrar**: Pagos, cargos, movimientos, bitácoras operativas, adeudos y folios.
- **NUNCA Borrar**: Registros de tipo **Configuración**, **Diseño** o **Catálogos**. Esto incluye:
    - Calles (nombres de calles).
    - Tarifas base.
    - Configuraciones del sistema en General (`config_gral` u otras).
    - Mejoras en descripciones de catálogos realizadas en A.

---

## 📐 Adaptación Estructural (Estructura A)
- **Regla**: Los registros transportados de B deben **"mapearse"** a la estructura de Transición de A.
- **Mandato**: Host A mantiene el esquema de **tabla única** (`ligacargos`) para actuar como puente estable. El split histórico se reserva para el Host C.
- **Consistencia**: El post-procesamiento transforma campos V1 a V1+ (ej. `exento_recargo`, `batch_id`) asegurando integridad inmediata.

---

## 🔗 Integridad Referencial
Cualquier movimiento parcial de datos debe asegurar que las claves foráneas (`idusuario`, `idsuadmin`, `numcontrato`) sigan apuntando a registros válidos existentes en A, evitando **"registros huérfanos"**.

## 🗂️ Scripts de Sincronización (Implementación Real)

Los scripts que implementan este protocolo ya existen y fueron utilizados exitosamente. Están en:

```
docs-dev/migration-aguav2/syncawa_hostb_to_hosta/
```

| Script | Rol |
| :--- | :--- |
| `sync_config.sh` | **Config central** — único archivo a editar entre syncs (credenciales, listas de tablas, conteos esperados) |
| `run_sync.sh` | **Orquestador** — ejecuta el pipeline completo. Modos: `--pre-flight`, `--solo-validar`, `--solo-backup` |
| `00_pre_flight.sh` | Compara schemas A vs B, detecta drift de tablas y columnas sin modificar datos |
| `01_backup_host_a.sh` | Backup comprimido de Host A antes de cualquier modificación |
| ~~`02_dump_host_b.sh`~~ | **ELIMINADO** — absorbido por `run_sync.sh`. No recrear. |
| `03_sync_host_a.sql` | **Unificación y Saneamiento** — Única fuente de verdad para post-procesamiento V1+. Vacía tablas, importa y aplica D1-D7 (SDF V1+). |
| `04_recalc_contrato_toma` | Recalc de infraestructura (Transición V1+) |
| `05_validate.sql` | Valida conteos y consistencia referencial post-sync |

### Clasificación de Tablas (en `sync_config.sh`)
- **`TABLES_BUSINESS`**: Se reemplazan desde B — `usuario`, `contrato`, `ligacargos`, `notas`, `cambios`, `egresos`, `asamblea`, `cargos`
- **`TABLES_A_ONLY`**: Se preservan en A — `contrato_toma`, `config_sistema`
- **`TABLES_CATALOG`**: Se preservan en A — `categorias`, `firmantes`, `contrasenas`, `users`
- **`TABLES_IGNORE_IN_B`**: Existen en B pero eliminadas en A — `asistentes`, `recargos`, `ligacategorias`

### Columnas nuevas en A (no existen en B)
Al importar desde B, el post-procesamiento recalcula automáticamente:
- `contrato.exento_recargo_primer_anio` → `1` si `YEAR(fecha) = año actual`
- `cargos.monto_comercial` → `monto * 2` para categorías 2/3 automáticas
- `ligacargos.idpago_vinc` → `''` donde sea NULL

### Comando de Uso
```bash
cd docs-dev/migration-aguav2/syncawa_hostb_to_hosta/
./run_sync.sh               # Sync completo
./run_sync.sh --pre-flight  # Solo comparar schemas (seguro, sin modificar)
./run_sync.sh --solo-backup # Solo backup de A
```

---
**Nota para Gemini**: Al recibir la instrucción de "refrescar datos" o "importar producción", este es el protocolo de seguridad obligatorio. Los scripts ya existen — referenciarlos antes de proponer pasos manuales.


