#!/bin/bash
# =================================================================
# chatledger_validate.sh — Validador de integridad del Ground Truth
#
# Verifica que todos los assets críticos de agua_chatledger estén
# correctos antes de commitear. Ejecutar manualmente o vía git hook.
#
# Uso: bash chatledger_validate.sh
# Exit 0 = todo OK | Exit 1 = hay problemas
#
# Ver: .agents/rules/08-integridad-ground-truth.md
# =================================================================

CHATLEDGER_DIR="/home/carlos/GitHub/agua_chatledger"
REPO_DIR="/opt/lampp/htdocs/agua"

GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
BOLD="\033[1m"
RESET="\033[0m"

ok()   { echo -e "  ${GREEN}[OK]${RESET}    $1"; }
warn() { echo -e "  ${YELLOW}[WARN]${RESET}  $1"; }
fail() { echo -e "  ${RED}[FAIL]${RESET}  $1"; ERRORS=$((ERRORS+1)); }

ERRORS=0

echo ""
echo -e "${BOLD}======================================================"
echo " Validación de Integridad — agua_chatledger"
echo -e "======================================================${RESET}"

# ------------------------------------------------------------------
# 1. Symlinks en repo agua
# ------------------------------------------------------------------
echo ""
echo -e "${BOLD}── 1. Symlinks en repo agua ─────────────────────────${RESET}"

declare -A EXPECTED_LINKS=(
    ["$REPO_DIR/.chatledger"]="$CHATLEDGER_DIR"
    ["$REPO_DIR/.agents"]=".chatledger/.agents"
    ["$REPO_DIR/.claude"]=".chatledger/.claude"
    ["$REPO_DIR/CLAUDE.md"]=".chatledger/CLAUDE.md"
    ["$REPO_DIR/GEMINI.md"]=".chatledger/GEMINI.md"
    ["$REPO_DIR/.clauderules"]=".chatledger/.clauderules"
    ["$REPO_DIR/.mcp.json"]=".chatledger/.mcp.json"
    ["$REPO_DIR/docs-dev/ga-cl-ia"]="$CHATLEDGER_DIR/docs-dev/ga-cl-ia"
)

for LINK in "${!EXPECTED_LINKS[@]}"; do
    EXPECTED="${EXPECTED_LINKS[$LINK]}"
    if [ ! -L "$LINK" ]; then
        fail "$(basename $LINK) — NO es symlink (es archivo/dir real o no existe)"
    elif [ "$(readlink "$LINK")" != "$EXPECTED" ]; then
        fail "$(basename $LINK) → apunta a '$(readlink "$LINK")' (esperado: '$EXPECTED')"
    elif [ ! -e "$LINK" ]; then
        fail "$(basename $LINK) — symlink roto (destino no existe)"
    else
        ok "$(basename $LINK) → $EXPECTED"
    fi
done

# ------------------------------------------------------------------
# 2. .claude — settings.json y settings.local.json en chatledger
# ------------------------------------------------------------------
echo ""
echo -e "${BOLD}── 2. .claude — archivos de configuración ───────────${RESET}"

for F in "settings.json" "settings.local.json"; do
    FPATH="$CHATLEDGER_DIR/.claude/$F"
    if [ ! -f "$FPATH" ]; then
        fail ".claude/$F no existe en chatledger"
    elif [ ! -s "$FPATH" ]; then
        fail ".claude/$F está vacío"
    else
        ok ".claude/$F existe"
    fi
done

# Verificar que settings.json tiene configuración Docker MCP
if grep -q '"docker"' "$CHATLEDGER_DIR/.claude/settings.json" 2>/dev/null; then
    ok ".claude/settings.json usa comando docker (MCP correcto)"
else
    fail ".claude/settings.json no usa docker — MCP puede estar mal configurado"
fi

# ------------------------------------------------------------------
# 3. .mcp.json — no vacío y contiene los 3 hosts
# ------------------------------------------------------------------
echo ""
echo -e "${BOLD}── 3. .mcp.json — contenido y hosts ────────────────${RESET}"

MCP_FILE="$CHATLEDGER_DIR/.mcp.json"

if [ ! -f "$MCP_FILE" ]; then
    fail ".mcp.json no existe"
elif [ ! -s "$MCP_FILE" ]; then
    fail ".mcp.json está VACÍO"
else
    # Verificar que no usa npx directo (debe usar docker)
    if ! grep -q '"docker"' "$MCP_FILE"; then
        fail ".mcp.json no usa 'docker' — posiblemente restaurado con npx directo"
    else
        ok ".mcp.json usa comando docker"
    fi

    # Verificar los 3 hosts
    for HOST in bdawahost-a bdawahost-b bdawahost-c; do
        if grep -q "\"$HOST\"" "$MCP_FILE"; then
            ok ".mcp.json contiene $HOST"
        else
            fail ".mcp.json NO contiene $HOST"
        fi
    done

    # Verificar puerto 7002 para Host C
    if grep -q "7002" "$MCP_FILE"; then
        ok ".mcp.json tiene puerto 7002 para Host C"
    else
        fail ".mcp.json no tiene puerto 7002 — bdawahost-c probablemente mal configurado"
    fi
