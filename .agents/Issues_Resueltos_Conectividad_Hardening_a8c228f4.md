# Issues Resueltos — Sesión 2026-05-11 (II)
**Conversación:** `a8c228f4-a1fe-463c-a8df-42513ab1e695`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Estabilización de Conectividad Host C

### Scope Funcional
El Host C (Target V2) era inalcanzable desde la red local debido a restricciones de Firewall en Windows 10 y cambios en la infraestructura de red. Esto impedía la sincronización de datos y el monitoreo remoto. Tras la intervención, el Host C es plenamente accesible para el pipeline de migración y herramientas de diagnóstico (MySQL CLI).

### Scope Técnico
- Apertura de puertos **7001** (Apache) y **7002** (MariaDB) en Windows Firewall.
- Validación de IP `192.168.1.84` y puertos de servicio.
- Confirmación de visibilidad vía tabla ARP.

---

## Issue 2 — Hardening de Scripts Poka-Yoke (Auto-Elevación)

### Scope Funcional
Los operadores técnicos enfrentaban errores de permisos al ejecutar scripts de mantenimiento y estatus sin privilegios de Administrador. Se implementó un mecanismo de auto-elevación para que el sistema solicite privilegios automáticamente al usuario, garantizando que el Monitor UPS, el Firewall y los servicios de red se configuren correctamente sin intervención manual compleja.

### Scope Técnico
- Implementación de bloque de auto-elevación UAC en todos los scripts `.ps1` clave:
  ```powershell
  if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
      Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
      exit
  }
  ```
- Scripts afectados: `status-webapps.ps1`, `start-webapps.ps1`, `stop-webapps.ps1`, `setup-full.ps1`, `setup-firewall.ps1`, `setup-kiosk-shortcut.ps1`.

---

## Issue 3 — Automatización de Firewall e Infraestructura

### Scope Funcional
Se eliminó la necesidad de configurar manualmente el firewall de Windows durante la instalación del appliance Host C. El sistema ahora es capaz de aprovisionar sus propias reglas de red de forma segura y consistente.

### Scope Técnico
- Creación de `setup-firewall.ps1` para gestión de reglas de entrada.
- Corrección de rutas de Google Chrome en `setup-kiosk-shortcut.ps1` para instalaciones de 64 bits.
- Integración del paso de firewall en el orquestador maestro `setup-full.ps1`.

---

## Runbook — Cambios en `.agents/`
- **Regla 01**: Actualizada con las IPs y Puertos confirmados para los 3 Hosts.
- **GEMINI.md**: Actualizado con los hitos de estabilización de conectividad y hardening de la Sesión 2.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `GEMINI.md` | `agua` | Documentación |
| `.agents/rules/01-infra-hosts.md` | `agua_chatledger` | Documentación (Reglas) |
| `.agents/pending.md` | `agua_chatledger` | Gestión de tareas |
| `scripts/status-webapps.ps1` | `agua` | Refactor (Detección + UAC) |
| `scripts/start-webapps.ps1` | `agua` | Refactor (UAC) |
| `scripts/stop-webapps.ps1` | `agua` | Refactor (UAC) |
| `scripts/setup-full.ps1` | `agua` | Refactor (UAC + Firewall Step) |
| `scripts/setup-firewall.ps1` | `agua` | Nuevo (Automatización) |
| `scripts/setup-kiosk-shortcut.ps1` | `agua` | Fix (Chrome Path + UAC) |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Conectividad MySQL Host C (CLI) | ✅ PASADO |
| Ejecución auto-elevada PowerShell | ✅ PASADO |
| Detección Monitor UPS (como admin) | ✅ PASADO |
| Persistencia de IP en Regla 01 | ✅ PASADO |

### Pruebas manuales pendientes
- Ejecutar `Full-Pipeline-Sync.sh` para verificar que el tráfico fluye por los puertos abiertos.
- Validar el acceso directo Kiosko en el escritorio del Host C.

---
*Generado por Antigravity — 2026-05-11*
