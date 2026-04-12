# Issues Resueltos — Sesión 2026-04-12
**Conversación:** `b5b0a269-ff39-4387-ad94-d5f2fead4c34`
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 1 — Auditoría y Blindaje de Estados de Contrato (Regla C07)

### Scope Funcional
Se detectó que el sistema permitía transiciones de estado ilógicas entre diferentes tipos de suspensión (**Temporal ↔ Administrativa**), lo que confundía a los operadores y ponía en riesgo la correcta aplicación de la **Amnistía C06**. Ahora, la UI bloquea preventivamente estas opciones y el servidor las rechaza, obligando a una "Regularización a Activo" como paso intermedio obligatorio.

### Scope Técnico
- **Enforcement UI**: Modificación de `views/contratos/ficha.php` para deshabilitar radio buttons de estados incompatibles según el estado actual.
- **Enforcement Servidor**: Validación en `includes/negocio/contratos.php` (función `cambiaestado`) para retornar error en saltos 2↔3.
- **Auditoría**: Los cambios de estado ahora documentan con mayor precisión si se aplicó o no la amnistía histórica basada en el estado de origen.

---

## Issue 2 — Escudo de Integridad de Ground Truth (Git Hooks)

### Scope Funcional
Se implementó un sistema de protección para evitar que los enlaces simbólicos (symlinks) del proyecto se conviertan accidentalmente en archivos reales en el repositorio local. Esto garantiza que Claude Code y Gemini siempre lean la misma "Fuente de Verdad" (ChatLedger).

### Scope Técnico
- **Git Hook (pre-commit)**: Instalado en repo `agua` y `agua_chatledger`.
- **Automatización**: Actualización de `install-hooks.sh` y `chatledger_validate.sh` para diagnosticar y ofrecer soluciones automáticas de reparación de symlinks.

---

## Runbook — Cambios en `.agents/`
- **Nueva Regla C07**: Formaliza la prohibición de saltos directos entre suspensiones.
- **Regla 08**: Reforzada con mención al script de validación obligatoria.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `includes/negocio/contratos.php` | `agua` | Logic Fix (Validation) |
| `views/contratos/ficha.php` | `agua` | UI Refactoring (Disabled logic) |
| `.agents/rules/02-reglas-negocio.md` | `agua_chatledger` | Runbook Update |
| `docs-dev/ga-cl-ia/install-hooks.sh` | `agua_chatledger` | Tool Enhancement |
| `docs-dev/ga-cl-ia/chatledger_validate.sh` | `agua_chatledger` | Validation Enhancement |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Bloqueo UI (2 ↔ 3) | ✅ EXITOSO |
| Rechazo Servidor (2 ↔ 3) | ✅ EXITOSO |
| Protección Estado 4 (Definitiva) | ✅ VERIFICADO |
| Integridad Symlinks | ✅ 0 ERRORES |

### Pruebas manuales pendientes
1. El equipo debe reiniciar sesiones para cargar los nuevos Git Hooks.
2. Probar un commit local para verificar que el "Escudo de Integridad" esté activo.

---
*Generado por Antigravity (Gemini) — 2026-04-12*
