#!/usr/bin/env bash
# =============================================================================
# chatledger_validate.sh — Validación de integridad del Ground Truth
# Repo: agua_chatledger · Ver: .agents/rules/08-integridad-ground-truth.md
#
# USO: bash docs-dev/ga-cl-ia/chatledger_validate.sh
# Ejecutado automáticamente por el pre-commit hook de repo agua.
# =============================================================================
set -euo pipefail

AGUA_DIR="/opt/lampp/htdocs/agua"
CHATLEDGER_DIR="/home/carlos/GitHub/agua_chatledger"
ERRORS=0

fail() { echo "  [FAIL] $*"; ERRORS=$((ERRORS + 1)); }
ok()   { echo "  [ OK ] $*"; }

echo ""
echo "═══════════════════════════════════════════════════════"
echo "  Validación Ground Truth — agua_chatledger            "
echo "═══════════════════════════════════════════════════════"

# ── 1. Symlinks en repo agua ──────────────────────────────────────────────────
echo ""
echo "  [1] Symlinks en repo agua"

check_symlink() {
    local link="$1"
    local expected_target="$2"
    if [ -L "$link" ]; then
        ok "Symlink OK: $link"
    else
        fail "Symlink roto o convertido en archivo: $link (esperado → $expected_target)"
    fi
}

check_symlink "${AGUA_DIR}/.agents"          ".chatledger/.agents"
check_symlink "${AGUA_DIR}/.claude"          ".chatledger/.claude"
check_symlink "${AGUA_DIR}/.mcp.json"        ".chatledger/.mcp.json"
check_symlink "${AGUA_DIR}/CLAUDE.md"        ".chatledger/CLAUDE.md"
check_symlink "${AGUA_DIR}/GEMINI.md"        ".chatledger/GEMINI.md"
check_symlink "${AGUA_DIR}/.clauderules"     ".chatledger/.clauderules"
check_symlink "${AGUA_DIR}/docs-dev/ga-cl-ia" "${CHATLEDGER_DIR}/docs-dev/ga-cl-ia"

# ── 2. .mcp.json no vacío y contiene los 3 hosts ─────────────────────────────
echo ""
echo "  [2] .mcp.json — contenido y 3 hosts"

MCP_FILE="${AGUA_DIR}/.mcp.json"
if [ ! -s "$MCP_FILE" ]; then
    fail ".mcp.json vacío o inexistente"
else
    for host in bdawahost-a bdawahost-b bdawahost-c; do
        if grep -q "$host" "$MCP_FILE" 2>/dev/null; then
            ok ".mcp.json contiene: $host"
        else
            fail ".mcp.json no contiene: $host"
        fi
    done
    # En el JSON el comando es "docker" + args "exec" -i ... (separados)
    if grep -q '"docker"' "$MCP_FILE" 2>/dev/null && grep -q '"exec"' "$MCP_FILE" 2>/dev/null; then
        ok ".mcp.json usa docker exec (correcto)"
    else
        fail ".mcp.json NO usa docker exec — MCPs romperán con ETIMEDOUT"
    fi
fi

# ── 3. Assets críticos en docs-dev/ga-cl-ia ───────────────────────────────────
echo ""
echo "  [3] Assets críticos en docs-dev/ga-cl-ia"

for asset in "entrypoint-patch.sh" "docker-compose.yml"; do
    if [ -f "${CHATLEDGER_DIR}/docs-dev/ga-cl-ia/${asset}" ]; then
        ok "Existe: docs-dev/ga-cl-ia/${asset}"
    else
        # AVISO pero no bloquea — estos assets pueden no estar en todos los ambientes
        echo "  [WARN] No encontrado: docs-dev/ga-cl-ia/${asset} (opcional en este ambiente)"
    fi
done

# ── 4. .clauderules no excede 30 líneas ──────────────────────────────────────
echo ""
echo "  [4] .clauderules — tamaño"

CLAUDERULES="${AGUA_DIR}/.clauderules"
if [ -f "$CLAUDERULES" ]; then
    LINES=$(wc -l < "$CLAUDERULES")
    if [ "$LINES" -le 30 ]; then
        ok ".clauderules: ${LINES} líneas (OK ≤30)"
    else
        fail ".clauderules: ${LINES} líneas (excede 30 — mover contenido a .agents/)"
    fi
else
    fail ".clauderules no encontrado"
fi

# ── Auto-Actualización de Fecha en GEMINI.md y CLAUDE.md ──────────────────────
GEMINI_FILE="${CHATLEDGER_DIR}/GEMINI.md"
CLAUDE_FILE="${CHATLEDGER_DIR}/CLAUDE.md"
CURRENT_DATE=$(date +%Y-%m-%d)

if [ -f "$GEMINI_FILE" ]; then
    if ! grep -q "\*\*Última actualización\*\*: ${CURRENT_DATE}" "$GEMINI_FILE"; then
        sed -i "s/\*\*Última actualización\*\*:.*/\*\*Última actualización\*\*: ${CURRENT_DATE}/g" "$GEMINI_FILE"
        echo "  [INFO] GEMINI.md fecha de última actualización actualizada a ${CURRENT_DATE}"
        if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
            git -C "$CHATLEDGER_DIR" add "GEMINI.md" 2>/dev/null || true
        fi
    fi
fi

if [ -f "$CLAUDE_FILE" ]; then
    if ! grep -q "\*\*Última actualización:\*\* ${CURRENT_DATE}" "$CLAUDE_FILE"; then
        sed -i "s/\*\*Última actualización:\*\*\s*[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}/\*\*Última actualización:\*\* ${CURRENT_DATE}/g" "$CLAUDE_FILE"
        echo "  [INFO] CLAUDE.md fecha de última actualización actualizada a ${CURRENT_DATE}"
        if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
            git -C "$CHATLEDGER_DIR" add "CLAUDE.md" 2>/dev/null || true
        fi
    fi
fi

# ── Resultado ─────────────────────────────────────────────────────────────────
echo ""
echo "═══════════════════════════════════════════════════════"
if [ "$ERRORS" -eq 0 ]; then
    echo "  RESULTADO: OK ✓ — Ground Truth íntegro ($ERRORS errores)"
    echo "═══════════════════════════════════════════════════════"
    echo ""
    exit 0
else
    echo "  RESULTADO: FALLO ✗ — ${ERRORS} error(es) detectado(s)"
    echo "  Reparar con: bash docs-dev/ga-cl-ia/chatledger_sync_ga_lnks.sh"
    echo "  Ver: .agents/rules/08-integridad-ground-truth.md"
    echo "═══════════════════════════════════════════════════════"
    echo ""
    exit 1
fi
