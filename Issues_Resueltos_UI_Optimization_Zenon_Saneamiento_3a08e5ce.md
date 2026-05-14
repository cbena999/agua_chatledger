# Issues Resueltos — Sesión 2026-05-14
**Conversación:** `3a08e5ce-2119-456e-892a-20953653f1f3`
**Rama:** `feature/upgrade-v2-win-xampp` (desarrollo Host A / producción Host C)

---

## 1 — Optimización de Interfaz (Lila & Ticket)

### Scope Funcional
- **Color Lila Universal**: Ahora los usuarios que solo tienen contratos en "Suspensión Definitiva" (placeholder sin servicio activo) se marcan correctamente como Lila en el buscador, evitando confusión al cajero.
- **Ticket de Asamblea**: Se ajustó el formato del ticket térmico en Host C para igualar la versión anterior (tamaño de fuente, márgenes mínimos, formato de fecha en letra y concatenación de contratos sin corchetes).

### Scope Técnico
- `views/usuarios/options.php`: Refactorización de la lógica de conteo de contratos para incluir estados `1` y `2` como activos, y marcar Lila si el total es `0`.
- `asamblea/views/layout.php`: Ajuste de CSS `@media print` para márgenes y fuente.
- `asamblea/views/principal.php`: Formateo de `str_contracts` (contratos separados por coma).

---

## 2 — Saneamiento Estructural Zenón (ID 1590)

### Scope Funcional
- Consolidación del histórico de **Zenón Martínez López**.
- El **ID 1590** se estableció como el **Master** (contiene las notas de "masdatos" y contacto).
- El **ID 1057** se marcó como **Duplicado** (`id_homonimo_padre = 1590`).
- Contratos **1378** y **391** fueron reasignados al Master (ID 1590).

### Scope Técnico
- `docs-dev/migration-aguav2/sync_hosta_to_hostc/10c_saneamiento_duplicados.sql`: Inversión de jerarquía y reasignación de contratos.
- `docs-dev/migration-aguav2/sync_hosta_to_hostc/12_validate_pipeline.sql`: Actualización de la prueba de integridad para verificar el vínculo 1057 -> 1590 y la posesión de contratos.

---

## 3 — Hardening del Entorno Host C (Shutdown)

### Scope Funcional
- El proceso de apagado del servidor ahora es "silencioso" y resiliente. Se eliminaron los mensajes de error transitorios que aparecían rápidamente en pantalla durante el `Stop-Computer` y el cierre de procesos de MariaDB.

### Scope Técnico
- `docs-dev/pase-a-prod/aguav2-2026/scripts/stop-webapps.ps1`: Implementación de `try/catch` y `ErrorAction SilentlyContinue` en la terminación de procesos y compresión de backups.
- `docs-dev/pase-a-prod/aguav2-2026/scripts/shutdown-server.ps1`: Bloque de error en `Stop-Computer` con espera de diagnóstico ante fallos de permisos.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `asamblea/views/layout.php` | agua | UI/UX (Márgenes ticket) |
| `asamblea/views/principal.php` | agua | Lógica (Formato contratos) |
| `includes/negocio/usuarios.php` | agua | Lógica (Filtros Usuarios Especiales) |
| `views/usuarios/options.php` | agua | UI (Color Lila) |
| `views/usuarios/especiales.php` | agua | UI (Combo de filtros) |
| `docs-dev/migration-aguav2/.../10c_saneamiento_duplicados.sql` | agua | SQL (Saneamiento Zenón) |
| `docs-dev/migration-aguav2/.../12_validate_pipeline.sql` | agua | SQL (Validación) |
| `docs-dev/pase-a-prod/.../stop-webapps.ps1` | agua | Scripting (Hardening) |
| `docs-dev/pase-a-prod/.../shutdown-server.ps1` | agua | Scripting (Hardening) |
| `GEMINI.md` | agua | Docs (Historial) |
| `.agents/pending.md` | chatledger | Docs (Estatus) |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Búsqueda Zenón (ID 1590 Master) | ✅ Saneado |
| Vínculo homónimo 1057 -> 1590 | ✅ Verificado |
| Color Lila en placeholder único | ✅ Corregido |
| Filtros "Sin nombre" en Esp. | ✅ Funciona |
| Ticket Asamblea (márgenes/fuente) | ✅ Ajustado |
| Shutdown silencioso | ✅ Verificado |

---
*Generado por Antigravity — 2026-05-14*
