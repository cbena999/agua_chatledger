# Regla 14: LAESH — Decisiones Arquitectónicas del Modelo de Datos

> **Proyecto:** LAESH — Bloc Digital y Sitio Web Corporativo  
> **Archivos afectados:** `portafolio-dev-2026/blocklabgd/v1.2/et/`  
> **Leer antes de:** editar el modelo de datos, proponer cambios de schema, generar DDL, o trabajar en autenticación/seguridad del sistema LAESH.

---

## Reglas imperativas (no re-debatir sin evidencia nueva)

### Modelo de datos

**R14.1 — `edad_al_emitir` en ORDENES, no en PACIENTES**  
El campo `edad_al_emitir TINYINT UNSIGNED NOT NULL` pertenece a la tabla `ordenes`. Nunca moverlo a `pacientes`. Captura la edad clínica histórica en el momento de emisión.

**R14.2 — ESTUDIOS tiene DOS campos de categoría con propósitos distintos**  
- `categoria`: valores internos del catálogo labadmin (Hematología|Bioquímica|Uroanálisis|Inmunología|Otros)  
- `tipo_web`: agrupación para el sitio público (rutina|check_up)  
No combinar en un solo campo. No renombrar sin actualizar el frontend JS correspondiente.

**R14.3 — Los selects `universidad` y `lugar_trabajo` en el perfil médico son FK, no VARCHAR libre**  
`perfiles_medicos.universidad_id` y `lugar_trabajo_id` son `INT FK → catalogos_ui(id)`. El endpoint `GET /catalogos/ui?tipo={tipo}` puebla los selects. Nunca almacenar el texto directo como VARCHAR en estos campos.

**R14.4 — Los links sociales van en CONFIGURACIONES, no en WEB_CONTENIDOS**  
`whatsapp_url`, `facebook_url`, `maps_embed_url` son claves en `configuraciones`. Instrucción explícita del cliente. No mover a WEB_CONTENIDOS.

**R14.5 — `estado_id` del médico (Activo|Pausado) vive en PERFILES_MEDICOS**  
`perfiles_medicos.estado_id FK → cat_estados_medico`. No reemplazar `empleados.activo TINYINT` globalmente — ese boolean permanece para recepción y admin.

**R14.6 — Valores canónicos de WEB_CONTENIDOS.seccion**  
Los únicos valores válidos son: `hero | quienes-somos | especialidades | promociones | calidad | ubicacion | privacidad | seo`. Los valores `acerca_de`, `estudios` y `contacto` son incorrectos — no usarlos.

---

### Delight-Auth — reglas de uso

**R14.7 — DDL de Delight-Auth SIEMPRE vía `$auth->install()`, nunca manual**  
Las tablas `users`, `users_remembered`, `users_throttling`, `users_audit_log`, `users_2fa`, `users_confirmations`, `users_resets` se crean únicamente mediante el método de instalación de la librería. Escribir DDL manual para estas tablas rompe actualizaciones futuras.

**R14.8 — `users_resets` nunca genera filas en LAESH**  
El auto-reset por email está excluido por contrato (Anexo A Bloc Digital). La tabla existe en schema pero está operativamente vacía. El reset de contraseña lo realiza siempre el admin vía `admin()->changePasswordForUserById()`.

**R14.9 — `users_confirmations` es bypaseada en LAESH**  
El admin crea usuarios con `verified=1` directamente. No implementar flujo de confirmación por email.

**R14.10 — `force_logout` es el mecanismo de invalidación masiva de sesiones**  
Al resetear contraseña, llamar `logOutEverywhereForUserById($userId)`. Esto setea `users.force_logout = UNIX_TIMESTAMP()` y elimina `users_remembered` del usuario. No implementar invalidación manual de sesiones — el mecanismo de `force_logout` de Delight-Auth es suficiente y correcto.

**R14.11 — `users.resettable = 1` es condición para poder resetear**  
Antes de invocar `admin()->changePasswordForUserById()`, verificar que el campo `resettable` del usuario objetivo es `1` (default). Si es `0`, Delight-Auth lanzará excepción.

---

### Seguridad / CSRF

**R14.12 — CSRF guard es el primer paso de todo controlador de mutación**  
`\Common\CsrfGuard::validate()` se ejecuta ANTES de cualquier llamada a Delight-Auth o PDO en cualquier endpoint POST/PUT/DELETE. Sin excepción. Fallo de CSRF → HTTP 403 + INSERT en `sys_logs` level WARN.

**R14.13 — CSRF opera en sesión PHP, sin tabla de BD**  
No crear tablas de tokens CSRF en la BD. `$_SESSION['csrf_token']` es el almacenamiento correcto. El token se rota después de cada POST exitoso.

---

### Auditoría de password reset

**R14.14 — Doble registro en reset de contraseña por admin**  
1. Delight-Auth registra automáticamente en `users_audit_log` con `event_type='PASSWORD_CHANGED_BY_ADMIN'` y `admin_id` del ejecutor.  
2. `\Common\Logger::warn('password_reset_by_admin', [...])` registra en `sys_logs` level WARN con IP y los dos IDs (admin y objetivo).  
Ambos registros son obligatorios. No eliminar ninguno.

---

## Tablas de sistema — referencia rápida

| Tabla | Tipo | Propósito |
|---|---|---|
| `historial_estados_orden` | Movimientos | Transiciones de estado de órdenes — fuente para reportes de tiempos |
| `folios_control` | Control | Correlativo atómico de folios LAESH-NNNNN |
| `sys_logs` | Logs operativos | PSR-3 + purga Event Scheduler (INFO/DEBUG > 30 días) |
| `fallback_log` | Logs técnicos | Errores SQL/PHP — retención indefinida |
| `users_audit_log` | Seguridad | Eventos de autenticación con admin_id — no purgar |
| `notificaciones` | QoS | SSOT de notificaciones; entregado_ws + retry_count para fallback AJAX |

---

## Gaps de UI pendientes (no bloquean desarrollo, pero sí documentación)

| ID | Descripción | Archivo |
|---|---|---|
| UI-G01 | `precio` en ESTUDIOS no está en la grilla ni modal de labadmin | `labadmin.html` |
| UI-G02 | Inputs del Panel Ubicación sin atributo `name` — JS captura por ID | `gestion-web.html` |
| UI-G03 | `users_2fa` en schema, 2FA fuera de alcance v1 | — |

---

**Última actualización:** 2026-08-17  
**Fuente de verdad del modelo:** `portafolio-dev-2026/blocklabgd/v1.2/et/Tecnica_Modelo_Datos.html` §4.0  
**Registro completo:** `portafolio-dev-2026/blocklabgd/v1.2/et/DECISIONS.md`
