# INVENTORY.md — Ground Truth de Agentes IA (Claude & Gemini)

Inventario vivo de todo el conocimiento estructurado disponible para **Claude Code** y **Google Antigravity/Gemini** en el proyecto Agua.

> **Fuente de verdad física:** `/home/carlos/GitHub/agua_chatledger/`
> **Acceso vía symlink:** `/opt/lampp/htdocs/agua/` (`.agents`, `CLAUDE.md`, `GEMINI.md`, etc.)
> **Actualizar este archivo** cada vez que se agregue, modifique o elimine un asset.

---

## Arquitectura de Symlinks

Todos los assets de Ground Truth son symlinks en el repo `agua` — válidos en **ambas ramas**.
Git en `agua` **nunca reporta cambios** en su contenido. Todo se commitea en `agua_chatledger`.

| Symlink en repo `agua` | Destino físico | Estado | Verificado |
|---|---|---|---|
| `.chatledger` | `/home/carlos/GitHub/agua_chatledger/` | ✓ OK | 2026-04-09 |
| `.agents` | `.chatledger/.agents/` | ✓ OK | 2026-04-09 |
| `.claude` | `.chatledger/.claude/` | ✓ OK | 2026-04-09 |
| `CLAUDE.md` | `.chatledger/CLAUDE.md` | ✓ OK | 2026-04-09 |
| `GEMINI.md` | `.chatledger/GEMINI.md` | ✓ OK | 2026-04-09 |
| `.clauderules` | `.chatledger/.clauderules` | ✓ OK | 2026-04-09 |
| `.mcp.json` | `.chatledger/.mcp.json` | ✓ OK | 2026-04-09 |
| `docs-dev/ga-cl-ia` | `/home/carlos/GitHub/agua_chatledger/docs-dev/ga-cl-ia/` | ✓ OK | 2026-04-09 |

> **Nota:** `docs-dev/ga-cl-ia` es symlink gestionado por `chatledger_sync_ga_lnks.sh`.
> El directorio real vive en `agua_chatledger/docs-dev/ga-cl-ia/` — git en `agua` lo ve como symlink.

### Directorios reales (no symlinks) — por diseño

| Archivo | Ubicación física | Propósito |
|---|---|---|
| `.claude/settings.json` | `/opt/lampp/htdocs/agua/.claude/settings.json` | Config Claude Code: modelo, permisos, MCP servers (Docker), 3 hosts |
| `.claude/settings.local.json` | `agua_chatledger/.claude/settings.local.json` | Overrides locales Claude Code (permisos adicionales, MCP habilitados) |
| `.clauderules` | `agua_chatledger/.clauderules` | Directiva de entrada para Claude: apunta a CLAUDE.md y mandato crítico |
| `.mcp.json` | `agua_chatledger/.mcp.json` | Config MCP activa leída por Claude y Gemini — Docker + 3 hosts |
| `.agents/mcp_config.json` | `agua_chatledger/.agents/mcp_config.json` | Fuente de referencia de MCP — debe ser idéntico a `.mcp.json` |
| `.agents/README.md` | `agua_chatledger/.agents/README.md` | Índice y guía de estructura del Ground Truth |
| `.agents/INVENTORY.md` | `agua_chatledger/.agents/INVENTORY.md` | Este archivo — inventario vivo de todos los assets |

> **Todos los archivos meta viven en `agua_chatledger`** — `agua` solo tiene symlinks. `.claude/` es symlink desde 2026-04-09.
> **`.mcp.json` y `mcp_config.json` deben mantenerse idénticos** — si se edita uno, actualizar el otro.

### Regla crítica: `.mcp.json` NO debe eliminarse ni vaciarse

`.mcp.json` es el archivo que **Claude Code y Gemini leen automáticamente** para cargar los MCP servers.
`mcp_config.json` en `.agents/` es la fuente de referencia — deben ser idénticos.
Eliminar o vaciar `.mcp.json` rompe los MCPs en ambos agentes sin aviso.

