# Instalación y Configuración de Voxd en Ubuntu 22.04 (KDE Plasma 5.24.7)

**Fecha:** 2026-04-08/09  
**Sistema:** Ubuntu 22.04.5 LTS x86_64, KDE Plasma 5.24.7, sesión X11  
**Objetivo:** Dictado de voz en español México para uso en IDE (VS Code / Google Antigravity)

---

## Resultado final

Voxd funciona con:
- Modelo Whisper `large-v3-turbo` (1.6GB VRAM) — máxima precisión para español México
- Backend CUDA / GTX 1050 Ti — ~3s por grabación
- Hotkey global `Ctrl+J` — toggle grabar/transcribir desde cualquier ventana
- Autostart habilitado vía systemd usuario
- Texto transcrito se escribe automáticamente donde esté el cursor (simulación de teclado X11)

---

## Problema de partida

Ubuntu 22.04 **no está en la lista oficial de distros probadas** por voxd (el autor prueba en 24.04 y 25.04). Esto causó varios issues durante la instalación que se resolvieron manualmente.

---

## Paso 1 — Verificar entorno

```bash
# Confirmar sesión X11 (no Wayland)
echo $XDG_SESSION_TYPE   # → x11

# Versiones
python3 --version         # → 3.10.12
cmake --version           # → 3.22.1 (insuficiente, se actualiza después)
```

---

## Paso 2 — Instalar dependencias del sistema

```bash
sudo apt-get install -y xdotool xclip libportaudio2 portaudio19-dev python3-dev \
  ffmpeg curl xsel wl-clipboard python3-platformdirs python3-venv \
  python3-numpy python3-requests python3-yaml python3-psutil python3-tqdm \
  python3-pyqtgraph pavucontrol
```

> Nota: `alsa-plugins` no existe con ese nombre en Ubuntu 22.04 — se omite sin problema.

---

## Paso 3 — Actualizar cmake vía pip

Ubuntu 22.04 trae cmake 3.22.1 pero whisper.cpp moderno requiere ≥3.26.

```bash
pip3 install --user cmake --upgrade
# Instala cmake 4.3.1 en ~/.local/bin/ sin tocar el del sistema
```

---

## Paso 4 — Instalar PyQt6 vía pip

Ubuntu 22.04 no tiene `python3-pyqt6` completo en sus repos (solo el `.sip`).

```bash
pip3 install --user PyQt6 pyperclip
```

---

## Paso 5 — Descargar e instalar el .deb de voxd

```bash
# Descargar release v1.7.0
wget "https://github.com/jakovius/voxd/releases/download/v1.7.0/voxd_1.7.0-1_amd64.deb" \
  -O /tmp/voxd_1.7.0-1_amd64.deb

# Instalar ignorando dependencia python3-pyqt6 (la tenemos vía pip)
sudo dpkg -i --ignore-depends=python3-pyqt6 /tmp/voxd_1.7.0-1_amd64.deb
```

**Error esperado:** falta `python3-pyperclip` como paquete apt.

---

## Paso 6 — Resolver dependencia python3-pyperclip con paquete ficticio

```bash
sudo apt-get install -y equivs
cd /tmp

cat > python3-pyperclip.ctl << 'EOF'
Section: misc
Priority: optional
Standards-Version: 3.9.2
Package: python3-pyperclip
Version: 1.0
Description: Dummy package for pyperclip (installed via pip)
EOF

equivs-build python3-pyperclip.ctl
sudo dpkg -i python3-pyperclip_1.0_all.deb

# Reinstalar voxd
sudo dpkg -i --ignore-depends=python3-pyqt6 /tmp/voxd_1.7.0-1_amd64.deb
```

Salida esperada al finalizar:
```
Configurando voxd (1.7.0-1) ...
voxd installed. Each user should run: voxd --setup
[setup] Per-user setup complete.
```

---

## Paso 7 — Ejecutar setup de usuario

```bash
voxd --setup
```

