# CLAUDE.md — Entry Point para Claude Code · Proyecto Agua

Cargado automáticamente por **Claude Code** en cada sesión.

> [!IMPORTANT]
> Este proyecto es asistido simultáneamente por **Claude Code** y **Google Antigravity/Gemini**.
> Ambos comparten el mismo Ground Truth en `.agents/`. No duplicar reglas aquí — editar los archivos `.agents/` directamente.
> Entry Point de Antigravity/Gemini: [GEMINI.md](GEMINI.md)

---

## ⚡ Pendientes Activos

> **Leer al inicio de cada sesión antes de responder sobre tareas pendientes.**
> Fuente de verdad de lo que está en vuelo — más confiable que la memoria del agente.

→ [.agents/pending.md](.agents/pending.md)

---

## Mapa de Conocimiento (Ground Truth Compartido)

| Tipo | Descripción | Directorio |
| :--- | :--- | :--- |
| **Pendientes** | Tareas en vuelo — actualizar al iniciar y cerrar sesión | [.agents/pending.md](.agents/pending.md) |
| **Reglas** | Reglas permanentes (negocio, infra, git, protocolo cierre sesión) | [.agents/rules/](.agents/rules/) |
| **Skills** | Estándares técnicos (Plates, AJAX, PHP 7.4, DB) | [.agents/skills/](.agents/skills/) |
| **Workflows** | Procesos repetibles (Sync B→A→C, Deploy Host C) | [.agents/workflows/](.agents/workflows/) |

### 🗂️ Índice de Reglas (01–15)

| # | Regla | Archivo |
| :---: | :--- | :--- |
| **01** | Infraestructura y Hosts (A/B/C, puertos, MCP) | [.agents/rules/01-infra-hosts.md](.agents/rules/01-infra-hosts.md) |
| **02** | Reglas de Negocio por Módulo — **leer antes de editar lógica financiera** | [.agents/rules/02-reglas-negocio.md](.agents/rules/02-reglas-negocio.md) |
| **03** | Sincronización de Datos B→A | [.agents/rules/03-sincronizacion-b-a.md](.agents/rules/03-sincronizacion-b-a.md) |
| **04** | Arquitectura MVC y Directorios | [.agents/rules/04-arquitectura-mvc.md](.agents/rules/04-arquitectura-mvc.md) |
| **05** | Despliegue y Automatización Host C | [.agents/rules/05-despliegue-host-c.md](.agents/rules/05-despliegue-host-c.md) |
| **06** | Accesos, Rutas y Herramientas (3 hosts, Docker MCP) | [.agents/rules/06-accesos-rutas.md](.agents/rules/06-accesos-rutas.md) |
| **07** | Control de Versiones y Git Workflow | [.agents/rules/07-git-workflow.md](.agents/rules/07-git-workflow.md) |
| **08** | Integridad del Ground Truth — **leer antes de refactorizar** | [.agents/rules/08-integridad-ground-truth.md](.agents/rules/08-integridad-ground-truth.md) |
| **09** | Documentación de Sesión — Protocolo de Commit y Resumen de Issues | [.agents/rules/09-sesion-summary.md](.agents/rules/09-sesion-summary.md) |
| **10** | Limitantes Conocidas de la Webapp — **leer antes de proponer mejoras automáticas** | [.agents/rules/10-limitantes-webapp.md](.agents/rules/10-limitantes-webapp.md) |
| **11** | Estándares de Código y Seguridad (Hardening) | [.agents/rules/11-estandares-codigo.md](.agents/rules/11-estandares-codigo.md) |
| **12** | **Uso Seguro de `Conexion.php` — Regla E01 (mysqli guard)** — **leer antes de usar `real_escape_string` o `q()`** | [.agents/rules/12-estandar-conexion-mysqli.md](.agents/rules/12-estandar-conexion-mysqli.md) |
| **13** | **LAESH — Arquitectura CSS de Responsividad por Dispositivo** — **leer antes de editar style.css o layouts de portales LAESH** | [.agents/rules/13-laesh-css-responsividad.md](.agents/rules/13-laesh-css-responsividad.md) |
| **14** | **LAESH — Decisiones Arquitectónicas del Modelo de Datos** — **leer antes de editar schema, DDL, auth o seguridad del Bloc Digital** | [.agents/rules/14-laesh-modelo-datos-decisiones.md](.agents/rules/14-laesh-modelo-datos-decisiones.md) |
| **15** | **LAESH — Migración HTML → PHP Stack (Merge Iterativo)** — **leer antes de convertir cualquier HTML a PHP o modificar un PHP ya convertido** | [.agents/rules/15-html-php-migration.md](.agents/rules/15-html-php-migration.md) |


Estructura interna documentada en [.agents/README.md](.agents/README.md).
Inventario completo de assets en [.agents/INVENTORY.md](.agents/INVENTORY.md).

---

## Hosts (Infraestructura)

