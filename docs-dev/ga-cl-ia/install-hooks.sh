#!/bin/bash
# =================================================================
# install-hooks.sh — Instala git hooks en agua_chatledger
# [/] Modificar `install-hooks.sh` para soporte bi-repositorio y local `agua`._chatledger
#
# Los git hooks no se suben al repo — este script los instala
# localmente. Ejecutar después de clonar agua_chatledger o al
# actualizar los hooks.
#
# Uso: bash docs-dev/ga-cl-ia/install-hooks.sh
# =================================================================

CHATLEDGER_DIR="/home/carlos/GitHub/agua_chatledger"
HOOKS_DIR="$CHATLEDGER_DIR/.git/hooks"
VALIDATE_SCRIPT="$CHATLEDGER_DIR/docs-dev/ga-cl-ia/chatledger_validate.sh"

GREEN="\033[0;32m"
RED="\033[0;31m"
BOLD="\033[1m"
RESET="\033[0m"

echo ""
echo -e "${BOLD}======================================================"
echo " Instalación de Git Hooks — agua_chatledger"
echo -e "======================================================${RESET}"

if [ ! -d "$HOOKS_DIR" ]; then
    echo -e "${RED}[ERROR]${RESET} No se encontró $HOOKS_DIR — ¿es un repo git válido?"
    exit 1
fi

# ------------------------------------------------------------------
# Detección del Repo de Trabajo (Agua)
# ------------------------------------------------------------------
REPO_DIR="/opt/lampp/htdocs/agua"
REPO_HOOKS="$REPO_DIR/.git/hooks"

# ------------------------------------------------------------------
# Función para instalar el pre-commit hook
# ------------------------------------------------------------------
install_pre_commit() {
    local TARGET_HOOKS="$1"
    local REPO_NAME="$2"
    local VALIDATE_CMD="$3"

    echo -e "  Instalando pre-commit en ${BOLD}$REPO_NAME${RESET}..."

    cat > "$TARGET_HOOKS/pre-commit" << HOOK
#!/bin/bash
# pre-commit hook — $REPO_NAME
# Ejecuta validación de Ground Truth antes de cada commit.
# Si falla, el commit se bloquea.

$VALIDATE_CMD
EXIT_CODE=\$?

if [ \$EXIT_CODE -ne 0 ]; then
    echo ""
    echo "  ─────────────────────────────────────────────────"
    echo "  COMMIT BLOQUEADO — corrige los errores arriba."
    echo "  Causa: Symlinks convertidos en archivos o rotos."
    echo "  Reparar con: bash docs-dev/ga-cl-ia/chatledger_sync_ga_lnks.sh"
    echo "  Ver: .agents/rules/08-integridad-ground-truth.md"
    echo "  ─────────────────────────────────────────────────"
    echo ""
fi

exit \$EXIT_CODE
HOOK

    chmod +x "$TARGET_HOOKS/pre-commit"
    echo -e "  ${GREEN}[OK]${RESET} Hook instalado en $TARGET_HOOKS/pre-commit"
}

# ------------------------------------------------------------------
# Instalación en ambos repos
# ------------------------------------------------------------------

# 1. En ChatLedger
install_pre_commit "$HOOKS_DIR" "agua_chatledger" "bash $VALIDATE_SCRIPT"

# 2. En Agua (Repo de Trabajo)
if [ -d "$REPO_HOOKS" ]; then
    install_pre_commit "$REPO_HOOKS" "agua" "bash docs-dev/ga-cl-ia/chatledger_validate.sh"
else
    echo -e "  ${RED}[WARN]${RESET} Repo Agua no detectado en $REPO_DIR — saltando..."
fi

echo ""
echo -e "${GREEN}${BOLD}✓ Hooks instalados correctamente.${RESET}"
echo "  Cada commit en agua_chatledger ejecutará chatledger_validate.sh automáticamente."
echo ""