> El warning sobre "pulse device" es falso positivo — el sistema usa PipeWire con capa de compatibilidad PulseAudio, que sí funciona.

---

## Paso 8 — Descargar modelo Whisper small multilingüe

El modelo por defecto (`ggml-base.en.bin`) es solo inglés. Se reemplaza por el modelo `small` multilingüe:

```bash
wget "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.bin" \
  -O ~/.local/share/voxd/models/ggml-small.bin
# ~466 MB
```

---

## Paso 9 — Compilar whisper-cli manualmente

El `.deb` no incluye el binario `whisper-cli` — voxd lo espera compilado. El setup no lo compiló automáticamente en Ubuntu 22.04.

```bash
cd /tmp
git clone https://github.com/ggerganov/whisper.cpp.git --depth=1
cd whisper.cpp
cmake -B build
cmake --build build --config Release -j$(nproc)
# Tarda ~3-5 minutos
```

Mover a ubicación permanente (evita pérdida al limpiar /tmp):

```bash
cp /tmp/whisper.cpp/build/bin/whisper-cli ~/.local/share/voxd/bin/whisper-cli
chmod +x ~/.local/share/voxd/bin/whisper-cli
```

---

## Paso 10 — Configurar idioma y modelo en config.yaml

Editar `~/.config/voxd/config.yaml`:

```yaml
language: es
whisper_model_path: /home/carlos/.local/share/voxd/models/ggml-small.bin
whisper_binary: /home/carlos/.local/share/voxd/bin/whisper-cli
```

También agregar variable de entorno permanente en `~/.bashrc`:

```bash
echo 'export VOXD_WC_BIN=/home/carlos/.local/share/voxd/bin/whisper-cli' >> ~/.bashrc
```

---

## Paso 11 — Verificar transcripción

```bash
# Prueba directa de whisper
/home/carlos/.local/share/voxd/bin/whisper-cli \
  -m ~/.local/share/voxd/models/ggml-small.bin \
  -f /ruta/a/audio.wav \
  -l es

# Prueba desde voxd (modo interactivo)
voxd
# En el prompt: escribe 'r' + Enter, habla, Enter para transcribir
```

---

## Paso 12 — Habilitar autostart

```bash
voxd --autostart true
# Crea: ~/.config/systemd/user/default.target.wants/voxd-tray.service
```

---

## Paso 13 — Configurar hotkey global en KDE Plasma

1. Crear script wrapper (evita problemas con bash inline en khotkeys):
```bash
cat > ~/.local/bin/voxd-trigger.sh << 'EOF'
#!/bin/bash
export VOXD_WC_BIN=/home/carlos/.local/share/voxd/bin/whisper-cli
export LD_LIBRARY_PATH=/usr/local/cuda-12.2/targets/x86_64-linux/lib:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda-12.2/bin:$PATH
/usr/bin/voxd --trigger-record
EOF
chmod +x ~/.local/bin/voxd-trigger.sh
```

2. Abrir **Configuración del Sistema → Accesos rápidos → Accesos rápidos personalizados**
3. Clic en **Editar → Nuevo → Acceso rápido global → Orden/URL**
4. Pestaña **Comentario:** `Voxd dictado`
5. Pestaña **Acción:** `/home/carlos/.local/bin/voxd-trigger.sh`
6. Pestaña **Disparador:** presionar `Ctrl+J`
7. Clic en **Aplicar**

> **Nota:** No usar `Meta/Super+Z` — KDE/KWin intercepta la tecla Meta antes de que llegue a khotkeys.

---

## Directorios críticos — NO borrar

