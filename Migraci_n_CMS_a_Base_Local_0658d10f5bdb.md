# Migración CMS a Base Local

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `b6ad0394-a3fc-4d46-945a-fc28ff9d67bc` |
| **Cascade ID** | `554ee869-ebfd-4ea7-83e5-0658d10f5bdb` |
| **Type** | Agent Conversation |
| **Total Steps** | 80 |
| **Started** | 5 Oct 2026, 2:44 pm |
| **Completed** | 5 Oct 2026, 2:47 pm |

---

## User Request

Mejoras al sitio Web laesh
- ANaliza la factibilidad de que todos los contenidos del sitio web index que se gestionand via el modulo de cms se puedan jalar y ponerlos en la bd local, para que se remplace el contenido cms local (       'user'    => getenv('LAESH_DB_USER') ?: 'laesh_app',
        'pass'    => getenv('LAESH_DB_PASS') ?: 'laesh_2026_dev',
        'name'    => getenv('LAESH_DB_NAME') ?: 'laesh_db',).
. Conectate a kvm2.
. No modifique nada del setup bash, sql local ssot, pero si baja los scrips use hacia /home/carlos/GitHub/caelitandem_home/restaurantb/setup/bds/laesh/cms/

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 2 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation d09de97c-0c45-4639-aad1-3960232baee8: Análisis De Sesiones Seguras
- Created: 2026-10-01T21:09:16Z
- Last modified: 2026-10-05T18:34:28Z

## Conversation 3c31c201-9e31-4911-9f50-4061881bf62b: Azure App Service Planning
- Created: 2026-10-04T18:55:52Z
- Last modified: 2026-10-04T20:29:04Z

### USER Objective:
Azure App Service Planning

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Thinking

Initial assessment involves evaluating the feasibility of migrating all content managed by the CMS module on the website index into a local database. The goal is to replace the existing local CMS content with this migrated data. Necessary parameters, including database user, password, and name, will need to be configured for access.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.002063450s
- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `SERVER_MAP.env`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ══════════════════════════════════════════════════════════════════════════════
# SERVER_MAP.env — Mapa canónico de rutas · LAESH KVM2 Producción
#
# PROPÓSITO
#   Fuente de verdad única para TODAS las rutas del proyecto LAESH.
#   Usada por humanos, IAs (Claude/Gemini) y scripts de bash por igual.
#
# USO EN BASH
#   source "$(dirname "$0")/SERVER_MAP.env"
#   echo "$KVM2_ASSETS"      # → /opt/laesh/assets/laesh-web-assets-uipv1a/
#
# REGLA DE ORO
#   Antes de escribir cualquier ruta en un script, rsync, crontab o
#   comentario: consultar este archivo. Si la ruta no está aquí,
#   agregarla antes de usarla. Si difiere de lo aquí registrado,
#   la que manda es ESTA.
#
# MANTENIMIENTO
#   Actualizado: 2026-09-09
#   Cualquier cambio de infra en KVM2 → actualizar aquí primero.
# ══════════════════════════════════════════════════════════════════════════════

# ── A. LOCAL (máquina de desarrollo / Carlos) ─────────────────────────────────

# Raíz del repo contenedor (restaurantb)
LOCAL_REPO_ROOT="/home/carlos/GitHub/caelitandem_home/restaurantb"

# Repo anidado de la webapp PHP (propio .git, manejado por sync_all_repos.sh)
LOCAL_WEBAPP_REPO="${LOCAL_REPO_ROOT}/www"

# Webapp PHP — fuente para rsync
LOCAL_WEBAPP="${LOCAL_REPO_ROOT}/www/laesh-swbldi"

# Assets estáticos — fuente para rsync
LOCAL_ASSETS="${LOCAL_REPO_ROOT}/www/laesh-web-assets-uipv1a"

# Scripts de setup y migración
LOCAL_SETUP="${LOCAL_REPO_ROOT}/setup"

# Migraciones SQL
LOCAL_MIGRATIONS="${LOCAL_REPO_ROOT}/setup/bds/laesh/migrations"

# Script de deploy canónico (este directorio)
LOCAL_DEPLOY_DIR="${LOCAL_REPO_ROOT}/setup/deploy/laesh-kvm2-prod"


# ── B. KVM2 — SISTEMA (nivel SO, Nginx, PHP, MariaDB) ────────────────────────

# Alias SSH — definido en ~/.ssh/config (Host laesh-kvm2)
# El config maneja: HostName 83.136.219.193 · User sysadmin · Port 22
#                   IdentityFile ~/.ssh/id_laesh_kvm2 · IdentitiesOnly yes
# NO hardcodear host/user/port aquí — editar ~/.ssh/config si algo cambia.
KVM2_SSH="laesh-kvm2"

# Nginx — binario y configuración
KVM2_NGINX_BIN="/usr/sbin/nginx"
KVM2_NGINX_CONF_DIR="/etc/nginx"
KVM2_NGINX_SITES="/etc/nginx/sites-available"
KVM2_NGINX_ENABLED="/etc/nginx/sites-enabled"
# 2026-09-30: corregido — el archivo real en KVM2 es "laesh" (sin ".mx"),
# verificado con `ls /etc/nginx/sites-available/` (hallazgo de auditoría de
# alineación KVM2↔SSOT). El Ground Truth tenía el nombre equivocado desde su
# creación; no se renombró el archivo real, solo se corrigió esta referencia.
KVM2_NGINX_LAESH_CONF="/etc/nginx/sites-available/laesh"

# PHP-FPM 8.3
KVM2_PHP_BIN="php8.3"
KVM2_PHP_FPM_SERVICE="php8.3-fpm"
KVM2_PHP_FPM_POOL="/etc/php/8.3/fpm/pool.d/laesh.conf"
KVM2_PHP_INI_FPM="/etc/php/8.3/fpm/php.ini"
KVM2_PHP_INI_CLI="/etc/php/8.3/cli/php.ini"
KVM2_OPCACHE_INI_FPM="/etc/php/8.3/fpm/conf.d/10-opcache-laesh.ini"

# MariaDB
KVM2_MARIADB_SERVICE="mariadb"
KVM2_MARIADB_DATA_DIR="/opt/laesh/laesh-db"
KVM2_MARIADB_ROOT_CNF="/opt/laesh/configs/.mariadb-root.cnf"
# Forma correcta de conectar como root (NO usar mysql -u root -p directamente):
#   mariadb --defaults-extra-file=${KVM2_MARIADB_ROOT_CNF}
#   mariadb-dump --defaults-extra-file=${KVM2_MARIADB_ROOT_CNF} laesh_db

# TLS / Certificados
KVM2_CERTBOT_CERTS="/etc/letsencrypt/live/laesh.mx"
KVM2_CERT_PEM="${KVM2_CERTBOT_CERTS}/fullchain.pem"
KVM2_KEY_PEM="${KVM2_CERTBOT_CERTS}/privkey.pem"
KVM2_HTTPS_DIR="/opt/laesh/https"

# Logrotate
KVM2_LOGROTATE_CONF="/etc/logrotate.d/laesh"

