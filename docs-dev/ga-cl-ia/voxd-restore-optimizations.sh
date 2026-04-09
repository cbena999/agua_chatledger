#!/bin/bash

# =================================================================
# VOXD — Restaurar optimizaciones post-update/reinstalación
#
# Aplica las optimizaciones configuradas en el setup inicial:
#   1. Parche transcriber.py — 8 hilos CPU
#   2. Parche transcriber.py — prompt de contexto técnico español México
#   3. config.yaml — modelo large-v3-turbo + idioma es + mic 0.6
#   4. .bashrc — VOXD_WC_BIN y CUDA en PATH
#
# Uso: bash voxd-restore-optimizations.sh
# Seguro de re-ejecutar — verifica antes de modificar.
# =================================================================

GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
RESET="\033[0m"

ok()   { echo -e "${GREEN}[OK]${RESET}    $1"; }
info() { echo -e "${YELLOW}[INFO]${RESET}  $1"; }
err()  { echo -e "${RED}[ERROR]${RESET} $1"; }

TRANSCRIBER="/opt/voxd/src/voxd/core/transcriber.py"
CONFIG="$HOME/.config/voxd/config.yaml"
BASHRC="$HOME/.bashrc"
WHISPER_BIN="$HOME/.local/share/voxd/bin/whisper-cli"
MODEL_LARGE="$HOME/.local/share/voxd/models/ggml-large-v3-turbo.bin"

echo "======================================================"
echo " Voxd — Restaurar Optimizaciones"
echo "======================================================"

# ------------------------------------------------------------------
# 1. Parche transcriber.py — 8 hilos
# ------------------------------------------------------------------
echo ""
echo "── 1. Hilos CPU (8 threads) ─────────────────────────"
if grep -q '"-t", "8"' "$TRANSCRIBER" 2>/dev/null; then
    info "Parche de hilos ya aplicado. Sin cambios."
else
    if [ -w "$TRANSCRIBER" ]; then
        sed -i 's|"-otxt"  # <-- THIS|"-t", "8",\n            "-otxt"  # <-- THIS|' "$TRANSCRIBER"
        ok "Parche de 8 hilos aplicado en $TRANSCRIBER"
    else
        echo "  Requiere sudo:"
        echo "  sudo sed -i 's|\"-otxt\"  # <-- THIS|\"-t\", \"8\",\\n            \"-otxt\"  # <-- THIS|' $TRANSCRIBER"
        err "Sin permisos — ejecuta el comando sudo manualmente"
    fi
fi

# ------------------------------------------------------------------
# 2. Parche transcriber.py — prompt técnico español México
# ------------------------------------------------------------------
echo ""
echo "── 2. Prompt técnico español México ─────────────────"
PROMPT_TEXT="Programación web PHP MySQL MariaDB JavaScript AJAX jQuery HTML CSS array foreach función variable clase método base de datos consulta tabla registro usuario contrato factura cargo pago caja reporte asamblea domicilio toma agua potable avance módulo ruteador ligacargos cartera vencida concentrado corte sincronización migración host producción rama branch commit push pull"

if grep -q '"--prompt"' "$TRANSCRIBER" 2>/dev/null; then
    info "Prompt técnico ya aplicado. Sin cambios."
else
    if [ -w "$TRANSCRIBER" ]; then
        sed -i "s|\"-t\", \"8\",|\"-t\", \"8\",\n            \"--prompt\", \"$PROMPT_TEXT\",|" "$TRANSCRIBER"
        ok "Prompt técnico aplicado en $TRANSCRIBER"
    else
        err "Sin permisos — ejecutar con sudo manualmente (ver voxd-instalacion.md)"
    fi
fi

# ------------------------------------------------------------------
# 3. config.yaml — modelo, idioma, micrófono
# ------------------------------------------------------------------
echo ""
echo "── 3. config.yaml ───────────────────────────────────"

if [ ! -f "$CONFIG" ]; then
    err "No existe $CONFIG — ejecuta primero: voxd --setup"
    exit 1
fi

# Idioma
if grep -q "^language: es" "$CONFIG"; then
    info "Idioma ya en 'es'. Sin cambios."
else
    sed -i 's/^language:.*/language: es/' "$CONFIG"
    ok "Idioma configurado: es"
fi

# Modelo large-v3-turbo
if grep -q "large-v3-turbo" "$CONFIG"; then
    info "Modelo large-v3-turbo ya configurado. Sin cambios."
