# INVENTORY.md — Ground Truth de Agentes IA (Claude & Gemini)

Inventario vivo de todo el conocimiento estructurado disponible para **Claude Code** y **Google Antigravity/Gemini** en el proyecto Agua.

> **Fuente de verdad física:** `/home/carlos/GitHub/agua_chatledger/.agents/`
> **Acceso vía symlink:** `/opt/lampp/htdocs/agua/.agents/`
> **Actualizar este archivo** cada vez que se agregue, modifique o elimine un asset.

---

## Reglas (`rules/`)

| # | Archivo | Nombre | Cubre | Última modificación |
|---|---|---|---|---|
| 01 | `01-infra-hosts.md` | Infraestructura y Hosts | Definición de Hosts A/B/C, puertos, accesos, propósito de cada ambiente | 2026-04-08 |
| 02 | `02-reglas-negocio.md` | Reglas de Negocio | Facturación, estados de contrato, límite de tomas, split ligacargos, módulos críticos | 2026-04-08 |
| 03 | `03-sincronizacion-b-a.md` | Sincronización B→A | Procedimiento de refresco de datos desde Host B (producción) a Host A (desarrollo) | 2026-04-08 |
| 04 | `04-arquitectura-mvc.md` | Arquitectura MVC | Estructura de directorios, capas MVC, localización de lógica de negocio | 2026-04-08 |
| 05 | `05-despliegue-host-c.md` | Despliegue Host C | Migración e implementación en Host C (MariaDB 10.4.27 / XAMPP 7.4.33 / Windows) | 2026-04-08 |
| 06 | `06-accesos-rutas.md` | Accesos y Seguridad | Credenciales y rutas de acceso web/DB para Hosts A y B | 2026-04-08 |
| 07 | `07-git-workflow.md` | Control de Versiones | Ramas, commits, push, procedimiento cambio de rama, symlinks chatledger, ChatLedger sync | 2026-04-09 |

---

## Skills (`skills/`)

| Directorio | Nombre | Cubre | Última modificación |
|---|---|---|---|
| `skill-database-evolution/` | Database Evolution & Migration | Partición histórica de `ligacargos`, migración MySQL→MariaDB, Host A→C | 2026-04-08 |
| `skill-dynamic-html-ajax/` | Dynamic UI & AJAX | Interactividad dinámica con jQuery/JS, estándar `paxscript.js`, peticiones AJAX | 2026-04-08 |
| `skill-migration-php74/` | PHP Migration & Refactoring | Refactorización PHP 5.5 → 7.4 para Host C, compatibilidad de sintaxis | 2026-04-08 |
| `skill-plates-templating/` | Plates Templating Patterns | Motor Plates v3.3, patrones de vistas, layouts, herencia de templates | 2026-04-08 |
| `skill-ui-modern-refactor/` | UI/UX Modern Refactor | Transformación de layouts legado a Flexbox/Grid/Responsive | 2026-04-08 |

---

## Workflows (`workflows/`)

| Archivo | Nombre | Cubre | Última modificación |
|---|---|---|---|
| `deploy-to-host-c.md` | Deploy to Host C | Refresco de datos y despliegue de cambios en Host C (v2 MariaDB) — dos escenarios | 2026-04-08 |
| `update-business-data.md` | Sync B→A | Sincronización segura de datos frescos desde Host B (producción) a Host A | 2026-04-08 |

---

## Documentación IA (`docs-dev/ga-cl-ia/`)

> Symlink a `agua_chatledger/docs-dev/ga-cl-ia/` — aplica en todas las ramas.

| Archivo | Descripción | Fecha |
|---|---|---|
| `claude-ga-leeme.txt` | Leeme general para Claude y Gemini sobre el proyecto | 2026-04-07 |
| `voxd-instalacion.md` | Instalación y optimización completa de Voxd en Ubuntu 22.04 con CUDA/GTX 1050 Ti | 2026-04-09 |
| `issue-mcp-mysql-port-no-estandar.md` | Solución al issue de MCP MySQL con puerto no estándar | 2026-04-09 |
| `docker-compose.yml` | Docker compose para ambiente de desarrollo IA | 2026-04-09 |
| `chatledger_sync_ga_lnks.sh` | Script de sincronización de symlinks ChatLedger | 2026-04-07 |
| `promts/` | Prompts de referencia para Claude y Gemini | 2026-04-07 |

---

## Gaps detectados — Áreas sin documentar

| Área | Prioridad | Notas |
|---|---|---|
| Módulo Caja / Corte diario | Alta | `concentradocortecaja.php` es módulo crítico sin skill dedicada |
| Módulo Cartera Vencida | Alta | `carteravencida.php` sin regla específica más allá de la 02 |
| Cambio de Estados de contrato | Alta | Transiciones 1→2→5 mencionadas en regla 02 pero sin workflow dedicado |
| Testing / Validación | Media | No hay skill de pruebas ni procedimiento de QA |
| Módulo Asamblea | Media | Módulo activo sin regla o skill documentada |
| Reportes | Baja | `concentradocortecajaresumen.php` sin documentación de agentes |

---

## Cómo mantener este inventario

1. **Al crear un nuevo asset** (regla/skill/workflow/doc): agregar fila en la sección correspondiente con fecha.
2. **Al modificar un asset existente**: actualizar la fecha en su fila.
3. **Al eliminar un asset**: remover la fila y mover a una sección `## Eliminados` con la fecha de baja.
4. **Al detectar un gap cubierto**: mover la fila de Gaps a la sección correspondiente.

---

**Última actualización:** 2026-04-09