| Ruta | Contenido | Borrable |
| :--- | :--- | :---: |
| `~/.local/share/voxd/bin/whisper-cli` | Binario whisper compilado estático | NO |
| `~/.local/share/voxd/models/ggml-large-v3-turbo.bin` | Modelo 1.6GB | NO |
| `~/.config/voxd/config.yaml` | Configuración voxd | NO |
| `~/.config/systemd/user/voxd-tray.service.d/env.conf` | Override systemd (CUDA + DISPLAY) | NO |
| `~/.local/bin/voxd-trigger.sh` | Script wrapper hotkey Ctrl+J | NO |
| `/opt/voxd/` | Instalación voxd + virtualenv Python | NO |
| `/usr/local/cuda-12.2/` | CUDA toolkit | NO |
| `~/whisper-cpp-src/` | Source whisper.cpp (solo para compilar) | SÍ |
| `/tmp/voxd/` | Audios temporales (se limpia al reiniciar) | Auto |

---

## Uso diario

```bash
# Arrancar voxd en background (si no está en autostart aún)
voxd --rh &
```

1. Haz clic donde quieres que aparezca el texto (campo de chat, editor, etc.)
2. Presiona `Ctrl+J` → suelta → habla en español
3. Presiona `Ctrl+J` → suelta → el texto se escribe automáticamente

---

## Optimización con CUDA (realizada post-instalación)

### Paso A — Instalar CUDA 12.2 toolkit via runfile

```bash
# Descargar (~4.1GB)
wget "https://developer.download.nvidia.com/compute/cuda/12.2.0/local_installers/cuda_12.2.0_535.54.03_linux.run" \
  -O ~/Downloads/cuda/cuda_12.2.0_linux.run

# Instalar solo toolkit, sin tocar el driver existente
sudo sh ~/Downloads/cuda/cuda_12.2.0_linux.run --silent --toolkit --no-opengl-libs

# Registrar librerías en el sistema
echo "/usr/local/cuda-12.2/targets/x86_64-linux/lib" | sudo tee /etc/ld.so.conf.d/cuda-12.2.conf
sudo ldconfig

# Agregar a ~/.bashrc
echo 'export PATH=/usr/local/cuda-12.2/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-12.2/targets/x86_64-linux/lib:$LD_LIBRARY_PATH' >> ~/.bashrc
```

> Nota: El repo apt de NVIDIA (cuda-keyring) causó conflictos con voxd en Ubuntu 22.04. Usar runfile es más seguro.

### Paso B — Recompilar whisper.cpp con CUDA

```bash
cd /tmp/whisper.cpp
cmake -B build -DGGML_CUDA=ON -DGGML_BLAS=OFF -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_CUDA_COMPILER=/usr/local/cuda/bin/nvcc
cmake --build build --config Release -j$(nproc)
# ~15-20 minutos

# Copiar binario al lugar permanente
cp /tmp/whisper.cpp/build/bin/whisper-cli ~/.local/share/voxd/bin/whisper-cli
```

### Paso C — Descargar modelo large-v3-turbo

```bash
wget "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large-v3-turbo.bin" \
  -O ~/.local/share/voxd/models/ggml-large-v3-turbo.bin
# ~1.6GB
```

### Paso D — Actualizar config.yaml

```yaml
whisper_model_path: /home/carlos/.local/share/voxd/models/ggml-large-v3-turbo.bin
```

### Benchmark comparativo

| Modelo | Backend | Tiempo total | Precisión español |
|---|---|---|---|
| small | CPU puro | ~5.5s | Buena |
| small | GPU CUDA | ~16s | Buena (overhead GPU) |
| **large-v3-turbo** | **GPU CUDA** | **~3s** | **Máxima** |

---

## Optimizaciones adicionales aplicadas

### 1 — Aumentar hilos CPU a 8 en transcriber.py

Voxd por defecto usa 4 hilos. Se parcheó `/opt/voxd/src/voxd/core/transcriber.py` para usar 8:

```bash
sudo sed -i 's|"-otxt"  # <-- THIS|"-t", "8",\n            "-otxt"  # <-- THIS|' \
  /opt/voxd/src/voxd/core/transcriber.py
```

> Nota: Con GPU CUDA el encode ya está maximizado en GPU — el impacto de los hilos es mínimo (~0.1s) pero no perjudica.

### 2 — Prompt de contexto técnico del proyecto

