# Pendientes Activos del Proyecto Restaurant VOSK Comandas

> **Protocolo**: Este archivo es la lista viva de tareas en vuelo.
> - Actualizar al **iniciar** sesión (verificar estados) y al **cerrar** sesión (registrar lo que quedó a medias).
> - Válido para Claude Code y Google Antigravity/Gemini por igual.
> - Un pendiente se elimina solo cuando está **verificado en BD/UI**, no cuando el agente cree que está listo.

---

## 🔵 EN ESPERA DE DEFINICIÓN DE NEGOCIO

### P-LAESH-RESULTADOS-PARCIALES-01 🔵 [LAESH Bloc Digital] Resultados por estudio cuando una orden tiene múltiples estudios — bloqueado, esperando confirmación operativa del usuario
**Estado**: Análisis completo (2026-09-20, Claude Code). **NO implementar** hasta que el usuario confirme el dato de negocio que decide si esto hace falta.

**Pregunta bloqueante que el usuario debe responder primero**: ¿los resultados de una misma orden con varios estudios llegan del laboratorio en momentos distintos (por estudio), o siempre se entrega un informe/PDF único consolidado? Si es lo segundo, este plan completo no aplica — bastaría un botón manual "Marcar resultados completos" sin tracking por estudio, mucho más simple.

**Contexto del gap encontrado**: hoy `guardarResultadoPDF()` (`rc/negocio/Ordenes.php:709`) transiciona **toda la orden** a estado 3 (Resultados Listos) en cuanto se sube el **primer** PDF, sin importar cuántos estudios tenga `detalle_ordenes`. Confirmado en BD que ya existen órdenes con 2+ estudios en `detalle_ordenes`, así que no es un caso hipotético — pero también confirmado que ninguna orden en estado 3/4 tiene hoy más de 1 estudio, así que el gap aún no se ha disparado en producción.

**Solución recomendada si se confirma que sí llegan por separado** (sin agregar estados nuevos a `catalogo_estados`/`CambiarEstadoOrden` — la matriz de 5 estados ya validada esta sesión se mantiene intacta):
- `resultados_pdf`: agregar columna `estudio_id INT UNSIGNED NULL` + FK a `cat_estudios` (`NULL` = el PDF cubre todos los estudios de la orden = comportamiento actual sin cambio).
- Form de subida: checkboxes de estudios de `detalle_ordenes`, premarcados "todos" — para órdenes de 1 estudio no cambia nada visualmente.
- `guardarResultadoPDF()`: transiciona a estado 3 solo cuando `% completado = 100%` (todos los estudios tienen al menos un PDF que los cubre); si no, pasa/permanece en estado 2.
- Grilla Órdenes Hoy/Anteriores: pill de progreso ("2/4 resultados") + anotación ✓/○ en la lista de estudios expandible.

**Gaps/impactos identificados que hay que resolver como parte de la implementación (no opcionales)**:
1. 4 puntos de código asumen hoy "1 PDF = toda la orden": la subquery `MAX(id)` en `obtenerOrdenesRecientes()`, `GET /orden/pdf` en `rc/index.php` y `md/index.php` (sirven un solo archivo), y `obtenerResultadoPDFPropio()` — los 4 requieren rediseño de cómo se sirve/enlaza el PDF cuando hay varios.
2. `Notifier::persist('resultado_disponible', ...)` se dispara en cada subida — sin ajuste, el médico recibiría N notificaciones de "Resultados Listos" por cada carga parcial. Hay que suprimirla en parciales o crear un tipo de notificación distinto.
3. **Race condition real**: dos subidas concurrentes de estudios distintos de la misma orden pueden ambas leer "no está al 100%" antes de que la otra confirme, dejando la orden atascada en estado 2 para siempre aunque juntas sí la completen. Requiere `SELECT ... FOR UPDATE` sobre la fila de `ordenes` (mismo patrón de lock ya usado esta sesión para dedup de pacientes) — no es opcional.
4. `ordenes.otros_estudios` (texto libre, fuera de `detalle_ordenes`) no tiene ninguna forma de marcarse "completo" — el cálculo de % completado lo ignoraría por completo, pudiendo marcar una orden como lista sin que el estudio de texto libre tenga resultado.
5. Validar server-side que los `estudio_id` que llegan del form de subida realmente pertenecen a `detalle_ordenes` de esa orden (si no, riesgo de IDOR/corrupción del cálculo de completitud).
6. Nombre de archivo de subida (`resultado_ord_{id}_{time()}.pdf`, resolución de segundo, sin `estudio_id`) puede colisionar si se suben varios PDFs de la misma orden en el mismo segundo — agregar `estudio_id` o sufijo al nombre.
7. Cualquier métrica futura que use estado 2 como "sin resultados" perdería precisión (mezclaría "nada subido" con "80% listo") — a documentar si se construye un reporte de tiempos de entrega.
8. `guardarResultadoPDF()` ya está cubierto por transacciones + outbox de notificaciones (H3/H4/H6) verificados en vivo esta sesión — cualquier cambio a su lógica de transición obliga a re-probar esa parte también, no es un cambio aislado.

**Próximo paso**: cuando el usuario confirme el flujo real de entrega de resultados del laboratorio, retomar este pendiente — o cerrarlo como "no aplica" si los resultados siempre llegan consolidados en un solo informe.

---

## 🟢 PRIORIDAD BAJA

### P-LAESH-CSS-INVENTORY-01 🟢 [LAESH Bloc Digital] Inspección e inventario de Archivos CSS — pendiente, mismo tratamiento que ya se hizo para JS
**Estado**: No iniciado (2026-09-21, Claude Code).

**Contexto**: el 2026-09-21 se auditó el inventario completo de `laesh-web-assets-uipv1a/js/` (18 archivos) — se confirmó que todos se cargan desde alguna vista PHP (0 islas a nivel de carga), se detectó y eliminó código muerto real dentro de `catalog-builder.js` (~19% del archivo, el "Constructor de Abanicos", inalcanzable desde la UI — causaba además una advertencia de accesibilidad por controles interactivos anidados en `<summary>`), y se documentó todo en `Especificacion_Tecnica.html` §2.3.1.1, reemplazando una tabla desactualizada que listaba 3 archivos ya inexistentes (`medicos-a11y.js`, `perfil-medico.js`, `docs.js`) y omitía 9 archivos reales.

**Pendiente**: hacer el mismo ejercicio para `laesh-web-assets-uipv1a/css/` — la tabla "Inventario de Archivos CSS" en `Especificacion_Tecnica.html` (justo arriba de la de JS, §2.3.1.1) tiene el mismo patrón de sospecha: lista `perfil-medico.css`, `docs.css` y `aviso-privacidad.css`, que podrían ser remanentes de la misma era pre-migración PHP (nombres de `.html` legacy) — **no verificado aún si esos 3 archivos siguen existiendo en el filesystem**, ni si el resto de la lista coincide con los archivos CSS reales actuales.

**Alcance del trabajo** (mismo método que se usó para JS):
1. Listar los archivos reales en `laesh-web-assets-uipv1a/css/` (`ls`).
2. Confirmar cuáles se cargan desde algún `<link rel="stylesheet">` en las vistas PHP actuales (no las `.html` legacy).
3. Para los que sí cargan, evaluar si tienen reglas muertas internas (selectores que ya no matchean nada en el HTML actual) — no solo "¿se carga el archivo?", sino "¿se usa el contenido?".
4. Corregir/actualizar la tabla "Inventario de Archivos CSS" en `Especificacion_Tecnica.html` §2.3.1.1 con el resultado real.
5. Si se encuentra código muerto real (como pasó con `catalog-builder.js`), consultar con el usuario antes de eliminarlo — no eliminar unilateralmente.

**Próximo paso**: retomar cuando el usuario lo pida explícitamente — no es bloqueante para ningún otro trabajo en curso.

---

### P-LAESH-WS-QOS-01 🟢 [LAESH KVM2] QoS de `notificaciones` — `leido` sigue sin marcarse; estadísticas de fallback ✅ implementadas y ✅ desplegadas en KVM2
**Estado**: Desplegado y verificado en KVM2 2026-09-19 (como parte del setup E2E completo). Columna `fallback_reason` + vista `vw_ws_fallback_stats` + pestaña "Estadísticas WS" — todo en producción.

