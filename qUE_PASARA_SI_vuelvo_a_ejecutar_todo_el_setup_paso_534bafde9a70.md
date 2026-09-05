# qUE PASARA:
.. SI vuelvo a ejecutar todo el setup, paso a paso siguiendo /home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/README.md 
.. Habra idempotencia, issues, gaps ?
.. Esta todo listo para volver a replicar el setup en el mismo servidor limpio (si se decidiera reiniciar el servidor a su estado base) ?
Informa me.

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `6ababbb3-9703-4ec6-9968-062153f63e47` |
| **Cascade ID** | `3490c9c1-6484-4bcc-8a4f-534bafde9a70` |
| **Type** | Agent Conversation |
| **Total Steps** | 60 |
| **Started** | 5 Sept 2026, 8:21 am |
| **Completed** | 5 Sept 2026, 8:22 am |

---

## User Request

qUE PASARA:
.. SI vuelvo a ejecutar todo el setup, paso a paso siguiendo /home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/README.md 
.. Habra idempotencia, issues, gaps ?
.. Esta todo listo para volver a replicar el setup en el mismo servidor limpio (si se decidiera reiniciar el servidor a su estado base) ?
Informa me.

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 5 Sept 2026, 8:21 am

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>Directory: `laesh-kvm2-prod` (16 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod`

| Name | Type | Size |
|------|------|------|
| `00_run_all.sh` | File | 6582 bytes |
| `01_preflight.sh` | File | 5350 bytes |
| `02_install_stack.sh` | File | 7053 bytes |
| `03_install_swoole.sh` | File | 5064 bytes |
| `04_configure_stack.sh` | File | 8896 bytes |
| `05_tls_certbot.sh` | File | 7125 bytes |
| `06_deploy_app.sh` | File | 11556 bytes |
| `07_security_harden.sh` | File | 17099 bytes |
| `08_verify.sh` | File | 12050 bytes |
| `README.md` | File | 31619 bytes |
| `configs` | Directory | - |
| `crones` | Directory | - |
| `https` | Directory | - |
| `logs` | Directory | - |
| `pre-setup_hkvm2.sh` | File | 5560 bytes |
| `scripts` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `README.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# laesh-kvm2-prod — Pipeline de Instalación

Setup nativo de **LAESH Bloc Digital v1.2** en Hostinger KVM2 (Ubuntu 24.04 LTS).
Sin Docker. Instalación idempotente paso a paso.

> **Principio de idempotencia**: Cada script verifica el estado antes de actuar.
> Re-ejecutar un script que ya corrió no produce efectos secundarios ni errores.

---

## Servidor

| Parámetro | Valor |
|-----------|-------|
| Proveedor | Hostinger KVM2 |
| SO | Ubuntu 24.04 LTS |
| IP pública | `83.136.219.193` |
| Hostname | `srv1930905.hstgr.cloud` |
| Usuario | `sysadmin` (sudo) |
| RAM | 8 GB · CPU 4 vCPU · Disco 100 GB NVMe |
| Dominio activo | `laesh.mx` → `83.136.219.193` · cert LE emitido 2026-09-05 |

---

## Stack tecnológico

| Componente | Versión | Puerto / Socket |
|------------|---------|-----------------|
| Nginx | latest stable | 80, 443 |
| PHP-FPM | 8.3 (PPA Ondrej) | `/run/php/php8.3-fpm.sock` |
| MariaDB | 11.8 (repo oficial) | `127.0.0.1:3306` (solo loopback) |
| Swoole | 6.2.2 (via PECL) | `127.0.0.1:9502` |
| Composer | 2.x | — |
| certbot | latest | — |

---

## Diseño de disco `/opt/laesh/`

Todo el stack vive bajo `/opt/laesh/`. MariaDB usa un **symlink AppArmor-compatible**:
`/var/lib/mysql` → `/opt/laesh/laesh-db/` (AppArmor sigue viendo la ruta esperada).

```
/opt/laesh/
├── www/
│   └── laesh-swbldi/         # código fuente PHP (portales md/rc/adrc/login/website)
├── assets/
│   └── laesh-web-assets-uipv1a/  # CSS, JS, imágenes estáticos
├── laesh-db/                 # datadir MariaDB (symlink ← /var/lib/mysql)
├── logs/                     # nginx, php-fpm, swoole, mariadb, backup, cert
├── https/                    # self-signed.crt/key (Modo A) · live/ symlink LE (Modo B)
├── backups/
│   └── db/                   # dumps .sql.gz rotados (7 días / 4 semanas)
├── uploads/
│   └── pdfs/                 # PDFs subidos (acceso interno via Nginx)
├── configs/                  # copia de los configs de este pipeline (source of truth)
├── scripts/                  # operacionales (start/stop/status/backup/restore)
└── crones/                   # systemd units, logrotate, cert check
```

---

## Pre-requisitos antes de ejecutar el pipeline

### 1 — Variables de entorno obligatorias

Exportar en la sesión SSH antes de cualquier script:

```bash
# LAESH_ROOT_PASS — contraseña que TÚ defines para el usuario root de MariaDB.
#   Ubuntu 24.04 instala MariaDB con unix_socket (sin contraseña).
#   04_configure_stack.sh la establece automáticamente y guarda en .mariadb-root.cnf.
export LAESH_ROOT_PASS='<contraseña-que-defines-para-root-mariadb>'

# LAESH_APP_PASS — contraseña que TÚ defines para el usuario laesh_app (usuario de la app PHP).
#   00_database.sql crea laesh_app con contraseña dev temporal.
#   setup_hostinger.sh paso 3 la sobreescribe con este valor.
#   04_configure_stack.sh la inyecta en php-fpm-laesh.conf.
#   El paso 06_deploy_app.sh falla con error explícito si no está definida.
export LAESH_APP_PASS='<contraseña-que-defines-para-laesh_app>'

# LAESH_SMTP_PASS — app-password Yahoo para alertas SMTP (monitor_services.sh).
#   07_security_harden.sh sustituye __SMTP_PASS__ en swaks.conf con este valor.
export LAESH_SMTP_PASS='<app-password-yahoo>'

# ── Modo B (dominio + Let's Encrypt) — solo cuando DNS laesh.mx apunte al server ──
# ⚠️ Omitir si DNS aún no está configurado — el paso 5 fallará al validar el dominio.
# Sin LAESH_DOMAIN → Modo A (self-signed, pura IP). Activar Modo B después:
#   export LAESH_DOMAIN='laesh.mx' && sudo -E bash 05_tls_certbot.sh
# export LAESH_DOMAIN='laesh.mx'
# export LAESH_ADMIN_EMAIL='cbena999@gmail.com'   # ya es el default en 00_run_all.sh
```

Sin `LAESH_DOMAIN` → el pipeline corre en **Modo A** (self-signed, pura IP).

### 2 — Transferir el código al servidor (rsync desde local)

Ejecutar desde tu máquina local **antes de correr el pipeline** en el servidor:

```bash
SERVER="sysadmin@83.136.219.193"

# 2a. Pipeline de instalación (este directorio):
rsync -avz --delete \
    /home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/ \
    ${SERVER}:~/laesh-setup/ \
    --exclude='.git'

# 2b. Código fuente de la aplicación:
rsync -avz --delete --mkpath \
    /home/carlos/GitHub/caelitandem_home/restaurantb/www/laesh-swbldi/ \
    ${SERVER}:/home/sysadmin/laesh-src/laesh-swbldi/ \
    --exclude='.git' --exclude='vendor/'

# 2c. Assets estáticos (CSS, JS, imágenes):
rsync -avz --delete --mkpath \
    /home/carlos/GitHub/caelitandem_home/restaurantb/www/laesh-web-assets-uipv1a/ \
    ${SERVER}:/home/sysadmin/laesh-src/laesh-web-assets-uipv1a/ \
    --exclude='.git'

# 2d. Scripts de BD (SQL + orquestador setup_hostinger.sh):
rsync -avz --delete --mkpath \
    /home/carlos/GitHub/caelitandem_home/restaurantb/setup/bds/laesh/ \
    ${SERVER}:/home/sysadmin/laesh-src/setup/bds/laesh/ \
    --exclude='.git'
```

> **¿Por qué 4 rsync?** El pipeline (`06_deploy_app.sh`) busca código de app en
> `/home/sysadmin/laesh-src/laesh-swbldi/` y los scripts BD en
> `/home/sysadmin/laesh-src/setup/bds/laesh/`. La separación permite re-sincronizar
> solo lo que cambió sin re-transferir el pipeline completo.

### 3 — Dar permisos de ejecución al pipeline

Una vez que el rsync completa, **en el servidor**:

```bash
chmod +x ~/laesh-setup/*.sh ~/laesh-setup/scripts/*.sh ~/laesh-setup/https/*.sh
```

### 4 — Verificar pre-requisitos en el servidor antes de ejecutar

```bash
# Confirmar que las variables están definidas:
echo "ROOT: ${LAESH_ROOT_PASS:+[OK — definida]}" 
echo "APP:  ${LAESH_APP_PASS:+[OK — definida]}"
echo "SMTP: ${LAESH_SMTP_PASS:+[OK — definida]}"

# Confirmar que el código llegó:
ls /home/sysadmin/laesh-src/laesh-swbldi/
ls /home/sysadmin/laesh-src/setup/bds/laesh/setup_hostinger.sh
```

---

## Modos TLS

| Modo | Cuándo | Cert | HSTS |
|------|--------|------|------|
| **A — IP / self-signed** | Pre-DNS, pruebas del stack | `openssl req -x509` en `/opt/laesh/https/` | ❌ no |
| **B — Dominio + LE** | DNS `laesh.mx` apunta al VPS | Let's Encrypt via certbot | ✅ sí (1 año) |

El script `05_tls_certbot.sh` detecta el modo automáticamente por la presencia de `LAESH_DOMAIN`.
Pasar de Modo A a Modo B: `export LAESH_DOMAIN=laesh.mx && sudo -E bash 05_tls_certbot.sh`.

---

## Secuencia de ejecución

### Opción A — Pipeline completo automático

```bash
cd ~/laesh-setup
export LAESH_ROOT_PASS='...'
export LAESH_APP_PASS='...'
export LAESH_SMTP_PASS='...'        # app-password Yahoo para alertas SMTP (paso 7)
sudo -E bash 00_run_all.sh
```

### Opción B — Paso a paso (recomendado en primera instalación)

```bash
# Asegurar que las variables están definidas (ver §Pre-requisitos):
export LAESH_ROOT_PASS='...'
export LAESH_APP_PASS='...'
export LAESH_SMTP_PASS='...'        # app-password Yahoo para alertas SMTP

cd ~/laesh-setup

sudo bash 01_preflight.sh
sudo bash 02_install_stack.sh
sudo bash 03_install_swoole.sh
sudo -E bash 04_configure_stack.sh  # inyecta LAESH_APP_PASS en php-fpm-laesh.conf
sudo bash 05_tls_certbot.sh         # Modo A (self-signed) por defecto
sudo -E bash 06_deploy_app.sh       # rsync + BD + Composer; usa LAESH_ROOT_PASS/APP_PASS
sudo -E bash 07_security_harden.sh  # UFW, SMTP conf, log-levels, OPcache, cron backup
sudo bash 08_verify.sh              # 15 checks internos + 27 checks HTTP
```

### Reanudar desde un paso fallido

```bash
sudo -E bash 00_run_all.sh --from=4  # retoma desde 04_configure_stack.sh
sudo -E bash 00_run_all.sh --only=6  # ejecuta solo 06_deploy_app.sh
sudo -E bash 00_run_all.sh --skip=3  # ejecuta todos excepto 03_install_swoole.sh
```

---

## Scripts del pipeline

| Script | Qué hace |
|--------|----------|
| `00_run_all.sh` | Orquestador — ejecuta 01→08 en orden; acepta `--from/--only/--skip` |
| `01_preflight.sh` | Swap 4 GB, sysctl, ulimits, árbol de directorios `/opt/laesh/`, copia configs (`.cnf` `.ini` `.conf` `.path` `.service`) / crones / https / scripts |
| `02_install_stack.sh` | Instala Nginx, MariaDB 11.8, PHP 8.3 + extensiones, Composer; mueve datadir con symlink AppArmor; usa `php8.3 -n` para evitar hang en re-runs post paso 7 |
| `03_install_swoole.sh` | Instala Swoole 6.2.x via PECL; verifica versión via `strings` (no `php -r`) para ser seguro en re-runs con JIT+CLI activo |
| `04_configure_stack.sh` | Copia configs al sistema, reemplaza `__LAESH_APP_PASS__`, establece contraseña root MariaDB, crea `.mariadb-root.cnf`, habilita systemd units, valida nginx/fpm |
| `05_tls_certbot.sh` | **Dual-mode idempotente**: Modo A (self-signed) o Modo B (Let's Encrypt) según `LAESH_DOMAIN` |
| `06_deploy_app.sh` | rsync código fuente, Composer install, inicializa BD (10 SQL scripts + seed), actualiza rutas KVM2 en BD, arranca Swoole |
| `07_security_harden.sh` | UFW, OPcache FPM (JIT tracing) + CLI (sin JIT — P-INFRA-02), cron backup, cron expiry cert, monitor SMTP, log-levels systemd path unit, SSH hardening opcional |
| `08_verify.sh` | 28 checks internos (Sistema/Stack/Servicios/BD/Logs/Infra) + suite `bash/03_test_deploy.sh`. PHP CLI via `php8.3 -n`; Swoole via `strings` (sin invocar PHP) |

---

## Archivos de configuración (`configs/`)

| Archivo | Destino en servidor | Descripción |
|---------|--------------------|----|
| `mariadb-99-laesh.cnf` | `/etc/mysql/mariadb.conf.d/99-laesh.cnf` | bind 127.0.0.1, **2 GB pool**, NVMe IO capacity, tmp_table 64M |
| `php-99-laesh.ini` | `/etc/php/8.3/fpm/conf.d/99-laesh.ini` | hardened, timezone `America/Mexico_City`, session secure |
| `php-fpm-laesh.conf` | `/etc/php/8.3/fpm/pool.d/laesh.conf` | pool `laesh`, **30 workers**, unix socket, env vars DB, `__LAESH_APP_PASS__` |
| `nginx-base.conf` | `/etc/nginx/nginx.conf` | `user www-data`, **4096 conns**, gzip, open_file_cache, **limit_req_zone** login/api |
| `nginx-laesh-ip.conf` | `/etc/nginx/sites-available/laesh` | Modo A: `server_name _`, self-signed, sin HSTS; URL raíz `/` (no `/laesh/`); injection `$laesh_uri` para PHP routing; compat block `/laesh/` → `/`; ACME exception en HTTP |
| `nginx-laesh-domain.conf` | `/etc/nginx/sites-available/laesh` | Modo B: `__LAESH_DOMAIN__` placeholder (sed en 05), LE certs, HSTS 1 año; mismo layout `/` que ip.conf; ACME exception en HTTP para renovación |
| `10-opcache-laesh.ini` | FPM: `/etc/php/8.3/fpm/conf.d/10-opcache-laesh.ini` | OPcache 128 MB, JIT tracing 64 MB, `enable_cli=1` |
| _(generado por paso 7)_ | CLI: `/etc/php/8.3/cli/conf.d/10-opcache-laesh.ini` | **Sin JIT** (`opcache.jit=0`) — P-INFRA-02: JIT + Swoole en CLI = hang indefinido |
| `.mariadb-root.cnf` | `/opt/laesh/configs/.mariadb-root.cnf` | Credenciales root MariaDB via socket; `600 root:root`; usado por pasos 7/8 y logrotate |
| `laesh-log-levels.path` | `/etc/systemd/system/` | Systemd path unit — watch inotify sobre `log-levels.conf` |
| `laesh-log-levels.service` | `/etc/systemd/system/` | Systemd service — ejecuta `apply_log_levels.sh` en cambio de archivo |

---

## Crones y systemd (`crones/`)

| Archivo | Tipo | Descripción |
|---------|------|-------------|
| `swoole-laesh.service` | systemd unit | Swoole WebSocket + HTTP IPC — `User=www-data`, `Restart=always` |
| `logrotate-laesh.conf` | logrotate | nginx, php-fpm, swoole, mariadb — daily, 30 días, compress |
| `check_cert_expiry.sh` | cron semanal (root) | Alerta si TLS vence en < 14 días; intenta auto-renew |
| `cache_renew.cron` | cron diario 5 AM (www-data) | Warm-up Cache L2 OPcache File Store — purge + re-fetch 4 datasets (~13 ms) |

---

## HTTPS (`https/`)

| Archivo | Descripción |
|---------|-------------|
| `issue_cert.sh` | Wrapper certbot: pre-check DNS, emite cert, crea symlink, instala hook post-renovación, verifica dry-run |

**Uso manual de Modo B:**

```bash
export LAESH_DOMAIN=laesh.mx
sudo -E bash https/issue_cert.sh           # emitir cert real
sudo -E bash https/issue_cert.sh --dry-run # probar sin emitir
sudo -E bash https/issue_cert.sh --force-renew
```

---

## Scripts operacionales (`scripts/`)

```bash
sudo bash scripts/laesh-start.sh      # arranca mariadb → php-fpm → swoole → nginx
sudo bash scripts/laesh-stop.sh       # detiene en orden inverso
sudo bash scripts/laesh-status.sh     # semáforo ✓/△/✗ + últimas líneas de logs
sudo bash scripts/swoole-restart.sh   # reinicia Swoole (tras deploy de código WS)
sudo bash scripts/backup_db.sh        # dump laesh_db → /opt/laesh/backups/db/
sudo bash scripts/backup_db.sh --weekly             # retención semanal (35 días)
sudo bash scripts/restore_db.sh /opt/laesh/backups/db/laesh_db_YYYYMMDD_HHMMSS.sql.gz
```

---

## Arquitectura Swoole — doble rol

```
Browser  ──WS──►  Nginx :443 /ws  ──proxy──►  Swoole :9502  (WebSocket server)
PHP-FPM  ──HTTP─► http://127.0.0.1:9502/publish              (HTTP IPC bridge)
```

- **Fast-path**: PHP-FPM llama `/publish` → Swoole reenvía por WebSocket a los clientes conectados.
- **Slow-path fallback**: si Swoole no responde, `notifier.php` escribe en tabla `notificaciones` (BD).
- `notifier.php` detecta si está en Docker (`/.dockerenv`) o nativo; en nativo usa `127.0.0.1:9502`.

---

## Puertos y UFW

| Puerto | Servicio | Acceso |
|--------|----------|--------|
| 22 | SSH | ✅ público |
| 80 | Nginx HTTP | ✅ público (redirect → 443) |
| 443 | Nginx HTTPS | ✅ público |
| 3306 | MariaDB | 🔒 solo loopback (`bind-address=127.0.0.1`) |
| 9502 | Swoole | 🔒 solo loopback (Nginx proxy `/ws` expone WS) |

---

## Verificación final esperada (Modo A)

Tras `08_verify.sh`, el resultado esperado es **28/28 internos OK** + **26/27 HTTP** (solo HSTS falla por diseño):

```
✓ 28 OK  |  △ 0 Avisos  |  ✗ 0 Errores  |  Total: 28 — STACK OPERATIVO
Suite HTTP: 26/27 pruebas pasaron
```

| Check HTTP | Por qué falla en Modo A | Acción |
|------------|------------------------|--------|
| HSTS (`max-age=31536000`) | Sin LE cert; `nginx-laesh-ip.conf` no emite HSTS (self-signed no confiado) | Esperado — se activa en Modo B |

En Modo B (dominio + LE configurado): todos los 27 HTTP checks pasan.

---

---

## Caché L2 — OPcache PHP File Store (§15.9)

Implementada en el código fuente (`commons/Cache.php`). El pipeline la activa vía OPcache ini y el cron.

> **⚠️ PrivateTmp isolation**: `php8.3-fpm.service` tiene `PrivateTmp=true` en Ubuntu 24.04.
> Los workers FPM ven un `/tmp` aislado (namespace de kernel). El caché DEBE estar en
> `/opt/laesh/cache/` — **nunca en `/tmp/`** — para que FPM y el cron www-data vean
> el mismo directorio físico. El env var `LAESH_CACHE_DIR=/opt/laesh/cache` se inyecta
> en `php-fpm-laesh.conf` y en `/etc/cron.d/laesh-cache-renew`.

### Cómo funciona

```
1ª visita:  PHP → MariaDB → array → serialize → /opt/laesh/cache/laesh_cache_prod_LAESH_CMS.php
Siguientes: PHP → Cache::get() → include archivo → OPcache RAM hit (~0.07 ms)
CMS publica: admrc/index.php → Cache::invalidate([KEY_CMS]) → opcache_invalidate(archivo, true)
5 AM diario: cache_renew.php → purge + warm-up 4 datasets desde MariaDB (~13 ms)
```

### 4 datasets cacheados (portal público website/index.php)

| Clave | Tabla(s) | TTL | Invalidación |
|-------|----------|-----|-------------|
| `KEY_CFG` | `configuraciones` (52 filas, 3.4 KB) | 12 h | Sección configuracion-general CMS |
| `KEY_CMS` | `web_contenidos` (133 filas, 54 KB) | 10 min | Cualquier publicación CMS |
| `KEY_TREE` | `catalogo_grupos/categorias/estudios` (144 filas, 58 KB) | 24 h | Sección especialidades |
| `KEY_PROMOS` | `catalogo_promociones` (1–10 filas) | 10 min | Sección promociones |

**Benchmark:** 4 queries/request → 0 queries/request en cache hit. Latencia: 7.6 ms → 0.07 ms.

### Directorio de caché

`/opt/laesh/cache/` — creado en `01_preflight.sh` con `chown www-data:www-data / chmod 0750`.
El env var `LAESH_CACHE_DIR` apunta aquí; FPM y el cron lo ven en el mismo path físico.

### Bypass CMS Preview

`?_preview=1` + sesión activa ADMIN + borrador en `$_SESSION['cms_draft']` → bypass total del cache. El motor sirve desde MariaDB + sesión, no desde RAM.

### Warm-up y cron

```bash
# Verificar que el cron esté instalado
cat /etc/cron.d/laesh-cache-renew

# Forzar warm-up manual
sudo -u www-data LAESH_CACHE_DIR=/opt/laesh/cache php8.3 \
    /opt/laesh/www/laesh-swbldi/crons/cache_renew.php

# Ver log
tail -20 /opt/laesh/logs/cache-renew.log
```

---

## Monitoreo de Servicios y Alertas SMTP

`07_security_harden.sh` instala un cron `*/10 * * * *` que ejecuta `scripts/monitor_services.sh`.

### Servicios monitoreados

| Servicio | Verificación |
|----------|-------------|
| nginx | `systemctl` + `curl http://127.0.0.1/` |
| mariadb | `systemctl` + query `SELECT 1` via `.mariadb-root.cnf` |
| swoole-laesh | `systemctl` + `curl http://127.0.0.1:9502/status` |
| https_e2e | `curl -k https://127.0.0.1/` (stack completo — URL raíz activa) |

### Lógica de reintento y anti-spam

- **3 reintentos** con **30 s entre intentos** (`RETRY_WAIT=30`). Total máximo de espera antes de alertar: ~60 s.
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `README.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file` (L400-754)</summary>

**Path:** `Unknown file`

```
- Si el servicio se recupera en algún reintento → no se envía alerta (blip transitorio).
- **Cooldown 30 min** por servicio — estado en `/opt/laesh/monitor/<svc>.last_alert`.
- `flock` evita ejecuciones solapadas si un ciclo tarda más de 10 min.

### SMTP — configuración

`07_security_harden.sh` despliega `/opt/laesh/configs/swaks.conf` (600 root:root) sustituyendo
`__SMTP_PASS__` con `LAESH_SMTP_PASS`. Protocolo: Yahoo SMTP port 587 STARTTLS auth LOGIN.

```bash
# Verificar que la sustitución fue correcta (no debe aparecer nada):
sudo grep '__SMTP_PASS__' /opt/laesh/configs/swaks.conf

# Probar SMTP manualmente:
sudo bash scripts/test_smtp.sh
# Con destinatario alternativo:
sudo bash scripts/test_smtp.sh --to otro@email.com

# Ver log de monitor:
tail -50 /opt/laesh/logs/monitor-services.log
```

### Estado de alertas

```bash
# Ver cooldowns activos (qué servicios ya alertaron recientemente):
ls -la /opt/laesh/monitor/
stat /opt/laesh/monitor/nginx.last_alert 2>/dev/null

# Forzar re-alerta (borrar cooldown de nginx):
sudo rm /opt/laesh/monitor/nginx.last_alert
```

---

## Log-Levels en Caliente (Hot Reload)

Permite cambiar niveles de log de Nginx, MariaDB, PHP y la app PHP sin reiniciar servicios.

### Mecanismo

```
admin edita /opt/laesh/logs/log-levels.conf (o usa admrc UI, tab "Infra")
    → inotify detecta cambio (kernel) → laesh-log-levels.path dispara
    → laesh-log-levels.service ejecuta scripts/apply_log_levels.sh
    → MariaDB: SET GLOBAL slow_query_log / general_log / log_error_verbosity
    → Nginx: nginx -s reload (aplica error_log level al vuelo)
    → PHP-FPM: reload (aplica php.ini error_reporting al vuelo)
    → escribe /opt/laesh/configs/app-log-level.php (leído por Logger.php)
```

### Formato de `log-levels.conf`

```ini
nginx_error_level=warn          # debug|info|notice|warn|error|crit|alert|emerg
mariadb_slow_query_log=OFF      # ON|OFF
mariadb_slow_query_time=2       # segundos (0-300)
mariadb_log_error_verbosity=2   # 1=errores, 2=+warnings, 3=+notas
mariadb_general_log=OFF         # ON|OFF — activar solo para debugging breve
php_error_reporting=production  # production|development|off
app_log_level=WARN              # DEBUG|INFO|WARN|ERROR|CRITICAL|OFF
```

### Interfaz de administración

El tab **"🔧 Infra: Log-Levels en Caliente"** en `admrc/views/sistema.php` permite editar
estos valores desde el panel de administración con validación server-side de enums.

```bash
# Ver log de aplicaciones de nivel:
tail -25 /opt/laesh/logs/apply-log-levels.log

# Aplicar cambio manualmente (sin editar el archivo):
sudo bash /opt/laesh/scripts/apply_log_levels.sh
```

---

## Logger.php — Filtro de Nivel Mínimo

`commons/Logger.php` implementa filtrado de severidad por request. El nivel se lee de
`/opt/laesh/configs/app-log-level.php` (archivo PHP escrito por `apply_log_levels.sh`).

### Configuración recomendada por entorno

| Entorno | `app_log_level` | Resultado |
|---------|-----------------|-----------|
| **Producción** | `WARN` (default) | Solo WARN, ERROR, CRITICAL, FATAL → mínimo ruido en `sys_logs` y `app.log` |
| **Debug temporal** | `INFO` o `DEBUG` | Activar via tab Infra; revertir a WARN cuando resuelto |
| **Silenciar todo** | `OFF` | Ningún log pasa — usar solo en emergencia para reducir I/O |

### Orden de severidad

```
DEBUG(0) → INFO(1) → WARN(2) → ERROR(3) → CRITICAL(4) → FATAL(5) → OFF(∞)
```

Un log de nivel `N` pasa solo si `N ≥ nivel_mínimo_configurado`.

### Cache por request

El nivel se cachea en `Logger::$minLevel` (propiedad estática) el primer `log()` del request.
Si el nivel cambia en el archivo durante un request ya iniciado, el nuevo nivel aplica desde
el siguiente request (sin overhead de I/O por línea de log).

```bash
# Ver nivel activo:
sudo cat /opt/laesh/configs/app-log-level.php

# Cambiar a INFO via CLI (alternativa a la UI):
echo "nginx_error_level=warn
mariadb_slow_query_log=OFF
mariadb_slow_query_time=2
mariadb_log_error_verbosity=2
mariadb_general_log=OFF
php_error_reporting=production
app_log_level=INFO" | sudo tee /opt/laesh/logs/log-levels.conf
# El path unit detecta el cambio y aplica en segundos.
```

---

## Seguridad — Directivas adicionales en Nginx (§Seguridad_Integral)

### Verbos HTTP restringidos

Solo `GET`, `POST`, `HEAD` permitidos. `TRACE`, `OPTIONS`, `DELETE`, `PUT` devuelven `405`:
```nginx
if ($request_method !~ ^(GET|POST|HEAD)$) { return 405; }
```
Presente en ambos `nginx-laesh-ip.conf` y `nginx-laesh-domain.conf`.

### Rate limiting login

Definido en `nginx-base.conf`, aplicado en `location /login/`:
```nginx
# base.conf:
limit_req_zone $binary_remote_addr zone=login:10m rate=5r/m;
# site conf (location /login/):
limit_req zone=login burst=3 nodelay;
```
Complementa el throttling automático de Delight Auth (`users_throttling` en BD).

### Bloqueo PHP en uploads

```nginx
location ~* /laesh-uploads/.*\.php$ { deny all; return 404; }
```
Previene que un PDF malicioso enmascarado se ejecute como script PHP.

### Least Privilege MariaDB

`laesh_app` tiene solo permisos DML: `SELECT, INSERT, UPDATE, DELETE ON laesh_db.*`.
`07_security_harden.sh` paso 5 verifica que no haya `DROP`, `ALTER`, `ALL PRIVILEGES`.

### SSH Hardening (§1.5)

`07_security_harden.sh` paso 6. Requiere llave pública en `authorized_keys` antes de deshabilitar contraseña:
```bash
# Pre-requisito (desde tu máquina local):
ssh-copy-id -p 22 sysadmin@83.136.219.193

# Luego en el servidor:
sudo bash 07_security_harden.sh  # SSH hardening ON por default
```
Aplica: `PermitRootLogin no`, `PasswordAuthentication no`, `MaxAuthTries 3`.

---

## Rollback — Procedimientos ante fallo (§19.7)

### Rollback de configuración Nginx

```bash
# Nginx no arranca tras cambio de config:
sudo nginx -t                              # ver error exacto
sudo cp /etc/nginx/nginx.conf.bak nginx.conf  # si existe backup
sudo systemctl reload nginx
```

### Rollback de deploy de código (rsync)

```bash
# Restaurar a versión anterior (si se hizo backup previo)
sudo rsync -av /opt/laesh/backups/www-FECHA/ /opt/laesh/www/
sudo systemctl restart php8.3-fpm
```

### Rollback de BD

```bash
# Listar dumps disponibles
ls -lh /opt/laesh/backups/db/

# Restaurar dump específico
sudo bash /opt/laesh/scripts/restore_db.sh /opt/laesh/backups/db/laesh_db_YYYYMMDD_HHMMSS.sql.gz
# El script crea un backup previo automático antes de restaurar
```

### Rollback de versión PHP-FPM

```bash
# Ver config activa
php8.3 --ini | grep "Loaded Configuration"

# Revertir ini de laesh
sudo cp /etc/php/8.3/fpm/conf.d/99-laesh.ini.bak /etc/php/8.3/fpm/conf.d/99-laesh.ini
sudo systemctl reload php8.3-fpm
```

### Rollback de MariaDB config

```bash
# El archivo de backup se crea en 07_security_harden.sh (SSH) y manualmente recomendado antes de cambios
sudo cp /etc/mysql/mariadb.conf.d/99-laesh.cnf.bak /etc/mysql/mariadb.conf.d/99-laesh.cnf
sudo systemctl restart mariadb
```

---

## Gaps detectados y fixes aplicados (deploy 2026-09-04 / stabilización 2026-09-05)

Issues encontrados durante el despliegue en producción KVM2 (`83.136.219.193`) y sus correcciones.

### G-01 — HTTP 404 en `/laesh/`, `/laesh/adrc/`, `/laesh/login/login.php`

**Causa raíz:** `index index.php` en el location `alias` genera un internal redirect  
(e.g. `/laesh/` → `/laesh/index.php`) que cae en el regex genérico `~ ^/laesh/(.+\.php)$`  
con `$1=index.php` → `SCRIPT_FILENAME` incorrecto (`laesh-swbldi/index.php`, no existe).  
Para `adrc`, la URL usa `adrc` pero el dirname físico es `admrc`.

**Fix:** `nginx-laesh-ip.conf` y `nginx-laesh-domain.conf` — 3 location handlers específicos  
declarados **antes** del genérico:
- `location = /laesh/index.php` → `website/index.php` (exacto)
- `location ~ ^/laesh/login/(.+\.php)$` → `website/login/$1`
- `location ~ ^/laesh/adrc/(.+\.php)$` → `admrc/$1`

### G-02 — HTTP 404 en `/laesh-web-assets-uipv1a/css/portal.css` y `app.js`

**Causa raíz:** El regex global `location ~* \.(css|js)$` (sin `root`/`alias`) tiene  
prioridad sobre el prefix `location /laesh-web-assets-uipv1a/` → nginx usa  
`/usr/share/nginx/html` como root → 404. Se confirma con `nginx -T` (grep de `root /usr/share`).

**Fix:** `location ^~ /laesh-web-assets-uipv1a/` — el modificador `^~` detiene la  
evaluación de regex para ese prefijo, forzando el bloque `alias` correcto.  
Requirió `systemctl restart nginx` (no solo `reload`) para limpiar workers cacheados.

### G-03 — `01_preflight.sh` no copiaba `.path`/`.service` a `/opt/laesh/configs/`

**Causa raíz:** Solo se copiaban `*.cnf`, `*.ini`, `*.conf`. Los systemd path/service units  
(`laesh-log-levels.path`, `laesh-log-levels.service`) no llegaban al servidor.  
`07_security_harden.sh` buscaba los units en `/opt/laesh/configs/` → no los encontraba  
→ `systemctl enable laesh-log-levels.path` fallaba.

**Fix:** Agregadas 2 líneas en paso 5/5 de `01_preflight.sh`:
```bash
cp -v "${SETUP_DIR}"/configs/*.path    /opt/laesh/configs/ 2>/dev/null || true
cp -v "${SETUP_DIR}"/configs/*.service /opt/laesh/configs/ 2>/dev/null || true
```

### G-04 — `07_security_harden.sh` falso positivo en Least Privilege check

**Causa raíz:** `mariadb -u root` falla silencioso después de que paso 4 establece  
contraseña root → `GRANTS` queda vacío → `grep -Eqi 'ALL PRIVILEGES|DROP|...'`  
no encuentra nada → reporta "OK" aunque no se pudo verificar.

**Fix:** Preferir `.mariadb-root.cnf` (socket auth con contraseña) si existe;  
fallback `-u root` solo en fresh install pre-paso-4.

### G-05 — P-INFRA-02: PHP CLI hang con OPcache JIT + Swoole

**Causa raíz:** `07_security_harden.sh` copiaba el mismo `10-opcache-laesh.ini`  
(que contiene `opcache.jit=tracing` + `opcache.enable_cli=1`) a FPM **y CLI**.  
`php8.3` CLI con esos ajustes + `extension=swoole.so` → hang indefinido.  
Afectaba: `08_verify.sh`, `cache_renew.cron`, cualquier llamada `php8.3` directa.

**Fix:** Paso 7 genera **dos** ini distintos:
- **FPM**: `10-opcache-laesh.ini` completo (JIT tracing 64 MB — máx rendimiento)
- **CLI**: misma base pero `opcache.jit=0` + `opcache.jit_buffer_size=0M` (sin JIT)

`08_verify.sh` y `03_install_swoole.sh` usan `php8.3 -n` donde procede,  
y `strings` sobre el `.so` para versión de Swoole (sin invocación PHP).

### G-06 — `08_verify.sh` check Swoole devuelve versión errónea

**Causa raíz:** `grep -oE '6[.][0-9]+[.][0-9]+' | head -1` encontraba `6.0.0` de  
una librería embebida (OpenSSL/brotli) antes que la versión Swoole real.

**Fix:** `grep -oE '6[.][0-9]+[.][0-9]+' | sort -V | tail -1` + patrón esperado `6\.2\.`  
(cualquier patch de 6.2.x), label "Swoole 6.2.x".

### G-07 — `03_install_swoole.sh` y `02_install_stack.sh` usan `php8.3 -r` en re-runs

**Causa raíz:** Si se re-ejecutan DESPUÉS de paso 7 (JIT+CLI+Swoole activos),  
las llamadas `php8.3 -r "echo SWOOLE_VERSION"`, `php8.3 -r 'echo PHP_VERSION;'`  
y `composer --version` (que invoca php) cuelgan.

**Fix `03`:** Idempotency check y verificación final usan `strings` sobre el `.so`.  
Activa check usa `ls /etc/php/8.3/fpm/conf.d/20-swoole.ini`.  
**Fix `02`:** `php8.3 -n -r 'echo PHP_VERSION;'` y `php8.3 -n /usr/local/bin/composer --version`.

---

### G-08 — URL raíz: app servida en `/laesh/` en vez de `/` (2026-09-05)

**Causa raíz:** Los nginx configs tenían `location /laesh/X` como prefijo en todas las rutas.
La app PHP (Flight) tenía rutas registradas como `/laesh/X`. Resultado: el dominio `laesh.mx/`
daba 404; había que ir a `laesh.mx/laesh/`.

**Fix:** `nginx-laesh-ip.conf` y `nginx-laesh-domain.conf` — todos los location blocks cambiados
a raíz `/X`. Mecanismo de inyección para preservar PHP routing sin tocar código PHP:
- `set $laesh_uri /laesh$request_uri;` al inicio del server block
- `fastcgi_param REQUEST_URI $laesh_uri;` en todos los PHP handlers
- PHP recibe REQUEST_URI `/laesh/X` → sus rutas `/laesh/X` hacen match ✓
- Browser ve URL `/X` ✓
- Block `location ^~ /laesh/ { set $laesh_uri $request_uri; rewrite ... last; }` para compat
  con bookmarks viejos o PHP-generated links con prefijo (evita doble inyección)
- `cms_upload_endpoint` en BD actualizado de `/laesh/adrc/cms/upload` → `/adrc/cms/upload`

### G-CERTBOT-01 — certbot `--nginx` crea duplicados TLS en nginx config (2026-09-05)

**Causa raíz:** `certbot --nginx` modifica el site config en-place inyectando
`include /etc/letsencrypt/options-ssl-nginx.conf` (que tiene `ssl_protocols` + `ssl_ciphers`).
Nuestro config ya tenía esas directivas → `nginx: ssl_ciphers directive is duplicate`.

**Fix `05_tls_certbot.sh`:** Cambiado `certbot --nginx` → `certbot certonly --webroot -w /opt/laesh/www`.
Certonly solo emite el cert sin tocar el config nginx. Domain.conf actualizado con
placeholder `__LAESH_DOMAIN__` (reemplazado por sed en el script) para cert paths LE reales.
HTTP block tiene excepción ACME: `location ^~ /.well-known/acme-challenge/` antes del 301.

### G-BACKUP-01 — `backup_db.sh` producía dumps vacíos (20 bytes) sin alerta (2026-09-05)

**Causa raíz:** `mariadb-dump` se invocaba sin credenciales. Paso 4 establece contraseña root.
Resultado: 15 dumps de 20 bytes (gzip vacío) generados de 17:00 a 07:00 sin ninguna alerta.

**Fix `scripts/backup_db.sh`:**
- `--defaults-extra-file=/opt/laesh/configs/.mariadb-root.cnf` (creado en paso 4)
- Trap en `EXIT`: si `_BACKUP_OK=false`, llama `send_alert.sh` con error
- Validación post-dump: `stat -c%s $FILE` < 10 KB → alerta + `rm -f` del archivo vacío
- `_BACKUP_OK=true` solo se fija al final exitoso (guard contra false positives en exit 0)

**Fix `scripts/monitor_services.sh`:**
- Función `check_backup_fresh()` agregada: falla si último backup > 90 min o < 10 KB
- Alerta SMTP si backup_fresh falla (sujeto a cooldown 30 min anti-spam)

---

## Relacionado

- [README del directorio deploy](../README.md) — `sync_to_hkvm2.sh` y cómo transferir este pipeline
- `setup_hostinger.sh` — script de inicialización de BD (10 SQL + seed); invocado por `06_deploy_app.sh`
- Especificación técnica: `portafolio-dev-2026/blocklabgd/v1.2/et/Especificacion_Tecnica.html`
- Seguridad: `portafolio-dev-2026/blocklabgd/v1.2/et/Tecnica_Seguridad_Integral.html`
- Infraestructura: `portafolio-dev-2026/blocklabgd/v1.2/et/Tecnica_Infraestructura_Despliegue.html`

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `00_run_all.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH Bloc Digital v1.2 — Orquestador del Pipeline de Instalación
# Hostinger KVM2 · Ubuntu 24.04 LTS · Stack Nativo
#
# Uso:
#   sudo bash 00_run_all.sh                        # completo, Modo A (IP/self-signed)
#   sudo LAESH_DOMAIN=laesh.mx bash 00_run_all.sh  # completo, Modo B (LE)
#   sudo bash 00_run_all.sh --from=4               # reanudar desde paso 4
#   sudo bash 00_run_all.sh --only=3               # solo paso 3
#   sudo bash 00_run_all.sh --skip=5               # saltar TLS (deploy sin dominio)
#
# Variables de entorno:
#   LAESH_DOMAIN        Dominio (vacío = Modo A IP/self-signed)
#   LAESH_ADMIN_EMAIL   Email para certbot (default: cbena999@gmail.com)
#   LAESH_ROOT_PASS     Contraseña root MariaDB (REQUERIDA en paso 6)
#   LAESH_APP_PASS      Contraseña laesh_app MariaDB (REQUERIDA en paso 6)
#   LAESH_SMTP_PASS     App-password Yahoo SMTP para alertas (REQUERIDA en paso 7)
# ==============================================================================
set -euo pipefail

# ── Configuración ──────────────────────────────────────────────────────────────
SETUP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR="/opt/laesh/logs"
LOG_FILE="${LOG_DIR}/install_$(date +%F_%H%M%S).log"
export LAESH_DOMAIN="${LAESH_DOMAIN:-}"
export LAESH_ADMIN_EMAIL="${LAESH_ADMIN_EMAIL:-cbena999@gmail.com}"
export LAESH_SMTP_PASS="${LAESH_SMTP_PASS:-}"
# Propagar explícitamente para que 04_configure_stack.sh (paso 4) pueda
# establecer la contraseña root en MariaDB y crear .mariadb-root.cnf.
export LAESH_ROOT_PASS="${LAESH_ROOT_PASS:-}"
export LAESH_APP_PASS="${LAESH_APP_PASS:-}"

# ── Colores ────────────────────────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
CYAN='\033[0;36m'; BOLD='\033[1m'; NC='\033[0m'

log()  { echo -e "${CYAN}[$(date +%T)]${NC} $*" | tee -a "${LOG_FILE}" 2>/dev/null || echo -e "${CYAN}[$(date +%T)]${NC} $*"; }
ok()   { echo -e "${GREEN}[✓]${NC} $*" | tee -a "${LOG_FILE}" 2>/dev/null || echo -e "${GREEN}[✓]${NC} $*"; }
warn() { echo -e "${YELLOW}[△]${NC} $*" | tee -a "${LOG_FILE}" 2>/dev/null || echo -e "${YELLOW}[△]${NC} $*"; }
err()  { echo -e "${RED}[✗]${NC} $*" | tee -a "${LOG_FILE}" 2>/dev/null || echo -e "${RED}[✗]${NC} $*"; }

# ── Root check ─────────────────────────────────────────────────────────────────
[ "$EUID" -ne 0 ] && { err "Ejecutar con sudo: sudo bash $0 $*"; exit 1; }

# ── Args ───────────────────────────────────────────────────────────────────────
FROM_STEP=1; ONLY_STEP=0; SKIP_STEP=0
for arg in "$@"; do
    case "$arg" in
        --from=*) FROM_STEP="${arg#--from=}" ;;
        --only=*) ONLY_STEP="${arg#--only=}" ;;
        --skip=*) SKIP_STEP="${arg#--skip=}" ;;
    esac
done

# ── Log dir mínimo (antes de paso 1) ──────────────────────────────────────────
mkdir -p "${LOG_DIR}" 2>/dev/null || true

echo ""
echo -e "${BOLD}══════════════════════════════════════════════════════${NC}"
echo -e "${BOLD} LAESH Bloc Digital v1.2 — Pipeline de Instalación   ${NC}"
echo -e "${BOLD} Hostinger KVM2 · $(date '+%Y-%m-%d %H:%M:%S')       ${NC}"
if [[ -n "$LAESH_DOMAIN" ]]; then
    echo -e "${BOLD} Modo: B — Dominio + Let's Encrypt (${LAESH_DOMAIN}) ${NC}"
else
    echo -e "${BOLD} Modo: A — IP + Self-Signed (sin dominio)           ${NC}"
fi
echo -e "${BOLD}══════════════════════════════════════════════════════${NC}"
echo ""

# ── Ejecutar paso ──────────────────────────────────────────────────────────────
run_step() {
    local num="$1" name="$2" script="$3"
    [[ $ONLY_STEP -gt 0 && $ONLY_STEP -ne $num ]] && return 0
    [[ $num -lt $FROM_STEP ]] && { warn "Paso $num ($name) — OMITIDO (--from=$FROM_STEP)"; return 0; }
    [[ $SKIP_STEP -eq $num ]] && { warn "Paso $num ($name) — OMITIDO (--skip=$num)"; return 0; }

    echo ""
    log "━━ Paso $num: ${name}"
    local start_ts=$SECONDS
    if bash "${SETUP_DIR}/${script}" 2>&1 | tee -a "${LOG_FILE}"; then
        local elapsed=$(( SECONDS - start_ts ))
        ok "Paso $num OK — ${elapsed}s"
    else
        err "Paso $num FALLÓ — revisar log: ${LOG_FILE}"
        err "Para reanudar desde este paso: sudo bash 00_run_all.sh --from=$num"
        exit 1
    fi
}

# ── Pipeline ───────────────────────────────────────────────────────────────────
T0=$SECONDS

run_step 1 "Preflight (swap, dirs, ulimit)"     "01_preflight.sh"
run_step 2 "Instalar stack (Nginx/MariaDB/PHP)" "02_install_stack.sh"
run_step 3 "Instalar Swoole 6.2.2"              "03_install_swoole.sh"
run_step 4 "Configurar stack"                   "04_configure_stack.sh"
run_step 5 "TLS Certbot (Modo A/B)"             "05_tls_certbot.sh"
run_step 6 "Deploy webapp + BD"                 "06_deploy_app.sh"
run_step 7 "Security hardening"                 "07_security_harden.sh"
run_step 8 "Verificación final"                 "08_verify.sh"

ELAPSED=$(( SECONDS - T0 ))
echo ""
echo -e "${BOLD}══════════════════════════════════════════════════════${NC}"
ok "Pipeline completo — ${ELAPSED}s total"
echo -e "  Log: ${LOG_FILE}"
echo -e "${BOLD}══════════════════════════════════════════════════════${NC}"
echo ""

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `01_preflight.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH KVM2 · Paso 1 — Preflight
# Swap 4 GB, árbol /opt/laesh/, ulimit, sysctl.
# Idempotente: detecta estado existente antes de actuar.
# ==============================================================================
set -euo pipefail
[ "$EUID" -ne 0 ] && { echo "[ERROR] Requiere sudo"; exit 1; }

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'
ok()   { echo -e "${GREEN}  ✓${NC} $*"; }
warn() { echo -e "${YELLOW}  △${NC} $*"; }
log()  { echo "  → $*"; }

echo "── 1/5 Swap 4 GB ─────────────────────────────────────────────"
if swapon --show | grep -q "/swapfile"; then
    SWAP_SIZE=$(swapon --show --bytes | awk '/swapfile/{print $3}')
    warn "Swap ya activo ($(numfmt --to=iec $SWAP_SIZE)). Omitiendo creación."
else
    log "Creando /swapfile 4 GB..."
    fallocate -l 4G /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    if ! grep -q '/swapfile' /etc/fstab; then
        echo '/swapfile none swap sw 0 0' >> /etc/fstab
    fi
    ok "Swap 4 GB activo"
fi

echo ""
echo "── 2/5 Parámetros del kernel ─────────────────────────────────"
cat > /etc/sysctl.d/99-laesh.conf << 'EOF'
# LAESH Prod — Hostinger KVM2
vm.swappiness = 10
net.core.somaxconn = 65535
net.ipv4.tcp_fin_timeout = 30
fs.file-max = 200000
EOF
sysctl -p /etc/sysctl.d/99-laesh.conf > /dev/null
ok "sysctl aplicado (swappiness=10, somaxconn=65535)"

echo ""
echo "── 3/5 ulimit (open files) ───────────────────────────────────"
if ! grep -q 'laesh-limits' /etc/security/limits.conf; then
    cat >> /etc/security/limits.conf << 'EOF'
# laesh-limits
*    soft nofile 65535
*    hard nofile 65535
root soft nofile 65535
root hard nofile 65535
EOF
fi
# systemd override
mkdir -p /etc/systemd/system.conf.d/
cat > /etc/systemd/system.conf.d/99-laesh-limits.conf << 'EOF'
[Manager]
DefaultLimitNOFILE=65535
EOF
ok "ulimit configurado (65535)"

echo ""
echo "── 4/5 Árbol /opt/laesh/ ─────────────────────────────────────"
DIRS=(
    /opt/laesh/www
    /opt/laesh/assets
    /opt/laesh/uploads/pdfs
    /opt/laesh/uploads/cms
    /opt/laesh/laesh-db
    /opt/laesh/https
    /opt/laesh/scripts
    /opt/laesh/configs
    /opt/laesh/crones
    /opt/laesh/logs
    /opt/laesh/backups
    /opt/laesh/cache           # Cache L2 OPcache File Store (PrivateTmp-safe, fuera de /tmp)
    /opt/laesh/monitor         # Estado cooldown monitor_services.sh (<svc>.last_alert)
    /var/log/php8.3-fpm        # para compatibilidad con systemd
)
for d in "${DIRS[@]}"; do
    if [ -d "$d" ]; then
        warn "$d ya existe"
    else
        mkdir -p "$d"
        ok "$d creado"
    fi
done

# laesh-db: MariaDB la usará — prefijar permisos correctos
# (el chown a mysql:mysql se hace en 02 después de instalar mariadb)
chmod 0750 /opt/laesh/laesh-db

# uploads necesita escritura de www-data
chmod 0750 /opt/laesh/uploads/pdfs
chmod 0755 /opt/laesh/uploads/cms   # paso 6 aplica chown www-data:www-data + 0755

echo ""
echo "── 5/5 Copiar configs fuente a /opt/laesh/configs/ ──────────"
SETUP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ -d "${SETUP_DIR}/configs" ]; then
    cp -v "${SETUP_DIR}"/configs/*.cnf     /opt/laesh/configs/ 2>/dev/null || true
    cp -v "${SETUP_DIR}"/configs/*.ini     /opt/laesh/configs/ 2>/dev/null || true
    cp -v "${SETUP_DIR}"/configs/*.conf    /opt/laesh/configs/ 2>/dev/null || true
    cp -v "${SETUP_DIR}"/configs/*.path    /opt/laesh/configs/ 2>/dev/null || true   # systemd path units
    cp -v "${SETUP_DIR}"/configs/*.service /opt/laesh/configs/ 2>/dev/null || true   # systemd service units
    ok "Configs copiados a /opt/laesh/configs/"
else
    warn "No se encontró ${SETUP_DIR}/configs/ — ejecutar desde el directorio del pipeline"
fi

# Copiar logs/log-levels.conf (config inicial de niveles — no sobreescribir si ya existe)
LOG_LEVELS_DST="/opt/laesh/logs/log-levels.conf"
LOG_LEVELS_SRC="${SETUP_DIR}/logs/log-levels.conf"
if [ ! -f "$LOG_LEVELS_DST" ] && [ -f "$LOG_LEVELS_SRC" ]; then
    cp "$LOG_LEVELS_SRC" "$LOG_LEVELS_DST"
    ok "log-levels.conf inicial copiado a /opt/laesh/logs/"
elif [ -f "$LOG_LEVELS_DST" ]; then
    warn "log-levels.conf ya existe en destino — no sobreescrito (edición preservada)"
else
    warn "logs/log-levels.conf no encontrado en pipeline — se creará con defaults en paso 7"
fi

# Copiar crones, https, scripts
# rsync en lugar de cp -r para que sea idempotente: solo copia archivos nuevos
# o modificados sin borrar los que ya existen en el destino (no --delete).
for subdir in crones https scripts; do
    if [ -d "${SETUP_DIR}/${subdir}" ]; then
        rsync -a "${SETUP_DIR}/${subdir}/." "/opt/laesh/${subdir}/"
        ok "${subdir}/ sincronizado a /opt/laesh/${subdir}/"
    fi
done
chmod +x /opt/laesh/scripts/*.sh  2>/dev/null || true
chmod +x /opt/laesh/https/*.sh    2>/dev/null || true
chmod +x /opt/laesh/crones/*.sh   2>/dev/null || true

echo ""
ok "Preflight completo"

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `02_install_stack.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH KVM2 · Paso 2 — Instalar Stack Base
# Nginx (Ubuntu 24.04 default) + MariaDB 11.8 + PHP 8.3 + Composer
# Mueve datadir MariaDB a /opt/laesh/laesh-db/ via symlink (AppArmor safe).
# Idempotente.
# ==============================================================================
set -euo pipefail
[ "$EUID" -ne 0 ] && { echo "[ERROR] Requiere sudo"; exit 1; }

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'
ok()   { echo -e "${GREEN}  ✓${NC} $*"; }
warn() { echo -e "${YELLOW}  △${NC} $*"; }
err()  { echo -e "${RED}  ✗${NC} $*"; }
log()  { echo "  → $*"; }

export DEBIAN_FRONTEND=noninteractive

# ── 1. Repositorio MariaDB 11.8 ───────────────────────────────────────────────
echo "── 1/6 Repositorio MariaDB 11.8 ──────────────────────────────"
if apt-cache show mariadb-server 2>/dev/null | grep -q "^Version: 1:11\.8"; then
    warn "MariaDB 11.8 ya en apt cache. Omitiendo repo setup."
else
    log "Agregando repo oficial MariaDB 11.8..."
    curl -LsS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup \
        | bash -s -- --mariadb-server-version="mariadb-11.8" --skip-verify 2>&1 | tail -3
    ok "Repo MariaDB 11.8 agregado"
fi

# ── 2. Repositorio PHP 8.3 (Ondrej) ──────────────────────────────────────────
echo ""
echo "── 2/6 Repositorio PHP 8.3 (Ondrej) ─────────────────────────"
if dpkg -l | grep -q php8\.3-fpm; then
    warn "php8.3-fpm ya instalado"
else
    apt-get install -yq software-properties-common
    LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
    apt-get update -yq
    ok "PPA Ondrej PHP agregado"
fi

# ── 3. Instalar paquetes ──────────────────────────────────────────────────────
echo ""
echo "── 3/6 Instalar Nginx, MariaDB 11.8, PHP 8.3, build tools ───"
PKGS=(
    nginx
    mariadb-server
    php8.3-fpm
    php8.3-mysql
    php8.3-curl
    php8.3-mbstring
    php8.3-xml
    php8.3-zip
    php8.3-intl
    php8.3-gd
    php8.3-opcache
    php8.3-fileinfo
    php8.3-dev
    gcc
    make
    autoconf
    libc-dev
    pkg-config
    libssl-dev
    libpcre2-dev
    libbrotli-dev    # requerido por Swoole 6.2.2 (--enable-brotli=yes)
    unzip
    certbot
    python3-certbot-nginx
    jq
    swaks            # cliente SMTP para alertas por correo (monitor_services.sh)
    inotify-tools    # inotifywait/inotifywatch — utils de diagnóstico inotify (systemd path unit usa kernel inotify nativo, no este paquete)
    curl             # usado en monitor_services.sh y cache_renew warm-up
)
MISSING=()
for pkg in "${PKGS[@]}"; do
    dpkg -l | grep -q "^ii  ${pkg}" || MISSING+=("$pkg")
done
if [ ${#MISSING[@]} -eq 0 ]; then
    warn "Todos los paquetes ya instalados"
else
    log "Instalando: ${MISSING[*]}"
    apt-get install -yq "${MISSING[@]}"
    ok "Paquetes instalados"
fi

# ── 4. Verificar versiones ────────────────────────────────────────────────────
echo ""
echo "── 4/6 Verificar versiones ───────────────────────────────────"
MARIADB_VER=$(mariadbd --version 2>/dev/null | grep -oP '\d+\.\d+\.\d+' | head -1 || echo "?")
# -n: omitir ini/extensiones — evita hang si Swoole+JIT CLI ya está configurado (re-run post paso 7)
PHP_VER=$(php8.3 -n -r 'echo PHP_VERSION;' 2>/dev/null || echo "?")
NGINX_VER=$(nginx -v 2>&1 | grep -oP '\d+\.\d+\.\d+' || echo "?")
echo "  MariaDB: ${MARIADB_VER}"
echo "  PHP:     ${PHP_VER}"
echo "  Nginx:   ${NGINX_VER}"
[[ "$MARIADB_VER" == 11.8.* ]] && ok "MariaDB 11.8 ✓" || err "MariaDB version inesperada: $MARIADB_VER"
[[ "$PHP_VER" == 8.3.* ]]      && ok "PHP 8.3 ✓"     || err "PHP version inesperada: $PHP_VER"

# ── 5. Mover datadir MariaDB → /opt/laesh/laesh-db/ (symlink) ────────────────
echo ""
echo "── 5/6 DataDir MariaDB → /opt/laesh/laesh-db/ ────────────────"

if [ -L /var/lib/mysql ] && [ "$(readlink /var/lib/mysql)" = "/opt/laesh/laesh-db" ]; then
    warn "/var/lib/mysql ya es symlink a /opt/laesh/laesh-db. Omitiendo."
else
    log "Deteniendo MariaDB para mover datadir..."
    systemctl stop mariadb

    # Asegurar que el destino existe y tiene permisos correctos
    mkdir -p /opt/laesh/laesh-db
    chown mysql:mysql /opt/laesh/laesh-db
    chmod 0750 /opt/laesh/laesh-db

    if [ -d /var/lib/mysql ] && [ ! -L /var/lib/mysql ]; then
        log "Copiando datadir actual a /opt/laesh/laesh-db/ ..."
        rsync -a /var/lib/mysql/ /opt/laesh/laesh-db/
        chown -R mysql:mysql /opt/laesh/laesh-db
        rm -rf /var/lib/mysql
        ok "Datos copiados"
    fi

    # Crear symlink
    ln -sfn /opt/laesh/laesh-db /var/lib/mysql
    # El symlink debe ser seguible por mysql user
    chown -h root:root /var/lib/mysql
    ok "Symlink /var/lib/mysql → /opt/laesh/laesh-db creado"

    log "Iniciando MariaDB..."
    systemctl start mariadb
    sleep 2
    systemctl is-active --quiet mariadb && ok "MariaDB activo en /opt/laesh/laesh-db" || { err "MariaDB no arrancó"; exit 1; }
fi

# ── 6. Composer ───────────────────────────────────────────────────────────────
echo ""
echo "── 6/6 Composer ──────────────────────────────────────────────"
if command -v composer &>/dev/null; then
    # -n: evita hang si Swoole+JIT CLI activo (re-run post paso 7)
    warn "Composer ya instalado: $(php8.3 -n /usr/local/bin/composer --version --no-ansi 2>/dev/null | head -1)"
else
    log "Instalando Composer (descarga via curl)..."
    # Usar curl (más fiable que php -r copy() que puede colgar esperando timeout PHP)
    curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
    EXPECTED_SIG="$(curl -sf https://composer.github.io/installer.sig)"
    ACTUAL_SIG="$(php8.3 -r "echo hash_file('sha384', '/tmp/composer-setup.php');")"
    if [ "$EXPECTED_SIG" != "$ACTUAL_SIG" ]; then
        err "Firma Composer inválida — posible descarga corrupta"
        rm /tmp/composer-setup.php; exit 1
    fi
    php8.3 /tmp/composer-setup.php --quiet --install-dir=/usr/local/bin --filename=composer
    rm /tmp/composer-setup.php
    ok "Composer instalado: $(composer --version --no-ansi 2>/dev/null | head -1)"
fi

echo ""
ok "Stack base instalado"

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `03_install_swoole.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH KVM2 · Paso 3 — Instalar Swoole 6.2.2 (PECL)
# Idempotente: si Swoole 6.2.2 ya está instalado, no recompila.
# Tiempo estimado: 10–20 min (compilación C con 2 vCPU + swap).
# ==============================================================================
set -euo pipefail
[ "$EUID" -ne 0 ] && { echo "[ERROR] Requiere sudo"; exit 1; }

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'
REQUIRED_VERSION="6.2.2"
ok()   { echo -e "${GREEN}  ✓${NC} $*"; }
warn() { echo -e "${YELLOW}  △${NC} $*"; }
err()  { echo -e "${RED}  ✗${NC} $*"; }
log()  { echo "  → $*"; }

# ── Verificar si ya está instalada la versión correcta ────────────────────────
# NOTA: no usar "php8.3 -r" para leer SWOOLE_VERSION — si el paso 7 ya corrió,
# opcache.jit=tracing + opcache.enable_cli=1 + extension=swoole.so cuelga el CLI.
# Alternativa segura: leer la versión desde el binario .so con `strings`.
SWOOLE_SO="/usr/lib/php/20230831/swoole.so"
INSTALLED=""
if [ -f "$SWOOLE_SO" ]; then
    INSTALLED=$(strings "$SWOOLE_SO" 2>/dev/null | grep -oE "${REQUIRED_VERSION//./\\.}" | head -1 || true)
    # Si la versión exacta no aparece como string, leer la más alta 6.x.x disponible
    [ -z "$INSTALLED" ] && INSTALLED=$(strings "$SWOOLE_SO" 2>/dev/null \
        | grep -oE '6\.[0-9]+\.[0-9]+' | sort -V | tail -1 || true)
fi
if [ "$INSTALLED" = "$REQUIRED_VERSION" ]; then
    warn "Swoole ${REQUIRED_VERSION} ya instalado. Omitiendo compilación."
    [ -f "/etc/php/8.3/fpm/conf.d/20-swoole.ini" ] \
        && ok "Extensión swoole configurada en PHP-FPM" \
        || err "20-swoole.ini no encontrado en fpm/conf.d/ — paso incompleto"
    exit 0
elif [ -n "$INSTALLED" ]; then
    warn "Swoole ${INSTALLED} instalado en .so (se requiere ${REQUIRED_VERSION}). Recompilando..."
fi

# ── Instalar PECL si no existe ────────────────────────────────────────────────
if ! command -v pecl &>/dev/null; then
    log "Instalando php8.3-pear (pecl)..."
    apt-get install -yq php-pear
fi

# ── Dependencia Brotli (requerida por Swoole --enable-brotli=yes) ─────────────
if ! dpkg -l | grep -q "^ii  libbrotli-dev"; then
    log "Instalando libbrotli-dev (dependencia de compilación Swoole)..."
    apt-get install -yq libbrotli-dev
    ok "libbrotli-dev instalado"
else
    ok "libbrotli-dev ya disponible"
fi

# ── Compilar Swoole 6.2.2 ─────────────────────────────────────────────────────
echo "── Compilando swoole-${REQUIRED_VERSION} (esto toma 10–20 min) ─"
log "PECL install swoole-${REQUIRED_VERSION} ..."
# Opciones: enable-openssl, enable-sockets, enable-http2 (para WS + HTTP bridge)
printf "yes\nyes\nyes\nno\nno\n" | pecl install "swoole-${REQUIRED_VERSION}" 2>&1

# ── Habilitar extensión ────────────────────────────────────────────────────────
echo ""
echo "── Habilitando extensión swoole ──────────────────────────────"
for CONF_DIR in /etc/php/8.3/cli/conf.d /etc/php/8.3/fpm/conf.d; do
    CONF_FILE="${CONF_DIR}/20-swoole.ini"
    echo "extension=swoole.so" > "$CONF_FILE"
    ok "Creado: ${CONF_FILE}"
done

# ── Reiniciar PHP-FPM ─────────────────────────────────────────────────────────
systemctl restart php8.3-fpm
ok "php8.3-fpm reiniciado"

# ── Verificar ─────────────────────────────────────────────────────────────────
# Usar strings en lugar de php8.3 -r para evitar hang (ver comentario idempotency).
echo ""
echo "── Verificación ──────────────────────────────────────────────"
ACTUAL=$(strings "$SWOOLE_SO" 2>/dev/null | grep -oE '6\.[0-9]+\.[0-9]+' | sort -V | tail -1 || echo "ERROR")
if [ "$ACTUAL" = "$REQUIRED_VERSION" ] || echo "$ACTUAL" | grep -qE "^${REQUIRED_VERSION%.*}\."; then
    ok "Swoole ${ACTUAL} instalado (binario verificado via strings)"
else
    err "Versión en .so: '${ACTUAL}' — esperada: '${REQUIRED_VERSION}'"
    exit 1
fi

# Verificar que el ini de extensión existe (sin invocar php -m que puede colgar)
[ -f "/etc/php/8.3/fpm/conf.d/20-swoole.ini" ] \
    && ok "20-swoole.ini presente en PHP-FPM conf.d/" \
    || { err "20-swoole.ini NO encontrado en /etc/php/8.3/fpm/conf.d/"; exit 1; }

echo ""
ok "Swoole ${REQUIRED_VERSION} listo"

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `04_configure_stack.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH KVM2 · Paso 4 — Configurar Stack (MariaDB, PHP-FPM, Nginx, Swoole)
# Lee configs de /opt/laesh/configs/ → copia a rutas del sistema.
# Instala swoole-laesh.service (systemd) y logrotate.
# Activa Modo A (IP/self-signed) — 05_tls_certbot.sh cambia a Modo B si aplica.
# Idempotente: sobrescribe siempre (estado deseado).
# ==============================================================================
set -euo pipefail
[ "$EUID" -ne 0 ] && { echo "[ERROR] Requiere sudo"; exit 1; }

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'
ok()   { echo -e "${GREEN}  ✓${NC} $*"; }
warn() { echo -e "${YELLOW}  △${NC} $*"; }
err()  { echo -e "${RED}  ✗${NC} $*"; exit 1; }
log()  { echo "  → $*"; }

CFG="/opt/laesh/configs"
CRONES="/opt/laesh/crones"

[ -d "$CFG" ] || err "No existe ${CFG} — ejecutar paso 1 primero"

# ── 1. MariaDB ─────────────────────────────────────────────────────────────────
echo "── 1/7 MariaDB config ────────────────────────────────────────"
cp "${CFG}/mariadb-99-laesh.cnf" /etc/mysql/mariadb.conf.d/99-laesh.cnf
ok "Aplicado: /etc/mysql/mariadb.conf.d/99-laesh.cnf"
systemctl restart mariadb
sleep 2
systemctl is-active --quiet mariadb && ok "MariaDB activo" || err "MariaDB no arrancó tras config"

# ── 2. PHP 8.3 ini ────────────────────────────────────────────────────────────
echo ""
echo "── 2/7 PHP 8.3 ini ───────────────────────────────────────────"
cp "${CFG}/php-99-laesh.ini" /etc/php/8.3/fpm/conf.d/99-laesh.ini
cp "${CFG}/php-99-laesh.ini" /etc/php/8.3/cli/conf.d/99-laesh.ini
ok "Aplicado: /etc/php/8.3/fpm/conf.d/99-laesh.ini"

# ── 3. PHP-FPM pool ──────────────────────────────────────────────────────────
echo ""
echo "── 3/7 PHP-FPM pool laesh ────────────────────────────────────"
# Inyectar LAESH_APP_PASS si está definida
if [[ -n "${LAESH_APP_PASS:-}" ]]; then
    sed "s|__LAESH_APP_PASS__|${LAESH_APP_PASS}|g" \
        "${CFG}/php-fpm-laesh.conf" > /etc/php/8.3/fpm/pool.d/laesh.conf
else
    cp "${CFG}/php-fpm-laesh.conf" /etc/php/8.3/fpm/pool.d/laesh.conf
    warn "LAESH_APP_PASS no definida — env[LAESH_DB_PASS] queda como placeholder en el pool"
fi
# Deshabilitar pool www default
[ -f /etc/php/8.3/fpm/pool.d/www.conf ] && mv /etc/php/8.3/fpm/pool.d/www.conf /etc/php/8.3/fpm/pool.d/www.conf.disabled
ok "Pool laesh configurado; pool www deshabilitado"

# Test sintaxis FPM
php-fpm8.3 -t && ok "PHP-FPM sintaxis OK" || err "Error de sintaxis en PHP-FPM config"

# ── 4. Nginx base ─────────────────────────────────────────────────────────────
echo ""
echo "── 4/7 Nginx base config ─────────────────────────────────────"
cp "${CFG}/nginx-base.conf" /etc/nginx/nginx.conf
ok "Aplicado: /etc/nginx/nginx.conf"

# Activar Modo A (IP/self-signed) — 05_tls_certbot.sh cambia esto si procede
cp "${CFG}/nginx-laesh-ip.conf" /etc/nginx/sites-available/laesh
ln -sf /etc/nginx/sites-available/laesh /etc/nginx/sites-enabled/laesh
# Deshabilitar default site
rm -f /etc/nginx/sites-enabled/default
ok "Site laesh activado (Modo A IP)"

# Crear cert self-signed si no existe (el paso 5 lo reemplaza con uno real o LE).
# Necesario para que nginx -t pase antes de que 05_tls_certbot.sh corra.
if [ ! -f /opt/laesh/https/self-signed.crt ]; then
    log "Generando cert self-signed temporal para validar nginx config..."
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout /opt/laesh/https/self-signed.key \
        -out  /opt/laesh/https/self-signed.crt \
        -subj "/CN=laesh-kvm2" \
        2>/dev/null
    ok "Cert self-signed generado (temporal — paso 5 lo reemplaza)"
fi

# Test sintaxis Nginx
nginx -t && ok "Nginx sintaxis OK" || err "Error de sintaxis en Nginx config"

# ── 5. systemd Swoole ─────────────────────────────────────────────────────────
echo ""
echo "── 5/7 systemd swoole-laesh.service ─────────────────────────"
cp "${CRONES}/swoole-laesh.service" /etc/systemd/system/swoole-laesh.service
systemctl daemon-reload
systemctl enable swoole-laesh
ok "swoole-laesh.service instalado y habilitado"

# ── 6. Logrotate ──────────────────────────────────────────────────────────────
echo ""
echo "── 6/7 Logrotate ─────────────────────────────────────────────"
cp "${CRONES}/logrotate-laesh.conf" /etc/logrotate.d/laesh
chmod 644 /etc/logrotate.d/laesh
ok "Logrotate configurado → /etc/logrotate.d/laesh"

# Establecer contraseña root MariaDB y crear .mariadb-root.cnf
#
# Por qué es necesario este paso:
#   Ubuntu 24.04 + MariaDB 11.8 instala root con plugin 'unix_socket' (sin contraseña).
#   Los pasos 6+ usan `-u root -p${LAESH_ROOT_PASS}` que falla con unix_socket.
#   Aquí, corriendo como root del sistema, podemos conectar SIN contraseña via socket
#   y establecer la contraseña para que los scripts posteriores puedan usar -p.
#
# Idempotente: si root ya tiene contraseña, el comando usa la actual via .cnf si existe,
# o falla silencioso (el usuario tendrá que verificar manualmente).
if [[ -n "${LAESH_ROOT_PASS:-}" ]]; then
    mkdir -p /opt/laesh/configs

    # Intentar establecer contraseña root via unix_socket (fresh install — sin contraseña)
    if mariadb --user=root --socket=/run/mysqld/mysqld.sock \
        -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${LAESH_ROOT_PASS}'; FLUSH PRIVILEGES;" \
        2>/dev/null; then
        ok "Contraseña root MariaDB establecida (unix_socket → password auth)"
    elif mariadb --defaults-extra-file=/opt/laesh/configs/.mariadb-root.cnf \
        -e "SELECT 1" &>/dev/null 2>&1; then
        ok "MariaDB root ya tiene contraseña (verificado via .mariadb-root.cnf existente)"
    else
        warn "No se pudo establecer contraseña root vía unix_socket — puede que ya tenga contraseña diferente."
        warn "  Si el paso 6 falla con error de autenticación:"
        warn "  sudo mariadb -e \"ALTER USER 'root'@'localhost' IDENTIFIED BY '${LAESH_ROOT_PASS}'; FLUSH PRIVILEGES;\""
    fi

    # Crear .mariadb-root.cnf (leído por logrotate postrotate y monitor_services.sh)
    # CRÍTICO: host=localhost → MariaDB usa unix socket (no TCP).
    # host=127.0.0.1 fuerza TCP y root@127.0.0.1 está bloqueado por defecto.
    cat > /opt/laesh/configs/.mariadb-root.cnf << ROOTCNF
[client]
user=root
password=${LAESH_ROOT_PASS}
host=localhost
socket=/run/mysqld/mysqld.sock
ROOTCNF
    chmod 600 /opt/laesh/configs/.mariadb-root.cnf
    chown root:root /opt/laesh/configs/.mariadb-root.cnf
    ok ".mariadb-root.cnf creado (600 root:root)"
else
    warn "LAESH_ROOT_PASS no definida — contraseña root NO establecida y .mariadb-root.cnf NO creado."
    warn "  El paso 6 (06_deploy_app.sh) requiere LAESH_ROOT_PASS — fallará si no está definida."
    warn "  Definir: export LAESH_ROOT_PASS='...' && sudo -E bash 04_configure_stack.sh"
fi

# ── 7. Reiniciar servicios ────────────────────────────────────────────────────
echo ""
echo "── 7/7 Reiniciar servicios ───────────────────────────────────"
systemctl restart php8.3-fpm && ok "php8.3-fpm reiniciado"
systemctl restart nginx      && ok "nginx reiniciado"

# Arrancar Swoole si el código ya está (puede no estar aún en paso 4)
if [ -f /opt/laesh/www/laesh-swbldi/commons/swoole_server.php ]; then
    systemctl restart swoole-laesh && ok "swoole-laesh iniciado"
else
    warn "Código webapp aún no desplegado — swoole-laesh se arrancará en paso 6"
fi

echo ""
ok "Stack configurado"

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `05_tls_certbot.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH KVM2 · Paso 5 — TLS Dual-Mode (Idempotente / Post-Opcional)
#
# MODO A — Sin dominio (IP pura / pruebas pre-DNS):
#   sudo bash 05_tls_certbot.sh
#   → Genera cert self-signed, activa nginx-laesh-ip.conf
#
# MODO B — Con dominio (producción, DNS propagado):
#   LAESH_DOMAIN=laesh.mx LAESH_ADMIN_EMAIL=... sudo -E bash 05_tls_certbot.sh
#   → Emite cert Let's Encrypt, activa nginx-laesh-domain.conf
#
# Idempotente: puede correrse N veces sin daño.
# Puede correrse de forma independiente: sudo bash 05_tls_certbot.sh
# ==============================================================================
set -euo pipefail
[ "$EUID" -ne 0 ] && { echo "[ERROR] Requiere sudo"; exit 1; }

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; CYAN='\033[0;36m'; NC='\033[0m'
ok()   { echo -e "${GREEN}  ✓${NC} $*"; }
warn() { echo -e "${YELLOW}  △${NC} $*"; }
err()  { echo -e "${RED}  ✗${NC} $*"; exit 1; }
log()  { echo "  → $*"; }

LAESH_DOMAIN="${LAESH_DOMAIN:-}"
LAESH_ADMIN_EMAIL="${LAESH_ADMIN_EMAIL:-cbena999@gmail.com}"
LAESH_IP="83.136.219.193"
HTTPS_DIR="/opt/laesh/https"
CFG_DIR="/opt/laesh/configs"
NGINX_SITE="/etc/nginx/sites-available/laesh"

mkdir -p "$HTTPS_DIR"

# ══════════════════════════════════════════════════════
# MODO A — IP / Self-signed
# ══════════════════════════════════════════════════════
if [[ -z "$LAESH_DOMAIN" ]]; then
    echo -e "${CYAN}── MODO A — IP / Self-Signed ──────────────────────────${NC}"

    CERT="${HTTPS_DIR}/self-signed.crt"
    KEY="${HTTPS_DIR}/self-signed.key"

    if [[ -f "$CERT" && -f "$KEY" ]]; then
        EXPIRY=$(openssl x509 -in "$CERT" -noout -enddate 2>/dev/null | cut -d= -f2 || echo "?")
        warn "Self-signed cert ya existe (expira: ${EXPIRY}). Omitiendo generación."
    else
        log "Generando cert self-signed para IP ${LAESH_IP}..."
        openssl req -x509 -newkey rsa:4096 -nodes -days 365 \
            -keyout "$KEY" -out "$CERT" \
            -subj "/C=MX/ST=MX/L=Hostinger/O=LAESH/CN=${LAESH_IP}" \
            -addext "subjectAltName=IP:${LAESH_IP}" 2>/dev/null
        chmod 600 "$KEY"
        ok "Self-signed cert generado (válido 365 días)"
    fi

    # Activar config Modo A
    if [[ -f "${CFG_DIR}/nginx-laesh-ip.conf" ]]; then
        cp "${CFG_DIR}/nginx-laesh-ip.conf" "$NGINX_SITE"
        ln -sf "$NGINX_SITE" /etc/nginx/sites-enabled/laesh
        nginx -t && systemctl reload nginx && ok "Nginx recargado → Modo A (IP)"
    else
        warn "nginx-laesh-ip.conf no encontrado en ${CFG_DIR} — Nginx sin cambio"
    fi

    echo ""
    ok "Modo A activo. Probar:"
    echo "     curl -sk https://${LAESH_IP}/laesh/ | head -5"
    echo "     BASE=https://${LAESH_IP} bash /home/sysadmin/laesh-src/setup/bds/laesh/bash/03_test_deploy.sh"
    exit 0
fi

# ══════════════════════════════════════════════════════
# MODO B — Dominio + Let's Encrypt
# ══════════════════════════════════════════════════════
echo -e "${CYAN}── MODO B — Dominio + Let's Encrypt (${LAESH_DOMAIN}) ─${NC}"

# Verificar que DNS apunta a esta IP
log "Verificando DNS: ${LAESH_DOMAIN} → ${LAESH_IP} ..."
RESOLVED=$(dig +short "$LAESH_DOMAIN" 2>/dev/null | grep -v '\.$' | head -1 || echo "")
if [[ "$RESOLVED" != "$LAESH_IP" ]]; then
    warn "DNS no propagado: ${LAESH_DOMAIN} resuelve a '${RESOLVED:-<nada>}' (esperado: ${LAESH_IP})"
    warn "Ejecuta este script de nuevo cuando el DNS esté propagado."
    warn "Mientras tanto, Modo A sigue activo."
    exit 0  # salida limpia — no falla el pipeline
fi
ok "DNS OK: ${LAESH_DOMAIN} → ${LAESH_IP}"

# Asegurar que Nginx está en Modo A antes de certbot (necesita puerto 80)
# (nginx-laesh-ip.conf tiene server_name _ y escucha en :80 para ACME challenge)
cp "${CFG_DIR}/nginx-laesh-ip.conf" "$NGINX_SITE"
nginx -t && systemctl reload nginx
log "Nginx en Modo A temporalmente (certbot HTTP-01 webroot challenge)"

# Crear directorio ACME challenge bajo webroot=/opt/laesh/www
mkdir -p /opt/laesh/www/.well-known/acme-challenge
chown -R www-data:www-data /opt/laesh/www/.well-known
ok "Directorio ACME challenge creado: /opt/laesh/www/.well-known/acme-challenge"

# Emitir o renovar cert
# IMPORTANTE: certonly --webroot (NO --nginx) para evitar que certbot mangule el
# site config de nginx añadiendo su propio include options-ssl-nginx.conf, lo que
# causa "ssl_protocols duplicate" si el conf ya tiene esas directivas (G-CERTBOT-01).
if certbot certificates 2>/dev/null | grep -q "Domains: ${LAESH_DOMAIN}"; then
    warn "Cert LE ya existe para ${LAESH_DOMAIN}. Ejecutando renovación si necesario..."
    certbot renew --quiet
    ok "Renovación verificada"
else
    log "Emitiendo nuevo cert Let's Encrypt (certonly --webroot)..."
    certbot certonly \
        --webroot -w /opt/laesh/www \
        -d "$LAESH_DOMAIN" \
        -d "www.${LAESH_DOMAIN}" \
        --non-interactive \
        --agree-tos \
        -m "$LAESH_ADMIN_EMAIL"
    ok "Cert LE emitido (certonly — nginx config intacta, sin duplicados)"
fi

# Activar config Modo B — inyectar dominio real en el conf template
# nginx-laesh-domain.conf usa __LAESH_DOMAIN__ como placeholder para:
#   server_name, ssl_certificate, ssl_certificate_key
TEMP_CFG=$(mktemp /tmp/nginx-laesh-domain-XXXXXX.conf)
sed "s/__LAESH_DOMAIN__/${LAESH_DOMAIN}/g" \
    "${CFG_DIR}/nginx-laesh-domain.conf" > "$TEMP_CFG"
cp "$TEMP_CFG" "$NGINX_SITE"
rm -f "$TEMP_CFG"
ln -sf "$NGINX_SITE" /etc/nginx/sites-enabled/laesh
nginx -t && systemctl reload nginx && ok "Nginx recargado → Modo B (${LAESH_DOMAIN} + LE)"

# Symlink a certs LE para referencia en /opt/laesh/https/
ln -sfn "/etc/letsencrypt/live/${LAESH_DOMAIN}" "${HTTPS_DIR}/live"
ok "Symlink ${HTTPS_DIR}/live → /etc/letsencrypt/live/${LAESH_DOMAIN}"

# Asegurar timer de renovación automática
systemctl enable --now certbot.timer
ok "certbot.timer habilitado (renovación automática)"

# Hook post-renovación → reload nginx
HOOK_FILE="/etc/letsencrypt/renewal-hooks/post/reload-nginx.sh"
cat > "$HOOK_FILE" << 'EOF'
#!/bin/bash
systemctl reload nginx
echo "[certbot-hook] nginx recargado: $(date)" >> /opt/laesh/logs/certbot-renew.log
EOF
chmod +x "$HOOK_FILE"
ok "Hook post-renew configurado"

# Probar renovación en seco
log "Test renovación en seco..."
certbot renew --dry-run --quiet && ok "Dry-run renovación OK"

echo ""
ok "Modo B activo. Probar:"
echo "     curl -s https://${LAESH_DOMAIN}/laesh/ | head -5"
echo "     BASE=https://${LAESH_DOMAIN} bash /home/sysadmin/laesh-src/setup/bds/laesh/bash/03_test_deploy.sh"

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `06_deploy_app.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH KVM2 · Paso 6 — Deploy Webapp + BD
#
# Requiere:
#   LAESH_ROOT_PASS   — contraseña root MariaDB
#   LAESH_APP_PASS    — contraseña laesh_app (producción)
#   LAESH_SRC_DIR     — directorio staging con código rsync'd
#                       (default: /home/sysadmin/laesh-src)
#
# Uso:
#   LAESH_ROOT_PASS='...' LAESH_APP_PASS='...' sudo -E bash 06_deploy_app.sh
#   LAESH_ROOT_PASS='...' LAESH_APP_PASS='...' sudo -E bash 06_deploy_app.sh --drop
#
# Con --drop destruye y recrea la BD (solo en primera instalación).
# Sin --drop: BD se preserva (idempotente).
# ==============================================================================
set -euo pipefail
[ "$EUID" -ne 0 ] && { echo "[ERROR] Requiere sudo"; exit 1; }

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'
ok()   { echo -e "${GREEN}  ✓${NC} $*"; }
warn() { echo -e "${YELLOW}  △${NC} $*"; }
err()  { echo -e "${RED}  ✗${NC} $*"; exit 1; }
log()  { echo "  → $*"; }

# ── Validar credenciales ───────────────────────────────────────────────────────
[[ -z "${LAESH_ROOT_PASS:-}" ]] && err "LAESH_ROOT_PASS no definida. Ejecutar: LAESH_ROOT_PASS='...' LAESH_APP_PASS='...' sudo -E bash $0"
[[ -z "${LAESH_APP_PASS:-}"  ]] && err "LAESH_APP_PASS no definida."

LAESH_SRC_DIR="${LAESH_SRC_DIR:-/home/sysadmin/laesh-src}"
DROP_DB=false; [[ "${1:-}" == "--drop" ]] && DROP_DB=true

export H_ROOT_PASS="${LAESH_ROOT_PASS}"
export H_APP_PASS="${LAESH_APP_PASS}"
export H_PHP_BIN="php8.3"
export H_WEB_DIR="/opt/laesh/www"

# ── 1. Verificar fuente ───────────────────────────────────────────────────────
echo "── 1/7 Verificar fuente de código ───────────────────────────"
[ -d "${LAESH_SRC_DIR}" ] || err "LAESH_SRC_DIR no existe: ${LAESH_SRC_DIR}. Subir el repo primero con rsync/scp."
[ -d "${LAESH_SRC_DIR}/laesh-swbldi" ] || err "No se encontró laesh-swbldi en ${LAESH_SRC_DIR}"
ok "Fuente: ${LAESH_SRC_DIR}"

# ── 2. rsync webapp ───────────────────────────────────────────────────────────
echo ""
echo "── 2/7 rsync webapp → /opt/laesh/www/ ───────────────────────"
rsync -av --delete \
    "${LAESH_SRC_DIR}/laesh-swbldi/" \
    /opt/laesh/www/laesh-swbldi/ \
    --exclude='.git' --exclude='vendor/' --exclude='*.log'
ok "laesh-swbldi sincronizado"

# ── 3. rsync assets ───────────────────────────────────────────────────────────
echo ""
echo "── 3/7 rsync assets → /opt/laesh/assets/ ────────────────────"
if [ -d "${LAESH_SRC_DIR}/laesh-web-assets-uipv1a" ]; then
    rsync -av --delete \
        "${LAESH_SRC_DIR}/laesh-web-assets-uipv1a/" \
        /opt/laesh/assets/laesh-web-assets-uipv1a/ \
        --exclude='.git'
    ok "laesh-web-assets-uipv1a sincronizado"
else
    warn "laesh-web-assets-uipv1a no encontrado en ${LAESH_SRC_DIR} — omitiendo"
fi

# ── 4. Permisos ───────────────────────────────────────────────────────────────
echo ""
echo "── 4/7 Permisos ──────────────────────────────────────────────"
chown -R www-data:www-data /opt/laesh/www/
chown -R www-data:www-data /opt/laesh/assets/
chown -R www-data:www-data /opt/laesh/uploads/
chown -R www-data:www-data /opt/laesh/logs/
chmod 0750 /opt/laesh/www/
chmod 0755 /opt/laesh/assets/

# ── Directorio CMS imágenes (POST /cms/upload — admrc/index.php) ─────────────
# PHP usa finfo para validar MIME real (solo WebP, máx 135 KB).
# El path se configura en BD tabla 'configuraciones' (clave: cms_upload_dir).
# www-data necesita write: crear directorio antes de que PHP lo intente crear.
CMS_IMG_DIR="/opt/laesh/assets/laesh-web-assets-uipv1a/img/cms"
mkdir -p "$CMS_IMG_DIR"
chown www-data:www-data "$CMS_IMG_DIR"
chmod 0755 "$CMS_IMG_DIR"   # www-data escribe; Nginx lee; no 0777 en prod
ok "Directorio CMS imágenes: $CMS_IMG_DIR (0755 www-data)"

# ── Directorio PDFs resultados (POST /orden/subir-pdf — rc/index.php) ────────
PDF_DIR="/opt/laesh/uploads/pdfs"
mkdir -p "$PDF_DIR"
chown www-data:www-data "$PDF_DIR"
chmod 0750 "$PDF_DIR"   # www-data escribe; Nginx sirve via PHP (internal location)
ok "Directorio PDFs: $PDF_DIR (0750 www-data)"

# ── Directorio fallback PDF (rc/index.php hardcoded path) ────────────────────
# rc/index.php línea ~330: fallback = __DIR__ . '/../uploads/resultados/'
# Resuelve a: /opt/laesh/www/laesh-swbldi/uploads/resultados/
# Se activa solo si la lectura de BD falla (BD valor=/opt/laesh/uploads/pdfs/).
# Crear para resiliencia: si BD no responde, los PDFs aún tienen destino válido.
PDF_FALLBACK_DIR="/opt/laesh/www/laesh-swbldi/uploads/resultados"
mkdir -p "$PDF_FALLBACK_DIR"
chown www-data:www-data "$PDF_FALLBACK_DIR"
chmod 0750 "$PDF_FALLBACK_DIR"
ok "Directorio PDFs (fallback PHP): $PDF_FALLBACK_DIR (0750 www-data)"

# ── Directorio Caché L2 — OPcache File Store ─────────────────────────────────
# Cache.php escribe aquí archivos .php que OPcache compila a bytecode.
# CRÍTICO: usar /opt/laesh/cache/ (NO /tmp) porque php8.3-fpm.service tiene
# PrivateTmp=true en Ubuntu 24.04 → su /tmp es un namespace aislado.
# El cron cache_renew.php y PHP-FPM deben ver el MISMO directorio físico.
# Ambos usan env var LAESH_CACHE_DIR=/opt/laesh/cache:
#   - FPM: inyectado en php-fpm-laesh.conf (env[LAESH_CACHE_DIR])
#   - Cron: inyectado en /etc/cron.d/laesh-cache-renew (var global del archivo)
CACHE_DIR="/opt/laesh/cache"
mkdir -p "$CACHE_DIR"
chown www-data:www-data "$CACHE_DIR"
chmod 0750 "$CACHE_DIR"   # solo www-data (FPM + cron corren como www-data)
ok "Directorio Caché L2: $CACHE_DIR (0750 www-data)"

# Logs: nginx y php-fpm corren como www-data; Swoole como www-data también
ok "Permisos aplicados"

# ── 5. Composer install ───────────────────────────────────────────────────────
echo ""
echo "── 5/7 Composer install (laesh-swbldi) ──────────────────────"
cd /opt/laesh/www/laesh-swbldi
if [ -f "composer.json" ]; then
    sudo -u www-data composer install \
        --no-dev \
        --optimize-autoloader \
        --no-interaction \
        2>&1 | tail -10
    ok "Composer dependencies instaladas"
else
    warn "composer.json no encontrado en /opt/laesh/www/laesh-swbldi — omitiendo"
fi
cd - > /dev/null

# ── 6. Setup BD (setup_hostinger.sh) ─────────────────────────────────────────
echo ""
echo "── 6/7 Inicializar BD con setup_hostinger.sh ────────────────"
BDS_DIR="${LAESH_SRC_DIR}/setup/bds/laesh"   # ruta canónica (rsync de setup/bds/laesh/)
if [ ! -d "${BDS_DIR}" ]; then
    # Fallback: estructura plana (transfer directo, sin la carpeta setup/)
    BDS_DIR="${LAESH_SRC_DIR}/bds"
fi
[ -f "${BDS_DIR}/setup_hostinger.sh" ] || err "setup_hostinger.sh no encontrado en ${BDS_DIR}"

DROP_FLAG=""
$DROP_DB && DROP_FLAG="--drop"
H_ROOT_PASS="${LAESH_ROOT_PASS}" \
H_APP_PASS="${LAESH_APP_PASS}" \
H_PHP_BIN="php8.3" \
H_WEB_DIR="/opt/laesh/www" \
bash "${BDS_DIR}/setup_hostinger.sh" ${DROP_FLAG}
ok "BD inicializada"

# ── 6b. Corregir rutas de BD dependientes del entorno ─────────────────────────
# El seed SQL usa rutas Docker (/var/www/html/...) que no existen en KVM2.
# Se actualizan aquí a las rutas reales de producción Hostinger.
echo "    → Actualizando rutas de configuración en BD..."
# Usar .mariadb-root.cnf (creado en paso 4 si LAESH_ROOT_PASS estaba definida)
# Fallback: -p directo con LAESH_ROOT_PASS si el archivo no existe aún.
_MARIADB_OPTS=""
if [ -f /opt/laesh/configs/.mariadb-root.cnf ]; then
    _MARIADB_OPTS="--defaults-extra-file=/opt/laesh/configs/.mariadb-root.cnf"
elif [[ -n "${LAESH_ROOT_PASS:-}" ]]; then
    _MARIADB_OPTS="-u root -p${LAESH_ROOT_PASS}"
fi
mariadb ${_MARIADB_OPTS} laesh_db <<'SQL'
-- Directorio físico donde admrc/index.php guarda imágenes CMS (POST /cms/upload)
-- Antes (Docker): /var/www/html/laesh-web-assets-uipv1a/img/cms/
-- Ahora (KVM2):   /opt/laesh/assets/laesh-web-assets-uipv1a/img/cms/
INSERT INTO configuraciones (clave, valor, descripcion)
  VALUES ('cms_upload_dir', '/opt/laesh/assets/laesh-web-assets-uipv1a/img/cms/', 'Directorio físico para uploads CMS imágenes')
  ON DUPLICATE KEY UPDATE valor = '/opt/laesh/assets/laesh-web-assets-uipv1a/img/cms/';

-- Endpoint público para el upload de imágenes CMS (desde gestion_web.php meta tag)
INSERT INTO configuraciones (clave, valor, descripcion)
  VALUES ('cms_upload_endpoint', '/adrc/cms/upload', 'Endpoint POST subida imágenes CMS')
  ON DUPLICATE KEY UPDATE valor = '/adrc/cms/upload';
  -- URL raíz: la app se sirve en / desde 2026-09-05 (sin prefijo /laesh/)

-- Directorio físico donde rc/index.php guarda PDFs de resultados
-- Antes (Docker): /var/www/html/laesh-bloc-assets/pdf/
-- Ahora (KVM2):   /opt/laesh/uploads/pdfs/
INSERT INTO configuraciones (clave, valor, descripcion)
  VALUES ('ruta_almacenamiento_pdf', '/opt/laesh/uploads/pdfs/', 'Directorio físico para PDFs de resultados')
  ON DUPLICATE KEY UPDATE valor = '/opt/laesh/uploads/pdfs/';
SQL
ok "Rutas de BD actualizadas para entorno KVM2"

# ── 7. Swoole service ─────────────────────────────────────────────────────────
echo ""
echo "── 7/7 Arrancar swoole-laesh.service ────────────────────────"
systemctl daemon-reload
systemctl restart swoole-laesh
sleep 2
systemctl is-active --quiet swoole-laesh \
    && ok "swoole-laesh activo" \
    || { warn "swoole-laesh no activo — verificar log: journalctl -u swoole-laesh -n 50"; }

# Verificación rápida del bridge HTTP
sleep 1
STATUS=$(curl -sf http://127.0.0.1:9502/status 2>/dev/null || echo "")
if echo "$STATUS" | grep -q '"status":"online"'; then
    CLIENTS=$(echo "$STATUS" | python3 -c "import sys,json; print(json.load(sys.stdin)['clients_connected'])" 2>/dev/null || echo "?")
    ok "Swoole HTTP bridge OK — clients_connected: ${CLIENTS}"
else
    warn "Swoole /status no responde aún (normal si el proceso arranca lento)"
fi

echo ""
ok "Deploy completo"
echo ""
echo "  Usuarios demo (CAMBIAR antes de entregar al cliente):"
echo "    ADMIN     9990000001  010120001!"
echo "    RECEPCIÓN 9990000002  010120002!"
echo "    MÉDICO    9990000003  010120003!"

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `07_security_harden.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH KVM2 · Paso 7 — Security Hardening
# UFW, OPcache, backup cron, logrotate, SSH (opcional con flag).
# Idempotente.
#
# Uso:
#   sudo bash 07_security_harden.sh             # con SSH hardening
#   sudo bash 07_security_harden.sh --skip-ssh  # sin SSH (primera vez sin llave pública)
# ==============================================================================
set -euo pipefail
[ "$EUID" -ne 0 ] && { echo "[ERROR] Requiere sudo"; exit 1; }

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'
ok()   { echo -e "${GREEN}  ✓${NC} $*"; }
warn() { echo -e "${YELLOW}  △${NC} $*"; }
err()  { echo -e "${RED}  ✗${NC} $*"; exit 1; }
log()  { echo "  → $*"; }

SKIP_SSH=false; [[ "${1:-}" == "--skip-ssh" ]] && SKIP_SSH=true
LAESH_ROOT_PASS="${LAESH_ROOT_PASS:-}"
LAESH_APP_PASS="${LAESH_APP_PASS:-}"
[[ -z "$LAESH_APP_PASS" ]] && warn "LAESH_APP_PASS no definida — cron cache_renew no tendrá contraseña BD (warm-up de BD fallará)"

# ── 1. UFW ────────────────────────────────────────────────────────────────────
echo "── 1/8 UFW Firewall ──────────────────────────────────────────"
apt-get install -yq ufw 2>/dev/null | grep -v '^$' || true
ufw --force reset > /dev/null
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow 80/tcp   comment 'HTTP'
ufw allow 443/tcp  comment 'HTTPS'
ufw deny 3306/tcp  comment 'MariaDB (no exponer)'
ufw deny 9502/tcp  comment 'Swoole bridge (solo loopback)'
ufw --force enable
ufw status numbered
ok "UFW activo — 22, 80, 443 permitidos; 3306, 9502 bloqueados"

# ── 2. OPcache + Cache L2 ─────────────────────────────────────────────────────
echo ""
echo "── 2/8 OPcache PHP 8.3 + Cache L2 ───────────────────────────"

# Copiar ini completo desde /opt/laesh/configs/ (instalado por 01_preflight.sh)
SRC_OPCACHE="/opt/laesh/configs/10-opcache-laesh.ini"
DST_FPM="/etc/php/8.3/fpm/conf.d/10-opcache-laesh.ini"
DST_CLI="/etc/php/8.3/cli/conf.d/10-opcache-laesh.ini"

if [ -f "$SRC_OPCACHE" ]; then
    cp "$SRC_OPCACHE" "$DST_FPM"
    # CLI: misma config pero SIN JIT (P-INFRA-02).
    # opcache.jit=tracing + opcache.enable_cli=1 + extension=swoole.so → hang indefinido en CLI.
    # PHP-FPM no se ve afectado (proceso separado, sin el conflicto de extensiones en CLI).
    sed 's/^opcache\.jit=.*/opcache.jit=0/' "$SRC_OPCACHE" \
        | sed 's/^opcache\.jit_buffer_size=.*/opcache.jit_buffer_size=0M/' \
        | sed '1s/^/; CLI: JIT deshabilitado — P-INFRA-02 (Swoole+JIT CLI = hang)\n/' \
        > "$DST_CLI"
    ok "OPcache ini: FPM (JIT tracing activo) + CLI (JIT=0 — P-INFRA-02 fix)"
else
    warn "10-opcache-laesh.ini no encontrado en /opt/laesh/configs/ — usando inline"
    cat > "$DST_FPM" << 'OPCACHE'
; OPcache — LAESH KVM2 producción FPM (fallback inline)
opcache.enable=1
opcache.enable_cli=1
opcache.memory_consumption=128
opcache.interned_strings_buffer=16
opcache.max_accelerated_files=4000
opcache.validate_timestamps=0
opcache.jit=tracing
opcache.jit_buffer_size=64M
OPCACHE
    # CLI sin JIT (P-INFRA-02 — Swoole + JIT CLI = hang indefinido)
    sed 's/^opcache\.jit=.*/opcache.jit=0/' "$DST_FPM" \
        | sed 's/^opcache\.jit_buffer_size=.*/opcache.jit_buffer_size=0M/' \
        | sed '1s/^/; CLI: JIT deshabilitado — P-INFRA-02\n/' \
        > "$DST_CLI"
fi

systemctl reload php8.3-fpm
ok "OPcache configurado — FPM: bytecode RAM + JIT tracing | CLI: bytecode RAM (sin JIT, P-INFRA-02)"

# Cache renew cron (Cache L2 warm-up diario 5 AM — §15.9.6 Tecnica_Infraestructura)
CACHE_CRON_SRC="/opt/laesh/crones/cache_renew.cron"
CACHE_CRON_DST="/etc/cron.d/laesh-cache-renew"
if [ -f "$CACHE_CRON_SRC" ]; then
    # Copiar y sustituir __LAESH_APP_PASS__ (igual que en php-fpm-laesh.conf)
    # El cron necesita LAESH_DB_PASS para que config.php conecte a MariaDB en CLI.
    sed "s/__LAESH_APP_PASS__/${LAESH_APP_PASS}/g" "$CACHE_CRON_SRC" > "$CACHE_CRON_DST"
    chmod 640 "$CACHE_CRON_DST"   # 640: root lee, www-data no necesita leer el archivo
    ok "Cron cache_renew instalado (@reboot + 5 AM diario, www-data)"
else
    # Fallback inline (sin LAESH_DB_PASS — warm-up fallará en BD pero no rompe FPM)
    cat > "$CACHE_CRON_DST" << 'CRON'
SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
LAESH_CACHE_DIR=/opt/laesh/cache
LAESH_DB_HOST=127.0.0.1
LAESH_DB_PORT=3306
LAESH_DB_USER=laesh_app
LAESH_DB_NAME=laesh_db
APP_ENV=production
0 5 * * * www-data /usr/bin/php8.3 /opt/laesh/www/laesh-swbldi/crons/cache_renew.php >> /opt/laesh/logs/cache-renew.log 2>&1
1 5 * * * www-data sleep 5 && curl -sf -k https://127.0.0.1/laesh/ -H "Host: localhost" -o /dev/null --max-time 15 >> /opt/laesh/logs/cache-renew.log 2>&1
@reboot www-data sleep 90 && /usr/bin/php8.3 /opt/laesh/www/laesh-swbldi/crons/cache_renew.php >> /opt/laesh/logs/cache-renew-boot.log 2>&1 && sleep 15 && curl -sf -k https://127.0.0.1/laesh/ -H "Host: localhost" -o /dev/null --max-time 15 >> /opt/laesh/logs/cache-renew-boot.log 2>&1
CRON
    chmod 640 "$CACHE_CRON_DST"
    warn "cache_renew.cron fuente no encontrado — instalado fallback (sin LAESH_DB_PASS)"
fi

# ── 3. Disk monitor cron (diario 06:00 AM) ───────────────────────────────────
echo ""
echo "── 3/8 Disk monitor cron ─────────────────────────────────────"
DISK_SCRIPT="/opt/laesh/scripts/disk_monitor.sh"
if [ -f "$DISK_SCRIPT" ]; then
    chmod +x "$DISK_SCRIPT"
    DISK_CRON="0 6 * * * root bash ${DISK_SCRIPT} >> /opt/laesh/logs/disk-monitor.log 2>&1"
    if ! grep -qF "$DISK_SCRIPT" /etc/cron.d/laesh-disk-monitor 2>/dev/null; then
        echo "$DISK_CRON" > /etc/cron.d/laesh-disk-monitor
        chmod 644 /etc/cron.d/laesh-disk-monitor
        ok "Cron disk monitor diario (06:00, root)"
    else
        warn "Cron disk monitor ya existía"
    fi
else
    warn "disk_monitor.sh no encontrado en /opt/laesh/scripts/ — monitoreo de disco deshabilitado"
fi

# ── 4. SMTP swaks.conf + monitor_services cron + log-levels systemd ──────────
echo ""
echo "── 4/8 SMTP / Monitor / Log-levels ──────────────────────────"

# 4a. Substituir __SMTP_PASS__ en swaks.conf y proteger con 600
SWAKS_SRC="/opt/laesh/configs/swaks.conf"
SMTP_PASS="${LAESH_SMTP_PASS:-}"
if [ -f "$SWAKS_SRC" ]; then
    if [[ -n "$SMTP_PASS" ]]; then
        sed -i "s/__SMTP_PASS__/${SMTP_PASS}/g" "$SWAKS_SRC"
        chmod 600 "$SWAKS_SRC"
        chown root:root "$SWAKS_SRC"
        ok "swaks.conf protegido (600 root:root) — SMTP listo"
    else
        warn "LAESH_SMTP_PASS no definida — swaks.conf tiene placeholder __SMTP_PASS__"
        warn "  Sustituir manualmente: sed -i 's/__SMTP_PASS__/TU_PASS/' ${SWAKS_SRC}"
        warn "  Luego: chmod 600 ${SWAKS_SRC}"
    fi
else
    warn "swaks.conf no encontrado en /opt/laesh/configs/ — alertas SMTP deshabilitadas"
fi

# 4a-2. Smoke test SMTP (opcional — reporta resultado pero no detiene el pipeline)
TEST_SMTP_SCRIPT="/opt/laesh/scripts/test_smtp.sh"
if [ -f "$TEST_SMTP_SCRIPT" ] && [[ -n "$SMTP_PASS" ]]; then
    chmod +x "$TEST_SMTP_SCRIPT"
    log "Ejecutando smoke test SMTP..."
    if bash "$TEST_SMTP_SCRIPT" >> /opt/laesh/logs/alerts-smtp.log 2>&1; then
        ok "SMTP smoke test OK — correo de prueba enviado"
    else
        warn "SMTP smoke test falló (exit $?) — revisar: /opt/laesh/logs/alerts-smtp.log"
        warn "  Correr manualmente para diagnóstico: sudo bash ${TEST_SMTP_SCRIPT}"
    fi
elif [ -f "$TEST_SMTP_SCRIPT" ] && [[ -z "$SMTP_PASS" ]]; then
    warn "SMTP smoke test omitido — LAESH_SMTP_PASS no definida"
fi

# 4b. Monitor services cron (cada 10 min, root, con flock anti-solapamiento)
MONITOR_SCRIPT="/opt/laesh/scripts/monitor_services.sh"
if [ -f "$MONITOR_SCRIPT" ]; then
    chmod +x "$MONITOR_SCRIPT"
    chmod +x /opt/laesh/scripts/send_alert.sh 2>/dev/null || true
    MONITOR_CRON="*/10 * * * * root bash ${MONITOR_SCRIPT}"
    if ! grep -qF "$MONITOR_SCRIPT" /etc/cron.d/laesh-monitor 2>/dev/null; then
        echo "$MONITOR_CRON" > /etc/cron.d/laesh-monitor
        chmod 644 /etc/cron.d/laesh-monitor
        ok "Cron monitor_services instalado (cada 10 min, root)"
    else
        warn "Cron monitor_services ya existía"
    fi
    # Crear directorio de estado del monitor (archivos .last_alert por servicio)
    mkdir -p /opt/laesh/monitor
    ok "Directorio de estado del monitor: /opt/laesh/monitor/"
else
    warn "monitor_services.sh no encontrado — monitoreo de servicios deshabilitado"
fi

# 4c. Log-levels systemd path unit (hot-reload de log-levels.conf vía inotify)
# Copiar log-levels.conf a destino si no existe (no sobreescribir si ya fue editado)
LOG_LEVELS_CONF="/opt/laesh/logs/log-levels.conf"
if [ ! -f "$LOG_LEVELS_CONF" ]; then
    # Buscar fuente del pipeline en orden de preferencia
    # (paso 1 ya debería haberlo copiado desde ${SETUP_DIR}/logs/; esto es fallback)
    for src in \
        "/home/sysadmin/laesh-setup/logs/log-levels.conf" \
        "/home/sysadmin/laesh-src/logs/log-levels.conf"; do
        [ -f "$src" ] && { cp "$src" "$LOG_LEVELS_CONF"; ok "log-levels.conf copiado desde ${src}"; break; }
    done
fi
[ -f "$LOG_LEVELS_CONF" ] || cat > "$LOG_LEVELS_CONF" << 'LOGCONF'
nginx_error_level=warn
mariadb_slow_query_log=ON
mariadb_slow_query_time=2
mariadb_log_error_verbosity=2
mariadb_general_log=OFF
php_error_reporting=production
app_log_level=WARN
LOGCONF

chmod +x /opt/laesh/scripts/apply_log_levels.sh 2>/dev/null || true

# Permisos 664 root:www-data para que PHP-FPM (www-data) pueda escribir el archivo
# desde admrc/views/sistema.php (tab Infra — log-levels en caliente).
chown root:www-data "$LOG_LEVELS_CONF"
chmod 664 "$LOG_LEVELS_CONF"
ok "log-levels.conf permisos: 664 root:www-data (editable desde admrc/sistema?tab=infra)"

# Instalar systemd path unit y service
for unit in laesh-log-levels.path laesh-log-levels.service; do
    SRC_UNIT="/opt/laesh/configs/${unit}"
    [ -f "$SRC_UNIT" ] && cp "$SRC_UNIT" "/etc/systemd/system/${unit}"
done

systemctl daemon-reload
# reset-failed antes de enable/start para que re-ejecuciones no queden bloqueadas
# por un fallo anterior del service (oneshot que falló en initial apply).
systemctl reset-failed laesh-log-levels.path laesh-log-levels.service 2>/dev/null || true
systemctl enable laesh-log-levels.path 2>/dev/null || true
if systemctl is-active --quiet laesh-log-levels.path; then
    ok "laesh-log-levels.path ya activo — editar /opt/laesh/logs/log-levels.conf para cambiar niveles en caliente"
elif systemctl start laesh-log-levels.path 2>/dev/null; then
    ok "laesh-log-levels.path activo — editar /opt/laesh/logs/log-levels.conf para cambiar niveles en caliente"
else
    warn "laesh-log-levels.path no pudo activarse:"
    systemctl status laesh-log-levels.path --no-pager 2>/dev/null | tail -5 | sed 's/^/    /' || true
fi

# Aplicar niveles iniciales desde el config
bash /opt/laesh/scripts/apply_log_levels.sh 2>/dev/null \
    && ok "Log levels aplicados (initial apply)" \
    || warn "apply_log_levels.sh falló en aplicación inicial — verificar /opt/laesh/logs/apply-log-levels.log"

# ── 5. Backup cron (mysqldump horario) ────────────────────────────────────────
echo ""
echo "── 5/8 Backup BD cron ────────────────────────────────────────"
BACKUP_SCRIPT="/opt/laesh/scripts/backup_db.sh"
if [ -f "$BACKUP_SCRIPT" ]; then
    chmod +x "$BACKUP_SCRIPT"
    CRON_LINE="0 * * * * root bash ${BACKUP_SCRIPT} >> /opt/laesh/logs/backup.log 2>&1"
    if ! grep -qF "$BACKUP_SCRIPT" /etc/cron.d/laesh-backup 2>/dev/null; then
        echo "$CRON_LINE" > /etc/cron.d/laesh-backup
        chmod 644 /etc/cron.d/laesh-backup
        ok "Cron backup horario instalado"
    else
        warn "Cron backup ya existía"
    fi
else
    warn "backup_db.sh no encontrado en /opt/laesh/scripts/ — instalar scripts primero"
fi

# ── 5. Check expiry cert cron (semanal) ───────────────────────────────────────
echo ""
echo "── 6/8 Cron check cert expiry ───────────────────────────────"
CHECK_SCRIPT="/opt/laesh/crones/check_cert_expiry.sh"
if [ -f "$CHECK_SCRIPT" ]; then
    chmod +x "$CHECK_SCRIPT"
    CRON_CERT="0 8 * * 1 root bash ${CHECK_SCRIPT} >> /opt/laesh/logs/cert-check.log 2>&1"
    if ! grep -qF "$CHECK_SCRIPT" /etc/cron.d/laesh-cert-check 2>/dev/null; then
        echo "$CRON_CERT" > /etc/cron.d/laesh-cert-check
        chmod 644 /etc/cron.d/laesh-cert-check
        ok "Cron check cert semanal (lunes 08:00)"
    else
        warn "Cron cert check ya existía"
    fi
else
    warn "check_cert_expiry.sh no encontrado en /opt/laesh/crones/"
fi

# ── 7. MariaDB Least Privilege (opcional) ───────────────────────────────────────────────
echo ""
echo "── 7/8 MariaDB — Verificar Least Privilege laesh_app ────────"
# El usuario laesh_app debe tener solo DML (SELECT, INSERT, UPDATE, DELETE).
# setup_hostinger.sh ya lo crea así. Este paso solo verifica y alerta si hay GRANT extra.
if command -v mariadb &>/dev/null; then
    # Usar .mariadb-root.cnf si existe (creado por paso 4 con host=localhost socket).
    # Fallback unix_socket sin contraseña (solo funciona en fresh install pre-paso-4).
    # Sin esto, mariadb -u root falla con "Access denied" y GRANTS queda vacío
    # → grep silencioso → falso positivo "Least Privilege verificado".
    _MCNF_07="/opt/laesh/configs/.mariadb-root.cnf"
    if [ -f "$_MCNF_07" ]; then
        GRANTS=$(mariadb --defaults-extra-file="$_MCNF_07" \
                    -e "SHOW GRANTS FOR 'laesh_app'@'localhost';" 2>/dev/null || echo "")
    else
        GRANTS=$(mariadb -u root \
                    -e "SHOW GRANTS FOR 'laesh_app'@'localhost';" 2>/dev/null || echo "")
    fi
    if echo "$GRANTS" | grep -Eqi 'ALL PRIVILEGES|DROP|ALTER|CREATE|INDEX|LOCK'; then
        warn "⚠ laesh_app tiene permisos EXCESIVOS. Revisar SHOW GRANTS FOR 'laesh_app'@'localhost';"
        warn "  Solo debe tener: SELECT, INSERT, UPDATE, DELETE ON laesh_db.*"
    else
        ok "laesh_app — Least Privilege verificado (solo DML)"
    fi
else
    warn "MariaDB no disponible — verificar manualmente: SHOW GRANTS FOR 'laesh_app'@'localhost';"
fi

echo ""
echo "── 8/8 SSH Hardening ─────────────────────────────────────────"
if $SKIP_SSH; then
    warn "SSH hardening omitido (--skip-ssh). Ejecutar sin el flag cuando haya llave pública en authorized_keys."
else
    # Verificar que existe llave pública antes de deshabilitar password.
    # No usar grep -c en cadena con || dentro de $() — captura stdout de TODOS
    # los comandos que corren, produciendo "0\n0" en lugar de "0" → falla -eq.
    _HAS_PUBKEY=false
    grep -qE 'ssh-|ecdsa-|sk-' /root/.ssh/authorized_keys 2>/dev/null && _HAS_PUBKEY=true
    grep -qE 'ssh-|ecdsa-|sk-' /home/sysadmin/.ssh/authorized_keys 2>/dev/null && _HAS_PUBKEY=true
    if ! $_HAS_PUBKEY; then
        warn "⚠ No se encontró llave pública en authorized_keys."
        warn "  SSH hardening OMITIDO para evitar bloqueo de acceso."
        warn "  Agrega tu llave pública y re-ejecuta: sudo bash 07_security_harden.sh"
    else
        SSHD="/etc/ssh/sshd_config"
        cp "$SSHD" "${SSHD}.bak-$(date +%F)"
        sed -i 's/^#\?PermitRootLogin .*/PermitRootLogin no/'          "$SSHD"
        sed -i 's/^#\?PasswordAuthentication .*/PasswordAuthentication no/' "$SSHD"
        sed -i 's/^#\?PubkeyAuthentication .*/PubkeyAuthentication yes/'   "$SSHD"
        sed -i 's/^#\?MaxAuthTries .*/MaxAuthTries 3/'                  "$SSHD"
        # Ubuntu 24.04 usa ssh.service (no sshd.service); detectar cuál existe.
        _SSH_SVC="$(systemctl list-unit-files --type=service 2>/dev/null \
                    | grep -oE '^sshd?\.service' | head -1 | sed 's/\.service//')"
        _SSH_SVC="${_SSH_SVC:-ssh}"
        sshd -t && systemctl reload "$_SSH_SVC"
        ok "SSH: root login off, password off, pubkey only, MaxAuthTries=3"
    fi
fi

echo ""
ok "Security hardening completo"

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `08_verify.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# LAESH KVM2 · Paso 8 — Verificación Final (Health Check)
# 15 checks internos + llama bash/03_test_deploy.sh (27 checks HTTP).
# Puede ejecutarse en cualquier momento como health check permanente.
# No modifica el sistema.
#
# Uso:
#   sudo bash 08_verify.sh                                  # IP (Modo A)
#   LAESH_DOMAIN=laesh.mx sudo -E bash 08_verify.sh         # Dominio (Modo B)
# ==============================================================================

LAESH_DOMAIN="${LAESH_DOMAIN:-}"
LAESH_IP="83.136.219.193"

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; BOLD='\033[1m'; NC='\033[0m'

PASS=0; WARN=0; FAIL=0

chk() {
    local label="$1"; local cmd="$2"; local expect="${3:-}"
    local result
    result=$(eval "$cmd" 2>/dev/null || echo "ERROR")
    if [[ -n "$expect" ]]; then
        if echo "$result" | grep -q "$expect"; then
            echo -e "  ${GREEN}✓${NC} $label"
            ((PASS++))
        else
            echo -e "  ${RED}✗${NC} $label (obtuvo: $(echo "$result" | head -1 | cut -c1-60))"
            ((FAIL++))
        fi
    else
        if [[ "$result" != "ERROR" && -n "$result" ]]; then
            echo -e "  ${GREEN}✓${NC} $label — $result"
            ((PASS++))
        else
            echo -e "  ${RED}✗${NC} $label"
            ((FAIL++))
        fi
    fi
}

chk_svc() {
    local svc="$1"
    if systemctl is-active --quiet "$svc" 2>/dev/null; then
        echo -e "  ${GREEN}✓${NC} $svc activo"
        ((PASS++))
    else
        echo -e "  ${RED}✗${NC} $svc NO activo"
        ((FAIL++))
    fi
}

echo ""
echo -e "${BOLD}══════════════════════════════════════════════════════${NC}"
echo -e "${BOLD} LAESH Bloc Digital v1.2 — Health Check              ${NC}"
echo -e "${BOLD} $(date '+%Y-%m-%d %H:%M:%S') · $(hostname)          ${NC}"
if [[ -n "$LAESH_DOMAIN" ]]; then
    echo -e "${BOLD} Modo B: ${LAESH_DOMAIN}                           ${NC}"
else
    echo -e "${BOLD} Modo A: ${LAESH_IP} (self-signed)                 ${NC}"
fi
echo -e "${BOLD}══════════════════════════════════════════════════════${NC}"

# ── 1. Sistema ────────────────────────────────────────────────────────────────
echo ""
echo "── Sistema ─────────────────────────────────────────────────"
chk "Swap activo" "swapon --show | grep swapfile" "swapfile"
chk "vm.swappiness=10" "sysctl vm.swappiness" "10"
chk "/opt/laesh/ existe" "ls /opt/laesh/" "."
chk "/var/lib/mysql es symlink → laesh-db" "readlink /var/lib/mysql" "/opt/laesh/laesh-db"

# ── 2. Versiones stack ────────────────────────────────────────────────────────
echo ""
echo "── Versiones Stack ─────────────────────────────────────────"
chk "MariaDB 11.8.x" "mariadbd --version" "11\.8\."
chk "PHP 8.3.x" "php8.3 -n -r 'echo PHP_VERSION;'" "8\.3\."
chk "Swoole 6.2.x" "strings /usr/lib/php/20230831/swoole.so 2>/dev/null | grep -oE '6[.][0-9]+[.][0-9]+' | sort -V | tail -1" "6\.2\."
chk "Composer instalado" "php8.3 -n /usr/local/bin/composer --version --no-ansi 2>/dev/null" "Composer"

# ── 3. Servicios ─────────────────────────────────────────────────────────────
echo ""
echo "── Servicios ───────────────────────────────────────────────"
chk_svc "nginx"
chk_svc "mariadb"
chk_svc "php8.3-fpm"
chk_svc "swoole-laesh"

# ── 4. Conectividad interna ──────────────────────────────────────────────────
echo ""
echo "── Conectividad Interna ────────────────────────────────────"
chk "Nginx responde HTTP" "curl -so /dev/null -w '%{http_code}' http://127.0.0.1/" "3"  # 301 redirect
chk "Swoole /status" "curl -sf http://127.0.0.1:9502/status" '"status":"online"'
chk "FPM socket existe" "test -S /run/php/php8.3-fpm.sock && echo OK" "OK"

# ── 5. BD ─────────────────────────────────────────────────────────────────────
# Conexión root: preferir .mariadb-root.cnf (creado por 04_configure_stack.sh)
# que guarda la contraseña configurada. Fallback: unix_socket sin password
# (solo funciona en install fresco antes de paso 4).
_MCNF="/opt/laesh/configs/.mariadb-root.cnf"
if [ -f "$_MCNF" ]; then
    _MROOT="mariadb --defaults-extra-file=${_MCNF}"
else
    _MROOT="mariadb -u root"
fi

echo ""
echo "── Base de Datos ───────────────────────────────────────────"
chk "MariaDB acepta conexiones" "${_MROOT} -e 'SELECT 1;' 2>/dev/null" "1"
chk "laesh_db existe"           "${_MROOT} -e 'SHOW DATABASES;' 2>/dev/null" "laesh_db"
chk "Tabla users existe"        "${_MROOT} laesh_db -e 'SELECT COUNT(*) FROM users;' 2>/dev/null" "[0-9]"

# ── 6. Logs ───────────────────────────────────────────────────────────────────
echo ""
echo "── Logs en /opt/laesh/logs/ ────────────────────────────────"
for logf in nginx-access.log nginx-error.log swoole.log; do
    # Los logs de nginx se crean en el primer request; verificar que el dir es escribible
    if [ -f "/opt/laesh/logs/${logf}" ] || [ -w "/opt/laesh/logs/" ]; then
        echo -e "  ${GREEN}✓${NC} /opt/laesh/logs/${logf} (dir escribible)"
        ((PASS++))
    else
        echo -e "  ${YELLOW}△${NC} /opt/laesh/logs/${logf} no existe aún (normal antes del primer request)"
        ((WARN++))
    fi
done

# ── 7. UFW ────────────────────────────────────────────────────────────────────
echo ""
echo "── Seguridad ───────────────────────────────────────────────"
if ufw status 2>/dev/null | grep -q "Status: active"; then
    echo -e "  ${GREEN}✓${NC} UFW activo"
    ((PASS++))
else
    echo -e "  ${YELLOW}△${NC} UFW no activo (paso 7 no ejecutado)"
    ((WARN++))
fi

# ── 8. Infraestructura adicional ──────────────────────────────────────────────
echo ""
echo "── Infraestructura Adicional ───────────────────────────────"

# Cache L2
if [ -d "/opt/laesh/cache" ] && [ -w "/opt/laesh/cache" ]; then
    echo -e "  ${GREEN}✓${NC} /opt/laesh/cache/ existe y es escribible (Cache L2 OPcache)"
    ((PASS++))
else
    echo -e "  ${RED}✗${NC} /opt/laesh/cache/ no existe o no es escribible — Cache L2 fallará"
    ((FAIL++))
fi

# Monitor state dir
if [ -d "/opt/laesh/monitor" ]; then
    echo -e "  ${GREEN}✓${NC} /opt/laesh/monitor/ existe (estado cooldown monitor_services)"
    ((PASS++))
else
    echo -e "  ${YELLOW}△${NC} /opt/laesh/monitor/ no existe — monitor_services.sh lo crea en primer run"
    ((WARN++))
fi

# swaks instalado
if command -v swaks &>/dev/null; then
    echo -e "  ${GREEN}✓${NC} swaks instalado (SMTP alertas)"
    ((PASS++))
else
    echo -e "  ${YELLOW}△${NC} swaks no instalado — alertas SMTP deshabilitadas"
    ((WARN++))
fi

# swaks.conf sin placeholder
if [ -f /opt/laesh/configs/swaks.conf ]; then
    if grep -qF '__SMTP_PASS__' /opt/laesh/configs/swaks.conf; then
        echo -e "  ${RED}✗${NC} swaks.conf tiene __SMTP_PASS__ sin sustituir — alertas SMTP no funcionarán"
        ((FAIL++))
    else
        echo -e "  ${GREEN}✓${NC} swaks.conf configurado (sin placeholder)"
        ((PASS++))
    fi
else
    echo -e "  ${YELLOW}△${NC} swaks.conf no encontrado — alertas SMTP deshabilitadas"
    ((WARN++))
fi

# laesh-log-levels.path activo
if systemctl is-active --quiet laesh-log-levels.path 2>/dev/null; then
    echo -e "  ${GREEN}✓${NC} laesh-log-levels.path activo (hot log-level reload via inotify)"
    ((PASS++))
else
    echo -e "  ${YELLOW}△${NC} laesh-log-levels.path no activo — cambios en log-levels.conf no se aplican automáticamente"
    ((WARN++))
fi

# log-levels.conf sin placeholder y con contenido válido
LOG_LEVELS_FILE="/opt/laesh/logs/log-levels.conf"
if [ -f "$LOG_LEVELS_FILE" ]; then
    echo -e "  ${GREEN}✓${NC} log-levels.conf existe (niveles de log configurables)"
    ((PASS++))
else
    echo -e "  ${YELLOW}△${NC} log-levels.conf no encontrado — creado con defaults en paso 7"
    ((WARN++))
fi

# ── 9. bash/03_test_deploy.sh (27 checks HTTP) ───────────────────────────────
echo ""
echo "── Suite HTTP: bash/03_test_deploy.sh ─────────────────────"
# Buscar en múltiples ubicaciones (orden de preferencia):
#   1. Ruta canónica tras rsync del repo (setup/bds/laesh/bash/)
#   2. Legado: subida directa de la carpeta laesh-bds/
TEST_SCRIPT=""
for _CANDIDATE in \
    "/home/sysadmin/laesh-src/setup/bds/laesh/bash/03_test_deploy.sh" \
    "/home/sysadmin/laesh-bds/bash/03_test_deploy.sh"; do
    if [ -f "$_CANDIDATE" ]; then
        TEST_SCRIPT="$_CANDIDATE"
        break
    fi
done
if [ -n "$TEST_SCRIPT" ]; then
    if [[ -n "$LAESH_DOMAIN" ]]; then
        BASE="https://${LAESH_DOMAIN}"
    else
        BASE="https://${LAESH_IP}"
    fi
    echo "  BASE=${BASE}"
    echo "  Script: ${TEST_SCRIPT}"
    echo "  (HSTS y HTTP/2 fallarán en Modo A — esperado)"
    echo ""
    BASE="$BASE" bash "$TEST_SCRIPT" || true
else
    echo -e "  ${YELLOW}△${NC} 03_test_deploy.sh no encontrado — ubicaciones buscadas:"
    echo "        /home/sysadmin/laesh-src/setup/bds/laesh/bash/03_test_deploy.sh"
    echo "        /home/sysadmin/laesh-bds/bash/03_test_deploy.sh"
    echo "  Subir repo con rsync y reintentar (ver README §Pre-requisitos)."
    ((WARN++))
fi

# ── Resumen ───────────────────────────────────────────────────────────────────
TOTAL=$((PASS + WARN + FAIL))
echo ""
echo -e "${BOLD}══════════════════════════════════════════════════════${NC}"
echo -e "  ${GREEN}✓ ${PASS}${NC} OK  |  ${YELLOW}△ ${WARN}${NC} Avisos  |  ${RED}✗ ${FAIL}${NC} Errores  |  Total: ${TOTAL}"
if [ $FAIL -eq 0 ]; then
    echo -e "  ${GREEN}${BOLD}STACK OPERATIVO${NC}"
else
    echo -e "  ${RED}${BOLD}$FAIL checks fallaron — revisar arriba${NC}"
fi
echo -e "${BOLD}══════════════════════════════════════════════════════${NC}"
echo ""
[ $FAIL -eq 0 ] || exit 1

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `pre-setup_hkvm2.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/bin/bash
# ==============================================================================
# ⚠️  DEPRECATED — NO USAR EN PRODUCCIÓN
# ==============================================================================
# Este script es un prototipo histórico (pre-pipeline) — NO es parte del
# pipeline de instalación actual (00_run_all.sh → 08_verify.sh).
#
# Problemas conocidos que lo hacen inseguro para producción:
#   • Contraseña MariaDB hardcodeada (laesh-bd2026) — cambiar antes de usar
#   • Sin repo MariaDB 11.8 — instala versión de repositorio Ubuntu (11.x variable)
#   • Swoole sin pin de versión — instala última disponible en PECL
#   • Rutas: /var/www/html (Docker) en lugar de /opt/laesh/www (KVM2)
#   • Sin UFW, sin logrotate, sin monitoreo, sin backup, sin hardening SSH
#
# Para instalar en Hostinger KVM2, usar:
#   sudo bash 00_run_all.sh
# ==============================================================================

# Instalador Idempotente de Stack: Nginx, MariaDB 11, PHP-FPM 8.3 + Swoole Systemd
# LEGADO — ver deprecation notice arriba

# ==========================================
# VARIABLES DE CONFIGURACIÓN
# ==========================================
DB_ROOT_PASS="laesh-bd2026"
LOGFILE="/var/log/stack_setup.log"

# Funciones de Logging
log_info() { echo -e "[\e[34mINFO\e[0m] $(date +'%T') - $1" | tee -a "$LOGFILE"; }
log_success() { echo -e "[\e[32mEXITO\e[0m] $(date +'%T') - $1" | tee -a "$LOGFILE"; }
log_error() { echo -e "[\e[31mERROR\e[0m] $(date +'%T') - $1" | tee -a "$LOGFILE"; }

log_info "Iniciando despliegue idempotente del stack..."

# 1. Repositorios y Paquetes Base
if ! dpkg -l | grep -q php8.3-fpm; then
    log_info "Instalando Nginx, MariaDB y núcleo PHP 8.3..."
    apt-get update -y >> "$LOGFILE" 2>&1
    apt-get install software-properties-common -y >> "$LOGFILE" 2>&1
    add-apt-repository ppa:ondrej/php -y >> "$LOGFILE" 2>&1
    apt-get update -y >> "$LOGFILE" 2>&1
    apt-get install nginx mariadb-server php8.3-fpm php8.3-mysql php8.3-dev -y >> "$LOGFILE" 2>&1
else
    log_success "Paquetes base ya instalados. Omitiendo."
fi

# 1.1 Configurar Contraseña de root en MariaDB
log_info "Asegurando credenciales de MariaDB..."
# Utiliza el socket de Unix por defecto para inyectar la contraseña sin pedir prompt
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}'; FLUSH PRIVILEGES;" >> "$LOGFILE" 2>&1
log_success "Contraseña de root de MariaDB configurada."

# 2. Compilación de Swoole
if ! php -m | grep -q -i swoole; then
    log_info "Compilando extensión nativa Swoole vía PECL..."
    pecl install swoole >> "$LOGFILE" 2>&1
    echo "extension=swoole.so" > /etc/php/8.3/cli/conf.d/20-swoole.ini
    echo "extension=swoole.so" > /etc/php/8.3/fpm/conf.d/20-swoole.ini
    systemctl restart php8.3-fpm >> "$LOGFILE" 2>&1
    log_success "Swoole compilado y habilitado exitosamente."
else
    log_success "Swoole ya se encuentra integrado en PHP."
fi

# 3. Configuración del Estado Deseado para Nginx
log_info "Forzando estado de configuración en Nginx..."
cat << 'EOF' > /etc/nginx/sites-available/webapp
server {
    listen 80;
    server_name localhost;
    root /var/www/html;
    index index.php index.html;

    # Proxy inverso para WebSockets Swoole
    location /ws/ {
        proxy_pass http://127.0.0.1:9501;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "Upgrade";
        proxy_set_header Host $host;
    }

    # Interoperabilidad PHP-FPM
    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.3-fpm.sock;
    }
}
EOF

