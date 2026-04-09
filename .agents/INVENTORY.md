# INVENTORY.md — Ground Truth de Agentes IA (Claude & Gemini)

Inventario vivo de todo el conocimiento estructurado disponible para **Claude Code** y **Google Antigravity/Gemini** en el proyecto Agua.

> **Fuente de verdad física:** `/home/carlos/GitHub/agua_chatledger/`
> **Acceso vía symlink:** `/opt/lampp/htdocs/agua/` (`.agents`, `CLAUDE.md`, `GEMINI.md`, etc.)
> **Actualizar este archivo** cada vez que se agregue, modifique o elimine un asset.

---

## Arquitectura de Symlinks

Todos los assets de Ground Truth son symlinks en el repo `agua` — válidos en **ambas ramas**.
Git en `agua` **nunca reporta cambios** en su contenido. Todo se commitea en `agua_chatledger`.

| Symlink en repo `agua` | Destino físico | Estado |
|---|---|---|
| `.chatledger` | `/home/carlos/GitHub/agua_chatledger/` | ✓ OK |
| `.agents` | `.chatledger/.agents/` | ✓ OK |
| `CLAUDE.md` | `.chatledger/CLAUDE.md` | ✓ OK |
| `GEMINI.md` | `.chatledger/GEMINI.md` | ✓ OK |
| `.clauderules` | `.chatledger/.clauderules` | ✓ OK |
| `.mcp.json` | `.chatledger/.mcp.json` | ✓ OK |
| `docs-dev/ga-cl-ia/` | `/home/carlos/GitHub/agua_chatledger/docs-dev/ga-cl-ia/` | ✓ OK |

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
| 06 | `06-accesos-rutas.md` | Accesos y Seguridad | Credenciales y rutas de acceso web/DB para Hosts A y B | 2026-04-08 |
| 07 | `07-git-workflow.md` | Control de Versiones | Ramas, symlinks Ground Truth, protocolo cambio de rama (4 pasos), tabla qué commitear en cada repo | 2026-04-09 |

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
| `chatledger_sync_ga_lnks.sh` | Script que crea/verifica los 7 symlinks del Ground Truth. Re-ejecutable de forma segura. | 2026-04-09 |
| `voxd-restore-optimizations.sh` | Restaura/verifica todas las optimizaciones de Voxd post-update (hilos, prompt, modelo, mic, CUDA). | 2026-04-09 |
| `claude-ga-leeme.txt` | Leeme general para Claude y Gemini sobre el proyecto | 2026-04-09 |
| `voxd-instalacion.md` | Instalación y optimización de Voxd en Ubuntu 22.04 con CUDA/GTX 1050 Ti para español México | 2026-04-09 |
| `issue-mcp-mysql-port-no-estandar.md` | Solución al issue de MCP MySQL con puerto no estándar | 2026-04-09 |
| `entrypoint-patch.sh` | Parche de entrypoint para ambiente de desarrollo IA | 2026-04-09 |
| `docker-compose.yml` | Docker compose para ambiente de desarrollo IA | 2026-04-09 |
| `promts/` | Prompts de referencia para Claude y Gemini | 2026-04-09 |

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

**Última actualización:** 2026-04-09