Para recrear todos los symlinks en un equipo nuevo:
```bash
bash docs-dev/ga-cl-ia/chatledger_sync_ga_lnks.sh
```

---

## Reglas (`rules/`)

| # | Archivo | Nombre | Cubre | Última modificación |
|---|---|---|---|---|
| 01 | `01-infra-hosts.md` | Infraestructura y Hosts | Definición de Hosts A/B/C, puertos, accesos, propósito de cada ambiente | 2026-04-09 |
| 02 | `02-reglas-negocio.md` | Reglas de Negocio | Facturación, estados de contrato, límite de tomas, split ligacargos, módulos críticos | 2026-04-08 |
| 03 | `03-sincronizacion-b-a.md` | Sincronización B→A | Procedimiento de refresco de datos desde Host B (producción) a Host A (desarrollo) | 2026-04-08 |
| 04 | `04-arquitectura-mvc.md` | Arquitectura MVC | Estructura de directorios, capas MVC, localización de lógica de negocio | 2026-04-08 |
| 05 | `05-despliegue-host-c.md` | Despliegue Host C | Migración e implementación en Host C (MariaDB 10.4.27 / XAMPP 7.4.33 / Windows) | 2026-04-08 |
| 06 | `06-accesos-rutas.md` | Accesos, Rutas y Herramientas | Credenciales y rutas web/DB de los 3 hosts, arquitectura Docker MCP, regla MCP vs CLI MySQL | 2026-04-09 |
| 07 | `07-git-workflow.md` | Control de Versiones | Ramas, symlinks Ground Truth, protocolo cambio de rama (4 pasos), tabla qué commitear en cada repo | 2026-04-09 |
| 08 | `08-integridad-ground-truth.md` | Integridad del Ground Truth | Rol de cada asset, qué está prohibido modificar, historial de incidentes, cómo validar antes de commitear | 2026-04-09 |

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
> Commitear cambios en `agua_chatledger`, no en `agua`.

| Archivo | Descripción | Última modificación |
|---|---|---|
| `chatledger_sync_ga_lnks.sh` | Crea/verifica los 7 symlinks del Ground Truth e instala el git hook pre-commit. Re-ejecutable. | 2026-04-09 |
| `chatledger_validate.sh` | Valida integridad del Ground Truth: symlinks, .mcp.json, mcp_config.json, .clauderules, Docker. | 2026-04-09 |
| `install-hooks.sh` | Instala el git hook pre-commit en agua_chatledger (bloquea commits si validate falla). | 2026-04-09 |
| `docker-compose.yml` | Define contenedor `context7-mcp-mysql` con patch para soporte de puertos no estándar. | 2026-04-09 |
| `entrypoint-patch.sh` | Aplica 3 patches a `@f4ww4z/mcp-mysql-server` al arrancar — permite puerto 7002 (Host C). | 2026-04-09 |
| `issue-mcp-mysql-port-no-estandar.md` | Diagnóstico completo del bug de puerto en el package MCP y la solución con patches. | 2026-04-09 |
| `voxd-instalacion.md` | Instalación y optimización de Voxd en Ubuntu 22.04 con CUDA/GTX 1050 Ti para español México. | 2026-04-09 |
| `voxd-restore-optimizations.sh` | Restaura/verifica todas las optimizaciones de Voxd post-update. | 2026-04-09 |
| `claude-ga-leeme.txt` | Notas personales, referencias, claves y recursos para Claude y Gemini. Repo privado. | 2026-04-09 |
| `promts/` | Prompts de referencia para iniciar sesiones con Claude y Gemini. | 2026-04-09 |

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
5. **Al validar el inventario**: verificar existencia real con `ls` y fechas con `git log` en `agua_chatledger`.

---

**Última actualización:** 2026-04-09 — .claude/ migrado a chatledger y convertido a symlink (8/8 symlinks), validate.sh actualizado a 7 secciones, sync script paso 8 añadido