ln -sf /etc/nginx/sites-available/webapp /etc/nginx/sites-enabled/
rm -f /etc/nginx/sites-enabled/default

if nginx -t >> "$LOGFILE" 2>&1; then
    systemctl reload nginx
    log_success "Bloque de Nginx recargado."
else
    log_error "Fallo sintáctico en Nginx."
fi

# 4. Archivo de Prueba de Interoperabilidad (Usando la variable de password)
cat << EOF > /var/www/html/test_db.php
<?php
try {
    \$pdo = new PDO('mysql:host=localhost', 'root', '${DB_ROOT_PASS}');
    echo "INTEGRACION_OK";
} catch (PDOException \$e) { echo "ERROR_DB: " . \$e->getMessage(); }
EOF
chown -R www-data:www-data /var/www/html/test_db.php

# 5. Demonio Systemd para Swoole
log_info "Validando servicio perpetuo de Swoole..."
cat << 'EOF' > /var/www/html/ws_server.php
<?php
$server = new Swoole\WebSocket\Server("127.0.0.1", 9501);
$server->on("start", function ($server) { echo "Swoole OK\n"; });
$server->on("message", function($server, $frame) { $server->push($frame->fd, "WS_OK"); });
$server->start();
EOF

chown -R sysadmin:sysadmin /var/www/html/ws_server.php

