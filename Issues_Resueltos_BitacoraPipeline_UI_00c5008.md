# Issues Resueltos — Sesión 2026-04-18
**Conversación:** `sesión-bitacora-pipeline-ui-00c5008`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Limpieza de menú Configuración y Saneamiento

### Scope Funcional
- Eliminado el ítem "Limpieza de Bitácora" (`mantenimiento_bitacora.php`) del menú Configuración y Saneamiento.
- Simplificado el texto del home: eliminado "Sistema de recaudación para el servicio del" — queda solo "Sistema de Agua Potable y Alcantarillado de la Colonia del Maestro".
- El ícono ⚙ recupera su acción `configuracion()` original; se agrega label `V2.0.0` a su derecha como link minimalista al home (`index2.php`), con `!important` para anular el `background:#8cdcda` de `#clutter a` en `paxstyle2.css`.

### Scope Técnico
- `index2.php`: nuevo estilo `.version-tag` con `!important` en todas las propiedades; `<li>` del engranaje contiene dos `<a>` en línea.
- `views/sistema/configuracion.php`: bloque `Limpieza de Bitácora` eliminado.

---

## Issue 2 — Nueva página Bitácora de Saneamiento Automático

### Scope Funcional
Página nueva `admin/saneamiento/bitacora_pipeline.php` que muestra todos los saneamientos DML ejecutados por `Full-Pipeline-Sync.sh`, clasificados en 5 secciones con métricas y detalle antes/después expandible.

### Scope Técnico — 5 secciones y sus fuentes

| Sección | Script origen | Tabla `cambios` | DML cubiertos |
|---|---|---|---|
| 🔄 Pipeline General | `10_pipeline_saneamiento.sql` Paso 4 | `descripcion = 'Pipeline saneamiento post-sync ejecutado'` | UPDATE ligacargos×2, UPDATE ligacargos_historico×4, UPDATE/REPLACE egresos/categorias, INSERT cambios |
| 🎫 Exención Recargos 1er Año | `10b_saneamiento_exencion_recargos.sql` Paso 3 | `descripcion = 'Saneamiento Exencion Recargos 1er Año'` | UPDATE ligacargos (estado→-1), INSERT cambios por contrato |
| 🚫 SDF Masivo | `run_sync.sh` Paso 6 | `descripcion LIKE '%Saneamiento Automático SDF%'` | UPDATE ligacargos (contratos estado=4), INSERT cambios cabecera |
| 👥 Duplicados Martín/Zenón | `10c_saneamiento_duplicados.sql` | `descripcion = 'Saneamiento Duplicados Reales ejecutado'` | UPDATE contrato (554: 751→750), UPDATE usuario ×2, INSERT cambios |
| ✂️ Split Ligacargos | `06_split_ligacargos.sql` | `descripcion = 'Split ligacargos ejecutado'` | INSERT ligacargos_historico, **DELETE ligacargos** (único DELETE), INSERT cambios |

**Único DELETE del pipeline**: `06_split_ligacargos.sql` Paso 3 — elimina de `ligacargos` los registros movidos a histórico.

### Scripts SQL modificados para agregar trazabilidad
- `10c_saneamiento_duplicados.sql`: agregado `INSERT INTO cambios` al final (antes no registraba nada).
- `06_split_ligacargos.sql`: agregado `PASO 5` con `INSERT INTO cambios` incluyendo métricas del split.

### Acceso en menú
`Configuración y Saneamiento → Gestión de Saneamiento → Bitácora de saneamiento autom.`
(ítem "Bitácora de Saneamiento" original eliminado del mismo menú)

---

## Issue 3 — Ajustes my.ini Host C

### Scope Técnico
`docs-dev/migration-aguav2/host-c-setup/manual/optimizacion/my.ini`:
- `aria_checkpoint_interval=30`, `aria_recover_options=BACKUP,FORCE` (resiliencia en crash)
- `innodb_flush_log_at_trx_commit=1` (reemplaza valor 2 — durabilidad completa)
- `long_query_time`: 1→30 (reduce ruido en slow log)
- `server-id=1` comentado (no se usa replicación)

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `index2.php` | agua | fix: V2.0.0 label minimalista, texto home simplificado |
| `views/sistema/configuracion.php` | agua | fix: elimina Limpieza Bitácora, agrega Bitácora Pipeline |
| `admin/saneamiento/bitacora_pipeline.php` | agua | feat: página nueva — 5 secciones saneamientos DML |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/10c_saneamiento_duplicados.sql` | agua | feat: INSERT cambios trazabilidad Martín/Zenón |
| `docs-dev/migration-aguav2/host-c-setup/06_split_ligacargos.sql` | agua | feat: INSERT cambios trazabilidad split + métricas DELETE |
| `docs-dev/migration-aguav2/host-c-setup/manual/optimizacion/my.ini` | agua | chore: ajustes aria/innodb/slow query |

**Commits:** `86e2f31` → `d72b0d5` → `3739ac3` → `c116365` → `2312b6a` → `00c5008` → `3a97e4f`

---

## Verificación

| Check | Resultado |
|:---|:---:|
| PHP lint pre-push | ✅ OK todos los commits |
| Ground Truth validate | ✅ OK (0 errores) |
| `bitacora_pipeline.php` — Sección A datos reales | ✅ 1 ejecución 17/04/2026 |
| `bitacora_pipeline.php` — Sección B datos reales | ✅ 2 contratos (1407, 1408) |
| `bitacora_pipeline.php` — Sección C datos reales | ✅ 1 ejecución SDF 36 contratos |
| Secciones D y E | ⏳ Visible a partir de próxima ejecución del pipeline |

### Pruebas manuales pendientes (Host C)
1. Abrir `http://192.168.1.128:7001/agua/admin/saneamiento/bitacora_pipeline.php`
2. Verificar las 5 secciones renderizan correctamente
3. Expandir botón "Ver ▼" en Sección B y comprobar antes/después
4. Ejecutar `Full-Pipeline-Sync.sh` y verificar que Secciones D y E aparecen

---
*Generado por Claude Sonnet 4.6 — 2026-04-18*
