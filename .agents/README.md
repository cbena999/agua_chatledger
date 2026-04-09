# .agents/ — Guía de Estructura (Ground Truth Compartido)

Este directorio contiene el conocimiento profundo del proyecto **Agua**.
Es compartido por todos los agentes IA que asisten el proyecto:
- **Claude Code** → Entry Point: `CLAUDE.md`
- **Google Antigravity / Gemini** → Entry Point: `GEMINI.md`

**Regla fundamental**: Toda adición de conocimiento va aquí, nunca en los Entry Points.

---

## Estructura

```
.agents/
├── rules/          # Verdades permanentes del negocio e infraestructura
├── skills/         # Estándares técnicos de implementación
└── workflows/      # Procesos paso-a-paso repetibles
```

---

## rules/ — Reglas de Oro

| Archivo | Contenido |
| :--- | :--- |
| [01-infra-hosts.md](rules/01-infra-hosts.md) | Hosts A/B/C, MCP, rutas de acceso |
| [02-reglas-negocio.md](rules/02-reglas-negocio.md) | Diccionario de reglas por módulo funcional |
| [03-sincronizacion-b-a.md](rules/03-sincronizacion-b-a.md) | Proceso de sincronización Host B → A |
| [04-arquitectura-mvc.md](rules/04-arquitectura-mvc.md) | MVC, Plates, ruteador, paxscript |
| [05-despliegue-host-c.md](rules/05-despliegue-host-c.md) | Scripts versionados para Host C con Rollback |
| [06-accesos-rutas.md](rules/06-accesos-rutas.md) | Binarios XAMPP, acceso web, credenciales locales |
| [07-git-workflow.md](rules/07-git-workflow.md) | Ramas, commits, push por host |

---

## skills/ — Estándares Técnicos

| Directorio | Propósito |
| :--- | :--- |
| [skill-ui-modern-refactor/](skills/skill-ui-modern-refactor/SKILL.md) | CSS/HTML para Host C |
| [skill-dynamic-html-ajax/](skills/skill-dynamic-html-ajax/SKILL.md) | Interactividad con `paxscript.js` |
| [skill-plates-templating/](skills/skill-plates-templating/SKILL.md) | Motor de plantillas Views (Plates v3.3) |
| [skill-migration-php74/](skills/skill-migration-php74/SKILL.md) | Migración PHP 5.5 → 7.4 |
| [skill-database-evolution/](skills/skill-database-evolution/SKILL.md) | Partición `ligacargos`, MariaDB |

---

## workflows/ — Procesos

| Archivo | Cuándo usarlo |
| :--- | :--- |
| [update-business-data.md](workflows/update-business-data.md) | Sincronizar datos frescos de Host B a A |
| [deploy-to-host-c.md](workflows/deploy-to-host-c.md) | Desplegar mejoras/refactorings en Host C |

---

**Última actualización**: 2026-04-04
