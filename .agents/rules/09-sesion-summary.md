# Regla 09: Documentación de Sesión — Resumen de Issues Resueltos

Esta regla define el protocolo para generar y persistir el asset de cierre de cada sesión donde se haya implementado y **verificado** funcionalidad.

Válida para **Claude Code** y **Google Antigravity/Gemini** por igual.

---

## 📋 Protocolo: "Verificación = Aprobación implícita + Commit"

### Cuándo aplica
Al finalizar una sesión donde se implementaron cambios **Y** el usuario los ha verificado (explícita o implícitamente con expresiones como "OK", "funciona", "listo", "dale", "sí", "correcto", etc.).

### Flujo obligatorio

```
1. Agente implementa y presenta resumen de cambios al usuario
2. Agente pregunta: "¿Verificaste el resultado? Si es OK, genero el resumen y hago el commit."
3a. Usuario confirma → Agente genera el MD + hace commit + push (ver §Formato)
3b. Usuario reporta problema → Agente corrige PRIMERO, sin documentar aún
3c. Usuario dice "no subas aún" → Agente genera MD localmente, espera sin commitear
```

> [!IMPORTANT]
> La verificación del usuario **ES** la aprobación. No se pide una segunda confirmación
> para el commit después de que el usuario confirmó. Hacerlo genera fatiga innecesaria.

### Excepción
Si el usuario dice explícitamente: "solo verifica / no subas todavía / espera" → el agente
genera el MD como draft (visible en chat como artifact), pero **no** ejecuta el commit.

---

## 📄 Formato del Resumen

**Nombre de archivo:**
```
Issues_Resueltos_<Tema>_<conversation-id-short>.md
```
Donde `<conversation-id-short>` son los primeros 8 caracteres del conversation ID.

**Repositorio destino:** `agua_chatledger` (rama `master`)

**Estructura del archivo:**

```markdown
# Issues Resueltos — Sesión YYYY-MM-DD
**Conversación:** `<conversation-id>`
**Rama:** `<rama-de-código>`

---

## Issue N — <Nombre corto del issue>

### Scope Funcional
[Qué hacía el sistema antes / qué hace ahora / impacto para el usuario/cajero]

### Scope Técnico
[Archivos modificados, funciones nuevas/editadas, queries SQL clave, refs a reglas]

---

## Runbook — Cambios en `.agents/`
[Si aplica: nuevas reglas, reglas modificadas, renumerciones]

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|

---

## Verificación

| Check | Resultado |
|:---|:---:|

### Pruebas manuales pendientes
[Lista de pasos para validar en Host A / Host C]

---
*Generado por <Agente> — YYYY-MM-DD*
```

---

## 🗂️ Commit Protocol

### Repo `agua` (código PHP/JS/SQL)
```bash
git add <archivos-modificados>
git commit -m "feat|fix|refactor(<scope>): <descripción técnica concisa>

- detalle 1
- detalle 2"
git push origin <rama>
```

### Repo `agua_chatledger` (Runbook + Issues MD)
```bash
# Validar integridad primero (OBLIGATORIO)
bash docs-dev/ga-cl-ia/chatledger_validate.sh

git add .agents/rules/<nuevas-reglas>.md
git add Issues_Resueltos_<...>.md
git commit -m "docs(<scope>): <descripción>

- Nuevas reglas: <IDs>
- Issues_Resueltos_<...>.md generado"
git push origin master
```

> [!WARNING]
> **Siempre ejecutar `chatledger_validate.sh` antes del commit en `agua_chatledger`.**
> Si el script reporta errores → no commitear hasta resolverlos.
> Ver Regla 08 para detalle de integridad.

---

## 🔍 Criterios de calidad del resumen

Un buen resumen debe permitir que:
1. **Cualquier agente (Claude o Gemini)** pueda entender qué cambió sin leer el diff completo.
2. **El usuario** pueda usarlo como bitácora de auditoría para el comité o tesorería.
3. **Un desarrollador futuro** pueda replicar o revertir el cambio con la información del MD.

### No incluir en el MD
- Conversación completa o transcripción de chat
- Código PHP completo (solo snippets de la función/query nuclear)
- Detalles de depuración intermedios que no aportaron al resultado final

---

## 📌 Notas para Agentes IA

- **Claude Code:** Se espera que sigas este protocolo al cerrar una sesión de implementación verificada. Si el usuario no pregunta explícitamente, puedes proponer el cierre con: *"¿Listo para documentar y subir?"*
- **Antigravity/Gemini:** Ídem. El conversation ID está disponible en el contexto de sistema.
- **Ambos:** Si hay cambios en `.agents/rules/` pendientes de esta sesión, siempre incluirlos en el mismo commit del `agua_chatledger`.

---
**Última actualización:** 2026-04-10
