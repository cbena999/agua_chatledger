# CLAUDE.md — Entry Point para Claude Code · Proyecto Agua

Cargado automáticamente por **Claude Code** en cada sesión.

> [!IMPORTANT]
> Este proyecto es asistido simultáneamente por **Claude Code** y **Google Antigravity/Gemini**.
> Ambos comparten el mismo Ground Truth en `.agents/`. No duplicar reglas aquí — editar los archivos `.agents/` directamente.
> Entry Point de Antigravity/Gemini: [GEMINI.md](GEMINI.md)

---

## Mapa de Conocimiento (Ground Truth Compartido)

| Tipo | Descripción | Directorio |
| :--- | :--- | :--- |
| **Reglas** | Reglas permanentes (negocio, infra, git) | [.agents/rules/](.agents/rules/) |
| **Skills** | Estándares técnicos (Plates, AJAX, PHP 7.4, DB) | [.agents/skills/](.agents/skills/) |
| **Workflows** | Procesos repetibles (Sync B→A→C, Deploy Host C) | [.agents/workflows/](.agents/workflows/) |

Estructura interna documentada en [.agents/README.md](.agents/README.md).
Inventario completo de assets en [.agents/INVENTORY.md](.agents/INVENTORY.md).

---

## Hosts (Infraestructura)

| Host | Propósito | Rama Git | MCP |
| :---: | :--- | :--- | :--- |
| **A** | Producción activa — Linux XAMPP, MySQL 5.6 | `main` | `bdawahost-a` → 127.0.0.1:3306 |
| **B** | Espejo producción (MySQL 5.1) — solo lectura datos frescos | N/A | `bdawahost-b` → 192.168.1.120:3306 |
| **C** | V2 MariaDB 10.4.27 — Windows XAMPP 7.4.33 | `feature/upgrade-v2-win-xampp` | `bdawahost-c` → 192.168.1.128:**7002** |

- **Acceso Web Host A:** `http://localhost/agua/login/index2.php` (nancy / 260180)
- **Acceso Web Host C:** `http://192.168.1.128:7001/agua` (Apache 7001, MariaDB 7002)
- **Repo GitHub:** `https://github.com/cbena999/aguaclmhj.git`

---

## Estado de Migración Host C (2026-04-07)

- Schema v2 completo, webapp PHP adaptada — **UP & RUNNING**
- Pipeline sync B→A→C validado en ejecución real (7/7 checks OK)
- Scripts setup en `docs-dev/migration-stack2/win10_aguav2/host-c-setup/` (01→08)
- Checklist pase a producción en `host-c-setup/07_transferir_datos.md`
- Ver regla detallada: [.agents/rules/05-despliegue-host-c.md](.agents/rules/05-despliegue-host-c.md)

---

## Reglas de Negocio Críticas (Resumen)

> Leer siempre [.agents/rules/02-reglas-negocio.md](.agents/rules/02-reglas-negocio.md) antes de editar lógica financiera.

- **Facturación habilitada** solo en estados `1 (ACTIVO)`, `2 (SUSP. TEMPORAL)` y `5 (SUSP. ADMINISTRATIVA)`.
- **Límite de tomas:** Máximo 2 contratos activos por usuario en el mismo domicilio.
- **Split ligacargos:** activa (≥2026) en `ligacargos` · histórico (≤2025) en `ligacargos_historico`.
- **Caja/Reportes:** Sumatoria de listas debe coincidir siempre con totales de encabezado.

---

## Módulos Críticos

| Módulo | Archivo | Riesgo |
| :--- | :--- | :--- |
| Cambio de Estados | Transiciones 1, 2 y 5 | Alto |
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

# Sync B→A→C
cd docs-dev/migration-stack2/win10_aguav2/syncawa_hostb_to_hosta/ && bash run_sync.sh
cd docs-dev/migration-stack2/win10_aguav2/sync_hosta_to_hostc/    && bash run_sync.sh
```

---

**Última actualización:** 2026-04-09
