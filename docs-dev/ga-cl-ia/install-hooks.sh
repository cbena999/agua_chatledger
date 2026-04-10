#!/bin/bash
# =================================================================
# install-hooks.sh — Instala git hooks en agua_chatledger
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
# pre-commit hook
# ------------------------------------------------------------------
cat > "$HOOKS_DIR/pre-commit" << 'HOOK'
#!/bin/bash
# pre-commit hook — agua_chatledger
# Ejecuta chatledger_validate.sh antes de cada commit.
# Si falla, el commit se bloquea.

CHATLEDGER_DIR="/home/carlos/GitHub/agua_chatledger"
VALIDATE="$CHATLEDGER_DIR/docs-dev/ga-cl-ia/chatledger_validate.sh"

if [ ! -f "$VALIDATE" ]; then
    echo "[pre-commit] WARN: chatledger_validate.sh no encontrado — omitiendo validación"
    exit 0
fi

bash "$VALIDATE"
EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
    echo ""
    echo "  ─────────────────────────────────────────────────"
    echo "  COMMIT BLOQUEADO — corrige los errores arriba."
    echo "  Ver: .agents/rules/08-integridad-ground-truth.md"
    echo "  ─────────────────────────────────────────────────"
    echo ""
fi

exit $EXIT_CODE
HOOK

chmod +x "$HOOKS_DIR/pre-commit"
echo -e "  ${GREEN}[OK]${RESET} pre-commit hook instalado en $HOOKS_DIR/pre-commit"

echo ""
echo -e "${GREEN}${BOLD}✓ Hooks instalados correctamente.${RESET}"
echo "  Cada commit en agua_chatledger ejecutará chatledger_validate.sh automáticamente."
echo ""
