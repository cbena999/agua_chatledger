# Pendientes Activos del Proyecto Restaurant VOSK Comandas

> **Protocolo**: Este archivo es la lista viva de tareas en vuelo.
> - Actualizar al **iniciar** sesión (verificar estados) y al **cerrar** sesión (registrar lo que quedó a medias).
> - Válido para Claude Code y Google Antigravity/Gemini por igual.
> - Un pendiente se elimina solo cuando está **verificado en BD/UI**, no cuando el agente cree que está listo.

---

## 🔴 PRIORIDAD ALTA
(Ninguno - Todos los componentes clave del MVP y la integración de seguridad han sido estabilizados y validados).

---

## 🟡 PRIORIDAD MEDIA
### P-02 🔲 Módulos de Caja y Administración (Fase 5/6)
**Estado**: Pendiente
**Descripción**: Desarrollo de la UI y endpoints reales para el cierre de caja (Corte X y Corte Z), reportes analíticos de ventas por periodo, y el registro de horas del personal (Reloj Checador).

---

## ✅ RESUELTOS RECIENTEMENTE (referencia)

| Fecha | Item | Detalle |
|---|---|---|
| 2026-07-05 | Alineación Fonética y Catálogo | Refactorización de seed data (IDs explícitos, Taco tripa ID 14, Refresco ID 25), corrección de setup.sh (telemetría), y precarga de versión semilla v1.0.0 publicada con delta_hash exacto. |
| 2026-07-05 | Observabilidad y Ficha Comercial | Implementación de telemetría PWA (Heartbeat), indicadores de red/cola/cocina, bitácora de desconexión del cajero, optimización Push-to-Talk vs WakeLock, suite QA extendida y Ficha Técnica Comercial (Product Sheet). |
| 2026-07-04 | Homologación PWA Multi-Rol | Adaptación de vistas Cocinero (KDS) y Administrador (NLP) a layout-pwa con soporte offline y corrección de bugs de carga. |
| 2026-07-04 | Corrección Rutas Estáticas | Remoción de symlinks y estandarización a rutas absolutas `/web-assets/...` alineadas con la PWA. |
| 2026-07-04 | Guía Rápida de Despliegue | Creación de `Instrucciones_Despliegue_Comandas_VOSK.html` y actualización de Rule 14. |
| 2026-07-03 | Resolución de Error 500 | Corrección de inyección de PDO y redirecciones en Flight. Configuración de entrypoint auto-reparable en Docker. |
| 2026-07-03 | Voice-KDS Cocina Real | Integración del parser de voz cocina con base de datos real (19 palabras, sin Levenshtein). |
| 2026-07-03 | Delight Auth & RBAC | Integración real de Delight Auth, Middleware RBAC e inicio de sesión por NIP. |
| 2026-07-03 | Simulador NLP y Delta Hash | Creación del panel de administración de datasets y validador en tiempo real de gramática VOSK. |
| 2026-06-14 | Creación BD y Orquestador | Se creó `setup.sh` conectando a MCP, creando esquemas transaccionales, de auth e índices. |
| 2026-06-14 | Estrategia PWA Offline | Se descargó Dexie.js y se crearon esquemas `db.js` y `sw.js` localmente. |

---

*Última actualización: 2026-07-05 — Alineación Fonética y Catálogo VOSK — Antigravity/Gemini*