cat << 'EOF' > /etc/systemd/system/swoole-websocket.service
[Unit]
Description=Swoole WebSocket Server
After=network.target mariadb.service php8.3-fpm.service

[Service]
Type=simple
User=sysadmin
Group=sysadmin
ExecStart=/usr/bin/php8.3 /var/www/html/ws_server.php
Restart=always
RestartSec=3
LimitNOFILE=65535

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload >> "$LOGFILE" 2>&1
systemctl enable --now swoole-websocket >> "$LOGFILE" 2>&1

# 6. Verificación Final en Vivo
TEST_RESULT=$(curl -s http://localhost/test_db.php)
if [[ "$TEST_RESULT" == *"INTEGRACION_OK"* ]] && systemctl is-active --quiet swoole-websocket; then
    log_success "Ejecución idempotente exitosa: Stack operando al 100%."
else
    log_error "Hay problemas en la interoperabilidad del stack final. Respuesta: $TEST_RESULT"
fi
```

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/scripts`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>Directory: `scripts` (11 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/scripts`

| Name | Type | Size |
|------|------|------|
| `apply_log_levels.sh` | File | 6670 bytes |
| `backup_db.sh` | File | 4905 bytes |
| `disk_monitor.sh` | File | 2926 bytes |
| `laesh-start.sh` | File | 1012 bytes |
| `laesh-status.sh` | File | 2761 bytes |
| `laesh-stop.sh` | File | 804 bytes |
| `monitor_services.sh` | File | 10746 bytes |
| `restore_db.sh` | File | 2463 bytes |
| `send_alert.sh` | File | 4083 bytes |
| `swoole-restart.sh` | File | 771 bytes |
| `test_smtp.sh` | File | 11029 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/configs`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>Directory: `configs` (10 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/configs`

| Name | Type | Size |
|------|------|------|
| `10-opcache-laesh.ini` | File | 4188 bytes |
| `laesh-log-levels.path` | File | 973 bytes |
| `laesh-log-levels.service` | File | 1015 bytes |
| `mariadb-99-laesh.cnf` | File | 5924 bytes |
| `nginx-base.conf` | File | 6660 bytes |
| `nginx-laesh-domain.conf` | File | 14220 bytes |
| `nginx-laesh-ip.conf` | File | 13980 bytes |
| `php-99-laesh.ini` | File | 4317 bytes |
| `php-fpm-laesh.conf` | File | 3973 bytes |
| `swaks.conf` | File | 1087 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/crones`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>Directory: `crones` (4 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/crones`

| Name | Type | Size |
|------|------|------|
| `cache_renew.cron` | File | 4580 bytes |
| `check_cert_expiry.sh` | File | 2788 bytes |
| `logrotate-laesh.conf` | File | 2949 bytes |
| `swoole-laesh.service` | File | 1527 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/https`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>Directory: `https` (1 items)</summary>

**Path:** `home/carlos/GitHub/caelitandem_home/restaurantb/setup/deploy/laesh-kvm2-prod/https`

| Name | Type | Size |
|------|------|------|
| `issue_cert.sh` | File | 4591 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `setup_hostinger.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# ==============================================================================
# setup_hostinger.sh — Setup Orchestrator LAESH · Hostinger KVM 2
#
# Stack Hostinger: Nginx nativo + PHP 8.3-FPM nativo + MariaDB 11.8 nativo
# (sin Docker para ningún componente — diferencia clave vs OCI)
#
# Pipeline:
#   Paso 1  → DROP + recrear BD (solo con --drop)
#   Paso 2  → SQL 00–09 (10 scripts en orden)
#   Paso 3  → ALTER USER laesh_app → contraseña producción
#   Paso 3b → Least Privilege: REVOKE ALL + GRANT DML-only (SELECT,INSERT,UPDATE,DELETE)
#   Paso 4  → Seed usuarios via php8.3 nativo
#
# Uso:
#   bash setup/bds/laesh/setup_hostinger.sh           # sin DROP (idempotente)
#   bash setup/bds/laesh/setup_hostinger.sh --drop    # DROP + recrear BD completa
#
# Variables sobreescribibles:
#   H_DB_HOST      Host MariaDB (default: 127.0.0.1)
#   H_DB_PORT      Puerto MariaDB (default: 3306)
#   H_ROOT_PASS    Contraseña root nativa (default: — DEBE pasarse como env var)
#   H_APP_PASS     Contraseña laesh_app producción (default: — DEBE pasarse)
#   H_PHP_BIN      Binario PHP nativo (default: php8.3)
#   H_WEB_DIR      Raíz www en servidor (default: /opt/laesh/www)
#
# Ejemplo real en Hostinger:
#   H_ROOT_PASS='MiRootSeguro2026!' \
#   H_APP_PASS='MiAppSeguro2026!' \
#   bash setup/bds/laesh/setup_hostinger.sh --drop
# ==============================================================================

set -euo pipefail

# ── Configuración Hostinger ───────────────────────────────────────────────────
H_DB_HOST="${H_DB_HOST:-127.0.0.1}"
H_DB_PORT="${H_DB_PORT:-3306}"
H_PHP_BIN="${H_PHP_BIN:-php8.3}"
H_WEB_DIR="${H_WEB_DIR:-/opt/laesh/www}"

# Credenciales: sin default — deben pasarse explícitamente para evitar deploys
# con contraseñas genéricas en producción.
if [[ -z "${H_ROOT_PASS:-}" ]]; then
    echo "[ERROR] H_ROOT_PASS no definida."
    echo "        Ejecutar: H_ROOT_PASS='...' H_APP_PASS='...' bash setup_hostinger.sh --drop"
    exit 1
fi
if [[ -z "${H_APP_PASS:-}" ]]; then
    echo "[ERROR] H_APP_PASS no definida."
    echo "        Ejecutar: H_ROOT_PASS='...' H_APP_PASS='...' bash setup_hostinger.sh --drop"
    exit 1
fi

DROP_DB=false
if [[ "${1:-}" == "--drop" ]]; then
    DROP_DB=true
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Comando MariaDB nativo (no docker exec).
# Se conecta via socket local (sin -h) porque root@127.0.0.1 (TCP) no está
# permitido en MariaDB 11.8 por defecto — solo root@localhost via unix_socket.
MCMD="mariadb -u root -p${H_ROOT_PASS}"

# ── Verificar que MariaDB está corriendo ─────────────────────────────────────
if ! systemctl is-active --quiet mariadb 2>/dev/null && ! systemctl is-active --quiet mysql 2>/dev/null; then
    echo "[ERROR] MariaDB no está activo (systemd)."
    echo "        sudo systemctl start mariadb"
    exit 1
fi

echo "=================================================================="
echo " LAESH Bloc Digital — Setup BD (Hostinger KVM 2 — Nativo)"
echo " Host: ${H_DB_HOST}:${H_DB_PORT} | DB: laesh_db"
echo " DROP mode: ${DROP_DB}"
echo "=================================================================="

# ── PASO 1: DROP + recrear BD (solo con --drop) ───────────────────────────────
if $DROP_DB; then
    echo ""
    echo "── Paso 1: DROP + recrear laesh_db ────────────────────────────────"
    echo "   ⚠  Destruyendo BD laesh_db en MariaDB nativo..."
    ${MCMD} -e "DROP DATABASE IF EXISTS laesh_db;" 2>/dev/null
    echo "  ✓ DROP completado"
fi

# ── PASO 2: SQL 00–09 ─────────────────────────────────────────────────────────
run_sql_file() {
    local script="$1"
    local desc="$2"
    echo "→ Ejecutando ${script} (${desc})..."
    ${MCMD} < "${DIR}/${script}" 2>/dev/null
    echo "  ✓ OK"
}

echo ""
echo "── Paso 2: Schema + Seed SQL (10 scripts) ─────────────────────────"
run_sql_file "00_database.sql"             "BD + usuario laesh_app (pass dev — se corrige en paso 3)"
run_sql_file "01_auth_schema.sql"          "Auth schema (tablas Delight-Auth)"
run_sql_file "02_core_schema.sql"          "Core: configuraciones, web_contenidos, estudios"
run_sql_file "03_transactional_schema.sql" "Transaccional: ordenes, notificaciones, historial"
run_sql_file "04_auth_extensions.sql"      "Auth Extensions: empleados, perfiles, RBAC"
run_sql_file "05_system_tables.sql"        "Sistema: sys_logs, fallback_log"
run_sql_file "06_indexes.sql"              "Índices de rendimiento"
run_sql_file "07_seed_catalogs.sql"        "Seed: catálogos, estudios, configuraciones, web_contenidos"
run_sql_file "08_stored_procedures.sql"    "Stored Procedures: CrearOrden, ProcesarPDF"
run_sql_file "09_views.sql"               "Vistas: vw_ordenes_completas, vw_pacientes_historial"

# ── PASO 3: Corregir contraseña laesh_app (dev→producción) ───────────────────
echo ""
echo "── Paso 3: Fijando contraseña laesh_app → producción ──────────────"
${MCMD} -e "ALTER USER 'laesh_app'@'%' IDENTIFIED BY '${H_APP_PASS}'; FLUSH PRIVILEGES;" 2>/dev/null
echo "  ✓ laesh_app password actualizada"

# ── PASO 3b: Least Privilege — revocar GRANT ALL y aplicar solo DML ──────────
# 00_database.sql crea laesh_app con GRANT ALL PRIVILEGES para que root pueda
# ejecutar los 10 scripts DDL + seed sin problemas. Una vez que el schema está
# estable, el usuario de la aplicación solo debe poder hacer DML (SELECT/INSERT/
# UPDATE/DELETE). Sin DROP, ALTER, CREATE, INDEX, GRANT, etc.
# Este paso es idempotente: REVOKE silencioso si ya no tiene el privilegio.
echo ""
echo "── Paso 3b: Least Privilege laesh_app (REVOKE ALL + GRANT DML-only) ──"
${MCMD} <<'SQL_LEASTPRIV' 2>/dev/null
REVOKE ALL PRIVILEGES ON laesh_db.* FROM 'laesh_app'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON laesh_db.* TO 'laesh_app'@'%';
FLUSH PRIVILEGES;
SQL_LEASTPRIV
echo "  ✓ laesh_app limitada a SELECT, INSERT, UPDATE, DELETE (producción)"

# ── PASO 4: Seed usuarios via php nativo ─────────────────────────────────────
echo ""
echo "── Paso 4: Sembrando usuarios (${H_PHP_BIN} nativo) ────────────────"

PHP_SCRIPT="${H_WEB_DIR}/laesh-swbldi/commons/seed_first_users.php"

if [ ! -f "${PHP_SCRIPT}" ]; then
    echo "[ERROR] Script PHP no encontrado: ${PHP_SCRIPT}"
    echo "        Verifica que el rsync de laesh-swbldi haya completado."
    exit 1
fi

# Ejecutar fuera de set -e para capturar errores y mostrarlos en lugar de salir silencioso
set +e
DB_HOST="${H_DB_HOST}" \
DB_PORT="${H_DB_PORT}" \
DB_USER="laesh_app" \
DB_PASS="${H_APP_PASS}" \
DB_NAME="laesh_db" \
${H_PHP_BIN} "${PHP_SCRIPT}"
_SEED_EXIT=$?
set -e

if [ $_SEED_EXIT -ne 0 ]; then
    echo ""
    echo "  [△] seed_first_users.php terminó con código ${_SEED_EXIT}."
    echo "      Puede ser normal si los usuarios ya existen (idempotente)."
    echo "      Para verificar: mariadb -u root laesh_db -e \"SELECT email FROM users LIMIT 5;\""
else
    echo "  ✓ Usuarios sembrados correctamente"
fi

echo ""
echo "=================================================================="
echo " ✅ Setup Hostinger completo"
echo ""
echo " BD:       laesh_db (MariaDB nativo — systemd)"
echo " App user: laesh_app / [configurada]"
echo " Acceso:   https://laesh.mx/laesh/"
echo ""
echo " Usuarios demo (CAMBIAR antes de entregar al cliente):"
echo "   ADMIN     9990000001  010120001!"
echo "   RECEPCIÓN 9990000002  010120002!"
echo "   MÉDICO    9990000003  010120003!"
echo ""
echo " Verificar deploy:"
echo "   BASE=https://laesh.mx bash ${DIR}/bash/03_test_deploy.sh"
echo "=================================================================="

```

</details>

---

## Agent Response

### Thinking

**Analyzing Setup Impact**

I've got a good grasp of the project's setup, including all the key files. I'm now carefully breaking down the user's questions. I'm starting with the impact of re-running the setup process according to the `README.md` instructions. My main focus is on the expected outcomes of that process. Next, I'll evaluate the system's idempotency.


**Assessing Re-run Safety**

I'm now fully immersed in understanding the potential outcomes of re-running the setup on a live server. My current focus is on a structured, detailed report in Spanish. The analysis is diving deep into the idempotency of the pipeline's steps, scrutinizing scripts like `01_preflight.sh` and `02_install_stack.sh` to determine if re-execution is safe. I'm focusing on preserving configurations and avoiding unnecessary actions.


**Confirming Script Safety**

I'm now zeroing in on the script's specific behaviors to confirm safety. I'm focusing on the `05_tls_certbot.sh` script, verifying the certificate renewal process. Then, I'm checking `06_deploy_app.sh`, confirming no data loss from `setup_hostinger.sh`. I'm evaluating MariaDB commands and looking into the `composer install` for dependencies. Then I'll check how UFW is reset. I am carefully assessing each step for data preservation.


**Evaluating Idempotency Gaps**

I've identified key areas that are now resolved and secured. Specifically, the JIT + Swoole hang is fixed using a CLI-specific INI with `opcache.jit=0`. I'm using `php8.3 -n` or `strings` to avoid JIT in re-executions. SSL duplication is prevented by using `certonly --webroot` in `05_tls_certbot.sh`. I'm now aware that the `backup_db.sh` script does validation. I'm focusing on preserving transactional data. However, I now have noticed that a potential minor issue is the handling of exported SSH environment variables.


**Addressing Script Considerations**

I've learned that re-running `03_install_swoole.sh` can take 10-20 minutes due to compilation, not a bug, but worth noting. I must be mindful of the impact of the `--drop` option in `06_deploy_app.sh`, which will result in data loss. I'm also confirming DNS propagation for TLS and security implications in `07_security_harden.sh` if SSH keys are missing. Finally, I'll avoid `pre-setup_hkvm2.sh` as it is deprecated.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.354631623s
- **Model:** Gemini 3.6 Flash (Medium)
</details>

---

---

*Generated by Chatledger for Antigravity*