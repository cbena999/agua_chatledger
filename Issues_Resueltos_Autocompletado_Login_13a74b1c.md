# Issues Resueltos — Sesión 2026-05-22
**Conversación:** `13a74b1c-4f0e-47a5-a1e1-389ca3638e08` (Seguimiento)
**Rama:** `feature/upgrade-v2-win-xampp`

---

## Issue 5 — Desactivación de Autocompletado en Formulario de Login

### Scope Funcional
Para cumplir con los requerimientos de higiene y seguridad de la aplicación, el formulario de inicio de sesión de la webapp no debe sugerir, recordar, ni autocompletar nombres de usuario o contraseñas anteriormente introducidos. Esto evita que terceros utilicen credenciales guardadas en equipos compartidos.
Aunque la función `preparalogin()` en JavaScript limpia los campos mediante `val("")`, los navegadores modernos (Chrome, Firefox, Edge, Safari) realizan el autocompletado de manera diferida tras el evento de carga. Para mitigar esto de raíz, se implementó el bloqueo declarativo utilizando los atributos nativos de HTML.

### Scope Técnico
- **Archivos Modificados:**
  1. `login/index.php`
- **Modificaciones:**
  - Se agregó el atributo `autocomplete="off"` a la etiqueta del formulario: `<form id="login" method="post" name="login" style="float:left" autocomplete="off">`.
  - Se agregó el atributo `autocomplete="off"` al input del nombre de usuario: `<input type="text" name="usuariologin" id="usuariologin" autocomplete="off">`.
  - Se agregó el atributo `autocomplete="new-password"` al input del password: `<input type="password" name="passwordlogin" id="passwordlogin" autocomplete="new-password">`.
  - *Nota*: Los navegadores ignoran comúnmente `off` en campos de tipo password, pero al declarar `new-password`, el navegador entiende que es un campo de creación de contraseña y no ofrece autocompletar credenciales guardadas para ese dominio.

---

## Runbook — Cambios en `.agents/`
- Se actualizó `.agents/pending.md` registrando la tarea de autocompletado de login como resuelta.
- Se actualizó `GEMINI.md` añadiendo el registro de la sesión del 2026-05-22.

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|
| `login/index.php` | `agua` | Modificado |
| `.agents/pending.md` | `agua_chatledger` | Modificado |
| `GEMINI.md` | `agua_chatledger` | Modificado |

---

## Verificación

| Check | Resultado |
|:---|:---:|
| Sintaxis de `login/index.php` (Lint test) | ✅ Exitoso (`php -l` limpio sin errores) |
| Integridad del Ground Truth / Runbook | ✅ Exitoso (`chatledger_validate.sh` sin errores) |

---
*Generado por Antigravity — 2026-05-22*
