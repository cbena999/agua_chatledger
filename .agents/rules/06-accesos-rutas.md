# Regla 06: Accesos, Rutas y Herramientas (A/B/C)

Esta regla consolida los accesos a los tres ambientes de **Agua** y define cuándo usar MCP vs CLI MySQL.

---

## Host A — Linux XAMPP (Desarrollo / Próximo Producción)

| Recurso | Ruta / Credencial |
|---------|-------------------|
| **XAMPP Home** | `/opt/lampp` |
| **PHP Bin** | `/opt/lampp/bin/php` |
| **MySQL Bin** | `/opt/lampp/bin/mysql` |
| **Source Code** | `/opt/lampp/htdocs/agua` |
| **Web URL** | `http://localhost/agua/login/index2.php` |
| **Web User / Pass** | `nancy` / `260180` |
| **MySQL** | `127.0.0.1:3306` · user `root` · pass `comite_2026` · db `awa` |
| **MCP** | `bdawahost-a` |

## Host B — Windows 7 MySQL legado (Solo lectura — datos frescos)

| Recurso | Valor |
|---------|-------|
| **MySQL** | `192.168.1.120:3306` · user `root` · pass `sdrastbuy` · db `awa` |
| **MCP** | `bdawahost-b` |

## Host C — Windows 10 XAMPP Portable 7.4.33 (V2 MariaDB)

| Recurso | Valor |
|---------|-------|
| **Web URL** | `http://192.168.1.128:7001/agua` |
| **Apache** | puerto `7001` |
| **MariaDB** | `192.168.1.128:7002` · user `root` · pass `comite_2026` · db `awa` |
| **MCP** | `bdawahost-c` |
| **XAMPP dir** | `F:\xampp` · Webapp: `F:\xampp\htdocs\agua` |

> **Puerto no estándar (7002):** El MCP de Host C requiere el patch de `entrypoint-patch.sh`
> aplicado al contenedor Docker `context7-mcp-mysql`. Sin el patch, `@f4ww4z/mcp-mysql-server`
> ignora el puerto de la URL y falla con ETIMEDOUT.
> Ver: `docs-dev/ga-cl-ia/issue-mcp-mysql-port-no-estandar.md`

---

## Arquitectura MCP — Docker context7-mcp-mysql

Los tres MCPs comparten **un solo contenedor Docker** con patches aplicados al arrancar:

```bash
# Estructura de cada MCP en .mcp.json
docker exec -i context7-mcp-mysql npx -y @f4ww4z/mcp-mysql-server mysql://user:pass@host:PORT/db
```

- Contenedor: `context7-mcp-mysql` (imagen `mcp/context7:latest`)
- Compose: `docs-dev/ga-cl-ia/docker-compose.yml`
- Patch: `docs-dev/ga-cl-ia/entrypoint-patch.sh` (soporte puerto no estándar — idempotente)
- Config activa: `.mcp.json` (symlink → `.chatledger/.mcp.json`)

> **NUNCA eliminar `.mcp.json`** ni reemplazar `docker exec` por `npx` directo.
> `mcp_config.json` en `.agents/` es la fuente de verdad de referencia — `.mcp.json` debe ser idéntico.

---

## Regla: MCP vs CLI MySQL

| Operación | Herramienta | Razón |
|:---|:---:|:---|
| Diagnóstico, validación, queries ad-hoc, comparación entre hosts | **MCP** | Resultados en contexto, ejecutable en paralelo, sin parseo de terminal |
| Scripts con `DELIMITER`, stored procedures, triggers | **CLI MySQL** | MCP no soporta `DELIMITER` |
| Dumps, cargas masivas, migraciones de volumen | **CLI MySQL** | Más eficiente para operaciones de volumen |
| MCP no disponible o contenedor Docker caído | **CLI MySQL** | Fallback |

**Regla general**: Usar MCP para todo trabajo de diagnóstico e inspección. Recurrir a CLI solo cuando la operación lo requiera explícitamente.

CLI Host A: `/opt/lampp/bin/mysql -u root -pcomite_2026 awa`
CLI Host C (desde Host A): `/opt/lampp/bin/mysql -h 192.168.1.128 -P 7002 -u root -pcomite_2026 awa`

---
**Nota**: Cualquier script de automatización que requiera ejecución directa de PHP o MySQL debe referenciar los binarios en `/opt/lampp/bin/` para compatibilidad con el stack legado.
