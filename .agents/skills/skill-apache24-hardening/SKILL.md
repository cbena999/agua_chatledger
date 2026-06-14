# SKILL: Apache 2.4 — Hardening y Mejores Prácticas
---
name: Apache 2.4 Hardening
description: Configuración segura de Apache 2.4 con PHP-FPM, hardening de producción, módulos esenciales y workarounds.
---

## 🛡️ Contexto
Apache 2.4 sirve como servidor web en los tres entornos del proyecto: Host A (LAMPP/Linux), Host C (XAMPP/Windows, puerto 7001) y Docker (Restaurant/caelitandem). Esta guía cubre la configuración segura para todos.

---

## 1. Hardening Obligatorio

### 1.1 Ocultar Información del Servidor
```apache
# En httpd.conf o security.conf
ServerTokens Prod
ServerSignature Off
```

### 1.2 Deshabilitar Listado de Directorios
```apache
<Directory /var/www/html>
    Options -Indexes -FollowSymLinks
    AllowOverride None
</Directory>
```

### 1.3 Bloquear Archivos Sensibles
```apache
# Bloquear dotfiles (.env, .git, .htaccess expuesto)
<FilesMatch "^\.">
    Require all denied
</FilesMatch>

# Bloquear extensiones peligrosas
<FilesMatch "\.(htaccess|htpasswd|env|ini|log|bak|sh|sql|md)$">
    Require all denied
</FilesMatch>
```

### 1.4 Restringir Métodos HTTP
```apache
<Directory /var/www/html>
    <LimitExcept GET POST HEAD>
        Require all denied
    </LimitExcept>
</Directory>
TraceEnable off
```

### 1.5 Headers de Seguridad
```apache
<IfModule mod_headers.c>
    Header always set X-Content-Type-Options "nosniff"
    Header always set X-Frame-Options "SAMEORIGIN"
    Header always set X-XSS-Protection "1; mode=block"
    Header always set Referrer-Policy "strict-origin-when-cross-origin"
    # CSP ajustado al proyecto (permite inline para HTMX)
    Header always set Content-Security-Policy "default-src 'self'; script-src 'self' 'unsafe-inline' 'unsafe-eval'; style-src 'self' 'unsafe-inline'; img-src 'self' data:; font-src 'self';"
</IfModule>
```

### 1.6 TLS Moderno (HTTPS)
```apache
<IfModule mod_ssl.c>
    SSLProtocol all -SSLv2 -SSLv3 -TLSv1 -TLSv1.1
    SSLCipherSuite HIGH:!aNULL:!MD5:!3DES
    SSLHonorCipherOrder on
    Header always set Strict-Transport-Security "max-age=63072000; includeSubDomains"
</IfModule>
```

---

## 2. Configuración PHP-FPM (Docker)

### 2.1 Pool Aislado
```ini
; /etc/php/8.3/fpm/pool.d/www.conf
[www]
user = www-data
group = www-data
listen = /run/php/php8.3-fpm.sock
listen.owner = www-data
listen.group = www-data

pm = dynamic
pm.max_children = 10
pm.start_servers = 3
pm.min_spare_servers = 2
pm.max_spare_servers = 5
pm.max_requests = 500
```

### 2.2 Directivas php.ini de Seguridad
```ini
expose_php = Off
display_errors = Off
log_errors = On
error_log = /var/log/php/error.log

; Funciones peligrosas (desactivar si no se usan)
disable_functions = exec,passthru,shell_exec,system,proc_open,popen

; Límites de upload
upload_max_filesize = 10M
post_max_size = 12M
max_execution_time = 30
memory_limit = 128M

; Sesiones seguras
session.cookie_httponly = 1
session.cookie_secure = 1
session.use_strict_mode = 1
```

### 2.3 Proteger Directorios de Upload
```apache
<Directory /var/www/html/uploads>
    <FilesMatch "\.php$">
        Require all denied
    </FilesMatch>
</Directory>
```

---

## 3. Módulos Esenciales

| Módulo | Uso | Comando |
|---|---|---|
| `mod_rewrite` | URLs limpias (Flight PHP) | `a2enmod rewrite` |
| `mod_headers` | Security headers | `a2enmod headers` |
| `mod_ssl` | HTTPS | `a2enmod ssl` |
| `mod_deflate` | Compresión gzip | `a2enmod deflate` |
| `mod_expires` | Cache de assets estáticos | `a2enmod expires` |
| `mod_proxy_fcgi` | PHP-FPM proxy | `a2enmod proxy_fcgi` |

### 3.1 Deshabilitar Módulos Innecesarios
```bash
# Auditar módulos habilitados
apache2ctl -M
# Deshabilitar los que no se usan
a2dismod autoindex status cgi
```

---

## 4. Rewrite Rules para Flight PHP

```apache
# .htaccess en la raíz del proyecto
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /

    # No reescribir archivos/directorios que existen
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d

    # Redirigir todo a index.php (Front Controller)
    RewriteRule ^(.*)$ index.php [QSA,L]
</IfModule>
```

---

## 5. Issues Conocidos y Workarounds

| Issue | Plataforma | Workaround |
|---|---|---|
| **mod_rewrite no funciona** | Docker | Asegurar `AllowOverride All` en vhost |
| **Puerto 7001 bloqueado** | Host C (Win10) | Abrir regla Firewall con `setup-firewall.ps1` |
| **PHP-FPM socket error** | Docker | Verificar permisos del socket y que el pool esté activo |
| **CORS con HTMX** | Multi-origin | Añadir `Header set Access-Control-Allow-Origin "*"` (solo dev) |
| **413 Request Entity Too Large** | Upload | Ajustar `LimitRequestBody` en Apache + `upload_max_filesize` en PHP |

---

## 6. Monitoreo y Logs

```bash
# Logs en tiempo real
tail -f /var/log/apache2/error.log

# Análisis de accesos
tail -f /var/log/apache2/access.log | grep -E "POST|PUT|DELETE"

# Fail2ban para protección automática
sudo apt install fail2ban
# Configurar jail para Apache en /etc/fail2ban/jail.local
```

---
**Nota para Agentes IA**: Al crear configuraciones Apache (vhosts, .htaccess), siempre incluir las directivas de hardening del §1. Para el Host C (XAMPP), las directivas se colocan en `httpd.conf` y `httpd-vhosts.conf` directamente. Para Docker, usar archivos de configuración montados como volúmenes.