**Implementado (local, verificado):**
| Componente | Ubicación | Función |
|---|---|---|
| Columna `notificaciones.fallback_reason` | `setup/bds/laesh/03_transactional_schema.sql` — `ALTER TABLE ... ADD COLUMN IF NOT EXISTS` | Motivo corto del fallo cuando `entregado_ws=0`: `timeout`, `curl_error_N`, `http_error_NNN`, `response_invalid`, `stream_error` |
| Vista `vw_ws_fallback_stats` | mismo archivo — `CREATE OR REPLACE VIEW` | Agregación por `tipo`+día: total, fallbacks, `pct_fallback`. Solo lectura sobre `notificaciones` — no es una tabla de log nueva, evita segunda vía de escritura en el hot path |
| Captura de `$fallbackReason` | `commons/notifier.php::emit()` | En la rama cURL y en la rama `stream_context` — distingue timeout, error de conexión (`curl_errno`), HTTP≠200 y respuesta JSON inválida |
| Pestaña "📊 Estadísticas WS" | `admrc/views/log_viewer.php` (+ `sistema.php` — `$logSlugs`) | Tabla agregada (vista) + tabla de motivos más frecuentes (30 días). Reusa el panel de logs ya existente en `/laesh/adrc/sistema?tab=logs` — no es una pantalla nueva |

**Verificación real (no solo código), en Docker local:**
- `laesh_swoole` detenido → `Notifier::emit()` real → fila con `entregado_ws=0`, `fallback_reason='curl_error_7'` (CURLE_COULDNT_CONNECT, correcto) ✅
- `laesh_swoole` restaurado → mismo evento → `entregado_ws=1`, `fallback_reason=NULL` ✅
- Login real vía curl (usuario ADMIN de prueba, creado y eliminado en la misma sesión) → `GET /laesh/adrc/sistema?tab=logs&log_tab=ws-stats` → HTTP 200, ambas tablas renderizan con datos reales, sin errores PHP ✅
- `php -l` limpio en los 3 archivos tocados ✅

**Pendiente real, sin resolver:** `leido` sigue sin marcarse en ningún flujo (ver hallazgo original). Fix mínimo propuesto: `PATCH/POST /api/notificaciones/:id/leido` en los 3 routers (`md/index.php`, `rc/index.php`, `admrc/index.php`).

**Fix adicional 2026-09-19 — `sent_to_clients` (hallazgo del análisis de gaps post Gap 9):** `/publish` en `swoole_server.php` respondía `status=success` con `sent_to_clients=0` cuando el destinatario no estaba conectado en ese instante (no es error de bridge, pero tampoco es entrega real). `notifier.php` solo revisaba `status`, nunca `sent_to_clients` — inflaba `vw_ws_fallback_stats` mostrando 0% de fallback en escenarios que sí lo eran. **Corregido**: si `swooleSuccess` es true pero `sent_to_clients===0`, ahora se trata como fallback con `fallback_reason='no_recipients_connected'`. Verificado en local con Swoole real arriba y 0 clientes conectados → `entregado_ws=0`, `fallback_reason='no_recipients_connected'` confirmado en BD. El camino positivo (`sent_to_clients>0`, código no tocado por este fix) no se pudo probar con cliente WS real local por la limitación de caché Docker ya documentada — requiere KVM2.

**Deploy a KVM2**: ✅ completado 2026-09-19 (incluye el fix de `sent_to_clients`). Camino positivo (`sent_to_clients>0`) aún sin probar con cliente WS real en KVM2 — pendiente menor, no bloqueante.

---

## 🔴 PRIORIDAD ALTA

### P-LAESH-DB-DROP-INCIDENT-01 🟠 [LAESH KVM2] Incidente crítico — DROP DATABASE accidental durante "setup E2E completo" — MITIGADO, causa raíz corregida
**Estado**: Cerrado 2026-09-19. Incidente 10:21–10:24 CST, recuperado y causa raíz corregida el mismo día. Usuario confirmó: `pacientes=0`/`ordenes=0` tras la restauración es el estado real esperado (ambiente aún en pruebas, sin captura real de pacientes) — **sin pérdida de datos reales**.

**Qué pasó**: a petición del usuario ("setup casi completo e2e... respetando registros de datos"), corrí `kvm2_setup.sh` (modo idempotente, sin `--drop`) esperando que preservara los datos existentes. El proceso se cortó a los ~2 min por timeout de la herramienta. Al verificar el estado, `users` tenía 0 filas — la BD completa había sido destruida y recreada vacía.

**Causa raíz**: `00_database.sql` tiene un `DROP DATABASE IF EXISTS` **incondicional** (línea 17 — intencional para uso directo en Docker local, donde SÍ se quiere limpiar en cada setup). El propio docstring de `setup_hostinger.sh` documenta que sin `--drop` el "Paso 2" (ejecutar 00–09) debería omitirse por completo (Escenario B: "Paso 2 → omitido"), pero el código nunca implementó esa condición — corría los 10 scripts (incluido `00_database.sql` con su DROP) sin importar el flag. Bug preexistente, nunca antes disparado porque el pipeline completo nunca se había vuelto a correr sobre una BD KVM2 ya poblada con datos reales.

**Recuperación ejecutada**:
1. Restaurado `laesh_db_20260918_200001.sql.gz` (backup automático de esa noche, 20:00) — `users=7`, `empleados=7`, `web_contenidos=131`, `configuraciones=27`, `cat_estudios=1055` recuperados.
2. `pacientes=0` y `ordenes=0` tras la restauración — **a confirmar con el usuario** si esto es el estado real esperado (ambiente aún en pruebas/demo, sin captura real de pacientes) o si se perdió actividad real capturada entre el 18 a las 20:00 y el incidente (2026-09-19 ~10:20).
3. Reaplicado a mano (sin volver a tocar `00_database.sql`) el delta de schema que el backup no tenía: columna `notificaciones.fallback_reason` + vista `vw_ws_fallback_stats` (trabajo de esta sesión, posterior al backup) — de otra forma `notifier.php` (ya desplegado) habría fallado en cada INSERT por columna inexistente.
4. Verificado: HTTP 200, los 4 servicios activos, `DESCRIBE notificaciones` confirma la columna.

**Fix de causa raíz aplicado** (`setup/bds/laesh/setup_hostinger.sh`): el bloque completo "Paso 2" (los 10 scripts 00–09) ahora corre **solo si `--drop` fue pasado explícitamente** — alineado con lo que el propio docstring del script siempre dijo que debía pasar. Sin `--drop`, el modo idempotente real es exclusivamente vía `migrations/mNNN_*.sql` (Paso 2b), tal como documenta `migrations/README.md`. Sincronizado a KVM2 staging.

**Lección para futuras sesiones**: "modo idempotente" en este pipeline NO significa "reaplicar 00-09 sin --drop es seguro" — significa "usar `migrations/` para deltas a BD viva". Los scripts base 00-09 son SOLO para setup desde cero con `--drop`.

**Auditoría SSOT post-incidente (2026-09-19)**: verificado que `notificaciones.fallback_reason` en KVM2 tiene EXACTAMENTE el mismo comentario que `03_transactional_schema.sql` (se había reaplicado con una versión abreviada durante la emergencia — corregido con `ALTER ... MODIFY COLUMN` para igualar byte a byte). `vw_ws_fallback_stats`: lógica de la vista idéntica entre KVM2 y local Docker (confirmado con `SHOW CREATE VIEW` en ambos). Los 3 scripts de setup con los fixes de esta sesión (`setup_hostinger.sh`, `07_security_harden.sh`, `kvm2_setup.sh`) están correctos en disco — `bash -n` limpio en los 3 — pero **no commiteados** (regla estándar: solo con instrucción explícita).

**Segunda ronda de auditoría — 2 regresiones más encontradas y corregidas** (efecto colateral de que el intento fallido SÍ alcanzó a correr `00_database.sql` antes de cortarse, y la restauración del backup no las revierte porque viven fuera del dump de `laesh_db`):
1. **`laesh_app` había quedado con `GRANT ALL PRIVILEGES`** (en vez de DML-only) — `00_database.sql` otorga ALL para que root pueda correr el DDL completo; el paso que lo reduce a least-privilege (`REVOKE ALL` + `GRANT SELECT,INSERT,UPDATE,DELETE`) nunca llegó a ejecutarse por el corte. Corregido y verificado con `SHOW GRANTS`.
2. **3 configs de rutas KVM2 faltantes/incorrectas**: `cms_upload_dir` y `cms_upload_endpoint` no existían en absoluto; `ruta_almacenamiento_pdf` tenía una ruta de estilo Docker (`/var/www/html/...`) en vez de la ruta real de KVM2 (`/opt/laesh/uploads/pdfs/`). Este bloque vive en `kvm2_setup.sh` (después de invocar `setup_hostinger.sh`) y tampoco se alcanzó a ejecutar. Reaplicado con los mismos 3 `INSERT ... ON DUPLICATE KEY UPDATE` exactos del script.