fi

# ------------------------------------------------------------------
# 3. mcp_config.json == .mcp.json (deben ser idénticos)
# ------------------------------------------------------------------
echo ""
echo -e "${BOLD}── 4. mcp_config.json idéntico a .mcp.json ─────────${RESET}"

MCP_CONFIG="$CHATLEDGER_DIR/.agents/mcp_config.json"

if [ ! -f "$MCP_CONFIG" ]; then
    fail "mcp_config.json no existe en .agents/"
elif diff -q "$MCP_FILE" "$MCP_CONFIG" > /dev/null 2>&1; then
    ok "mcp_config.json == .mcp.json (idénticos)"
else
    fail "mcp_config.json DIFIERE de .mcp.json — sincronizar antes de commitear"
    echo "         Diferencias:"
    diff "$MCP_FILE" "$MCP_CONFIG" | sed 's/^/         /'
fi

# ------------------------------------------------------------------
# 4. .clauderules — no contaminado (máx 35 líneas)
# ------------------------------------------------------------------
echo ""
echo -e "${BOLD}── 5. .clauderules — tamaño y contenido ────────────${RESET}"

CLAUDERULES="$CHATLEDGER_DIR/.clauderules"
LINES=$(wc -l < "$CLAUDERULES" 2>/dev/null || echo 0)

if [ "$LINES" -gt 35 ]; then
    fail ".clauderules tiene $LINES líneas (máx 35) — posiblemente contaminado con notas/claves"
else
    ok ".clauderules tiene $LINES líneas (OK)"
fi

# Verificar que no contiene JSON ni claves de API
if grep -qE '^\{|"command"|sk-or-v1-|"allow":|"deny":' "$CLAUDERULES" 2>/dev/null; then
    fail ".clauderules contiene JSON o claves de API — limpiar"
else
    ok ".clauderules sin JSON ni claves"
fi

# ------------------------------------------------------------------
# 5. Archivos críticos de Docker MCP
# ------------------------------------------------------------------
echo ""
echo -e "${BOLD}── 6. Assets Docker MCP ─────────────────────────────${RESET}"

for F in \
    "$CHATLEDGER_DIR/docs-dev/ga-cl-ia/docker-compose.yml" \
    "$CHATLEDGER_DIR/docs-dev/ga-cl-ia/entrypoint-patch.sh"; do
    if [ -f "$F" ]; then
        ok "$(basename $F) existe"
    else
        fail "$(basename $F) NO existe — MCP Host C no funcionará correctamente"
    fi
done

# Verificar que entrypoint-patch.sh menciona el patch de puerto
if grep -q "process.argv\[2\]" "$CHATLEDGER_DIR/docs-dev/ga-cl-ia/entrypoint-patch.sh" 2>/dev/null; then
    ok "entrypoint-patch.sh contiene patch de puerto (argv[2])"
else
    fail "entrypoint-patch.sh no contiene el patch de puerto — bdawahost-c fallará con ETIMEDOUT"
fi

# ------------------------------------------------------------------
# 6. Contenedor Docker corriendo (warning, no error)
# ------------------------------------------------------------------
echo ""
echo -e "${BOLD}── 7. Contenedor Docker context7-mcp-mysql ──────────${RESET}"

if docker ps --format '{{.Names}}' 2>/dev/null | grep -q "context7-mcp-mysql"; then
    ok "context7-mcp-mysql está corriendo"
else
    warn "context7-mcp-mysql NO está corriendo — MCPs no disponibles hasta levantar Docker"
    echo "         Levantar con: cd $CHATLEDGER_DIR/docs-dev/ga-cl-ia && docker compose up -d"
fi

# ------------------------------------------------------------------
# Resumen final
# ------------------------------------------------------------------
echo ""
echo -e "${BOLD}======================================================${RESET}"
if [ "$ERRORS" -eq 0 ]; then
    echo -e "${GREEN}${BOLD}✓ Validación OK — $ERRORS errores. Ground Truth íntegro.${RESET}"
    echo ""
    exit 0
else
    echo -e "${RED}${BOLD}✗ Validación FALLÓ — $ERRORS error(es) encontrado(s).${RESET}"
    echo ""
    echo -e "  Consultar: ${BOLD}.agents/rules/08-integridad-ground-truth.md${RESET}"
    echo ""
    exit 1
fi