Se agregó `--prompt` al comando de whisper-cli para mejorar precisión en vocabulario técnico del proyecto Agua:

```bash
sudo sed -i 's|"-t", "8",|"-t", "8",\n            "--prompt", "Programación web PHP MySQL MariaDB JavaScript AJAX jQuery HTML CSS array foreach función variable clase método base de datos consulta tabla registro usuario contrato factura cargo pago caja reporte asamblea domicilio toma agua potable",|' \
  /opt/voxd/src/voxd/core/transcriber.py
```

Prompt actual incluye: `PHP MySQL MariaDB JavaScript AJAX jQuery HTML CSS array foreach función variable clase método base de datos consulta tabla registro usuario contrato factura cargo pago caja reporte asamblea domicilio toma agua potable`

### 3 — Calibración de micrófono

Nivel subido de 0.45 a 0.60 en `~/.config/voxd/config.yaml`:

```yaml
mic_autoset_level: 0.6
```

### 4 — Modo FLUX descartado

Probado pero descartado — el ambiente de trabajo tiene ruido tenue constante que genera falsos positivos. El hotkey `Super+Z` es más apropiado.

### 5 — Blindaje contra apt upgrades futuros

Cada `sudo apt upgrade` en Ubuntu 22.04 intenta eliminar voxd porque `python3-pyqt6` no está disponible en los repos oficiales. Solución en 3 capas:

**Capa 1 — Poner voxd en hold:**
```bash
sudo apt-mark hold voxd
```

**Capa 2 — Paquetes ficticios con versión alta (nunca superada por apt):**
```bash
cd /tmp
for PKG in python3-pyperclip python3-pyqt6; do
cat > ${PKG}.ctl << EOF
Section: misc
Priority: optional
Standards-Version: 3.9.2
Package: ${PKG}
Version: 99.0
Description: Dummy package (installed via pip) — pinned high to prevent apt conflicts
EOF
equivs-build ${PKG}.ctl && sudo dpkg -i ${PKG}_99.0_all.deb
done
```

**Capa 3 — Verificar antes de cada upgrade:**
```bash
bash docs-dev/ga-cl-ia/voxd-restore-optimizations.sh
# Si todo verde → sudo apt upgrade -y es seguro
```

---

## Notas importantes

| Tema | Detalle |
|---|---|
| **Wayland** | No se usa — sesión X11. `xdotool` maneja la simulación de teclado (no se necesita `ydotool`) |
| **Modelo activo** | `ggml-large-v3-turbo` (1.6GB VRAM) — máxima precisión + GPU justificada |
| **whisper-cli** | Compilado con CUDA. Binario permanente en `~/.local/share/voxd/bin/` |
| **Ubuntu 22.04** | No soportado oficialmente por voxd — los workarounds de este doc son necesarios |
| **PyQt6** | Instalado vía pip (`~/.local/lib`), no vía apt |
| **cmake** | Versión del sistema (3.22) insuficiente — versión pip (4.3.1) usada para compilar whisper.cpp |
| **CUDA toolkit** | v12.2 instalado via runfile — NO usar apt (conflictos con voxd en 22.04) |
| **OpenBLAS** | Probado — resultó más lento que CPU puro para whisper. No usar. |
| **Hilos CPU** | Forzado a 8 en `transcriber.py` — con GPU el impacto es mínimo pero no perjudica |
| **Prompt técnico** | Agregado en `transcriber.py` — mejora precisión de vocabulario del proyecto |
| **Mic level** | Subido a 0.60 en `config.yaml` (default 0.45) |
| **Modo FLUX** | Descartado — ruido ambiente constante genera falsos positivos |
| **Modelos alternativos** | `large-v3-turbo` es el óptimo para GTX 1050 Ti (4GB VRAM). `large-v3` completo es más lento (~5-6s). Mejora real solo con GPU 8GB+ VRAM |
| **Blindaje apt** | `apt-mark hold voxd` + paquetes ficticios `python3-pyqt6` y `python3-pyperclip` en v99.0 |
| **Script de restauración** | `bash docs-dev/ga-cl-ia/voxd-restore-optimizations.sh` — verifica 10 puntos de salud de Voxd |
| **Hotkey `Ctrl+J`** | Combinación final funcional — `Meta/Super+Z` descartada (KWin la intercepta antes de khotkeys) |
| **Script wrapper** | `~/.local/bin/voxd-trigger.sh` — reemplaza `bash -c 'voxd --trigger-record'` inline (más robusto) |
| **whisper-cli estático** | Recompilado con `BUILD_SHARED_LIBS=OFF` — elimina dependencia de `libwhisper.so` / `libggml.so` |
| **libwhisper.so.1 faltante** | El binario original necesitaba `.so` que no existían en el sistema. Solución: compilar estático |
| **Hotkey no funciona en modo tray** | Causas: (1) systemd no hereda env de `.bashrc`, (2) X11 no disponible al arrancar, (3) Meta+Z interceptada por KWin |