# Systemd — servicios propios
KVM2_SWOOLE_SERVICE="swoole-laesh.service"
KVM2_SWOOLE_UNIT="/etc/systemd/system/swoole-laesh.service"

# Crontabs
# www-data: sudo crontab -u www-data -l   (cron app: cleanup, cache, backup, etc.)
# root:     sudo crontab -l               (cron sistema: certbot renew, etc.)


```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `SERVER_MAP.env`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L100-179)</summary>

**Path:** `Unknown file`

```
# ── C. KVM2 — APLICACIÓN (rutas /opt/laesh/ — canónicas) ─────────────────────

# Raíz de la instalación LAESH en producción
KVM2_LAESH_ROOT="/opt/laesh"

# Webapp PHP (PHP-FPM sirve desde aquí)
KVM2_WEBAPP="/opt/laesh/www/laesh-swbldi"
KVM2_WWW_DIR="/opt/laesh/www"                      # solo debe contener laesh-swbldi/

# Assets estáticos — Nginx los sirve vía alias (ver KVM2_NGINX_LAESH_CONF línea ~127)
# location ^~ /laesh-web-assets-uipv1a/ { alias /opt/laesh/assets/laesh-web-assets-uipv1a/; }
KVM2_ASSETS="/opt/laesh/assets/laesh-web-assets-uipv1a"
KVM2_ASSETS_CSS="${KVM2_ASSETS}/css"
KVM2_ASSETS_JS="${KVM2_ASSETS}/js"
KVM2_ASSETS_IMG="${KVM2_ASSETS}/img"
KVM2_ASSETS_CMS="${KVM2_ASSETS}/cms"               # imágenes subidas por el CMS (webp con timestamp)
KVM2_ASSETS_FONTS="${KVM2_ASSETS}/fonts"

# Imágenes CMS — prefijo URL CANÓNICO (lo que se guarda en web_contenidos.valor)
KVM2_CMS_URL_PREFIX="/laesh-web-assets-uipv1a/cms/"
# PREFIJO LEGADO INCORRECTO (uploader antiguo) — NO usar para nuevas imágenes:
KVM2_CMS_URL_PREFIX_LEGACY="/laesh-web-assets-uipv1a/img/cms/"

# Backups de BD
KVM2_BACKUPS_DB="/opt/laesh/backups/db"            # dumps .sql.gz generados por backup_db.sh

# Cache PHP (OPcache/Flight)
KVM2_CACHE_DIR="/opt/laesh/cache"

# Logs de aplicación
KVM2_LOGS_DIR="/opt/laesh/logs"
# Archivos individuales:
KVM2_LOG_APP="${KVM2_LOGS_DIR}/app.log"
KVM2_LOG_CLEANUP="${KVM2_LOGS_DIR}/cms-cleanup.log"
KVM2_LOG_CACHE="${KVM2_LOGS_DIR}/cache-renew.log"
KVM2_LOG_BACKUP="${KVM2_LOGS_DIR}/backup-db.log"
KVM2_LOG_CERTEXPIRY="${KVM2_LOGS_DIR}/cert-expiry.log"

# Scripts operativos (cron scripts y utilidades)
KVM2_SCRIPTS_DIR="/opt/laesh/scripts"
KVM2_SCRIPT_BACKUP="${KVM2_SCRIPTS_DIR}/backup_db.sh"
KVM2_SCRIPT_CERTCHECK="${KVM2_SCRIPTS_DIR}/cert_expiry_check.sh"

# Cron scripts (PHP, ejecutados por www-data)
KVM2_CRONES_DIR="/opt/laesh/crones"               # scripts .sh de cron del sistema
# Los cron PHP viven en: ${KVM2_WEBAPP}/crons/

# Configuraciones sensibles (no en git)
KVM2_CONFIGS_DIR="/opt/laesh/configs"
# ${KVM2_CONFIGS_DIR}/.mariadb-root.cnf   ← MariaDB root credentials
# ${KVM2_CONFIGS_DIR}/.env                ← App secrets (LAESH_APP_PASS, etc.)

# Uploads de usuarios (PDFs de resultados, etc.)
KVM2_UPLOADS_DIR="/opt/laesh/uploads"
KVM2_UPLOADS_PDF="${KVM2_UPLOADS_DIR}/pdfs"

# Monitor interno
KVM2_MONITOR_DIR="/opt/laesh/monitor"

# Swoole socket/status
KVM2_SWOOLE_HOST="127.0.0.1"
KVM2_SWOOLE_PORT="9502"
KVM2_SWOOLE_STATUS_URL="http://${KVM2_SWOOLE_HOST}:${KVM2_SWOOLE_PORT}/status"


# ── D. KVM2 — STAGING (en home del sysadmin, bajo un único directorio padre) ──
#
# Todo el material intermedio vive bajo ~/staging/ con dos roles:
#
#   /home/sysadmin/staging/
#   ├── setup/                           ← scripts/pipeline (físico, sin symlink)
#   │   ├── bds/laesh/migrations/        #   m001, m002, m003... SQL idempotentes
#   │   └── deploy/laesh-kvm2-prod/      #   pipeline 01–08 + SERVER_MAP.env + deploy.sh
#   └── laesh-src/                       ← assets staging (paso 1 de deploy de assets)
#       └── laesh-web-assets-uipv1a/     #   CSS/JS/img — revisar antes de assets-publish

KVM2_STAGING_ROOT="/home/sysadmin/staging"

