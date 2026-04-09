# Regla 07: Control de Versiones (Git/GitHub)

Esta regla define el flujo de trabajo en el repositorio oficial de **Agua**.
Válida para **Claude Code** y **Google Antigravity/Gemini** por igual.

---

## Repositorio Oficial

- **URL**: `https://github.com/cbena999/aguaclmhj.git`
- **Usuario GH**: `cbena999`

---

## Repositorio de Historial (ChatLedger)

Almacena historial de conversaciones y logs técnicos de forma independiente al código fuente.

- **Ruta Local**: `/home/carlos/GitHub/agua_chatledger/`
- **URL Remoto**: `https://github.com/cbena999/agua_chatledger.git`
- **Simlink en App**: `.chatledger` → `/home/carlos/GitHub/agua_chatledger/`
- **Rama Git**: `master`

```bash
# Subir cambios al ChatLedger (cuando se indique):
cd /home/carlos/GitHub/agua_chatledger
git add -A
git commit -m "Sync: <descripción breve>"
git push origin master
```

---

## Gestión de Ramas

| Rama | Propósito | Host |
| :--- | :--- | :--- |
| `main` | Producción estable — Host A (Linux XAMPP MySQL 5.6) | A |
| `feature/upgrade-v2-win-xampp` | Migración tecnológica a XAMPP 7.4 / Windows 10 | C |

---

## Archivos y Directorios Solo-Main

Los siguientes paths viven **únicamente en `main`** como fuente de verdad.
**No deben editarse desde `feature/upgrade-v2-win-xampp`.**

**Contexto IA (meta archivos):**
- `CLAUDE.md`
- `GEMINI.md`
- `.clauderules`
- `.agents/rules/`
- `.agents/skills/`
- `.agents/workflows/`
- `.agents/README.md`

**Documentación y notas:**
- `docs-dev/ga-cl-ia/`
- `docs-dev/migration-aguav2/host-c-setup/manual/`

> **Excepción — MCP config:** `.agents/mcp_config.json` y `.mcp.json` existen en **ambas ramas**.
> `main` es la fuente de verdad. Al modificarlos, sincronizar a feature con:
> ```bash
> git checkout feature/upgrade-v2-win-xampp
> git checkout main -- .agents/mcp_config.json .mcp.json
> git commit -m "sync: mcp config desde main"
> ```

---

## Procedimiento Obligatorio al Cambiar de Rama

> Aplica para **cualquier dirección**: `main → feature` o `feature → main`.
> Claude Code y Gemini deben seguir estos pasos antes de ejecutar `git checkout`.

### Paso 0 — Verificar y migrar untracked en docs-dev/ga-cl-ia/

Antes de cualquier cambio de rama, verificar si hay archivos sin seguimiento en `docs-dev/ga-cl-ia/`:

```bash
git ls-files --others --exclude-standard docs-dev/ga-cl-ia/
```

**Si hay archivos untracked:**
1. Moverlos al chatledger (fuente de verdad real):
```bash
cp docs-dev/ga-cl-ia/<archivo> /home/carlos/GitHub/agua_chatledger/docs-dev/ga-cl-ia/
```
2. Commitear en chatledger:
```bash
cd /home/carlos/GitHub/agua_chatledger
git add docs-dev/ga-cl-ia/
git commit -m "docs(ga-cl-ia): migrar <archivo> desde repo principal"
cd /opt/lampp/htdocs/agua
```

> Nota: `docs-dev/ga-cl-ia/` es un **symlink** a `agua_chatledger/docs-dev/ga-cl-ia/` — cualquier archivo creado ahí ya va automáticamente al chatledger. Este paso aplica solo si por alguna razón el symlink fue reemplazado por un directorio real.

### Paso 1 — Detectar cambios en paths solo-main

```bash
git status -- \
  CLAUDE.md GEMINI.md .clauderules \
  .agents/rules/ .agents/skills/ .agents/workflows/ .agents/README.md \
  docs-dev/ga-cl-ia/ \
  docs-dev/migration-aguav2/host-c-setup/manual/
```

### Paso 2 — Según resultado:

**A) Si NO hay cambios** → cambiar de rama directamente.

**B) Si HAY cambios y la rama actual es `main`** → hacer commit y push en `main` antes de cambiar.

**C) Si HAY cambios y la rama actual es `feature/upgrade-v2-win-xampp`** →
usar stash para no contaminar la rama feature con archivos solo-main:

```bash
# 1. Guardar en stash solo los archivos solo-main modificados
git stash push -m "solo-main: <descripcion>" -- \
  CLAUDE.md GEMINI.md .clauderules \
  .agents/rules/ .agents/skills/ .agents/workflows/ .agents/README.md \
  "docs-dev/ga-cl-ia/" \
  "docs-dev/migration-aguav2/host-c-setup/manual/"

# 2. Cambiar a main
git checkout main

# 3. Aplicar el stash
git stash pop
```

### Paso 3 — Resolver conflictos al hacer `stash pop`

Si `git stash pop` genera conflictos en archivos solo-main:
- **Conservar siempre la versión del stash** (es la más reciente).
- Eliminar los marcadores de conflicto (`<<<<<<<`, `=======`, `>>>>>>>`).
- Verificar que no queden marcadores: `grep -n "^<<<<<<\|^>>>>>>>" <archivo>`
- Hacer commit y push en `main`.

```bash
git add <archivos-resueltos>
git commit -m "docs(<path>): actualizar <descripción> — resuelve conflicto stash→main"
git push origin main
```

---

## Sincronizar Meta Archivos de main → feature

Cuando se actualicen archivos solo-main en `main` y se necesite que `feature` los tenga:

```bash
git checkout feature/upgrade-v2-win-xampp
git checkout main -- \
  CLAUDE.md GEMINI.md .clauderules \
  .agents/rules/ .agents/skills/ .agents/workflows/ .agents/README.md
git commit -m "sync: meta archivos IA desde main"
```

---

## Artifacts de Sync — Nunca Commitear

Los directorios `work/` y `backups/` de los pipelines de sync son generados automáticamente. Están en `.gitignore`.

| Path ignorado | Origen |
| :--- | :--- |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/*.sql` | Dumps sync B→A |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/conteos_*.txt` | Logs de conteo B→A |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/backups/*.sql.gz` | Backups automáticos Host A |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/work/*.sql` | Dumps sync A→C |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/work/conteos_*.txt` | Logs de conteo A→C |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/backups/*.sql.gz` | Backups automáticos Host C |

Si aparecen como M/D/? en `git status`, descartarlos con:

```bash
git checkout -- docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/
git checkout -- docs-dev/migration-aguav2/sync_hosta_to_hostc/work/
```

---

## Notas para Agentes IA (Claude Code y Gemini)

- **Commits**: descripción clara y técnica del cambio. Formato: `tipo(scope): descripción`.
- **Pushes**: permitidos bajo el usuario `cbena999` para consolidar tareas de la sesión.
- **Sync ChatLedger**: cuando se indique, sincronizar en `/home/carlos/GitHub/agua_chatledger/` (rama `master`).
- **Conflictos**: resolver antes de proponer un merge; no usar `--no-verify` ni `--force` sin autorización explícita del usuario.
- **Scope de autorización**: una aprobación de acción (ej. `git push`) no autoriza esa acción en todos los contextos futuros.

---

**Última actualización:** 2026-04-08
