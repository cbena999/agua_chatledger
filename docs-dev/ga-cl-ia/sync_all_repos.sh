#!/bin/bash

# ==============================================================================
# Script: sync_all_repos.sh
# Descripción: Automatiza el proceso de commit y push para los repositorios
# principales (agua_chatledger, caelitandem_home y restaurantb/www).
# Incluye un escáner preventivo que censura Tokens de GitHub (PATs) en los
# logs de conversación (.md) para evitar bloqueos por Push Protection.
# ==============================================================================

# Detener el script si ocurre un error grave
set -e

# Definición de las rutas locales
AGUA_CHATLEDGER_DIR="/home/carlos/GitHub/agua_chatledger"
CAELITANDEM_DIR="/home/carlos/GitHub/caelitandem_home"
WWW_DIR="/home/carlos/GitHub/caelitandem_home/restaurantb/www"

# 1. Función para sanear secretos (Tokens de GitHub)
redact_secrets() {
    local target_dir="$1"
    echo -e "\n[!] Escaneando y censurando GitHub PATs en: $target_dir"
    
    # Buscar todos los archivos .md (ignorando .git) y reemplazar tokens
    # Usa expresiones regulares para capturar el formato clásico y el nuevo de GitHub
    # Redirigimos los errores (2>/dev/null) por si hay directorios con permisos restringidos (ej. volumen de BD de Docker)
    # y agregamos '|| true' para que el script no falle por set -e
    find "$target_dir" -type d -name ".git" -prune -o -type f -name "*.md" -exec sed -i -E 's/(ghp_|github_pat_)[a-zA-Z0-9_]+/[REDACTED_TOKEN]/g' {} + 2>/dev/null || true
    
    echo "[OK] Sanitización completada."
}

# 2. Función de sincronización y commit
sync_repo() {
    local repo_dir="$1"
    local commit_msg="$2"
    
    echo ""
    echo "=========================================================="
    echo " 🔄 Procesando: $repo_dir"
    echo "=========================================================="
    
    # Validar que el directorio exista
    if [ ! -d "$repo_dir" ]; then
        echo "❌ Error: El directorio no existe ($repo_dir)."
        return 1
    fi

    # Censurar secretos antes de añadir al index de Git
    redact_secrets "$repo_dir"
    
    # Entrar al repositorio
    cd "$repo_dir" || return 1
    
    # Comprobar si hay cambios locales sin confirmar
    if [ -n "$(git status --porcelain)" ]; then
        echo "📦 Añadiendo archivos (git add .)..."
        git add .
        
        echo "📝 Creando commit..."
        # Si falla el commit (ej. pre-commit hook bloquea), no detenemos el script entero
        git commit -m "$commit_msg" || { echo "⚠️ Advertencia al commitear. Saltando push."; return 1; }
    else
        echo "✅ [INFO] No hay cambios locales pendientes para confirmar."
    fi
    
    echo "🚀 Subiendo a GitHub (git push)..."
    # Intenta hacer push normal
    if ! git push; then
        echo "⚠️ El push normal falló. Intentando --set-upstream..."
        local current_branch
        current_branch=$(git rev-parse --abbrev-ref HEAD)
        git push --set-upstream origin "$current_branch"
    fi
    
    echo "✅ [OK] Sincronización exitosa."
}

# 3. Flujo Principal
echo "🚀 Iniciando Sincronización Global de Repositorios"

# Obtener mensaje de commit de los parámetros, si no, usar uno por defecto
DEFAULT_MSG="chore: auto-sync and secret sanitization across workspaces"
MESSAGE="${1:-$DEFAULT_MSG}"

# Ejecutar sincronización en el orden correcto
sync_repo "$AGUA_CHATLEDGER_DIR" "$MESSAGE"
sync_repo "$WWW_DIR" "$MESSAGE"
sync_repo "$CAELITANDEM_DIR" "$MESSAGE"

echo ""
echo "🎉 ¡Flujo completado! Todos los repositorios han sido sincronizados de forma segura."