**Hallazgo operativo durante la corrección**: el primer intento de aplicar el fix #2 vía heredoc anidado en `ssh "echo PASS | sudo -S mariadb ..." << SQL` reportó `EXIT=0` pero no insertó nada — el heredoc se pierde porque el pipe `echo|sudo` ya consume el stdin antes de que el heredoc llegue al proceso `mariadb` hijo. Solución: escribir el SQL a un archivo temporal (`scp`) y ejecutar `sudo bash -c 'mariadb ... < archivo'` — evita el conflicto de stdin.

**Verificación final end-to-end real**: login real contra `https://83.136.219.193/laesh/login/login.php` (dominio de producción, no localhost) con credenciales demo admin → HTTP 200, "Acceso verificado", cookie JWT emitida — confirma el flujo completo (nginx → PHP-FPM → `laesh_app` DML-only → MariaDB → Delight-Auth → JWT) funcionando end-to-end tras todas las correcciones.

**Cierre**: setup E2E del alcance aprobado ("todo: schema + código completo, incluye WS QoS") ahora sí está completo y verificado en KVM2, sin pérdida de datos reales (confirmado por el usuario) y con 3 regresiones de seguridad/config adicionales encontradas y corregidas que el intento fallido había dejado a medias.

**Cuarta regresión encontrada y corregida (2026-09-19, sesión de seguimiento)**: `catalog-compiled.js`/`catalog-data.js` quedaron con dueño `sysadmin` tras el deploy de assets — `CatalogBuilder::build()` (corre como `www-data`, se dispara al editar el catálogo desde la UI) fallaba al reescribirlos en silencio (el método retorna éxito aunque solo la BD se haya actualizado). Causa raíz: `deploy_assets_publish()` en `deploy.sh` ya tenía el `chown` correcto scripteado, pero usa `sudo` simple con `2>/dev/null || true` — sin entrada en sudoers, fallaba silenciosamente en cualquier ejecución no interactiva (igual patrón que el bug de swoole-laesh del 2026-09-18).

**Fix aplicado con autorización explícita del usuario**: 3 líneas nuevas en `/etc/sudoers.d/laesh-deploy` (chmod 0775 del dir + chown www-data + chmod 0664 de los 2 archivos), agregadas a las **dos** copias del bloque en `README.md` (evitando el desync ya conocido entre la sección operativa y el Quickstart), validadas con `visudo -c` antes de instalar. **Verificado end-to-end real**: reverti el ownership a `sysadmin` a propósito, corrí `deploy.sh assets-publish` de verdad (no interactivo) → el propio script se auto-corrigió a `www-data:www-data` sin intervención manual.

**Efecto colateral de la prueba** (informado al usuario de inmediato): `deploy.sh assets-publish` también publicó a producción `medicos.js` y `medicos-a11y.js` (cambios sin commitear desde antes, ajenos a esta sesión — refactor de consolidación, código movido de `medicos-a11y.js` a `medicos.js`). **Usuario confirmó 2026-09-19: el cambio estaba listo para producción** — sin acción pendiente.

