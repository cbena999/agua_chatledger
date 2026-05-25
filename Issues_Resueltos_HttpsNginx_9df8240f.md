# Issues Resueltos — Sesión 2026-05-23
**Conversación:** `9df8240f-6a37-4147-b8a3-c44b0ab61092`
**Rama:** `main`

---

## Issue 1 — Habilitación HTTPS y Let's Encrypt en oci-vm

### Scope Funcional
- **Antes:** El dominio principal `www.caelitandem.lat` no contaba con certificado SSL válido / HTTPS activo, sirviendo contenido únicamente a través de HTTP (puerto 80) debido a la expiración/pérdida del certificado anterior. Las subaplicaciones (kanboard, n8n) sí contaban con redirección segura HTTPS forzada, pero el landing principal estaba desprotegido.
- **Ahora:** Se solicitó y configuró exitosamente un nuevo certificado SSL con Let's Encrypt para `www.caelitandem.lat`. Se modificó la configuración de Nginx para redirigir todo tráfico HTTP (puerto 80) de forma incondicional a HTTPS (puerto 443) con el subdominio `www.caelitandem.lat` para evitar advertencias de seguridad, dado que el dominio raíz (apex `caelitandem.lat`) no tiene registros A DNS configurados hacia el servidor en la actualidad.
- **Beneficio:** Tráfico web 100% cifrado para todos los sitios activos de la máquina virtual OCI, con renovación automática blindada y verificada mediante systemd timers.

### Scope Técnico
- **Certbot:** Solicitud exitosa de certificado con el plugin de Nginx para `www.caelitandem.lat`.
- **Configuración Nginx:** Actualización del bloque de servidor en `/etc/nginx/sites-available/caelitandem.lat` con la redirección limpia permanente:
  ```nginx
  server {
      listen 80;
      listen [::]:80;
      server_name caelitandem.lat www.caelitandem.lat;
      return 301 https://www.caelitandem.lat$request_uri;
  }
  ```
- **Certbot Timers:** Verificación de `certbot.timer` ejecutándose en segundo plano para renovar automáticamente el certificado antes de su expiración (89 días restantes).

---

## Issue 2 — Script y Tarea Programada (Cron) para Auto-Renovación de Certificados

### Scope Funcional
- **Antes:** Aunque Certbot implementa un timer automático por defecto, no existía un script de respaldo y auditoría local para registrar los intentos de renovación, forzar la recarga de Nginx tras cambios, ni un log unificado legible para el operador.
- **Ahora:** Se creó un script en bash robusto de renovación automatizada y un cron job a nivel sistema (`/etc/cron.d/certbot-custom`) para ejecutar de forma recurrente las comprobaciones, renovar si restan menos de 30 días de validez, registrar logs históricos y recargar Nginx únicamente si hubo cambios exitosos.
- **Beneficio:** Blindaje de alta disponibilidad en el ciclo de vida de los certificados SSL sin depender exclusivamente de timers de systemd, con logs listos para auditorías en `/home/ubuntu/logs/certbot-renew.log`.

### Scope Técnico
- **Ruta del Script:** `/home/ubuntu/scripts/renew-certs.sh` (ejecutable, propiedad de `ubuntu:ubuntu`).
  * Ejecuta `certbot renew --post-hook "systemctl reload nginx"` redireccionando el stdout y stderr a `/home/ubuntu/logs/certbot-renew.log`.
- **Ruta de Cron:** `/etc/cron.d/certbot-custom` (propiedad de `root:root`, permisos `644`).
  * Configuración cron: `0 3 * * * root /home/ubuntu/scripts/renew-certs.sh >/dev/null 2>&1` (ejecuta diariamente a las 03:00 AM como `root`).

---

## Runbook — Cambios en `.agents/`
No se requirieron cambios de reglas. Se registró el issue en el log de control de tareas `pending.md`.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `/etc/nginx/sites-available/caelitandem.lat` | N/A (OCI VM Server Config) | Modificación y activación de bloque de escucha SSL + Redirección 301 limpia. |
| `/home/ubuntu/scripts/renew-certs.sh` | N/A (OCI VM Server Script) | Creación de script de renovación y logging. |
| `/etc/cron.d/certbot-custom` | N/A (OCI VM Server Config) | Creación de tarea programada diaria (3:00 AM). |
| `.agents/pending.md` | `agua_chatledger` / `agua` | Registro en tabla de resueltos recientemente. |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| `sudo nginx -t` en oci-vm | ✅ Exitoso |
| `curl -I http://www.caelitandem.lat` | ✅ Redirige 301 a https://www.caelitandem.lat/ |
| `curl -I https://www.caelitandem.lat` | ✅ Responde HTTP 200 OK |
| `sudo certbot certificates` | ✅ Certificados válidos (www, kanboard, n8n, oken8n) |
| `systemctl status certbot.timer` | ✅ Activo y programado |
| Ejecución de `/home/ubuntu/scripts/renew-certs.sh` | ✅ Ejecutado manualmente con éxito (log generado correctamente) |
| `/etc/cron.d/certbot-custom` | ✅ Creado con permisos `644` y sintaxis válida de cron |

### Pruebas manuales pendientes
Ninguna. Todas las validaciones de red locales y remotas fueron confirmadas y funcionan correctamente.

---
*Generado por Antigravity — 2026-05-23*
