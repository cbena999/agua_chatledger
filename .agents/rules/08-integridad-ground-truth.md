# Regla 08: Integridad del Ground Truth (agua_chatledger)

Esta regla protege los assets de configuración compartidos entre Claude Code y Google Antigravity/Gemini.
**Leer antes de cualquier refactoring, cleanup o reorganización de archivos en agua_chatledger.**

---

## Mapa de assets — rol de cada archivo

| Archivo | Rol | Prohibido |
|---------|-----|-----------|
| `.mcp.json` | Config MCP activa — leída automáticamente por Claude y Gemini al iniciar | Vaciar, eliminar, cambiar `docker` por `npx` directo |
| `.agents/mcp_config.json` | Fuente de referencia — debe ser idéntico a `.mcp.json` | Usarlo como reemplazo de `.mcp.json` |
| `.clauderules` | Directiva de entrada para Claude — máx ~25 líneas | Agregar notas, JSON, claves, URLs |
| `CLAUDE.md` | Entry point Claude — índice hacia `.agents/` | Duplicar reglas aquí en lugar de en `.agents/` |
| `GEMINI.md` | Entry point Gemini — índice hacia `.agents/` | Duplicar reglas aquí en lugar de en `.agents/` |
| `.agents/rules/` | Verdades permanentes — se leen en cada sesión | Eliminar sin migrar el conocimiento |
| `docs-dev/ga-cl-ia/entrypoint-patch.sh` | Patch al contenedor Docker para soporte puerto ≠ 3306 | Eliminar — sin él `bdawahost-c` falla con ETIMEDOUT |
| `docs-dev/ga-cl-ia/docker-compose.yml` | Define contenedor `context7-mcp-mysql` con el patch | Eliminar o cambiar imagen sin validar |

---

## Arquitectura MCP — NO modificar sin entender

Los tres MCPs usan **un solo contenedor Docker** con patches aplicados al arrancar:

```
Claude/Gemini → .mcp.json → docker exec -i context7-mcp-mysql npx ... mysql://host:PORT/db
                                    ↓
                          entrypoint-patch.sh (aplicado al arrancar)
                          — permite puertos no estándar (Host C: 7002)
```

**Si se reemplaza `docker exec` por `npx` directo:** el patch no aplica → `bdawahost-c` falla con ETIMEDOUT.
**Si se vacía `.mcp.json`:** ambos agentes pierden todos los MCPs sin aviso de error claro.
**Si se elimina `bdawahost-c` de `.mcp.json`:** se pierde acceso a Host C (MariaDB 7002).

---

## Reglas de modificación

### `.mcp.json` y `mcp_config.json`
- Siempre deben ser **idénticos**
- Si se edita uno, actualizar el otro en el mismo commit
- Estructura obligatoria: `docker exec -i context7-mcp-mysql npx -y @f4ww4z/mcp-mysql-server mysql://...`
- Deben contener los 3 hosts: `bdawahost-a`, `bdawahost-b`, `bdawahost-c`

### Symlinks en repo `agua`
- Los 7 symlinks son gestionados por `chatledger_sync_ga_lnks.sh`
- No recrear manualmente sin usar el script
- No convertir symlinks en archivos reales (rompe la sincronización entre ramas)

### `.clauderules`
- Solo directivas de comportamiento para Claude (< 30 líneas)
- Notas, referencias, claves → `docs-dev/ga-cl-ia/claude-ga-leeme.txt`

### Antes de cualquier "cleanup" o refactoring
1. Ejecutar `bash docs-dev/ga-cl-ia/chatledger_validate.sh`
2. Si algo falla → corregir antes de continuar
3. Nunca eliminar un archivo por considerarlo "redundante" sin verificar su rol en esta regla

---

## Historial de incidentes

| Fecha | Incidente | Causa | Fix |
|-------|-----------|-------|-----|
| 2026-04-08 | `.mcp.json` vaciado — MCPs rotos en ambos agentes | GA eliminó contenido por considerarlo redundante con `mcp_config.json` | Restaurar contenido Docker + 3 hosts |
| 2026-04-09 | `settings.json` desincronizado — usaba `npx` directo sin Docker | Restauración incorrecta desde fuente equivocada | Sincronizar con `mcp_config.json` |

---

## Validación rápida (correr antes de commitear)

```bash
bash /opt/lampp/htdocs/agua/docs-dev/ga-cl-ia/chatledger_validate.sh
```

Si el script no existe o falla: **no commitear** hasta resolver.
