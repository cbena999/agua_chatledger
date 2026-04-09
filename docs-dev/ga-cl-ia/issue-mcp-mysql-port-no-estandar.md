# Issue: MCP `bdawahost-c` falla con ETIMEDOUT en puerto no estándar (7002)

**Fecha:** 2026-04-08
**Resuelto en:** sesión de Claude Code (rama `feature/upgrade-v2-win-xampp`)
**Afecta:** MCPs `bdawahost-b` y `bdawahost-c` (cualquier instancia con puerto ≠ 3306)

---

## Síntoma

Al ejecutar cualquier tool MCP (`list_tables`, `query`, `connect_db`) contra `bdawahost-c`:

```
MCP error -32603: Failed to connect to database: connect ETIMEDOUT
```

`bdawahost-a` (puerto 3306) funciona correctamente.

---

## Diagnóstico

### Arquitectura MCP en este proyecto

Los tres MCP servers comparten **un solo contenedor Docker** (`context7-mcp-mysql`, imagen `mcp/context7:latest`). Cada MCP se define en `.mcp.json` como:

```bash
docker exec -i context7-mcp-mysql npx -y @f4ww4z/mcp-mysql-server <URL>
```

Claude Code lanza un proceso `npx` por cada MCP via `docker exec`. El proceso corre en stdio y persiste durante la sesión.

### Causa raíz: el package `@f4ww4z/mcp-mysql-server` ignora la URL del CLI

El `build/index.js` del package tiene **tres bugs encadenados**:

**Bug 1 — `run()` no parsea `process.argv[2]`:**
El servidor arranca con `server.run()` pero nunca lee el argumento de URL pasado por CLI. Solo llama `config()` de `dotenv`, que intenta leer un `.env` file en el CWD — que no existe. Resultado: el servidor arranca sin ninguna configuración de BD.

```js
// Código original — ignora la URL del argumento
async run() {
    const transport = new StdioServerTransport();
    await this.server.connect(transport);
    console.error('MySQL MCP server running on stdio');
}
```

**Bug 2 — `connect_db` no acepta `port`:**
El tool `connect_db` solo acepta `host`, `user`, `password`, `database`. No hay campo `port`. Al construir `this.config`, siempre usa el default 3306 de `mysql2`.

```js
// Código original — port ignorado, siempre conecta a 3306
this.config = {
    host: args.host,
    user: args.user,
    password: args.password,
    database: args.database,
};
```

**Bug 3 — Schema del tool no declara `port`:**
Aunque Claude Code intentara pasar `port`, el schema JSON del tool no lo declara, por lo que el harness lo descartaría.

### Por qué Host A "funcionaba" antes

El commit `5b909f2` configuró el contenedor con variables de entorno hardcodeadas de Host A:
```yaml
- DB_HOST=127.0.0.1
- DB_PORT=3306
- DB_USER=root
- DB_PASS=comite_2026
- DB_NAME=awa
```

Pero `dotenv` lee archivos `.env`, **no variables de entorno del sistema**. En realidad Host A funcionaba porque `connect_db` conecta al puerto 3306 por default, que casualmente es el puerto correcto de Host A. Host C usa 7002 → ETIMEDOUT intentando conectar a `192.168.1.128:3306`.

### Verificación de conectividad

La BD en Host C sí es accesible — el problema es 100% del package:

```bash
# Desde Host A — OK
/opt/lampp/bin/mysql -h 192.168.1.128 -P 7002 -u root -pcomite_2026 awa -e "SELECT 1"

# TCP desde Docker — OK
docker exec context7-mcp-mysql nc -zv 192.168.1.128 7002
# → 192.168.1.128 (192.168.1.128:7002) open

# Node.js mysql2 directo desde Docker — OK
docker exec context7-mcp-mysql node -e "..."
# → [{"v":"10.4.27-MariaDB-log","db":"awa"}]
```

---

## Solución

Parchear `build/index.js` del package con tres cambios:

### Patch 1: `run()` parsea la URL de `process.argv[2]`

```js
async run() {
    const urlArg = process.argv[2];
    if (urlArg && urlArg.startsWith('mysql://')) {
        try {
            const u = new URL(urlArg);
            this.config = {
                host: u.hostname,
                port: u.port ? parseInt(u.port) : 3306,
                user: decodeURIComponent(u.username),
                password: decodeURIComponent(u.password),
                database: u.pathname.slice(1),
            };
            await this.ensureConnection();
            console.error('Pre-connected via URL to ' + u.hostname + ':' + (u.port||3306));
        } catch(e) {
            console.error('URL pre-connect failed:', e.message);
        }
    }
    const transport = new StdioServerTransport();
    await this.server.connect(transport);
    console.error('MySQL MCP server running on stdio');
}
```

### Patch 2: `handleConnectDb` incluye `port`

```js
this.config = {
    host: args.host,
    port: args.port ? parseInt(args.port) : 3306,  // ← agregado
    user: args.user,
    password: args.password,
    database: args.database,
};
```

### Patch 3: Schema del tool declara `port`

```js
port: {
    type: 'number',
    description: 'Database port (optional, default 3306)',
},
```

---

## Aplicación del patch

El patch se aplica automáticamente al levantar el contenedor via el script `entrypoint-patch.sh`, montado como volumen en `docker-compose.yml`.

El script aplica los 3 patches al `build/index.js` del npx cache **si aún no están aplicados** (idempotente).

---

## Reproducibilidad / Nueva instalación

Al hacer `docker compose up` desde `docs-dev/ga-cl-ia/`, el `entrypoint-patch.sh`:

1. Fuerza la descarga del package (`npx -y @f4ww4z/mcp-mysql-server --version`)
2. Localiza el `build/index.js` en el npx cache
3. Aplica los 3 patches (idempotente — no modifica si ya están)
4. Inicia el servidor Context7 original

---

## Lección aprendida

- El package `@f4ww4z/mcp-mysql-server` **ignora el argumento URL del CLI** — es un bug conocido del package.
- Cualquier instancia MCP con puerto ≠ 3306 fallará sin este patch.
- El patch **no sobrevive** a `docker compose up --force-recreate` ni a `docker pull` sin el entrypoint persistido como volumen.
- Las variables de entorno del contenedor (`-e DB_HOST=...`) **no son leídas** por el package — usa `dotenv` (archivos `.env`), no `process.env`.

---

## Archivos modificados

| Archivo | Cambio |
|---|---|
| `docs-dev/ga-cl-ia/docker-compose.yml` | Agrega volumen con `entrypoint-patch.sh` |
| `docs-dev/ga-cl-ia/entrypoint-patch.sh` | Script nuevo — aplica los 3 patches al arrancar |
| `.mcp.json` | Sin cambios — la URL con puerto ya estaba correcta |
