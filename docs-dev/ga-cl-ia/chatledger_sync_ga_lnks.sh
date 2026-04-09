#!/bin/bash

# =================================================================
# SCRIPT DE SINCRONIZACIÓN DE CHATLEDGER (AGUA v2)
# Objetivo: Mover los logs fuera del repo y usar un enlace simbólico
# para que el historial sea común a todas las ramas de Git.
# =================================================================

# 1. Definir rutas (Modifica estas rutas según tu entorno)
REPO_DIR="/opt/lampp/htdocs/agua"
STORAGE_DIR="/home/carlos/GitHub/agua_chatledger"

echo "----------------------------------------------------"
echo "Configurando Sincronización de Chats para Agua v2..."
echo "----------------------------------------------------"

# 2. Crear el directorio de almacenamiento permanente si no existe
if [ ! -d "$STORAGE_DIR" ]; then
    mkdir -p "$STORAGE_DIR"
    echo "[OK] Carpeta de almacenamiento creada en $STORAGE_DIR"
fi

# 3. Mover archivos actuales si existen y no son un link
if [ -d "$REPO_DIR/.chatledger" ] && [ ! -L "$REPO_DIR/.chatledger" ]; then
    cp -r $REPO_DIR/.chatledger/* "$STORAGE_DIR/" 2>/dev/null
    rm -rf "$REPO_DIR/.chatledger"
    echo "[OK] Logs físicos migrados al almacenamiento permanente."
fi

# 4. Limpiar Git e ignorar la carpeta
cd "$REPO_DIR"
git rm -r --cached .chatledger 2>/dev/null
if ! grep -q ".chatledger" .gitignore; then
    echo ".chatledger" >> .gitignore
    sort -u .gitignore -o .gitignore
    echo "[OK] .chatledger añadido a .gitignore"
fi

# 5. Crear el enlace simbólico
if [ ! -L ".chatledger" ]; then
    ln -s "$STORAGE_DIR" .chatledger
    echo "[OK] Enlace simbólico creado correctamente."
else
    echo "[INFO] El enlace simbólico ya existe."
fi

echo "----------------------------------------------------"
echo "¡Configuración completada exitosamente!"
echo "----------------------------------------------------"