# Assets estáticos en staging (paso 1 de deploy de assets — revisión antes de prod)
# deploy.sh assets        → local → aquí  (staging, para revisión)
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `web_contenidos`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `04_export_cms_seed.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# 04_export_cms_seed.sh — Ciclo CMS → Seed (destinos: KVM2 producción · OCI pruebas)
#
# Exporta web_contenidos desde la BD local (fuente de verdad) y
# regenera el bloque REPLACE INTO de 07_seed_catalogs.sql.
#
# Cuándo ejecutar:
#   Después de editar contenido en el CMS local (ADMRC → Gestión Web)
#   y antes de un rsync + DROP+recreate en OCI VM.
#
# Protocolo completo CMS → OCI:
#   1. Editar en CMS local: https://192.168.1.71:8443/laesh/adrc/
#   2. bash setup/bds/laesh/bash/cms-sync/04_export_cms_seed.sh
#   3. Revisar el diff de 07_seed_catalogs.sql (git diff)
#   4. rsync laesh-swbldi/ y setup/bds/laesh/ a OCI
#   5. En OCI: bash setup_oci.sh --drop
#
# Variables sobreescribibles:
#   DB_CONTAINER   Contenedor MariaDB local (default: restaurantb_db)
#   DB_USER        Usuario raíz local (default: root)
#   DB_PASS        Contraseña raíz local (default: comite_2026)
#   DB_NAME        BD local (default: laesh_db)
# ==============================================================================

set -euo pipefail

DB_CONTAINER="${DB_CONTAINER:-restaurantb_db}"
DB_USER="${DB_USER:-root}"
DB_PASS="${DB_PASS:-comite_2026}"
DB_NAME="${DB_NAME:-laesh_db}"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SEED_FILE="${DIR}/../07_seed_catalogs.sql"
TMP_EXPORT="${DIR}/../.tmp_web_contenidos_export.sql"

# ── Verificar contenedor local corriendo ─────────────────────────────────────
if ! docker ps --format '{{.Names}}' | grep -q "^${DB_CONTAINER}$"; then
    echo "[ERROR] Contenedor '${DB_CONTAINER}' no está corriendo."
    echo "        Ejecuta: docker compose up -d"
    exit 1
fi

echo "=================================================================="
echo " LAESH — Exportar web_contenidos → 07_seed_catalogs.sql"
echo " Fuente: ${DB_CONTAINER} → ${DB_NAME}.web_contenidos"
echo " Destino: $(basename ${SEED_FILE})"
echo "=================================================================="
echo ""

# ── Contar filas actuales ─────────────────────────────────────────────────────
ROW_COUNT=$(docker exec -i "${DB_CONTAINER}" \
    mariadb -u"${DB_USER}" -p"${DB_PASS}" -N -e \
    "SELECT COUNT(*) FROM ${DB_NAME}.web_contenidos;" 2>/dev/null)
echo "  Filas en web_contenidos local: ${ROW_COUNT}"

# ── Exportar web_contenidos como REPLACE INTO ─────────────────────────────────
echo "  Exportando..."

docker exec -i "${DB_CONTAINER}" \
    mariadb -u"${DB_USER}" -p"${DB_PASS}" "${DB_NAME}" \
    --skip-column-names --batch 2>/dev/null <<'EOF' > "${TMP_EXPORT}"
SELECT CONCAT(
    'REPLACE INTO `web_contenidos` (`seccion`, `subseccion`, `clave`, `valor`, `tipo`) VALUES\n',
    GROUP_CONCAT(
        CONCAT(
            "    ('", seccion, "', ",
            IF(subseccion IS NULL, 'NULL', CONCAT("'", REPLACE(subseccion, "'", "''"), "'")), ", '",
            REPLACE(clave,  "'", "''"), "', '",
            REPLACE(REPLACE(valor, '\\', '\\\\'), "'", "''"), "', '",
            tipo, "')"
        )
        ORDER BY seccion, subseccion, clave
        SEPARATOR ',\n'
    ),
    ';'
)
FROM web_contenidos;
EOF

if [ ! -s "${TMP_EXPORT}" ]; then
    echo "[ERROR] Export vacío — verificar conexión y datos en web_contenidos"
    rm -f "${TMP_EXPORT}"
    exit 1
fi

# ── Reemplazar sección web_contenidos en 07_seed_catalogs.sql ────────────────
# La sección empieza con el marcador y termina con el siguiente marcador de sección.

MARKER_START="-- ---------------------------------------------------------------------------"
SECTION_HEADER="-- WEB_CONTENIDOS — Contenido Editorial"

# Verificar que el marcador exista en el archivo
if ! grep -q "${SECTION_HEADER}" "${SEED_FILE}"; then
    echo "[ERROR] No se encontró el marcador '${SECTION_HEADER}' en $(basename ${SEED_FILE})"
    echo "        El archivo puede haber cambiado de estructura."
    rm -f "${TMP_EXPORT}"
    exit 1
fi

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `05_import_cms_seed_kvm2.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# 05_import_cms_seed_kvm2.sh — Importar web_contenidos → KVM2 (sin --drop)
#
# Complemento de 04_export_cms_seed.sh para el destino KVM2.
#
# Flujo completo CMS → KVM2:
#   1. Editar contenido en CMS local: https://192.168.1.71:8443/adrc/
#   2. Exportar:  bash setup/bds/laesh/bash/cms-sync/04_export_cms_seed.sh
#   3. Revisar:   git diff setup/bds/laesh/07_seed_catalogs.sql
#   4. Importar:  bash setup/bds/laesh/bash/cms-sync/05_import_cms_seed_kvm2.sh
#      → aplica SOLO web_contenidos a KVM2 sin DROP, sin tocar datos operativos.
#
# Diferencia vs OCI:
#   OCI: rsync setup/ → setup_oci.sh --drop (recrea BD completa)
#   KVM2: este script extrae solo el bloque REPLACE INTO web_contenidos y
#         lo aplica via SSH sin DROP. Órdenes, pacientes e histórico se conservan.
#
# Variables:
#   KVM2_HOST       IP/hostname del servidor KVM2 (default: 83.136.219.193)
#   KVM2_USER       Usuario SSH (default: sysadmin)
#   KVM2_DB         Nombre de la BD (default: laesh_db)
#   KVM2_MARIADB_CNF Ruta al .cnf de credenciales en el servidor (default fijo)
#
# Uso:
#   bash setup/bds/laesh/bash/cms-sync/05_import_cms_seed_kvm2.sh
#   KVM2_HOST=staging.laesh.mx bash setup/bds/laesh/bash/cms-sync/05_import_cms_seed_kvm2.sh
# ==============================================================================

set -euo pipefail

KVM2_HOST="${KVM2_HOST:-83.136.219.193}"
KVM2_USER="${KVM2_USER:-sysadmin}"
KVM2_DB="${KVM2_DB:-laesh_db}"
KVM2_MARIADB_CNF="${KVM2_MARIADB_CNF:-/opt/laesh/configs/.mariadb-root.cnf}"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SEED_FILE="${DIR}/../07_seed_catalogs.sql"

echo "=================================================================="
echo " LAESH — Importar web_contenidos → KVM2 (sin DROP)"
echo " Destino: ${KVM2_USER}@${KVM2_HOST} → ${KVM2_DB}"
echo " Fuente:  $(basename ${SEED_FILE})"
echo "=================================================================="
echo ""

# ── Verificar que el seed existe ──────────────────────────────────────────────
if [ ! -f "$SEED_FILE" ]; then
    echo "[ERROR] No se encontró ${SEED_FILE}"
    echo "        Ejecutar primero: bash 04_export_cms_seed.sh"
    exit 1
fi

# ── Extraer bloque REPLACE INTO web_contenidos ────────────────────────────────
# El bloque empieza con el marcador "-- WEB_CONTENIDOS" y termina con el
# primer ';' tras el REPLACE INTO (última línea del bloque generado por el export).
# La extracción usa awk: activa impresión desde el marcador hasta encontrar ';' solo.
TMP_SQL=$(mktemp /tmp/laesh_cms_import_XXXXXX.sql)
trap 'rm -f "${TMP_SQL}"' EXIT

awk '
    /-- WEB_CONTENIDOS — Contenido Editorial/ { inside=1 }
    inside { print }
    inside && /^[[:space:]]*;[[:space:]]*$/ { exit }
' "$SEED_FILE" > "$TMP_SQL"

if [ ! -s "$TMP_SQL" ]; then
    echo "[ERROR] No se encontró el bloque REPLACE INTO web_contenidos en $(basename ${SEED_FILE})"
    echo "        ¿Se ejecutó 04_export_cms_seed.sh primero?"
    exit 1
