# GEMINI.md - Central Project Context for Agua (MASTER INDEX)

Este archivo es el punto de entrada principal para el asistente de IA (Antigravity/Gemini) y un resumen del contexto del proyecto **Agua**. El conocimiento detallado y las reglas de oro se han distribuido en archivos modulares dentro de `.agents/rules/`.

> [!IMPORTANT]
> **Gemini**: Debes consultar y seguir las reglas detalladas en el directorio `.agents/rules/` para cada tarea orquestada en este proyecto.

---

## 🗺️ Índice de Reglas y Conocimiento (Ground Truth)

| Regla | Descripción | Archivo |
| :--- | :--- | :--- |
| **01** | **Infraestructura y Hosts** | [.agents/rules/01-infra-hosts.md](file:///.agents/rules/01-infra-hosts.md) |
| **02** | **Diccionario de Reglas por Módulo** | [.agents/rules/02-reglas-negocio.md](file:///.agents/rules/02-reglas-negocio.md) |
| **03** | **Sincronización de Datos (B -> A)** | [.agents/rules/03-sincronizacion-b-a.md](file:///.agents/rules/03-sincronizacion-b-a.md) |
| **04** | **Arquitectura MVC y Directorios** | [.agents/rules/04-arquitectura-mvc.md](file:///.agents/rules/04-arquitectura-mvc.md) |
| **05** | **Despliegue y Automatización (Host C)** | [.agents/rules/05-despliegue-host-c.md](file:///.agents/rules/05-despliegue-host-c.md) |
| **06** | **Accesos, Rutas y Herramientas (3 hosts, Docker MCP)** | [.agents/rules/06-accesos-rutas.md](file:///.agents/rules/06-accesos-rutas.md) |
| **07** | **Control de Versiones y Git Workflow** | [.agents/rules/07-git-workflow.md](file:///.agents/rules/07-git-workflow.md) |
| **08** | **Integridad del Ground Truth — LEER ANTES DE REFACTORIZAR** | [.agents/rules/08-integridad-ground-truth.md](file:///.agents/rules/08-integridad-ground-truth.md) |
| **09** | **Documentación de Sesión — Resumen de Issues + Protocolo de Commit** | [.agents/rules/09-sesion-summary.md](file:///.agents/rules/09-sesion-summary.md) |
| **10** | **Limitantes Conocidas de la Webapp — LEER ANTES DE PROPONER MEJORAS AUTOMÁTICAS** | [.agents/rules/10-limitantes-webapp.md](file:///.agents/rules/10-limitantes-webapp.md) |
| **11** | **Estándares de Código y Seguridad (Hardening)** | [.agents/rules/11-estandares-codigo.md](file:///.agents/rules/11-estandares-codigo.md) |
| **12** | **Uso Seguro de `Conexion.php` — Regla E01 (mysqli guard)** | [.agents/rules/12-estandar-conexion-mysqli.md](file:///.agents/rules/12-estandar-conexion-mysqli.md) |

---

## 🛠️ Skills Personalizadas (Workflows y Estándares)
Estas habilidades definen **cómo** ejecuto las tareas técnicas:
- **[UI/UX Modern Refactor](file:///.agents/skills/skill-ui-modern-refactor/SKILL.md)**: Estándares de CSS/HTML para el Host C.
- **[Dynamic UI & AJAX](file:///.agents/skills/skill-dynamic-html-ajax/SKILL.md)**: Interactividad con `paxscript.js`.
- **[Plates Templating Patterns](file:///.agents/skills/skill-plates-templating/SKILL.md)**: Uso del motor de plantillas Views.
- **[PHP-Migration-74](file:///.agents/skills/skill-migration-php74/SKILL.md)**: Refactorización de PHP 5.5 a 7.4.
- **[Database Evolution](file:///.agents/skills/skill-database-evolution/SKILL.md)**: Partición de `ligacargos` y migración a MariaDB.

---

## 🏗️ Workflows Disponibles (Procesos Detallados)
- **[/update-business-data](file:///.agents/workflows/update-business-data.md)**: Sincronización de Datos Frescos de Negocio (Host B a Host A)
- **[/deploy-to-host-c](file:///.agents/workflows/deploy-to-host-c.md)**: Despliegue de Mejoras y Refactorings en el Host C

---

## 🚨 Módulos Críticos y Auditoría Constante
Existen funcionalidades core que requieren especial atención para asegurar la congruencia de datos:
- **Estados de Contrato**: Transiciones entre `1 (ACTIVO)`, `2 (SUSPENSIÓN TEMPORAL)` y `5 (SUSPENSIÓN ADMINISTRATIVA)`.
- **Cartera Vencida (`carteravencida.php`)**: Validación de deuda morosa.
- **Corte de Caja (`concentradocortecaja.php`)**: Ingresos diarios contra reportes detallados.
- **Resumen de Caja (`reportes/concentradocortecajaresumen.php`)**: Consolidación total.

---

## 🚀 Estado Actual: Host C UP & RUNNING (2026-04-07)

- Split `ligacargos` **completado**: 2,513 activa (≥2026) + 192,545 histórico (≤2025)
- Schema v2 completo + webapp PHP 7.4 adaptada en `feature/upgrade-v2-win-xampp`
- Pipeline sync B→A→C operativo y validado (7/7 checks OK)
- Puertos Host C: Apache **7001**, MariaDB **7002**
- Checklist pase a producción: `docs-dev/migration-stack2/win10_aguav2/host-c-setup/07_transferir_datos.md`

## 🐛 Bugs Host C corregidos (2026-04-07, commit `bd1cb2f`)

Derivados del split `ligacargos`: 5 PHPs usaban `FROM ligacargos` directa (perdían datos ≤2025).

| Archivo | Fix aplicado |
|---------|-------------|
| `reportes/listadeudores.php` | Eliminado cross join implícito `ligacargos.monto` → `vw_ligacargos_pendientes.monto` |
| `reportes/carteravencida.php` | Añadido `OR anio IS NULL` para históricos migrados sin anio |
| `reportes/concentradocortecajaresumen.php` | `FROM ligacargos` → `FROM vw_ligacargos_all` |
| `includes/negocio/cargos.php` | SELECT duplicados y UPDATE masivo corregidos (UPDATE ahora aplica en ambas tablas) |
| `docs-dev/sanemiento-limpieza/reportes/genera_csv.php` | 4 JOINs directos → `vw_ligacargos_all` |

**Regla para nuevos PHPs**: Todo SELECT debe usar `vw_ligacargos_all` o `vw_ligacargos_pendientes`. Ver [skill-database-evolution/SKILL.md](.agents/skills/skill-database-evolution/SKILL.md).

---
---

## 🏗️ Arquitectura Brain / Ground Truth (2026-04-09)

Todo el contexto de agentes IA vive en `agua_chatledger`. El repo `agua` tiene solo symlinks (8/8).
**Antes de cualquier refactoring de archivos meta, leer regla 08.**

Validar integridad:
```bash
bash docs-dev/ga-cl-ia/chatledger_validate.sh
```

**Última actualización**: 2026-04-15

> **Nombre canónico del Runbook**: El conjunto `GEMINI.md` + todo `.agents/` (rules, skills, workflows) se denomina **"el Runbook"** del proyecto.