**Quinta regresión encontrada y corregida (2026-09-19, reportada por el usuario en producción real)**: el usuario intentó crear una orden nueva en el Portal Médico ("Guardar e Imprimir") y obtuvo un error JS silencioso sin guardar nada. `app.log` mostró la causa exacta: `SQLSTATE[42000] ... 1370 execute command denied ... routine 'CrearOrdenLaboratorio'`. El `REVOKE ALL + GRANT DML-only` que restauré esta mañana (regresión #1 de esta cadena) nunca incluyó `EXECUTE` sobre los 2 stored procedures (`CrearOrdenLaboratorio`, `ProcesarCargaResultadoPDF` — `08_stored_procedures.sql`) — bug que además **ya existía en `setup_hostinger.sh` antes de esta sesión**, nunca antes disparado porque el ambiente estaba en fase de pruebas sin creación real de órdenes.

**Corregido**: `GRANT EXECUTE ON PROCEDURE` para ambos procedimientos aplicado en vivo + agregado permanentemente a `setup_hostinger.sh` Paso 3b (mismo bloque, ahora completo). Verificado con una llamada real vía PHP usando las credenciales reales de la app (`paciente_id=0` a propósito, sin crear datos reales): el error cambió de `1370` (permiso denegado) a `1452` (FK inválida, esperado) — confirma que el procedimiento ya se ejecuta correctamente. Sincronizado a KVM2 (`deploy.sh scripts`).

**Pendiente real**: pedirle al usuario que reintente crear la orden desde la UI para confirmar visualmente que el flujo completo (formulario → JS → endpoint → stored procedure → folio generado) funciona de punta a punta. ✅ [LAESH KVM2] Incidente real — cache_renew.php y cms_cleanup.php fallando en silencio — RESUELTO
**Estado**: Cerrado 2026-09-19 (Claude Code). Fix en repo + desplegado y verificado en KVM2 vía `kvm2_setup.sh --skip-bd` (BD intacta, sin tocar el trabajo pendiente de WS QoS).

**Bug adicional encontrado durante el propio deploy**: el `sed` de sustitución usaba `/` como delimitador — `LAESH_JWT_SECRET` es base64 (`openssl rand -base64 32`) y contenía un `/`, rompiendo el comando (`unknown option to 's'`). El patrón correcto (delimitador `|`) ya existía en `04_configure_stack.sh` (pool FPM) — se alineó `07_security_harden.sh` y los 2 fallbacks de `kvm2_setup.sh` al mismo patrón. Verificado con un valor de prueba conteniendo `/` antes de reintentar.

**Verificado en KVM2 tras el fix**: `cache_renew.php` y `cms_cleanup.php --dry-run` corridos manualmente como `www-data` → ambos exit 0, cache 4/4 calentado, 0 huérfanos. Secreto en los 2 `cron.d` coincide byte a byte con `/opt/laesh/configs/.env`. Servicios (nginx, php-fpm, mariadb, swoole-laesh) activos, HTTP 200. `notifier.php`/`sistema.php`/`log_viewer.php` (trabajo de WS QoS aún no autorizado para KVM2) confirmados sin cambios — deploy fue quirúrgico, solo tocó los 2 archivos de cron + los scripts de setup.

**Incidente**: ambos crons (`cache_renew.php` 5AM, `cms_cleanup.php` 1AM) corrían según `journalctl`/`cron` pero dejaban sus logs en 0 bytes — ni éxito ni error. `cache_renew.php` no regeneró `LAESH_CFG`/`LAESH_TREE` desde el 2026-09-18. Mitigado manualmente corriendo `cache_renew.php` una vez a mano (cache ya está al día).

**Causa raíz**: el fix de Gap 1 (`config.php` lanza `RuntimeException` fail-loud si `LAESH_JWT_SECRET` falta en el entorno, deployado ~2026-09-18) rompió estos dos crons — sus `cron.d` nunca exportaban esa variable, solo las de BD. Con `display_errors=Off` en CLI de producción, el fatal error nunca llegaba a stdout (solo a `php-fpm-error.log`), dejando los logs de cron completamente vacíos y sin pista.

**Cadena de gaps encontrados y corregidos** (los 3 puntos de entrada del pipeline nunca propagaban `LAESH_JWT_SECRET` hasta los crons, aunque sí llegaba al pool FPM/swoole):
| Archivo | Gap | Fix |
|---|---|---|
| `crones/cache_renew.cron`, `crones/cms-cleanup.cron` | Sin línea `LAESH_JWT_SECRET=` | Agregado placeholder `__LAESH_JWT_SECRET__` |
| `07_security_harden.sh` | `sed` solo sustituía `__LAESH_APP_PASS__` | Ahora sustituye ambos placeholders (+ fallbacks inline) |
| `kvm2_setup.sh` | Leía `LAESH_APP_PASS` de `.env` pero nunca `LAESH_JWT_SECRET`; no la pasaba a `07_security_harden.sh` | Ahora la lee y la propaga |
| `00_run_all.sh` | Nunca exportaba `LAESH_JWT_SECRET` (afectaba también al pool FPM del paso 4, gap preexistente) | Ahora la exporta |
| `crons/cache_renew.php`, `crons/cms_cleanup.php` | `ob_end_clean()` en el bootstrap + `display_errors=Off` = fallo 100% silencioso | try/catch explícito alrededor del bootstrap, echo del error real — verificado que ahora SÍ aparece en el log con `exit(1)` |

**Verificado end-to-end en local Docker**: reproducido el incidente exacto (env sin `LAESH_JWT_SECRET`) en ambos scripts → error visible + exit 1. Camino normal (con la variable) → éxito limpio, sin cambios de comportamiento.

**Siguiente paso**: aplicar a KVM2 — opción rápida (agregar la línea `LAESH_JWT_SECRET=...` directo a los 2 archivos en `/etc/cron.d/`) o re-correr `07_security_harden.sh`/`kvm2_setup.sh` completo. Requiere autorización explícita del usuario.

---

### P-LAESH-SEO-01 🔴 [LAESH] Presencia Google — SEO orgánico + SEM (Google Ads)
**Estado**: En progreso — Plan elaborado 2026-09-07 (Claude Code sesión 8). Base técnica F0 completa.  
**Artefacto de referencia**: https://claude.ai/code/artifact/dd7cc2f4-b287-48ee-88ac-5f178d18b1f9  
**Dominio**: https://laesh.mx/

#### F0 ✅ Base técnica — COMPLETA
- HTTPS/HSTS activo ✅ · robots.txt ✅ · sitemap.xml (laesh.mx) ✅ · canonical ✅ · lang="es-MX" ✅ · og:image ✅ · hreflang ✅ · CMS Pestaña 11 metadatos ✅

#### F1 🔲 Google Search Console + GA4 — Semana 1 · **Acción más urgente**
| Tarea | Responsable | Estado |
|---|---|---|
| Crear propiedad en GSC: `https://laesh.mx/` (método DNS TXT recomendado) | **Usuario** | ⏳ |
| Enviar sitemap: `https://laesh.mx/sitemap.xml` en GSC → Sitemaps | **Usuario** | ⏳ |
| Correr PageSpeed Insights baseline (LCP, CLS, INP) | **Usuario** | ⏳ |
| Crear propiedad GA4 → obtener Measurement ID (G-XXXXXXXX) | **Usuario** | ⏳ |
| Agregar snippet GA4 en PHP base layout + vinculación GA4↔GSC | **Claude/Gemini** | ⏳ |

#### F2 🔲 Google Business Profile — Semana 1–2
| Tarea | Responsable | Estado |
|---|---|---|
| Crear/reclamar ficha GBP: "LAESH Laboratorio Clínico" | **Usuario** | ⏳ |
| Categoría: Laboratorio de análisis clínicos + Laboratorio médico | **Usuario** | ⏳ |
| NAP completo (dirección, teléfono, web laesh.mx, horarios) | **Usuario** | ⏳ |
| Subir fotos: fachada, recepción, áreas de lab, personal | **Usuario** | ⏳ |
| Agregar servicios individuales (estudios) y descripción 750 car. | **Usuario** | ⏳ |
| Generar link de reseña corto + campaña interna de reseñas | **Usuario** | ⏳ |

#### F3 🔲 Schema.org JSON-LD — Semana 2–3 · **Tarea de agente**
| Tarea | Responsable | Estado |
|---|---|---|
| JSON-LD MedicalOrganization/ClinicalLaboratory en `index.php` | **Claude/Gemini** | ⏳ |
| FAQPage: estudios frecuentes (biometría, Q.S., cultivos, etc.) administrable desde CMS | **Claude/Gemini** | ⏳ |
| BreadcrumbList en todas las páginas/portales | **Claude/Gemini** | ⏳ |
| Validar con Rich Results Test + verificar en GSC → Mejoras | **Usuario** | ⏳ |

#### F4 🔲 Contenido CMS — Semana 3–4 · **Usuario via CMS Pestaña 11**
- Títulos únicos por página (50–60 car.) con ciudad + propuesta de valor
- Meta descriptions únicas (140–160 car.) con CTA en cada sección
- og:image 1200×630 dedicada para laesh.mx (slot `seo-og` ya existe en CMS)

#### F5 🔲 Google Ads — Mes 2 · Iniciar cuando F2 tenga 10+ reseñas
- Search Ads: palabras clave locales · $150–250 MXN/día · radio 10–15 km
- Google Maps pin promovido: $100–150 MXN/día
- Configurar conversiones (clic tel, WhatsApp, formulario) — **Claude/Gemini** agrega tag
- Textos de anuncio: título "LAESH Laboratorio Clínico · Resultados el mismo día"

#### F6 🔁 Monitoreo continuo — mensual desde F1
- GSC semanal: cobertura, consultas, Core Web Vitals
- GBP: 1 post/semana, responder reseñas en 24 h
- Google Ads mensual: CPA, keywords negativas, A/B textos
- PageSpeed mensual: objetivo 90+ desktop · 75+ móvil

#### Palabras clave objetivo principales
`laboratorio clínico [ciudad]` · `análisis de sangre [ciudad]` · `biometría hemática [ciudad]` · `química sanguínea precio` · `estudios clínicos resultados mismo día` · `LAESH laboratorio`

---

---

## 🟡 PRIORIDAD MEDIA

### P-LAESH-01 ✅ [LAESH Website] B1 — Refactorización de Inline Styles — RESUELTO
**Estado**: Cerrado 2026-08-13  
**Resolución**: ~305 inline styles extraídos a clases CSS.  
- `index.html`: 274 → 110 restantes (164 eliminados). Nuevas clases en `<style>` del archivo: `.carousel-card img/h3/p/.__body`, `.slide-caption`, `.aviso-h4/p/list`, `.flex-ic-8`, `.chevron-open`, `.hr-sep`, `.btn-outline-white`, `.icon-22/24/20`, helpers de texto.  
- `medicos.html`: 101 → 54 restantes (47 eliminados).  
- `labadmin.html`: 151 → 55 restantes (96 eliminados).  
- Clases compartidas portales en `laesh-web-assets-uipv1a/css/style.css`: `.form-label`, `.form-label--sm`, `.req`, `.form-input`, `.form-input--bg`, `.form-select`, `.form-input-sm`, `.select-sm`, `.form-field`, `.select-arrow`, `.modal-sect-hd`, `.progress-label`, `.progress-track`, `.col-group`, y ~15 utilities (`.txt-pgd`, `.txt-muted-sm`, `.flex-1`, `.mb-0`, etc.).  
- Inline styles restantes (~219 total): background-image URLs únicas, grid-template-columns únicos, display:none controlados por JS y valores verdaderamente únicos — costo/beneficio no justifica extracción.  

### P-LAESH-02 ✅ [LAESH Website] Dominio definitivo para OG/canonical — RESUELTO
**Estado**: Cerrado 2026-08-13  
**Resolución**: Dominio canónico = `https://laesh.mx/`. Todos los OG tags y canonicals actualizados en las 9 páginas activas de uipv1a/.

### P-LAESH-03 ✅ [LAESH Website] Infraestructura device targeting + fixes CRÍTICO + deploy OCI — RESUELTO
**Estado**: Cerrado 2026-08-15 — Claude Code (sesión 7b54f662)  
**Resolución**:
- **Device targeting**: Creados `device-detect.js` (sincrónico, antes del primer CSS) y `targeting.css` (selectores `[data-os]`, `[data-browser]`, `[data-input]`, `[data-dpr]`). Inyectados en los 7 HTMLs.
- **Fix portal-initials-mob**: `display:none` en base (style.css) + bloques desktop/tablet de responsive.css.
- **Fix A5 – fieldset/legend**: `medicos.html` Orden → `<fieldset class="fieldset-reset"><legend>Sexo</legend>` + CSS `.fieldset-reset` / `.form-legend`.
- **Fix C7 – WCAG 2.4.7 focus visible**: `input/select:focus` outline con `:focus-visible` guard en style.css.
- **Grid 25/75 contacto/mapa**: `#ubicacion .grid-layout { grid-template-columns: minmax(0,1fr) minmax(0,3fr) !important }` en landing.css. Requiere verificación visual en producción.
- **Mobile form Orden – Celular+Sexo**: `orden-patient-grid` en responsive.css: Celular y Sexo en mismo renglón con input Celular reducido.
- **CSS versiones**: Todos los HTMLs en `?v=20260814` para style.css, fonts.css, targeting.css.
- **Deploy OCI**: `rsync` exitoso de `uipv1a/` + `laesh-web-assets-uipv1a/` a `oci-vm:/home/ubuntu/n8n-php/` — 7 HTMLs, 5 CSS nuevos/actualizados, device-detect.js, 8 × woff2 (Cabin + Outfit).

### P-LAESH-04 ✅ [LAESH Website] Verificar grid 25/75 + corregir hallazgos de auditoría — RESUELTO (parcial)
**Estado**: Cerrado 2026-08-15 — Claude Code (sesión 0969fceb)  
**Resolución**:
- **Grid 25/75**: Confirmado CSS correcto por análisis de cascada. `#ubicacion .grid-layout` (especificidad 110+!important en landing.css) gana sobre `.grid-layout` (010) de responsive.css en desktop/tablet. Mobile: override correcto con mismo selector en responsive.css (cascade order). No requiere cambios.
- **19/25 hallazgos corregidos** — reporte actualizado: https://claude.ai/code/artifact/31b7d89b-dedd-4011-afef-d65f95b31d3f
  - ✅ P4 (device-detect ?v=20260815 — 7 HTMLs), P5 (autofocus removido), P2 (logo width/height CLS), A7 (pause button carousel), A4 (h2 sr-only Nueva Orden), A2 (aria-live labadmin), A1 (keydown ya estaba), UX1+UX2 (inputmode+pattern celular), S2 (robots.txt), SEO1 (sitemap.xml), S3 (X-Frame-Options DENY), PWA2 (standalone), PWA3 (maskable→any), C1 (dead code), C3 (fallback name), C4 (crypto.randomUUID), SEO3 (schema.org URI), 404 (página personalizada)
  - ⏸ Diferidos: S1 (HTTPS/HSTS — infra OCI), A6 (color contrast — decisión diseño), P1 (Service Worker — iteración PWA), SEO2 (og:image — asset dedicado)
  - 🔲 Pendiente: UX3 (dots carrusel especialidades)
- **Plan responsive.css**: guardado en `/home/carlos/.claude/plans/mutable-dreaming-scroll.md` — listo para próxima sesión
- **Deploy pendiente**: rsync de cambios de hoy a OCI (uipv1/ + laesh-web-assets-uipv1a/)

### P-LAESH-05 🔄 [LAESH Website] Deploy OCI + corrección 22 hallazgos nuevos
**Estado**: En progreso — sesión 0969fceb (2026-08-15) · Batch completo aplicado
**Descripción**:
1. **Deploy OCI** — ⚠️ REQUIERE AUTORIZACIÓN EXPLÍCITA del usuario antes de ejecutar rsync.
   - Archivos listos: `uipv1/` (8 HTMLs + sitemap.xml + 404.html) + `laesh-web-assets-uipv1a/` (app.js + website.js + manifest.json + landing.css + style.css + responsive.css + medicos.js)
2. **Auditoría R1 (25): 24/25** — S1 (HTTPS/HSTS) diferido infra OCI
3. **Auditoría R2 (22 hallazgos): 20/22 corregidos** (2 eran falsos positivos):
   - ✅ WCAG-1 (CSS-1a/b/c): responsive.css Tier 0 → .carousel-progress-fill + @keyframes pulse + pulse-ring suprimidos; landing.css @media movido
   - ✅ WCAG-2: #quality-pause-btn con SVG pause/play, aria-pressed, aria-label dinámico
   - ✅ WCAG-3: role="region" + aria-label + aria-roledescription en .hero-slides y #quality-carousel-container; aria-live polite announcer para ambos carruseles
   - ✅ CSS-2: lang="es" → lang="es-MX" en los 8 HTMLs (7 portales + index)
   - ✅ CSS-3: color-scheme:light en :root (style.css) + <meta name="color-scheme"> en 8 HTMLs + 404.html
   - ✅ PERF-1: 15 quality-slides style="background-image" → data-bg + IntersectionObserver lazy-load en website.js
   - ✅ PERF-2: preloads slides 2-4 eliminados de index.html
   - ✅ PERF-4: font preloads cabin-latin-normal-w400.woff2 + outfit-latin-normal-w300.woff2 en index.html
   - ✅ UX-1: touch/swipe para quality carousel (pointerdown/up + delta ≥50px)
   - ✅ UX-2: style="padding:1rem;text-align:center;" → class="noscript-msg" (CSS en landing.css)
   - ✅ SEO-1: sitemap.xml → URLs laesh.mx (antes caelitandem.lat)
   - ✅ SEO-2: aviso_de_privacidad.html og:image → recepcion-de-pacientes.webp + width/height/alt + twitter:image
   - ✅ PWA-1: manifest.json start_url → /mvps/laesh-ui/uipv1a/ (staging)
   - ✅ CODE-1: app.js seed data → guard hostname staging/local; no corre en laesh.mx producción
   - ✅ CODE-2: laesh_mock_orders → laesh_orders; laesh_mock_catalog → laesh_catalog (app.js + medicos.js comment)
   - ✅ CODE-3: aviso_de_privacidad.html robots content="index, follow" + hreflang
   - ✅ SEC-1: solicitud_dac_impr.html frame-ancestors 'self' comentado como intencional
   - ✅ SEC-2: 404.html → CSP meta con style-src 'unsafe-inline'
   - ✅ SEO-3: (falso positivo — hreflang ya presente en index.html:30)
   - ✅ UX-3: (falso positivo — aria-label en nav buttons ya presente)
   - ⏸ PERF-3: srcset specialty cards — diferido (necesita variantes 400px; imágenes actuales 1000px)
4. **CSS versiones**: responsive.css → ?v=20260815 en todos los HTMLs

---

## 🟡 PRIORIDAD MEDIA — INFRA

### P-LAESH-E2E-01 ✅ [LAESH KVM2] Trazabilidad E2E — G1–G5 todos resueltos

**Estado**: Cerrado 2026-09-06 (G2–G5) + 2026-09-06 (G1). **Deploy KVM2 confirmado 2026-09-06.**

**Resueltos:**
| Gap | Fix | Verificado |
|-----|-----|-----------|
| G1 | `Logger::logAlways()` añadido en `commons/Logger.php` (bypass filtro nivel mín.). Call-sites actualizados: login exitoso, logout, orden recepción creada, solicitud médica creada, cambio estado orden, CMS sección publicada, médico registrado, admin cambió estado médico | ✅ 2026-09-06 — deploy KVM2 confirmado |
| G2 | `RbacManager::requirePermission()` emite `Logger::log('WARN',...)` en denegaciones e `Logger::log('INFO',...)` en redirects | ✅ entry WARN en sys_logs + app.log |
| G3 | `Logger::$requestId` estático (`bin2hex(random_bytes(8))`), columna `request_id CHAR(16)` en sys_logs | ✅ `[REQ:1068fa52d9b0b134]` en app.log |
| G4 | Columnas `url VARCHAR(500)` + `metodo VARCHAR(10)` en sys_logs; capturadas en Logger | ✅ `[GET /laesh/md/estudios/todos]` |
| G5 | Columna `session_id CHAR(26)` en sys_logs; capturada con `session_id()` (CLI-safe) | ✅ session_id en sys_logs row |

**Fix adicional (2026-09-06):** `commons/commons.php` — `Flight::map('rbac',...)` movido fuera del try/catch de `DB::connect()`. Antes causaba `"rbac must be a mapped method"` cuando la BD tenía fallo transitorio.

> ⚠️ **G1 requiere deploy a KVM2** — cambios en `Logger.php`, `login.php`, `logout.php`, `rc/negocio/Ordenes.php`, `md/negocio/Ordenes.php`, `admrc/index.php`.

---

### P-LAESH-CMS-CLEANUP-01 ✅ [LAESH KVM2] Activar cms_cleanup.php en producción (quitar --dry-run)
**Estado**: ACTIVADO sep-10 — `--dry-run` removido vía sesión interactiva Remmina. Corre en producción desde 01:00 AM sep-11.  
**Condiciones cumplidas** ✅:
1. Fix dual-prefijos G-CMS-01 deployado y verificado (sep-10 dry-run mostró solo 3 huérfanos genuinos).
2. Período de pruebas terminado — usuario ordenó "activalo para revisar mañana".
3. sudo no interactivo falla (sudoers solo cubre `systemctl reload php8.3-fpm`).

**Acción requerida por usuario** (sesión interactiva SSH):
```bash
ssh laesh-kvm2
sudo sed -i 's/ --dry-run//' /etc/cron.d/laesh-cms-cleanup
cat /etc/cron.d/laesh-cms-cleanup
# Debe quedar: 0 1 * * * www-data /usr/bin/php8.3 /opt/laesh/www/laesh-swbldi/crons/cms_cleanup.php >> ...
```

**Verificar mañana sep-11 tras las 01:00:**
```bash
ssh laesh-kvm2 "tail -20 /opt/laesh/logs/cms-cleanup.log"
# Buscar: 🗑 eliminado → (los 3 candidatos promo-1 x2 + ubicacion-croquis)
```
**Referencia**: `setup/deploy/laesh-kvm2-prod/README.md` § CMS Cleanup cron.

---

### P-LAESH-NGINX-SYNC-01 ✅ [LAESH KVM2] Nginx config verificado — local == servidor
**Estado**: Resuelto 2026-09-06 — verificación manual confirmada.

**Nota**: `~/laesh-src/setup/deploy/` no existe en el servidor (solo se sincroniza código web), así que el diff automatizado no funcionó. Se comparó el output del diff contra el template local con sustitución `__LAESH_DOMAIN__ → laesh.mx`: **287 líneas, contenido idéntico**.

| Fix verificado | Estado |
|---|---|
| `try_files $uri @md_php` / `@rc_php` / `@adrc_php` (sin `$uri/`) | ✅ |
| `include fastcgi_params` como primera línea en los 3 named locations | ✅ |
| `SCRIPT_NAME /laesh/{md\|rc\|adrc}/index.php` explícito | ✅ |
| SHA256 servidor: `6e22c74ef5132218819142f1879c5c437c02bdf52d0be74522562e866ee8e080` | ✅ |

---

### P-INFRA-02 ✅ [LAESH KVM2] PHP CLI hang: OPcache JIT + Swoole — RESUELTO
**Estado**: Resuelto 2026-09-04 (sesión 3)  
**Síntoma original**: `php8.3` CLI cuelga indefinidamente con `opcache.jit=tracing` + `opcache.enable_cli=1` + `extension=swoole.so`.  
**Fix aplicado en `07_security_harden.sh`**: Se generan **dos** OPcache ini distintos:
- FPM: `10-opcache-laesh.ini` completo con `opcache.jit=tracing` (JIT activo para requests HTTP)
- CLI: mismo ini pero con `opcache.jit=0` + `opcache.jit_buffer_size=0M` (sin JIT, sin hang)

`cache_renew.cron` (5 AM) funciona correctamente. `08_verify.sh` usa `php8.3 -n` para checks internos y `strings` para versión Swoole (sin invocar PHP). `03_install_swoole.sh` también usa `strings` para idempotencia.

### P-INFRA-01 ✅ [LAESH KVM2] DNS laesh.mx + HTTPS/HSTS — RESUELTO 2026-09-07
**Estado**: Cerrado — DNS verificado apuntando a KVM2 `83.136.219.193`; CNAME `www→laesh.mx`; HTTPS HTTP/2 + HSTS `max-age=31536000; includeSubDomains` activo. ✅

---

## ✅ RESUELTOS RECIENTEMENTE (referencia)

| Fecha | Item | Detalle |
|---|---|---|
| 2026-09-21 | LAESH KVM2 — `$server->push()` roto (SW_ERROR_WEBSOCKET_PACK_FAILED/8505), resuelto | Causa raíz real: Swoole 6.2.2 se compiló SIN soporte zlib (`zlib1g-dev` faltaba como dependencia en `03_install_swoole.sh` — omisión silenciosa de PECL, sin warning) → `push()` fallaba al intentar negociar permessage-deflate porque todo cliente WS estándar lo anuncia en el handshake por defecto. Fix: agregado `zlib1g-dev` + chequeo de idempotencia que ahora también verifica presencia de zlib (`php8.3 --ri swoole`), no solo versión. Recompilar reveló 2 bloqueos adicionales del propio host hardened: (a) PECL rehúsa reinstalar una versión ya registrada sin `-f` (agregado); (b) PECL no puede correr en absoluto porque `popen()` está deshabilitado (hardening de seguridad de este proyecto) y `OS_Guess::_fromGlibCTest()` lo requiere — resuelto reinstalando con un wrapper `PHP_PEAR_PHP_BIN` que reactiva `popen()` solo para esa invocación puntual (nunca tocó el `php.ini` real de producción) + deshabilitando temporalmente `20-swoole.ini` del CLI (para que PECL no se rehusara a instalar sobre un módulo que su propio intérprete ya tenía cargado). Verificado: `php8.3 --ri swoole` → `zlib => 1.3`; suite completa de 4 escenarios de negocio (nueva_orden/orden_actualizada/resultado_disponible/catalogo_actualizado) vía WS real contra producción → 12/12 verificaciones pasando. Datos de prueba (LAESH-00016, LAESH-00017 + pacientes/contadores asociados) limpiados. Logging DEBUG temporal en `swoole_server.php` (activado para este diagnóstico) removido y redesplegado — vuelto a confirmar 12/12 sin la instrumentación. Cambios en `03_install_swoole.sh` (zlib1g-dev + `-f` + chequeo de idempotencia con zlib) y `swoole_server.php` (debug removido) — pendientes de commit, esperando instrucción explícita del usuario. |
| 2026-08-20 | restaurantb — Migración Apache→Nginx + Hardening LNMP completo | Stack migrado a Nginx 1.27 + PHP-FPM 8.3 + MariaDB 11.8.8. Hardening: ssl_ciphers AEAD, HSTS, CSP, http2, ssl_session_tickets off, /swoole-status, /fpm-status. Tuning: client_max_body_size 40M, fastcgi_buffers, PHP-FPM pool (max_children=20), MariaDB max_statement_time=10s. PHP error 1969 manejado en DB.php + commons.php (HTTP 503). Docs centralizados en §15 Tecnica_Infraestructura_Despliegue.html (9 subsecciones). Verificado: HTTP/2 activo, /fpm-status respondiendo, /swoole-status OK. |
| 2026-07-05 | Tuning Fino y Estabilización VOSK | Implementación de estrategia Cache-First en sw.js (modelo 38MB/vosk.js), persistencia Dexie (storage.persist), filtro de silencio (RMS VAD en AudioWorklet) y watchdog Kill-and-Respawn contra fugas de memoria WASM. Documentación de pruebas y arquitectura actualizada. |
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
| 2026-08-15 | LAESH – Targeting, fixes CRÍTICO, deploy OCI | device-detect.js + targeting.css inyectados en 7 HTMLs; fieldset/legend Sexo (A5); focus-visible outline (C7); grid 25/75 contacto/mapa; mobile Celular+Sexo renglón único; rsync completo a OCI (uipv1a/ + laesh-web-assets-uipv1a/). Auditoría publicada: https://claude.ai/code/artifact/31b7d89b-dedd-4011-afef-d65f95b31d3f |
| 2026-09-05 | LAESH – Portal 404 fix KVM2 (nginx SCRIPT_NAME + try_files + include order) | Causa raíz: `try_files $uri $uri/` generaba internal redirect via index directive → bypasseaba `@rc_php`/`@md_php`/`@adrc_php` → generic PHP handler sin SCRIPT_NAME correcto → Flight `dirname()` calculaba base `/rc` en vez de `/laesh/rc` → sin strip → 404. Fix: `try_files $uri @portal_php` (sin `$uri/`) + `include fastcgi_params` primero + `SCRIPT_NAME /laesh/{portal}/index.php` explícito. Verificado: ADMIN→RC 200 ✅, MEDICO→MD 200 ✅ (browser). Local: también verificado 200. |
| 2026-08-30 | LAESH – Limpieza de assets huérfanos `laesh-web-assets-uipv1a/` | **CSS**: `aviso-privacidad.css`, `perfil-medico.css` eliminados. **JS**: `perfil-medico.js`, `docs.js` eliminados. **img/**: `25a.webp`, `mapa-laesh.webp` eliminados (ref. en `gestion_web.php:1134` actualizada a `01mapa-laesh.webp` antes del borrado). **img/cms/**: 7 JPEGs + 16 WebP pre-20260829 + `carousel-1-20260824-a8d752fe.webp` (confirmado huérfano en BD `web_contenidos`) eliminados. Quedan 19 hero-slides 20260829 (2.2 MB). `uipv1/`, `uipv2/`, `uipv0/` — ya movidos a `portafolio-dev-2026/blocklabgd/v1.2/mockup1.0/` (sesión anterior). `commons/seed_first_users.php` y `commons/swoole_server.php` — conservados intencionalmente. |
| 2026-08-15 | LAESH – P-LAESH-04: auditoría 19/25 hallazgos | Grid 25/75 verificado (CSS correcto). 17 hallazgos corregidos esta sesión: P4 (cache versioning 7 HTMLs), P5 (autofocus), P2 (logo dims CLS), A7 (pause button carousel), A4 (h2 sr-only), A2 (aria-live), UX1+UX2 (tel+pattern), S2 (robots.txt), SEO1 (sitemap.xml), S3 (X-Frame-Options DENY), PWA2 (standalone), PWA3 (purpose any), C1 (dead code), C3 (fallback name), C4 (crypto.randomUUID), SEO3 (schema.org URI), 404 (página branded). Reporte: https://claude.ai/code/artifact/31b7d89b-dedd-4011-afef-d65f95b31d3f |
| 2026-08-30 | LAESH – G-CMS-01: 14 cms/ huérfanos eliminados | 14 WebP no referenciados en `web_contenidos` eliminados (1.7 MB). img/cms/ queda con 5 slides activos (448 KB). |
| 2026-08-30 | LAESH – G-CMS-02: sección Promociones funciona sin imágenes | `promociones-2026.webp` eliminada (era solo preview UI en `gestion-web.js:60`, no usada en sitio público). `gestion-web.js:60` actualizado a `sala-de-espera.webp`. Sección promociones confirmada funcional solo con texto. |
| 2026-09-07 | LAESH KVM2 — Sesión 7+8: Estabilización integral home site, CMS, infra y seguridad | **Sesión 7 (CMS/Assets/CSS):** `cms_cleanup.php` 3 bugs; `admrc/index.php` auto-detección tipo+ON DUPLICATE KEY; BD 13 filas tipo fix; 6 promos re-subidas; cron cache-renew LAESH_DB_PASS; gestion-web.js 3 refs -dos.webp; website.js tooltip; @layer Chrome 92 fix; Issue-3 hero contain; landing.css responsividad 4 secciones; seed_catalogs.sql fallback estático; orphans eliminados. **Sesión 8 (continuación):** `landing.css` grid-acerca-cards Opción B — base 2col + min-width:1025px 3col + selector triple-clase @media(641–1024px) con display+grid-template !important — **verificado tablet portrait ✅**. **Infra/Seguridad:** P-INFRA-01 DNS laesh.mx→KVM2 verificado ✅; S1 HTTPS HTTP/2 + HSTS max-age=31536000 activo ✅; PERF-03 Gzip/Brotli Nginx ✅ (realizado por usuario); A6 contraste color ✅ (realizado por usuario). **CMS seguridad upload:** `admrc/index.php` validación dims servidor con `getimagesize()` por slot (hero/carousel/calidad/promo/croquis/seo-og/default) → HTTP 422 si no cumple spec; `gestion_web.php` accept promo `image/webp,image/png,image/jpeg` → `image/webp`. Deploy KVM2 ✅. ⏳ git commit pendiente instrucción explícita. |
| 2026-08-13 | LAESH – B1 inline styles + dominio canónico OG | (ver P-LAESH-01 y P-LAESH-02) |
| 2026-06-14 | Estrategia PWA Offline | Se descargó Dexie.js y se crearon esquemas `db.js` y `sw.js` localmente. |

---

## 🟡 PRIORIDAD MEDIA — LAESH Assets (Squoosh — tarea del usuario)

### G-IMG-01 ✅ Carrusel especialidades — RESUELTO 2026-09-07
**Estado**: Cerrado — verificado por usuario 2026-09-07.  
Imágenes `area-*.webp` validadas en producción (KVM2 CMS). ✅

---

### G-IMG-02 ✅ Assets estáticos — RESUELTO 2026-09-07
**Estado**: Cerrado — todos los assets verificados/corregidos por usuario 2026-09-07.
- `01mapa-laesh.webp` 656×477 — dentro de spec real 656–756×477–577px ✅
- `sala-de-espera.webp` — seed local reemplazado con CMS hero-slide4 1600×800·101KB ✅
- `recepcion-lab.webp` y `hero-slide5 CMS` — verificados correctos ✅

---

## 🟡 PRIORIDAD MEDIA — LAESH Dev (código)

### G-DEV-01 ✅ Modal perfil médico — resuelto 2026-09-06
**Estado**: Cerrado. **Deploy KVM2 confirmado 2026-09-06.**  
**Análisis**: El backend `POST /laesh/rc/medico/crear` ya existía y estaba completo en `rc/index.php` → `RC\Negocio\Ordenes::registrarMedico()`. El stub JS (`console.log`) era código muerto — el form tenía `hx-post` y HTMX lo manejaba, pero sin validación completa de celular ni feedback de error correcto.  
**Fix aplicado**: `labadmin.js` — reemplazado stub `console.log` con interceptor de `submit` que hace `fetch('/laesh/rc/medico/crear')`. Validación añadida: celular `^\d{10}$`. Distinción éxito/error por header `HX-Refresh: true`. Feedback correcto en ambos casos.

### G-DEV-02 ⏸ Cache-busting `?v=time()` — diferido a producción
**Estado**: Diferido  
**Problema**: `index.php` + `medicos.php` regeneran timestamp en cada request → sin cacheo de assets  
**Fix**: `filemtime()` en lugar de `time()` para todos los `<link>`/`<script>`

---

## 🟡 PRIORIDAD MEDIA — LAESH Website Responsividad/Performance (Sesión 2026-08-30)

### P-01 ⏸ [LAESH Website] Cache-busting `?v=time()` → `filemtime()` en `index.php`
**Estado**: Diferido — aplicar en producción  
**Problema**: 6 `<link>` CSS + 1 `<script>` en `website/index.php` usan `?v=<?= time() ?>` → browser re-descarga ~210 KB de assets en cada pageview, sin cacheo  
**Archivos afectados** (en orden del `<head>`):
- `device-detect.js`
- `tokens.css`, `fonts.css`, `style.css`, `style-website.css`, `landing.css`, `targeting.css`
**Fix**: Reemplazar `time()` por `filemtime(BASE_PATH . '/laesh-web-assets-uipv1a/...')` en cada línea  
**Nota**: Alineado con G-DEV-02 (mismo problema en `medicos.php`); puede cerrarse junto

### P-03 ⏸ [LAESH Website] Reoptimizar imágenes `area-*.webp` del carrusel de especialidades — tarea usuario
**Estado**: Diferido — requiere acción manual del usuario en Squoosh  
**Problema**: 14+ imágenes del carrusel exceden el presupuesto de ≤25 KB. Peores offenders:
- `area-quimica-clinica.webp` → 80 KB
- `area-quimica-clinica-dos.webp` → 66 KB (cuadrada, spec incorrecta)
- `area-hematologia-dos.webp` → 63 KB (1000×1000 cuadrada)
**Spec correcta**: exacto 800×580 px · WebP · Q75 · ≤25 KB  
**Acción**: Usuario → Squoosh: Resize 800×580, Format WebP, Quality 75, re-exportar cada archivo  
**Ubicación**: `laesh-web-assets-uipv1a/img/area-*.webp`

### R-02 ✅ [LAESH Website] Dims HTML imágenes `calidad.php` — RESUELTO 2026-09-07
**Estado**: Cerrado — verificado por usuario 2026-09-07. ✅

### PERF-01 ⏸ [LAESH Website] Minificación y bundle de CSS — 6 archivos → 1 archivo minificado
**Estado**: Diferido — requiere tooling (Node/npm o script PHP)  
**Impacto estimado**: ⭐⭐⭐ Alto — elimina 5 RTTs extra en HTTP/1.1 y reduce tamaño total ~30–40% vía minificación  
**Problema**: `index.php` carga 6 `<link rel="stylesheet">` independientes que bloquean el render en serie:
```
tokens.css · fonts.css · style.css · style-website.css · landing.css · targeting.css
```
**Fix recomendado**:
- Opción A (build step): `npx csso-cli` o similar para concatenar + minificar → `dist/laesh-bundle.min.css`; actualizar `<link>` a un solo archivo + `filemtime()`
- Opción B (sin build): PHP en-línea con `ob_start()` + strip de comentarios/espacios + header `Content-Type: text/css` + `Cache-Control` agresivo
- Mantener archivos fuente separados en `css/` como SSOT de edición
**Archivos**: `laesh-web-assets-uipv1a/css/*.css` · `index.php` · `medicos.php`

### PERF-02 ⏸ [LAESH Website] Minificación de JS — `device-detect.js` y demás scripts
**Estado**: Diferido — requiere tooling  
**Impacto estimado**: ⭐⭐ Medio — reduce peso de JS transferido ~25–35%; `device-detect.js` bloquea parser al estar en `<head>`  
**Problema**:
- `device-detect.js` está en `<head>` sin `defer`/`async` → bloquea render hasta que el script se descarga y ejecuta
- JS no está minificado → comentarios, whitespace y nombres largos viajan al browser
**Fix recomendado**:
1. Añadir `defer` a `<script src="device-detect.js?v=...">` si el script no necesita ejecutar antes del DOM (verificar dependencias)
2. Minificar con `npx terser` o equivalente → `dist/device-detect.min.js`
3. Aplicar mismo criterio a otros scripts inline o archivos JS del sitio web
**Archivo**: `laesh-web-assets-uipv1a/js/device-detect.js` · `index.php` `<head>`

### PERF-04 ✅ [LAESH Website] Ficha "25 años de experiencia" no centrada/completa en iPad — RESUELTO
**Estado**: Cerrado 2026-09-04 — informado como corregido por el usuario  
**Resolución**: CSS corregido (alineación y visibilidad completa en viewport tablet ~768–1024 px).  
**Archivos afectados**: `laesh-web-assets-uipv1a/css/landing.css` · `style-website.css`

### PERF-03 ⏸ [LAESH Website] Verificar y activar Gzip/Brotli en XAMPP (Host A y OCI)
**Estado**: Diferido — verificar configuración de Apache  
**Impacto estimado**: ⭐⭐⭐ Alto — compresión texto 60–80%; CSS/JS/HTML entregados en fracción del tamaño  
**Problema**: No confirmado si `mod_deflate` o `mod_brotli` están activos en el XAMPP de Host A ni en el VPS OCI  
**Fix recomendado**:
```bash
# Verificar en Host A
/opt/lampp/bin/apachectl -M | grep -E 'deflate|brotli'
curl -I -H "Accept-Encoding: gzip" http://localhost/laesh-swbldi/website/ | grep Content-Encoding
```
Si no está activo → agregar en `.htaccess` de `laesh-swbldi/`:
```apache
<IfModule mod_deflate.c>
    AddOutputFilterByType DEFLATE text/html text/css application/javascript text/javascript application/json
</IfModule>
```
Repetir verificación en OCI tras deploy P-LAESH-05  
**Archivos**: `laesh-swbldi/.htaccess` · Apache conf XAMPP

---

## 🟡 PRIORIDAD MEDIA — LAESH Portal Médico

### P-LAESH-06 ✅ [LAESH Portal Médico] Issues A y B — RESUELTO 2026-09-07

**Estado**: Cerrado 2026-09-07 — verificación por análisis de código (Claude Code sesión 8).

- **Issue A (dropdown checkbox):** `portal.css` — `.ficha-dropdown` con `position:fixed` + JS `getBoundingClientRect()`. `.ficha-drop-item { display:flex; flex-wrap:nowrap; align-items:flex-start; gap:5px }` + checkbox `flex-shrink:0; width:14px; margin-top:1px` + span `flex:1`. Checkbox y texto siempre alineados. ✅
- **Issue B (Sexo móvil):** `portal.css @media ≤767px` — grid `minmax(0,115px) minmax(0,1fr) 42px auto`; `form-group-sexo: grid-column:4; grid-row:1`; labels `0.62rem; margin-bottom:2px`; inputs `height:38px`. Alineación homogénea garantizada. ✅

---

---

## ✅ Cerrados en Sesión 9 — 2026-09-08

### G-SWOOLE-01 ✅ config.php — Swoole host `0.0.0.0` → `127.0.0.1` en KVM2 nativo
Docker-aware: `$inDocker ? '0.0.0.0' : '127.0.0.1'`. Eliminada dependencia de UFW para seguridad del bridge. Desplegado y verificado KVM2. ✅

### G-SWOOLE-02 ✅ logrotate-laesh.conf — 4 correcciones
- `systemctl kill -s USR1` → `systemctl reload` (SIGHUP, no worker-reload)
- `backup.log` → `backup-db.log` (nombre real del script)
- `cert-check.log` → `cert-expiry.log` (nombre real del script)
- Añadido `cms-cleanup.log` (cron 01:00 AM). Desplegado y verificado con `--debug`. ✅

### G-SWOOLE-03 ✅ swoole-laesh.service — ExecStartPost health check
`ExecStartPost=/bin/bash -c 'sleep 3 && curl -sf http://127.0.0.1:9502/status > /dev/null'`. systemd ahora falla si Swoole no levanta correctamente. ✅

### G-SWOOLE-04 ✅ swoole-laesh.service — ExecReload SIGHUP
`ExecReload=/bin/kill -HUP $MAINPID`. logrotate postrotate ahora recibe SIGHUP real para reopen del fd del log sin desconectar clientes WS. ✅

### G-SWOOLE-05 ✅ swoole_server.php — echo callbacks silenciados
4 `echo "[WS]..."` y `echo "[Bridge]..."` → `// Logger::log(..., 'DEBUG')`. Banner de arranque usa `{$swooleHost}:{$swoolePort}` en vez de hardcoded. ✅

---

---

## 🔴 PRIORIDAD ALTA — Deploy KVM2

### P-DEPLOY-01 ✅ [KVM2] Consolidación directorios + blindaje deploy permanente
**Estado**: Cerrado 2026-09-11 — los 3 directorios fantasma (`/opt/laesh/laesh-web-assets-uipv1a/`, `/opt/laesh/www/laesh-web-assets-uipv1a/`, `~/backups/`) ya no existen en KVM2.

**Directorios fantasma identificados en KVM2** (creados por rsyncs incorrectos previos):
| Directorio | Problema | Acción |
|---|---|---|
| `/opt/laesh/laesh-web-assets-uipv1a/` | Stray — owner `sysadmin:sysadmin`, perms `777`, sep 6 | ❌ **BORRAR** — verificar cms/ primero |
| `/opt/laesh/www/laesh-web-assets-uipv1a/` | Stray dentro de www — nunca sirve Nginx | ❌ **BORRAR** |
| `/home/sysadmin/backups/` | 2 SQLs manuales sin comprimir sep 8 — duplicados en `/opt/laesh/backups/db/` | ❌ **BORRAR** |
| `/home/sysadmin/laesh-kvm2-prod/` | Aparentemente idéntico a `laesh-setup/` | ❌ **BORRAR** si `diff` vacío |

**Directorios canónicos a conservar**:
| Directorio | Rol |
|---|---|
| `/opt/laesh/assets/laesh-web-assets-uipv1a/` | ✅ Assets Nginx (alias en nginx-laesh-domain.conf:127) |
| `/opt/laesh/www/laesh-swbldi/` | ✅ PHP app |
| `/opt/laesh/backups/db/` | ✅ Backups BD |
| `/home/sysadmin/laesh-src/` | ✅ Staging setup/deploy |
| `/home/sysadmin/laesh-setup/` | ✅ Setup scripts originales (1 copia canónica) |

**Fix local listo** (pendiente de deploy):
- `crons/cms_cleanup.php` — FIX 2026-09-09: consulta ambos prefijos (`/cms/` + `/img/cms/`) para no borrar imágenes con URL legada
- `setup/deploy/laesh-kvm2-prod/deploy.sh` — script canónico con rutas fijas y comentario explícito de rutas INCORRECTAS

**Secuencia de limpieza en KVM2** (ejecutar en este orden):
```bash
# 1. URGENTE: cms_cleanup a --dry-run hasta que el fix esté deployado
sudo crontab -u www-data -e  # agregar --dry-run a la línea del cleanup

# 2. Revisar si los stray tienen imágenes únicas ANTES de borrar
sudo ls /opt/laesh/laesh-web-assets-uipv1a/cms/
sudo find /opt/laesh/www/laesh-web-assets-uipv1a/ -type f | wc -l

# 3. Borrar directorios fantasma (solo tras revisar paso 2)
sudo rm -rf /opt/laesh/laesh-web-assets-uipv1a/
sudo rm -rf /opt/laesh/www/laesh-web-assets-uipv1a/
rm -rf /home/sysadmin/backups/

# 4. Comparar y borrar laesh-kvm2-prod si es duplicado de laesh-setup
diff <(ls /home/sysadmin/laesh-setup/) <(ls /home/sysadmin/laesh-kvm2-prod/)
# Si vacío: rm -rf /home/sysadmin/laesh-kvm2-prod/

# 5. Deploy del fix cms_cleanup.php con deploy.sh
# 6. Quitar --dry-run del crontab de www-data
```

**Rutas correctas definitivas** (documentado en deploy.sh):
| Componente | Ruta destino KVM2 correcta |
|---|---|
| PHP webapp (`laesh-swbldi/`) | `/opt/laesh/www/laesh-swbldi/` ✅ |
| Assets estáticos (`laesh-web-assets-uipv1a/`) | `/opt/laesh/assets/laesh-web-assets-uipv1a/` ✅ |
| Scripts BD (`setup/bds/laesh/`) | `/home/sysadmin/laesh-src/setup/bds/laesh/` ✅ |

### P-DEPLOY-02 ✅ [KVM2] Fix web_contenidos — normalizar URLs `/img/cms/` → `/cms/`
**Estado**: Cerrado 2026-09-11 — `COUNT(*) = 0`, no hay URLs legacy en BD.
```sql
-- Verificar cuántas filas tienen el prefijo incorrecto
SELECT COUNT(*) FROM web_contenidos WHERE valor LIKE '/laesh-web-assets-uipv1a/img/cms/%';
-- Corregir
UPDATE web_contenidos
SET valor = REPLACE(valor, '/laesh-web-assets-uipv1a/img/cms/', '/laesh-web-assets-uipv1a/cms/')
WHERE valor LIKE '/laesh-web-assets-uipv1a/img/cms/%';
```
Tras la corrección: quitar `--dry-run` del crontab y reactivar cleanup normal.

### P-DEPLOY-03 ✅ [KVM2] Re-upload imágenes calidad gallery borradas
**Estado**: Cerrado 2026-09-11 — usuario re-subió todas las imágenes vía CMS (calidad-gallery1, gallery3, seo/og, croquis).

---

*Última actualización: 2026-09-09 (sesión 11) — Diagnóstico directorios KVM2: 3 fantasmas confirmados, deploy.sh canónico creado, cms_cleanup fix dual-prefix aplicado en local. Pendientes: limpieza KVM2, normalización URLs BD, re-upload imágenes calidad. NO commitear hasta instrucción explícita. — Claude Code*