| Host | Propósito | Rama Git | MCP |
| :---: | :--- | :--- | :--- |
| **A** | Producción activa — Linux XAMPP, MySQL 5.6 | `main` | `bdawahost-a` → 127.0.0.1:3306 |
| **B** | Espejo producción (MySQL 5.1) — solo lectura datos frescos | N/A | `bdawahost-b` → 192.168.1.81:3306 |
| **C (ayd-os)** | Oferta V2 MariaDB 10.4.27 — Windows XAMPP 7.4.33 | `aguad_ac_oferta` | `bdawa2host-c` → 192.168.0.100:**7002** (DB: `aguayd_os`) |

- **Acceso Web Tenant (Host C):** `http://192.168.0.100:7001/ayd-os/` (nancy / 260180)
- **Repo GitHub:** `https://github.com/cbena999/aguaclmhj.git`

---

## Estado de Desarrollo (Rama aguad_ac_oferta)

- **BD activa**: `aguayd_os` (Host C: Puerto 7002)
- **Interfaz**: Portal híbrido glassmorphic `mockup_v4_hybrid.php` conectado al motor de reportes de tomas y directorio interactivo.
- **Flujo de Localización**: Las herramientas y scripts de anonimización y deploy se administran en `docs-dev/pase-a-prod/aguad-osv3-2026/`.
- Ver regla detallada: [.agents/rules/05-despliegue-host-c.md](.agents/rules/05-despliegue-host-c.md)

---

## Reglas de Negocio Críticas (Resumen)

> Leer siempre [.agents/rules/02-reglas-negocio.md](.agents/rules/02-reglas-negocio.md) antes de editar lógica financiera.

- **Facturación habilitada** solo en estados `1 (ACTIVO)`, `2 (SUSP. TEMPORAL)` y `3 (SUSP. ADMINISTRATIVA)`.
- **Límite de tomas:** Máximo 2 contratos activos por usuario en el mismo domicilio.
- **Split ligacargos:** activa (≥2026) en `ligacargos` · histórico (≤2025) en `ligacargos_historico`.
- **Caja/Reportes:** Sumatoria de listas debe coincidir siempre con totales de encabezado.

---

## Módulos Críticos

| Módulo | Archivo | Riesgo |
| :--- | :--- | :--- |
| Lógica Híbrida (V2) | `docs-dev/doc-estabilizacion/funcionalidad-reglas-negocio/transiciones_estado_contratos.md` | Crítico |
| Cambio de Estados | Transiciones 1, 2 y 3 | Alto |
| Facturación / Cartera | `carteravencida.php` | Alto |
| Caja Diaria | `concentradocortecaja.php` | Alto |
| Resumen de Caja | `reportes/concentradocortecajaresumen.php` | Alto |

---

## Arquitectura Brain / Ground Truth (2026-04-09)

Todo el contexto de agentes IA vive en `agua_chatledger`. El repo `agua` solo tiene symlinks:

| Symlink en `agua` | Destino |
| :--- | :--- |
| `.claude/` | `.chatledger/.claude/` (settings.json + settings.local.json) |
| `.agents/` | `.chatledger/.agents/` |
| `.mcp.json` | `.chatledger/.mcp.json` |
| `CLAUDE.md` / `GEMINI.md` / `.clauderules` | `.chatledger/[archivo]` |
| `docs-dev/ga-cl-ia/` | `agua_chatledger/docs-dev/ga-cl-ia/` |

**Validar integridad antes de commitear en agua_chatledger:**
```bash
bash docs-dev/ga-cl-ia/chatledger_validate.sh
```

## Comandos Rápidos

```bash
# Git
git push origin main
git push origin feature/upgrade-v2-win-xampp

# XAMPP Host A
/opt/lampp/bin/mysql -u root awa
```

> **⚠️ Filosofía de Uso**: Los scripts de orquestación (`Sync-*` y `Full-Pipeline-Sync`) son **Herramientas de Migración**, no tareas operativas recurrentes.
> Ver tabla de comandos canónicos, rutas exactas y comportamiento de flags en: `docs-dev/doc-estabilizacion/pase-a-prod/MIGRATION_PROTOCOL.md`

---

**Última actualización:** 2026-08-24 · Regla 15 LAESH Migración HTML→PHP — merge iterativo, estructura de módulos, RBAC redirect, fix UI-G02 (name attributes ubicacion)

> **Nombre canónico del Ground Truth**: El conjunto `CLAUDE.md` + todo `.agents/` (rules, skills, workflows) se denomina **"el Ground Truth"** del proyecto.
> **Nota de terminología**: Gemini denomina este mismo conjunto **"el Runbook"**. Son el mismo repositorio de conocimiento — `.agents/` es compartido. Solo difiere el nombre según el agente.
> **Protocolo de cierre de sesión**: Ver [.agents/rules/09-sesion-summary.md](.agents/rules/09-sesion-summary.md)