fi

ROW_COUNT=$(grep -c "^    '" "$TMP_SQL" 2>/dev/null || echo "?")
BYTE_SIZE=$(wc -c < "$TMP_SQL")
echo "  Bloque extraído: ${ROW_COUNT} filas (~${BYTE_SIZE} bytes)"
echo ""

# ── Verificar conectividad SSH ────────────────────────────────────────────────
echo "  Verificando acceso SSH a ${KVM2_USER}@${KVM2_HOST}..."
if ! ssh -o ConnectTimeout=8 -o BatchMode=yes "${KVM2_USER}@${KVM2_HOST}" \
    "[ -f ${KVM2_MARIADB_CNF} ]" 2>/dev/null; then
    echo "[ERROR] No se pudo conectar a ${KVM2_USER}@${KVM2_HOST} o"
    echo "        ${KVM2_MARIADB_CNF} no existe en el servidor."
    echo "        Verificar: ssh ${KVM2_USER}@${KVM2_HOST} ls ${KVM2_MARIADB_CNF}"
    exit 1
fi
echo "  SSH OK · .mariadb-root.cnf encontrado en servidor"
echo ""

# ── Aplicar REPLACE INTO web_contenidos via SSH ───────────────────────────────
echo "  Aplicando web_contenidos en ${KVM2_HOST}:${KVM2_DB}..."
ssh "${KVM2_USER}@${KVM2_HOST}" \
    "mariadb --defaults-extra-file=${KVM2_MARIADB_CNF} ${KVM2_DB}" \
    < "$TMP_SQL"

echo ""
echo "=================================================================="
echo " ✅ Importación completada"
echo "    Filas web_contenidos aplicadas: ${ROW_COUNT}"
echo "    Servidor: ${KVM2_HOST} · BD: ${KVM2_DB}"
echo ""
echo " Verificar en producción:"
echo "   ssh ${KVM2_USER}@${KVM2_HOST} \\"
echo "     \"mariadb --defaults-extra-file=${KVM2_MARIADB_CNF} ${KVM2_DB} \\"
echo "       -e 'SELECT seccion, COUNT(*) FROM web_contenidos GROUP BY seccion;'\""
echo ""
echo " Probar en browser: https://laesh.mx/"
echo "=================================================================="

```

</details>

---

## Agent Response

### Thinking

Initial assessment: User requests investigation into migrating CMS-managed website content to a local database, replacing the existing CMS content. The primary task is to evaluate the feasibility of this migration. Initial focus on assessing the data source and target database compatibility.

The aim is to identify potential challenges in extracting, transforming, and loading content from the CMS to the local database. Data integrity and content structure are key considerations for this process. Determine if there are specific content types or data formats that require special handling during migration.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.076787978s
- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:44 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:45 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:45 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:45 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:45 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:45 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:45 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `config.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
// config.php — Configuración del ecosistema LAESH (Bloc Digital)
//
// Credenciales leídas desde variables de entorno (mínimo privilegio):
//   LAESH_DB_USER / LAESH_DB_PASS / LAESH_DB_HOST / LAESH_DB_PORT / LAESH_DB_NAME
//
// Fallbacks por ambiente (env var siempre tiene prioridad):
//   Docker local  (/.dockerenv existe) → host=db,        port=3306
//   KVM2 Hostinger / OCI / nativo      → host=127.0.0.1, port=3306
//   (En todos los entornos nativo las env vars se inyectan vía PHP-FPM pool
//    y cache_renew.cron — el fallback no-Docker solo aplica si la inyección falla)
// Nota: ya NO se usa root. Usuario dedicado laesh_app con privilegios mínimos en laesh_db.

$inDocker = file_exists('/.dockerenv');

// ── JWT Secret: falla explícita en producción si no se inyectó vía entorno ──
// Hallazgo 2026-09-18: el secreto vivía hardcodeado como fallback silencioso,
// visible en el código fuente — invalidaba la garantía de firma HMAC para los
// 3 portales (md/rc/admrc). Producción NUNCA debe operar con un secreto conocido.
$appEnv = getenv('APP_ENV') ?: 'development';
$jwtSecret = getenv('LAESH_JWT_SECRET') ?: '';
if ($jwtSecret === '') {
    if ($appEnv === 'production') {
        throw new \RuntimeException(
            'LAESH_JWT_SECRET no está definida en el entorno. ' .
            'Producción no puede operar con un secreto JWT hardcodeado/conocido. ' .
            'Verificar env[LAESH_JWT_SECRET] en php-fpm-laesh.conf / EnvironmentFile de swoole-laesh.service.'
        );
    }
    // Solo desarrollo local: valor fijo y claramente marcado como no apto para producción.
    $jwtSecret = 'DEV_ONLY_INSECURE_SECRET_never_use_in_prod_2026';
}

