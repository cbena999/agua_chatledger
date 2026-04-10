#!/bin/bash

# =================================================================
# SCRIPT DE SINCRONIZACIÓN DE SYMLINKS — AGUA (Claude & Gemini)
#
# Objetivo: Establecer todos los symlinks necesarios para que los
# archivos/dirs meta de IA tengan su fuente de verdad en
# agua_chatledger, y sean accesibles desde cualquier rama de git
# (main y feature/upgrade-v2-win-xampp) sin duplicar contenido.
#
# Uso: bash chatledger_sync_ga_lnks.sh
# Seguro de re-ejecutar: verifica antes de actuar.
#
# Symlinks que gestiona:
#   REPO/.chatledger        → CHATLEDGER/
#   REPO/.agents            → CHATLEDGER/.agents/
#   REPO/CLAUDE.md          → CHATLEDGER/CLAUDE.md
#   REPO/GEMINI.md          → CHATLEDGER/GEMINI.md
#   REPO/.clauderules       → CHATLEDGER/.clauderules
#   REPO/.mcp.json          → CHATLEDGER/.mcp.json (vía .chatledger)
#   REPO/docs-dev/ga-cl-ia  → CHATLEDGER/docs-dev/ga-cl-ia/
# =================================================================

REPO_DIR="/opt/lampp/htdocs/agua"
CHATLEDGER_DIR="/home/carlos/GitHub/agua_chatledger"

GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
RESET="\033[0m"

ok()   { echo -e "${GREEN}[OK]${RESET}    $1"; }
info() { echo -e "${YELLOW}[INFO]${RESET}  $1"; }
err()  { echo -e "${RED}[ERROR]${RESET} $1"; }

echo "======================================================"
echo " Sincronización de Symlinks Ground Truth — Agua IA"
echo "======================================================"
echo " REPO:       $REPO_DIR"
echo " CHATLEDGER: $CHATLEDGER_DIR"
echo "======================================================"

# ------------------------------------------------------------------
# Verificaciones previas
# ------------------------------------------------------------------

if [ ! -d "$REPO_DIR" ]; then
    err "No existe el directorio del repo: $REPO_DIR"
    exit 1
fi

if [ ! -d "$CHATLEDGER_DIR" ]; then
    err "No existe el chatledger: $CHATLEDGER_DIR"
    err "Clona primero: git clone https://github.com/cbena999/agua_chatledger.git $CHATLEDGER_DIR"
    exit 1
fi

cd "$REPO_DIR" || exit 1

# ------------------------------------------------------------------
# Función genérica para crear symlink
# Uso: make_symlink <ruta_en_repo> <destino_real> <descripcion>
# ------------------------------------------------------------------
make_symlink() {
    local LINK="$1"
    local TARGET="$2"
    local DESC="$3"

    # Si ya es symlink correcto → no hacer nada
    if [ -L "$LINK" ] && [ "$(readlink "$LINK")" = "$TARGET" ]; then
        info "$DESC → ya es symlink correcto. Sin cambios."
        return 0
    fi

    # Si es symlink apuntando a otro lugar → advertir y corregir
    if [ -L "$LINK" ]; then
        info "$DESC → symlink existente pero apunta a '$(readlink "$LINK")'. Corrigiendo..."
        rm "$LINK"
    fi

    # Si es directorio real → migrar contenido al chatledger primero
    if [ -d "$LINK" ]; then
        info "$DESC → directorio real detectado. Migrando contenido a chatledger..."
        mkdir -p "$TARGET"
        cp -rn "$LINK/." "$TARGET/" 2>/dev/null
        rm -rf "$LINK"
        ok "$DESC → contenido migrado a $TARGET"
    fi

    # Si es archivo real → migrar al chatledger primero
    if [ -f "$LINK" ]; then
        info "$DESC → archivo real detectado. Migrando a chatledger..."
        cp -n "$LINK" "$TARGET" 2>/dev/null
        rm "$LINK"
        ok "$DESC → archivo migrado a $TARGET"
    fi

    # Crear symlink
    ln -s "$TARGET" "$LINK"
    ok "$DESC → symlink creado: $LINK → $TARGET"
}

# ------------------------------------------------------------------
# 1. .chatledger  (base — todos los demás dependen de este)
# ------------------------------------------------------------------
echo ""
echo "── 1. .chatledger ──────────────────────────────────"
make_symlink \
    "$REPO_DIR/.chatledger" \
    "$CHATLEDGER_DIR" \
    ".chatledger"

# Asegurar en .gitignore
if ! grep -q "^\.chatledger$" "$REPO_DIR/.gitignore" 2>/dev/null; then
    echo ".chatledger" >> "$REPO_DIR/.gitignore"
    sort -u "$REPO_DIR/.gitignore" -o "$REPO_DIR/.gitignore"
    ok ".chatledger agregado a .gitignore"
