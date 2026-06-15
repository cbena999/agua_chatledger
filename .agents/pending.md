# Pendientes Activos del Proyecto Restaurant VOSK Comandas

> **Protocolo**: Este archivo es la lista viva de tareas en vuelo.
> - Actualizar al **iniciar** sesión (verificar estados) y al **cerrar** sesión (registrar lo que quedó a medias).
> - Válido para Claude Code y Google Antigravity/Gemini por igual.
> - Un pendiente se elimina solo cuando está **verificado en BD/UI**, no cuando el agente cree que está listo.

---

## 🔴 PRIORIDAD ALTA

### P-01 🔲 Instalar y configurar Delight-PHP/Auth
**Estado**: Pendiente
**Descripción**: El motor de autenticación nativa Delight-PHP/Auth debe ser instalado y configurado en el proyecto. 
- Las tablas en la base de datos `vcd01` (`users`, `users_remembered`, `users_throttling`) ya fueron creadas exitosamente mediante el orquestador de setup.
- Queda pendiente realizar la integración de la librería a través de Composer y adaptar el código backend (micro-framework) para invocar su instanciación pasándole el objeto PDO.

---

## 🟡 PRIORIDAD MEDIA

---

## ✅ RESUELTOS RECIENTEMENTE (referencia)

| Fecha | Item | Detalle |
|---|---|---|
| 2026-06-14 | Creación BD y Orquestador | Se creó `setup.sh` conectando a MCP, creando esquemas transaccionales, de auth e índices. |
| 2026-06-14 | Estrategia PWA Offline | Se descargó Dexie.js y se crearon esquemas `db.js` y `sw.js` localmente. |

---

*Última actualización: 2026-06-14 — Limpieza de archivo legacy y setup base VOSK — Antigravity/Gemini*
