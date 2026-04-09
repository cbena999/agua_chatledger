# Regla 07: Control de Versiones (Git/GitHub)

Esta regla define el flujo de trabajo en el repositorio oficial de **Agua**.

---

## 🐙 Repositorio Oficial
- **URL**: `https://github.com/cbena999/aguaclmhj.git`
- **Usuario GH**: `cbena999`

---

## 🕰️ Repositorio de Historial (ChatLedger)
Este repositorio almacena el historial de conversaciones y logs técnicos de forma independiente al código fuente.
- **Ruta Local**: `/home/carlos/GitHub/agua_chatledger/`
- **URL Remoto**: `https://github.com/cbena999/agua_chatledger.git`
- **Simlink en App**: `.chatledger` -> `/home/carlos/GitHub/agua_chatledger/`
- **Rama Git**: `master`

### Comandos para subir cambios (cuando se indique)
```bash
cd /home/carlos/GitHub/agua_chatledger
git add -A
git commit -m "Sync: <descripción breve>"
git push origin master
```

---

## 📁 Archivos y Dirs con Fuente de Verdad en `agua_chatledger`

Para evitar conflictos entre las ramas `main` y `feature/upgrade-v2-win-xampp`, la fuente de verdad de la documentación, reglas de las IAs y configuración de Agentes se ha mudado de forma **absoluta** al repositorio de historial: `/home/carlos/GitHub/agua_chatledger/`.

El repositorio principal (`aguaclmhj.git`) **NO debe contener versiones reales de estos archivos**, sino **enlaces simbólicos (symlinks)** que apunten al `.chatledger/`.

**Meta Archivos y Reglas (ahora en `agua_chatledger`):**
- `CLAUDE.md`
- `GEMINI.md`
- `.clauderules`
- `.agents/rules/`
- `.agents/skills/`
- `.agents/workflows/`
- `.agents/README.md`
- `.agents/mcp_config.json`

### Reglas de Edición para Gemini/Claude
Cualquier modificación a las reglas de negocio, skills, prompts o flujos de trabajo **debe realizarse directamente sobre el symlink** (que afectará al archivo físico en `/home/carlos/GitHub/agua_chatledger/`) o directamente yendo a esa ruta.

Una vez editadas las reglas, se debe realizar un `commit` y `push` **exclusivamente dentro de `/home/carlos/GitHub/agua_chatledger`**. 

> ⚠️ **NO SE DEBEN HACER COMMITS de `CLAUDE.md`, `.agents/`, etc., dentro del repositorio principal (`agua`)**. Los symlinks solo se crean una vez y ya forman parte del versionado.

**Documentación y notas adicionales (también migran su fuente de verdad a la rama principal/master o a symlinks similares):**
- `docs-dev/ga-cl-ia/`
- `docs-dev/migration-aguav2/host-c-setup/manual/`

### Artifacts de sync — nunca commitear

Los directorios `work/` y `backups/` de los pipelines de sync son **generados automáticamente** en cada ejecución de `run_sync.sh`. Están en `.gitignore` y excluidos del índice git:

| Path ignorado | Origen |
|---------------|--------|
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/*.sql` | Dumps sync B→A |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/conteos_*.txt` | Logs de conteo B→A |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/backups/*.sql.gz` | Backups automáticos Host A |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/work/*.sql` | Dumps sync A→C |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/work/conteos_*.txt` | Logs de conteo A→C |
| `docs-dev/migration-aguav2/sync_hosta_to_hostc/backups/*.sql.gz` | Backups automáticos Host C |

Si por alguna razón aparecen como M/D/? en `git status`, descartarlos con:
```bash
git checkout -- docs-dev/migration-aguav2/syncawa_hostb_to_hosta/work/
git checkout -- docs-dev/migration-aguav2/sync_hosta_to_hostc/work/
```

---

## 🌿 Gestión de Ramas
El flujo de trabajo se divide en dos líneas paralelas de desarrollo:
- **`main`**: Rama estable del ambiente legado y desarrollo de nuevos features en Host A. Corresponde al código que se localiza en `/opt/lampp/htdocs/agua`.
- **`feature/upgrade-v2-win-xampp`**: Rama activa para la migración tecnológica a XAMPP 7.4/Windows 10. Representa el Stack Objetivo en el **Host C**.

---

## 💡 Notas para Gemini (Git Ops)
- **Commits**: Mantén una descripción clara y técnica del cambio.
- **Pushes**: Se permite el envío de cambios (`pushes`) bajo el usuario `cbena999` para consolidar las tareas realizadas durante la sesión.
- **ChatLedger Sync**: Cuando se indique, sincronizar los cambios del historial en `/home/carlos/GitHub/agua_chatledger/` realizando `git add`, `git commit` y `git push` en dicho directorio (rama `master`).
- **Sync**: Asegurar que las ramas no tengan conflictos estructurales mayores antes de proponer un merge.

---
**Nota para Gemini**: Cualquier cambio realizado debe ser versionado en la rama correspondiente (`main`, `feature/upgrade-v2-win-xampp` o `master` para ChatLedger).

