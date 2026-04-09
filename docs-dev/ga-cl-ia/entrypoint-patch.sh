#!/bin/sh
# entrypoint-patch.sh
# Aplica parches al package @f4ww4z/mcp-mysql-server para soporte de puerto no estándar.
#
# PROBLEMA: el package ignora el argumento URL del CLI y no acepta `port` en connect_db.
# Cualquier instancia MCP con puerto != 3306 falla con ETIMEDOUT.
# Ver: docs-dev/ga-cl-ia/issue-mcp-mysql-port-no-estandar.md
#
# IDEMPOTENTE: si los patches ya están aplicados, no modifica nada.

echo "[patch] Asegurando descarga del package @f4ww4z/mcp-mysql-server..."
npx -y @f4ww4z/mcp-mysql-server --version > /dev/null 2>&1 || true

echo "[patch] Aplicando patches al build/index.js..."
node -e "
const fs = require('fs');
const path = require('path');

// Localizar index.js en el npx cache
const base = '/root/.npm/_npx';
let indexPath = null;
try {
  for (const hash of fs.readdirSync(base)) {
    const p = path.join(base, hash, 'node_modules/@f4ww4z/mcp-mysql-server/build/index.js');
    if (fs.existsSync(p)) { indexPath = p; break; }
  }
} catch(e) {}

if (!indexPath) {
  console.error('[patch] ERROR: no se encontró build/index.js en npx cache');
  process.exit(1);
}

let src = fs.readFileSync(indexPath, 'utf8');
let count = 0;

// ── Patch 1: run() parsea process.argv[2] como URL de conexión ──────────────
const OLD_RUN = \`    async run() {
        const transport = new StdioServerTransport();
        await this.server.connect(transport);
        console.error('MySQL MCP server running on stdio');
    }\`;

const NEW_RUN = \`    async run() {
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
    }\`;

if (!src.includes('process.argv[2]')) {
  src = src.replace(OLD_RUN, NEW_RUN);
  count++;
  console.error('[patch] Patch 1 aplicado: run() parsea URL de argv[2]');
} else {
  console.error('[patch] Patch 1 ya aplicado');
}

// ── Patch 2: handleConnectDb incluye port en this.config ────────────────────
const OLD_CONFIG = \`        this.config = {
            host: args.host,
            user: args.user,
            password: args.password,
            database: args.database,
        };\`;

const NEW_CONFIG = \`        this.config = {
            host: args.host,
            port: args.port ? parseInt(args.port) : 3306,
            user: args.user,
            password: args.password,
            database: args.database,
        };\`;

if (!src.includes('port: args.port')) {
  src = src.replace(OLD_CONFIG, NEW_CONFIG);
  count++;
  console.error('[patch] Patch 2 aplicado: connect_db acepta port');
} else {
  console.error('[patch] Patch 2 ya aplicado');
}

// ── Patch 3: schema del tool connect_db declara campo port ──────────────────
const OLD_SCHEMA = \`                            database: {
                                type: 'string',
                                description: 'Database name',
                            },
                        },
                        required: ['host', 'user', 'password', 'database'],\`;

const NEW_SCHEMA = \`                            database: {
                                type: 'string',
                                description: 'Database name',
                            },
                            port: {
                                type: 'number',
                                description: 'Database port (optional, default 3306)',
                            },
                        },
                        required: ['host', 'user', 'password', 'database'],\`;

if (!src.includes(\"'Database port'\")) {
  src = src.replace(OLD_SCHEMA, NEW_SCHEMA);
  count++;
  console.error('[patch] Patch 3 aplicado: schema connect_db incluye port');
} else {
  console.error('[patch] Patch 3 ya aplicado');
}

fs.writeFileSync(indexPath, src);
console.error('[patch] Listo. ' + count + ' patches aplicados en: ' + indexPath);
"

echo "[patch] Iniciando servicio Context7..."
# CMD original de la imagen mcp/context7: node dist/index.js (desde /app)
cd /app && exec node dist/index.js