fi

# ------------------------------------------------------------------
# 2. .agents
# ------------------------------------------------------------------
echo ""
echo "── 2. .agents ──────────────────────────────────────"
mkdir -p "$CHATLEDGER_DIR/.agents"
make_symlink \
    "$REPO_DIR/.agents" \
    ".chatledger/.agents" \
    ".agents"

# ------------------------------------------------------------------
# 3. CLAUDE.md
# ------------------------------------------------------------------
echo ""
echo "── 3. CLAUDE.md ────────────────────────────────────"
touch "$CHATLEDGER_DIR/CLAUDE.md" 2>/dev/null
make_symlink \
    "$REPO_DIR/CLAUDE.md" \
    ".chatledger/CLAUDE.md" \
    "CLAUDE.md"

# ------------------------------------------------------------------
# 4. GEMINI.md
# ------------------------------------------------------------------
echo ""
echo "── 4. GEMINI.md ────────────────────────────────────"
touch "$CHATLEDGER_DIR/GEMINI.md" 2>/dev/null
make_symlink \
    "$REPO_DIR/GEMINI.md" \
    ".chatledger/GEMINI.md" \
    "GEMINI.md"

# ------------------------------------------------------------------
# 5. .clauderules
# ------------------------------------------------------------------
echo ""
echo "── 5. .clauderules ─────────────────────────────────"
touch "$CHATLEDGER_DIR/.clauderules" 2>/dev/null
make_symlink \
    "$REPO_DIR/.clauderules" \
    ".chatledger/.clauderules" \
    ".clauderules"

# ------------------------------------------------------------------
# 6. .mcp.json  (vía .chatledger symlink)
# ------------------------------------------------------------------
echo ""
echo "── 6. .mcp.json ─────────────────────────────────────"
touch "$CHATLEDGER_DIR/.mcp.json" 2>/dev/null
make_symlink \
    "$REPO_DIR/.mcp.json" \
    ".chatledger/.mcp.json" \
    ".mcp.json"

# ------------------------------------------------------------------
# 7. docs-dev/ga-cl-ia  (apunta directo al chatledger, no vía .chatledger)
# ------------------------------------------------------------------
echo ""
echo "── 7. docs-dev/ga-cl-ia ─────────────────────────────"
mkdir -p "$CHATLEDGER_DIR/docs-dev/ga-cl-ia"
make_symlink \
    "$REPO_DIR/docs-dev/ga-cl-ia" \
    "$CHATLEDGER_DIR/docs-dev/ga-cl-ia" \
    "docs-dev/ga-cl-ia"

# ------------------------------------------------------------------
# Resumen final
# ------------------------------------------------------------------
echo ""
echo "======================================================"
echo " Verificación final de symlinks"
echo "======================================================"
LINKS=(
    "$REPO_DIR/.chatledger"
    "$REPO_DIR/.agents"
    "$REPO_DIR/CLAUDE.md"
    "$REPO_DIR/GEMINI.md"
    "$REPO_DIR/.clauderules"
    "$REPO_DIR/.mcp.json"
    "$REPO_DIR/docs-dev/ga-cl-ia"
)
ALL_OK=true
for L in "${LINKS[@]}"; do
    if [ -L "$L" ]; then
        ok "$(basename $L) → $(readlink $L)"
    else
        err "$(basename $L) — NO es symlink"
        ALL_OK=false
    fi
done

echo ""
if [ "$ALL_OK" = true ]; then
    echo -e "${GREEN}✓ Todos los symlinks están correctos.${RESET}"
else
    echo -e "${RED}✗ Algunos symlinks fallaron. Revisar errores arriba.${RESET}"
    exit 1
fi

# ------------------------------------------------------------------
# 8. Instalar git hook pre-commit en agua_chatledger
# ------------------------------------------------------------------
echo ""
echo "── 8. Git hook pre-commit ───────────────────────────"
INSTALL_HOOKS="$CHATLEDGER_DIR/docs-dev/ga-cl-ia/install-hooks.sh"
if [ -f "$INSTALL_HOOKS" ]; then
    bash "$INSTALL_HOOKS"
else
    info "install-hooks.sh no encontrado — hook no instalado"
fi

echo "======================================================"
echo ""
echo "  Próximos pasos recomendados:"
echo "  1. git -C $CHATLEDGER_DIR add -A && git -C $CHATLEDGER_DIR commit -m 'sync: symlinks y hooks verificados'"
echo "  2. git -C $CHATLEDGER_DIR push origin main"
echo "======================================================"