else
    if [ -f "$MODEL_LARGE" ]; then
        sed -i "s|whisper_model_path:.*|whisper_model_path: $MODEL_LARGE|" "$CONFIG"
        ok "Modelo configurado: ggml-large-v3-turbo.bin"
    else
        err "Modelo no encontrado: $MODEL_LARGE"
        err "Descárgalo: wget 'https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large-v3-turbo.bin' -O $MODEL_LARGE"
    fi
fi

# whisper_binary
if grep -q "whisper_binary: $WHISPER_BIN" "$CONFIG"; then
    info "whisper_binary ya correcto. Sin cambios."
else
    if [ -f "$WHISPER_BIN" ]; then
        sed -i "s|whisper_binary:.*|whisper_binary: $WHISPER_BIN|" "$CONFIG"
        ok "whisper_binary configurado: $WHISPER_BIN"
    else
        err "whisper-cli no encontrado: $WHISPER_BIN"
        err "Recompila whisper.cpp con CUDA (ver voxd-instalacion.md, Paso B)"
    fi
fi

# Nivel de micrófono
if grep -q "mic_autoset_level: 0.6" "$CONFIG"; then
    info "Nivel de micrófono ya en 0.6. Sin cambios."
else
    sed -i 's/mic_autoset_level:.*/mic_autoset_level: 0.6/' "$CONFIG"
    ok "Nivel de micrófono configurado: 0.6"
fi

# ------------------------------------------------------------------
# 4. .bashrc — variables de entorno
# ------------------------------------------------------------------
echo ""
echo "── 4. Variables de entorno (.bashrc) ────────────────"

if grep -q "VOXD_WC_BIN" "$BASHRC"; then
    info "VOXD_WC_BIN ya en .bashrc. Sin cambios."
else
    echo "export VOXD_WC_BIN=$WHISPER_BIN" >> "$BASHRC"
    ok "VOXD_WC_BIN agregado a .bashrc"
fi

if grep -q "cuda-12.2" "$BASHRC"; then
    info "CUDA PATH ya en .bashrc. Sin cambios."
else
    echo 'export PATH=/usr/local/cuda-12.2/bin:$PATH' >> "$BASHRC"
    echo 'export LD_LIBRARY_PATH=/usr/local/cuda-12.2/targets/x86_64-linux/lib:$LD_LIBRARY_PATH' >> "$BASHRC"
    ok "CUDA 12.2 agregado a PATH en .bashrc"
fi

# ------------------------------------------------------------------
# 5. Verificación final
# ------------------------------------------------------------------
echo ""
echo "======================================================"
echo " Verificación final"
echo "======================================================"

ALL_OK=true

# whisper-cli existe y es ejecutable
[ -x "$WHISPER_BIN" ] && ok "whisper-cli: encontrado y ejecutable" || { err "whisper-cli: no encontrado o no ejecutable"; ALL_OK=false; }

# modelo existe
[ -f "$MODEL_LARGE" ] && ok "Modelo large-v3-turbo: encontrado ($(du -sh $MODEL_LARGE | cut -f1))" || { err "Modelo large-v3-turbo: no encontrado"; ALL_OK=false; }

# hilos en transcriber
grep -q '"-t", "8"' "$TRANSCRIBER" 2>/dev/null && ok "Parche 8 hilos: aplicado" || { err "Parche 8 hilos: NO aplicado"; ALL_OK=false; }

# prompt en transcriber
grep -q '"--prompt"' "$TRANSCRIBER" 2>/dev/null && ok "Prompt técnico: aplicado" || { err "Prompt técnico: NO aplicado"; ALL_OK=false; }

# idioma
grep -q "^language: es" "$CONFIG" 2>/dev/null && ok "Idioma: es" || { err "Idioma: no configurado"; ALL_OK=false; }

# modelo en config
grep -q "large-v3-turbo" "$CONFIG" 2>/dev/null && ok "Modelo en config: large-v3-turbo" || { err "Modelo en config: no apunta a large-v3-turbo"; ALL_OK=false; }

# mic level
grep -q "mic_autoset_level: 0.6" "$CONFIG" 2>/dev/null && ok "Mic level: 0.6" || { err "Mic level: no configurado"; ALL_OK=false; }

echo ""
if [ "$ALL_OK" = true ]; then
    echo -e "${GREEN}✓ Todas las optimizaciones están aplicadas.${RESET}"
    echo ""
    echo "  Para activar variables en la sesión actual:"
    echo "  source ~/.bashrc"
    echo ""
    echo "  Para probar voxd:"
    echo "  voxd   →  prompt 'r' + Enter → habla → Enter"
else
    echo -e "${RED}✗ Algunas optimizaciones fallan. Revisar errores arriba.${RESET}"
    echo "  Referencia completa: docs-dev/ga-cl-ia/voxd-instalacion.md"
    exit 1
fi
echo "======================================================"