return [
    'db' => [
        'host'    => getenv('LAESH_DB_HOST') ?: ($inDocker ? 'db'   : '127.0.0.1'),
        'port'    => (int)(getenv('LAESH_DB_PORT') ?: 3306),   // 3306 en todos los entornos nativo (KVM2/OCI)
        'user'    => getenv('LAESH_DB_USER') ?: 'laesh_app',
        'pass'    => getenv('LAESH_DB_PASS') ?: 'laesh_2026_dev',
        'name'    => getenv('LAESH_DB_NAME') ?: 'laesh_db',
        'charset' => 'utf8mb4'
    ],
    'app' => [
        'env'      => getenv('APP_ENV') ?: 'development',
        // Ruta absoluta al dir de logs del stack (fuera del webroot).
        // __DIR__ = commons/ dentro de laesh-swbldi/ — usar ruta absoluta para evitar
        // que un deploy en subdirectorio diferente cambie la ubicación del log.
        'log_path' => '/opt/laesh/logs/app.log'
    ],
    'swoole' => [
        // FIX 2026-09-08 (G-SWOOLE-01): En KVM2/nativo Swoole escucha en 127.0.0.1 (loopback).
        // UFW ya bloquea el puerto 9502 externo, pero si UFW se deshabilita accidentalmente,
        // el binding a 0.0.0.0 expondría el bridge HTTP internamente.
        // 127.0.0.1 elimina esa dependencia — Nginx /ws → proxy_pass http://127.0.0.1:9502 funciona igual.
        // En Docker: 0.0.0.0 sigue siendo necesario para que el contenedor nginx resuelva al contenedor swoole.
        'host' => getenv('LAESH_WS_HOST') ?: ($inDocker ? '0.0.0.0' : '127.0.0.1'),
        'port' => (int)(getenv('LAESH_WS_PORT') ?: 9502),
        // 2026-10-01: base del bridge HTTP PHP→Swoole (/publish, /revoke). Antes se decidía
        // en cada envío con gethostbyname('swoole') — una consulta DNS en el camino crítico.
        // Ahora es explícita: LAESH_WS_BRIDGE_URL, o el contenedor 'swoole' en Docker, o
```

</details>

---

## Agent Response

### Thinking

The `config.php` file defines database connection parameters. Observing the structure reveals environment variables are prioritized for database host, port, user, and password, with defaults provided if the variables are unset. Specifically, the port defaults to 3306 in native environments. Analyzing these settings will provide clues to database connectivity configuration.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.122112204s
- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:45 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:45 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:46 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:46 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:46 pm

---

## Agent Response

### Thinking

Analyzing data from two environments: local and production (KVM2). The initial observation highlights discrepancies in "hero" and "especialidades" counts between the two sets. These differences warrant further investigation to determine if they reflect expected variance or identify potential inconsistencies.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.066962197s
- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:46 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `index.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/**
 * index.php — Sitio Web Público LAESH (Phase J — Estabilización)
 *
 * Fuente HTML: portafolio-dev-2026/blocklabgd/v1.2/mockup1.0/uipv1/index.html  ← NUNCA BORRAR (R15.1)
 * Merge iterativo: cambios en uipv1/index.html → propagar aquí.
 *
 * Todo el contenido editorial se lee desde la BD:
 *   · configuraciones   → contacto, horarios, responsable, ubicación geográfica,
 *                          WhatsApp, Facebook, Schema.org, años de experiencia
 *   · web_contenidos    → hero (slides + navbar tagline), quienes-somos (fichas,
 *                          resp, filosofía), especialidades (accordion fichas),
 *                          promociones (banner), calidad (encabezado),
 *                          ubicacion (maps_embed), footer, seo
 *   · estudios (JOIN)   → SSOT para tarjetas de promociones diarias
 *
 * Claves configuraciones usadas:
 *   telefono · email_contacto · whatsapp_numero · facebook_url
 *   direccion · direccion_calle · ciudad · estado · cp
 *   horario_semana · horario_domingo · hrs_open · hrs_close · dom_open · dom_close
 *   responsable_nombre · responsable_cedula_prof · responsable_cedula_esp
 *   nombre_laboratorio · nombre_corto
 */
declare(strict_types=1);
require_once __DIR__ . '/../commons/commons.php';

// ── HTTP Caching & Performance Optimization Headers ───────────────────────────
// Permite revalidación rápida y caché eficiente del navegador sin afectar sesiones
if (empty($_SESSION['auth_logged_in'])) {
    header('Cache-Control: public, max-age=300, must-revalidate');
} else {
    header('Cache-Control: no-cache, must-revalidate');
}

// ── CSRF para modal de login ────────────────────────────────────────────────
if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

// ── Helpers ─────────────────────────────────────────────────────────────────
/** Escapa para salida HTML (texto y atributos). */
function h(mixed $v): string {
    return htmlspecialchars((string)($v ?? ''), ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8');
}
/** Devuelve solo dígitos de un número de teléfono. */
function waNum(string $raw): string {
    return preg_replace('/\D/', '', $raw);
}
/**
 * Renderiza HTML de confianza generado por el RTE del CMS (admins LAESH).
 * Permite tags ricos de CKEditor 5.
 * Bloquea: <script>, atributos on*, href con javascript:
 */
function safeHtml(mixed $v): string {
    $html = strip_tags((string)($v ?? ''), ['strong','em','b','i','br','p','ul','ol','li','a','span','table','tbody','tr','td','th','thead','hr','figure','iframe','h1','h2','h3','h4','h5','h6','u','s','blockquote','oembed','div','img','mark']);
    $html = preg_replace('/\s+on\w+\s*=\s*(?:"[^"]*"|\'[^\']*\'|[^\s>]*)/i', '', $html);
    $html = preg_replace('/href\s*=\s*["\']?\s*javascript:/i', 'href="#" data-blocked=', $html);

    // Convertir <oembed url="..."> a <iframe> para YouTube, Spotify, Vimeo si vienen etiquetas oembed crudas
    $html = preg_replace_callback('/<oembed\s+url=["\']([^"\']+)["\']\s*>\s*<\/oembed>/i', function($matches) {
        $url = $matches[1];
        if (preg_match('/(?:youtube\.com\/(?:watch\?v=|embed\/|v\/)|youtu\.be\/)([\w-]+)/i', $url, $m)) {
            $yId = $m[1];
            return '<div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden;border-radius:12px;box-shadow:0 4px 16px rgba(0,0,0,0.12);">' .
                   '<iframe src="https://www.youtube.com/embed/' . $yId . '" style="position:absolute;top:0;left:0;width:100%;height:100%;border:0;border-radius:12px;" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' .
                   '</div>';
        }
        if (preg_match('/vimeo\.com\/(?:video\/)?(\d+)/i', $url, $m)) {
            $vId = $m[1];
            return '<div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden;border-radius:12px;">' .
                   '<iframe src="https://player.vimeo.com/video/' . $vId . '" style="position:absolute;top:0;left:0;width:100%;height:100%;border:0;" allowfullscreen></iframe>' .
                   '</div>';
        }
        return '<a href="' . htmlspecialchars($url, ENT_QUOTES, 'UTF-8') . '" target="_blank" rel="noopener">' . htmlspecialchars($url, ENT_QUOTES, 'UTF-8') . '</a>';
    }, $html);

    // Limpiar párrafos vacíos redundantes al inicio y final (<p>&nbsp;</p>, <p></p>) que dejan espacios verticales masivos
    $html = preg_replace('/^(?:\s*<p>(?:&nbsp;|\s)*<\/p>)+/i', '', $html);
    $html = preg_replace('/(?:\s*<p>(?:&nbsp;|\s)*<\/p>)+\s*$/i', '', trim($html));

    return $html;
}

// ── Conexión DB ─────────────────────────────────────────────────────────────
$db = Flight::db();

// ── Caché L2: OPcache PHP File Store (Estrategia A — Sprint Cache 2026-09) ──
// Inicializar una sola vez por request. Env: 'dev' en local, 'prod' en OCI/Hostinger.
\Common\Cache::init('', defined('APP_ENV') ? APP_ENV : 'prod');

if (!empty($_GET['reset_cache'])) {
    if (function_exists('opcache_reset')) { @opcache_reset(); }
    \Common\Cache::clear();
}
$_bypassCache = (!empty($_SESSION['auth_logged_in']) && !empty($_GET['_preview']) && !empty($_SESSION['cms_draft'])) || !empty($_GET['nocache']) || !empty($_GET['reset_cache']);

// ── 1a. configuraciones ─────────────────────────────────────────────────────
$configRaw = $_bypassCache ? null : \Common\Cache::get(\Common\Cache::KEY_CFG);
if ($configRaw === null) {
    $configRaw = $db->query("SELECT clave, valor FROM configuraciones")->fetchAll(\PDO::FETCH_KEY_PAIR) ?: [];
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `index.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L100-159)</summary>

**Path:** `Unknown file`

```
    if (!$_bypassCache) \Common\Cache::set(\Common\Cache::KEY_CFG, $configRaw);
}

// ── 1b. web_contenidos → $cms ────────────────────────────────────────────────
$_cmsRaw = $_bypassCache ? null : \Common\Cache::get(\Common\Cache::KEY_CMS);
if ($_cmsRaw === null) {
    $_cmsRaw = [];
    foreach ($db->query("SELECT seccion, subseccion, clave, valor FROM web_contenidos ORDER BY id")->fetchAll(\PDO::FETCH_ASSOC) as $row) {
        $_cmsRaw[$row['seccion']][$row['subseccion']][$row['clave']] = $row['valor'];
    }
    if (!$_bypassCache) \Common\Cache::set(\Common\Cache::KEY_CMS, $_cmsRaw);
}
$cms = $_cmsRaw;

// ── 2. Preview de borrador CMS (solo sesión admin activa) ──────────────────
// IMPORTANTE: el merge debe ocurrir ANTES de definir $cfg y $c, porque las arrow
// functions de PHP capturan variables por VALOR en el momento de su creación.
// Delight Auth guarda el login bajo $_SESSION['auth_logged_in'] (NOT 'user_id').
$isPreview = !empty($_GET['_preview'])
    && !empty($_SESSION['auth_logged_in'])
    && !empty($_SESSION['cms_draft']);
if ($isPreview) {
    foreach ($_SESSION['cms_draft'] as $draftSec => $campos) {
        foreach ($campos as $rawKey => $val) {
            // Manejar configuraciones globales (prefijo _cfg_)
            if (str_starts_with($rawKey, '_cfg_')) {
                $configRaw[substr($rawKey, 5)] = $val;
                continue;
            }
            // Manejar web_contenidos (formato {sub}__{clave})
            [$sub, $clave] = array_pad(explode('__', $rawKey, 2), 2, $rawKey);
            $cms[$draftSec][$sub][$clave] = $val;
        }
    }
}

// ── 3. Helpers y Variables Funcionales (Post-Merge) ─────────────────────────
$cfg = fn(string $k, string $d = '') => (!isset($configRaw[$k]) || $configRaw[$k] === '') ? $d : $configRaw[$k];
$c   = fn(string $sec, string $sub, string $k, string $d = '') => (!isset($cms[$sec][$sub][$k]) || $cms[$sec][$sub][$k] === '') ? $d : $cms[$sec][$sub][$k];

// Valores frecuentes — sin fallback: el cliente DEBE tener todo en configuraciones
$cfgNombreLab = $cfg('nombre_laboratorio');
$cfgNombreC   = $cfg('nombre_corto');
$cfgTel       = $cfg('telefono');
$cfgTelDigit  = waNum($cfgTel);
$cfgWA        = waNum($cfg('whatsapp_numero'));
$cfgEmail     = $cfg('email_contacto');
$cfgDirCalle  = $cfg('direccion_calle', 'Azucenas #8, Fracc. Jardines del Sur');
$cfgCiudad    = $cfg('ciudad', 'Huajuapan de León');
$cfgEstado    = $cfg('estado', 'Oaxaca');
$cfgCP        = $cfg('cp', '69000');
$cfgDir       = trim("{$cfgDirCalle}, {$cfgCiudad}, {$cfgEstado}" . ($cfgCP ? ". C.P. {$cfgCP}" : ""));
$cfgHorSem    = $cfg('horario_semana');
$cfgHorDom    = $cfg('horario_domingo');
$cfgHrsOpen   = $cfg('hrs_open');
$cfgHrsClose  = $cfg('hrs_close');
$cfgDomOpen   = $cfg('dom_open');
$cfgDomClose  = $cfg('dom_close');
$cfgRespNom   = $cfg('responsable_nombre');
$cfgRespProf  = $cfg('responsable_cedula_prof');
```

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `$db->query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 Oct 2026, 2:46 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `index.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L199-359)</summary>

**Path:** `Unknown file`

```
// ── 1c. Árbol de estudios clínicos → $cg ─────────────────────────────────────
$cg = $_bypassCache ? null : \Common\Cache::get(\Common\Cache::KEY_TREE);
if ($cg === null) {
    $cg = [];
    $treeStmt = $db->query("
        SELECT 
            grupo_id, 
            grupo_titulo,
            cat_id, 
            cat_nombre,
            clave_interna, 
            estudio_nombre, 
            tiempo_procesamiento, 
            muestra_requerida, 
            preparacion, 
            contenedor, 
            pruebas_incluidas
        FROM vw_website_arbol_estudios
        ORDER BY grupo_orden ASC, grupo_id ASC, cat_orden ASC, estudio_orden ASC, estudio_nombre ASC
    ");
    $treeRows = $treeStmt ? $treeStmt->fetchAll(\PDO::FETCH_ASSOC) : [];

    $gMap = [];
    $gIdxMap = [];
    $currGIdx = 0;
    foreach ($treeRows as $r) {
        $gid = (int)$r['grupo_id'];
        if (!isset($gIdxMap[$gid])) {
            $currGIdx++;
            $gIdxMap[$gid] = $currGIdx;
            $cg[$currGIdx] = ['titulo' => $r['grupo_titulo'], 'fichas' => []];
        }
        $gi    = $gIdxMap[$gid];
        $catId = (string)$r['cat_id'];
        if (!isset($gMap[$gid][$catId])) {
            $gMap[$gid][$catId] = count($cg[$gi]['fichas']);
            $cg[$gi]['fichas'][] = ['cat' => $r['cat_nombre'], 'items' => []];
        }
        $cPos = $gMap[$gid][$catId];
        $cg[$gi]['fichas'][$cPos]['items'][] = [
            'clave_interna'        => $r['clave_interna'],
            'nombre'               => $r['estudio_nombre'],
            'tiempo_procesamiento' => $r['tiempo_procesamiento'],
            'muestra_requerida'    => $r['muestra_requerida'],
            'preparacion'          => $r['preparacion'],
            'contenedor'           => $r['contenedor'],
            'pruebas_incluidas'    => $r['pruebas_incluidas'],
        ];
    }
    if (!$_bypassCache) \Common\Cache::set(\Common\Cache::KEY_TREE, $cg);
}

// ── 1d. Índice de búsqueda de estudios para autocompletado en memoria (OPcache) ──
$estudiosSearchData = $_bypassCache ? null : \Common\Cache::get(\Common\Cache::KEY_CATALOG_SEARCH);
if ($estudiosSearchData === null) {
    $searchStmt = $db->query("
        SELECT 
            e.clave, 
            e.nombre, 
            e.muestra, 
            e.preparacion, 
            e.tiempo, 
            e.contenedor, 
            e.pruebas_incluidas, 
            COALESCE(sg.nombre, g.nombre, 'General') AS categoria_nombre
        FROM cat_estudios e
        LEFT JOIN rel_estudio_gabinete reg ON reg.estudio_id = e.id
        LEFT JOIN cat_gabinetes g          ON g.id = reg.gabinete_id
        LEFT JOIN cat_subgabinetes sg      ON sg.id = reg.subgabinete_id
        WHERE e.activo = 1
        ORDER BY e.nombre ASC
    ");
    $estudiosSearchData = [];
    if ($searchStmt) {
        while ($row = $searchStmt->fetch(\PDO::FETCH_ASSOC)) {
            $estudiosSearchData[] = [
                'c'   => (string)($row['clave'] ?? ''),
                'n'   => (string)($row['nombre'] ?? ''),
                'm'   => (string)($row['muestra'] ?? ''),
                'p'   => (string)($row['preparacion'] ?? ''),
                't'   => (string)($row['tiempo'] ?? ''),
                'con' => (string)($row['contenedor'] ?? ''),
                'pi'  => (string)($row['pruebas_incluidas'] ?? ''),
                'cat' => (string)($row['categoria_nombre'] ?? ''),
            ];
        }
    }
    if (!$_bypassCache) \Common\Cache::set(\Common\Cache::KEY_CATALOG_SEARCH, $estudiosSearchData);
}
$estudiosSearchJson = json_encode($estudiosSearchData, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_AMP | JSON_HEX_QUOT);

// ── 3b. Hero autoplay (seg) — desde web_contenidos.hero.config.transition_time
// Alineado con admrc/views/gestion_web.php (POST hero_config__transition_time)
$heroAutoplay = min(90, max(0, (int)$c('hero', 'config', 'transition_time', '5'))); // 0 = pausa indefinida

// ── 3c. Quiénes somos — Ficha 4 (25 años / CKEditor 5) ───────────────────
// Desde 2026-08-23: ficha4/texto almacena HTML enriquecido (CKEditor 5).
// El heading del card va incluido en el HTML (primer bloque H3 del editor).
// safeHtml() filtra antes de emitir.
$qsConfianzaHtml = $c('quienes-somos', 'ficha4', 'texto');

// ── 3d. Carrusel de especialidades y áreas — 16 tarjetas (sin fallback) ───────────────────
// Textos e imágenes dinámicos desde web_contenidos (especialidades/carouselN/texto HTML y config.carouselN_img).
$carouselCards = [];
for ($ci = 1; $ci <= 16; $ci++) {
    $cActivo = $c('especialidades', "carousel{$ci}", 'activo', $ci <= 12 ? '1' : '0');
    if ($cActivo === '0') continue; // Omitir tarjeta desactivada (apagada) desde el CMS
    $cHtml = trim((string)$c('especialidades', "carousel{$ci}", 'texto'));
    if ($cHtml === '') continue; // Omitir si no tiene texto redactado en la BD
    $cImg = trim((string)$c('especialidades', 'config', "carousel{$ci}_img", $cfg("carousel{$ci}_img", '')));
    $carouselCards[$ci] = [
        'img'   => $cImg,
        'texto' => $cHtml,
    ];
}

// ── 3e. Calidad gallery — 3 tarjetas (sin fallback) ────────────────────────
$_calDef = [
    1 => ['Área de Hematología',      'Análisis de biometría hemática y células sanguíneas con rigor científico y alta precisión.'],
    2 => ['Química Clínica',          'Determinación automatizada de metabolitos, perfil lipídico y enzimas específicas.'],
    3 => ['Microbiología y Cultivos', 'Aislamiento, tinción de Gram y pruebas de susceptibilidad a antimicrobianos.'],
];
$calidadCards = [];
for ($qi = 1; $qi <= 3; $qi++) {
    $qActivo = $c('calidad', "gallery{$qi}", 'activo', '1');
    if ($qActivo === '0') continue; // Omitir tarjeta desactivada (apagada) desde el CMS
    $calidadCards[$qi] = [
        'img'    => $c('calidad', "gallery{$qi}", 'imagen_url', ''),
        'alt'    => $_calDef[$qi][0],
        'titulo' => $c('calidad', "gallery{$qi}", 'titulo',      $_calDef[$qi][0]),
        'desc'   => $c('calidad', "gallery{$qi}", 'descripcion', $_calDef[$qi][1]),
    ];
}

// ── 1d. Promociones vigentes → $promos ───────────────────────────────────────
$promos = $_bypassCache ? null : \Common\Cache::get(\Common\Cache::KEY_PROMOS);
if ($promos === null) {
    $promoStmt = $db->query(
        "SELECT id, dia_semana, imagen_fondo, activo
         FROM catalogo_promociones
         WHERE activo = 1
         ORDER BY orden ASC, id ASC"
    );
    $promos = $promoStmt ? $promoStmt->fetchAll(\PDO::FETCH_ASSOC) : [];
    if (!$_bypassCache) \Common\Cache::set(\Common\Cache::KEY_PROMOS, $promos);
}

// ── Inyectar borrador de promociones si es vista previa ──────────────────
if ($isPreview && !empty($_SESSION['cms_draft']['promociones'])) {
    $promoDraft = $_SESSION['cms_draft']['promociones'];
    
    // Si la DB trajo menos de 7 (o las que sean), igual debemos iterar
    // o al revés: iteramos sobre los 7 IDs y construimos el array
    $draftPromos = [];
    foreach ([1,2,3,4,5,6,7] as $pId) {
        if (!isset($promoDraft["promo_active_{$pId}"])) continue; // Si no está activo en el draft, saltar (where activo=1)
        
        // Buscar si ya existía en la BD para heredar joins
        $existingRow = null;
        foreach ($promos as $row) {
            if ($row['id'] == $pId) {
```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:46 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `gestion-web`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 Oct 2026, 2:46 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `Flight::route`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Local File Search

**Status:** Completed
**Created:** 5 Oct 2026, 2:46 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `index.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L84-264)</summary>

**Path:** `Unknown file`

```
Flight::route('POST /cms/save', function () {
    header('Content-Type: application/json; charset=utf-8');

    // RBAC: Verificar permiso para guardar en CMS
    Flight::rbac()->requirePermission('gestionar_cms', '/laesh/login/login.php?portal=admin');

    // R14.12: CSRF primero
    if (!\Common\CsrfGuard::isValid()) {
        http_response_code(403);
        Logger::log('WARN', 'Token CSRF inválido en cms/save', Flight::auth()->getUserId() ?: null);
        echo json_encode(['ok' => false, 'msg' => 'Token de seguridad inválido.']);
        exit;
    }

    $db      = Flight::db();
    $userId  = Flight::auth()->getUserId();
    $seccion = trim($_POST['seccion'] ?? '');

    // Normalizar alias legacy a nombres canónicos (D-07)
    $seccionMap = ['privacidad' => 'aviso-privacidad', 'video' => 'video-promo'];
    if (isset($seccionMap[$seccion])) {
        $seccion = $seccionMap[$seccion];
    }

    // Validar sección — solo valores canónicos (D-07)
    $seccionesValidas = ['hero','quienes-somos','especialidades','promociones','calidad','ubicacion','aviso-privacidad','video-promo','footer','seo','configuracion-general'];
    if (!in_array($seccion, $seccionesValidas, true)) {
        http_response_code(400);
        echo json_encode(['ok' => false, 'msg' => 'Sección no válida.']);
        exit;
    }

    $campos = $_POST;
    unset($campos['csrf_token'], $campos['seccion']);

    try {
        $db->beginTransaction();

        // FIX 2026-09-07: tipo se auto-detecta por patrón de URL (no hardcodeado a 'texto').
        // El ON DUPLICATE KEY UPDATE también propaga tipo para auto-sanar registros previos.
        $stmt = $db->prepare(
            "INSERT INTO web_contenidos (seccion, subseccion, clave, valor, tipo, actualizado_por)
             VALUES (:sec, :sub, :clave, :valor, :tipo, :uid)
             ON DUPLICATE KEY UPDATE valor = VALUES(valor), tipo = VALUES(tipo), actualizado_por = VALUES(actualizado_por)"
        );

        // Configuraciones globales: campos _cfg_{clave} → tabla configuraciones (D-04)
        // UPSERT: inserta si la clave no existe, actualiza si ya existe
        $cfgStmt = $db->prepare(
            "INSERT INTO configuraciones (clave, valor, descripcion) VALUES (:clave, :valor, NULL)
             ON DUPLICATE KEY UPDATE valor = VALUES(valor)"
        );

        // Manejo específico de catalogo_promociones en MariaDB cuando la sección es 'promociones'
        if ($seccion === 'promociones') {
            $rawIds = $_POST['promo_id'] ?? [];
            $promoIds = is_array($rawIds) ? $rawIds : (is_numeric($rawIds) ? [$rawIds] : []);

            if (empty($promoIds)) {
                $promoIds = $db->query("SELECT id FROM catalogo_promociones ORDER BY id ASC")->fetchAll(\PDO::FETCH_COLUMN) ?: [1, 2, 3, 4, 5, 6, 7];
            }

            $stmtPromo = $db->prepare("
                UPDATE catalogo_promociones SET
                    dia_semana     = :dia_semana,
                    imagen_fondo   = :imagen_fondo,
                    activo         = :activo
                WHERE id = :id
            ");

            foreach ($promoIds as $pId) {
                $pIdInt = (int)$pId;
                if ($pIdInt <= 0) continue;

                $diaSem = trim($_POST["promo_dia_semana_{$pIdInt}"] ?? '');
                $img    = trim($_POST["promo_img_{$pIdInt}"] ?? '');
                $act    = isset($_POST["promo_active_{$pIdInt}"]) ? 1 : 0;

                $stmtPromo->execute([
                    'id'            => $pIdInt,
                    'dia_semana'    => $diaSem,
                    'imagen_fondo'  => $img,
                    'activo'        => $act,
                ]);
            }
        }

        $hasCfgParam = false;
        foreach ($campos as $fieldKey => $valor) {
            if (str_starts_with($fieldKey, 'promo_')) {
                continue; // Omitir campos de catalogo_promociones de la tabla web_contenidos
            }
            // D-04: campos _cfg_{clave} van a configuraciones, no a web_contenidos
            if (str_starts_with($fieldKey, '_cfg_')) {
                $hasCfgParam = true;
                $cfgClave = substr($fieldKey, 5); // quitar prefijo '_cfg_'
                $cfgStmt->execute(['clave' => $cfgClave, 'valor' => $valor]);
                continue;
            }
            // Formato estándar: {subseccion}__{clave}  ej: slide1__titulo
            [$sub, $clave] = array_pad(explode('__', $fieldKey, 2), 2, $fieldKey);

            // Auto-detectar tipo: CMS URL → imagen_url; todo lo demás → texto
            $tipoValor = str_starts_with((string)$valor, '/laesh-web-assets-uipv1a/cms/')
                ? 'imagen_url'
                : 'texto';
            $stmt->execute([
                'sec'   => $seccion,
                'sub'   => $sub,
                'clave' => $clave,
                'valor' => $valor,
                'tipo'  => $tipoValor,
                'uid'   => $userId,
            ]);
        }

        $db->commit();
        unset($_SESSION['cms_draft'][$seccion]);
        Logger::logAlways('INFO', "CMS: sección '{$seccion}' publicada.", $userId);

        // ── Invalidar caché L2 según la sección y parámetros modificados ───────────
        Cache::init();
        $keysToInvalidate = [Cache::KEY_CMS];
        if ($seccion === 'promociones') {
            $keysToInvalidate[] = Cache::KEY_PROMOS;
        } elseif ($seccion === 'especialidades') {
            // 2026-09-24: KEY_CATALOG_SEARCH (buscador de estudios del header
            // público) depende de los mismos datos que KEY_TREE — se agregó sin
            // sumarlo aquí, quedando obsoleto hasta 24h tras publicar cambios de
            // "especialidades" desde el CMS.
            $keysToInvalidate[] = Cache::KEY_TREE;
            $keysToInvalidate[] = Cache::KEY_CATALOG_SEARCH;
        }
        if ($hasCfgParam || $seccion === 'configuracion-general') {
            $keysToInvalidate[] = Cache::KEY_CFG;
        }
        Cache::invalidate(array_unique($keysToInvalidate));

        // ── Recompilar config-compiled.js (SSOT estático, mismo patrón que
        //    CatalogBuilder para el catálogo) — solo cuando cambiaron campos
        //    _cfg_* (tabla `configuraciones`), no en cada guardado de CMS.
        if ($hasCfgParam || $seccion === 'configuracion-general') {
            \Common\ConfigBuilder::build($userId);
        }

        // Devolver CSRF rotado para que el cliente actualice su data-csrf sin recargar
        echo json_encode(['ok' => true, 'msg' => '¡Cambios publicados exitosamente!', 'csrf_token' => $_SESSION['csrf_token']]);

    } catch (\PDOException $e) {
        $db->rollBack();
        DB::logFallback('ERROR', "INSERT web_contenidos seccion={$seccion}", $e->getMessage());
        http_response_code(500);
        echo json_encode(['ok' => false, 'msg' => 'Error al guardar. Intenta de nuevo.']);
    }
});

// ── POST /cms/upload — Subida de imágenes CMS (GAP-IMG resuelto) ─────────────
//
// Contrato:
//   - Content-Type: multipart/form-data  (input type="file" en el cliente)
//   - POST body: file (el archivo), slot (nombre del slot, ej: hero-slide1), csrf_token
//   - Respuesta JSON: {ok: bool, url: string, filename: string, msg: string}
//
// Seguridad:
//   - RBAC gestionar_cms obligatorio
//   - CSRF validado antes de procesar el archivo
//   - MIME validado por contenido real del archivo (finfo, no solo extensión)
//   - Extensión derivada del MIME, no del nombre original del cliente
//   - Filename generado: {slot}-{fecha}-{random4bytes}.{ext}
//
// Almacenamiento KVM2 (Hostinger nativo):
//   - Escritura física: /opt/laesh/assets/laesh-web-assets-uipv1a/cms/
//   - URL pública  : /laesh-web-assets-uipv1a/cms/{filename}
//   - Valor real leído de BD: configuraciones.clave='cms_upload_dir' (insertado por 06_deploy_app.sh).
Flight::route('POST /cms/upload', function () {
    header('Content-Type: application/json; charset=utf-8');

    // Guard RBAC
    Flight::rbac()->requirePermission('gestionar_cms', '/laesh/login/login.php?portal=admin');

    // CSRF
```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:47 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:47 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:47 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:47 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.8 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 Oct 2026, 2:47 pm

---

---

*Generated by Chatledger for Antigravity*