---

## Issues resueltos — Hotkey y transcripción en modo tray (autostart)

### Causa 1 — libwhisper.so.1 faltante

**Síntoma:** Tray activo (ícono rojo al grabar) pero sin texto — grabación silenciosa.

**Causa:** `whisper-cli` compilado con linking dinámico requería `libwhisper.so.1` y `libggml.so.0` que no existían en el sistema.

**Solución:** Recompilar whisper.cpp con linking estático:
```bash
cd ~ && git clone --depth=1 https://github.com/ggerganov/whisper.cpp.git whisper-cpp-src
cd whisper-cpp-src
~/.local/bin/cmake -B build \
  -DCMAKE_BUILD_TYPE=Release \
  -DGGML_CUDA=ON \
  -DCMAKE_CUDA_COMPILER=/usr/local/cuda-12.2/bin/nvcc \
  -DBUILD_SHARED_LIBS=OFF
~/.local/bin/cmake --build build --target whisper-cli -j$(nproc)
cp build/bin/whisper-cli ~/.local/share/voxd/bin/whisper-cli
```
Verificar: `ldd ~/.local/share/voxd/bin/whisper-cli` — no debe mostrar "not found".

---

### Causa 2 — systemd no hereda env de .bashrc

**Síntoma:** `VOXD_WC_BIN` y `LD_LIBRARY_PATH` de CUDA no disponibles en el servicio.

**Solución — override del servicio:**
```bash
mkdir -p ~/.config/systemd/user/voxd-tray.service.d
cat > ~/.config/systemd/user/voxd-tray.service.d/env.conf << 'EOF'
[Service]
Environment=VOXD_WC_BIN=/home/carlos/.local/share/voxd/bin/whisper-cli
Environment=LD_LIBRARY_PATH=/usr/local/cuda-12.2/targets/x86_64-linux/lib
Environment=PATH=/usr/local/cuda-12.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
Environment=DISPLAY=:0
Environment=XAUTHORITY=/home/carlos/.Xauthority
ExecStartPre=/bin/sleep 5
EOF
systemctl --user daemon-reload && systemctl --user restart voxd-tray.service
```

El `sleep 5` evita que el servicio arranque antes de que X11 esté disponible (causa crash en el primer intento).

---

### Causa 3 — Meta/Super+Z interceptada por KWin

**Síntoma:** Hotkey `Meta+Z` registrado en khotkeys pero no dispara nada.

**Causa:** KDE/KWin consume la tecla Meta antes de que llegue a khotkeys.

**Solución:** Usar `Ctrl+J` en lugar de `Meta/Super+Z`. Configurar en **Accesos rápidos personalizados** con acción apuntando a `~/.local/bin/voxd-trigger.sh` (no bash inline).

**Verificar override activo:**
```bash
systemctl --user show voxd-tray.service | grep "^Environment"
# Debe mostrar VOXD_WC_BIN, LD_LIBRARY_PATH, DISPLAY
```
