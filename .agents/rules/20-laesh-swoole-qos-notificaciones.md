# Regla 20: Servidor WebSockets Swoole v6, Bridge HTTP y QoS (Proyecto LAESH)

## 1. Arquitectura del Servidor en Tiempo Real
- **Servidor WebSockets:** Corre sobre PHP 8.3 con **Swoole v6 (v6.2.2)** en el contenedor dedicado `laesh_swoole` escuchando internamente en el puerto `9502`.
- **Aislamiento:** Swoole opera como un proceso persistente e independiente de Apache/PHP-FPM, expuesto a la LAN vía Reverse Proxy en Apache (`ProxyPass /ws/ ws://127.0.0.1:9502/`).

## 2. Bridge HTTP de Emisión (\Common\Notifier)
- Las rutas del backend en Flight PHP **no** mantienen sockets WebSocket abiertos. Emite eventos a Swoole realizando peticiones HTTP POST internas no-bloqueantes (`cURL` con timeout corto de 1s) hacia `http://swoole:9502/publish`.
- El payload JSON transporta la firma de evento y datos de contexto (ej: `{"event": "nueva_orden", "folio": "LAESH-001"}`).

## 3. Garantía de Entrega y Calidad de Servicio (QoS - Dual Path)
- **Persistencia Obligatoria (Slow-Path):** Antes de emitir cualquier evento en tiempo real a Swoole, el backend en PHP-FPM **debe guardar transaccionalmente** la notificación en la tabla `notificaciones` de MariaDB con estado `leido = false`.
- **Broadcast Asíncrono (Fast-Path):** Tras confirmar la transacción SQL, el backend invoca a `\Common\Notifier::send()` para distribuir la alerta por WebSockets.
- **Reconexión y Sync Fallback:** Si el cliente móvil o recepción pierde la señal de red, al reconectarse consultará las notificaciones pendientes de MariaDB, garantizando cero pérdida de eventos.

## 4. Tuning de Kernel y Proceso en Swoole
Toda modificación al servidor `swoole_server.php` debe respetar los siguientes parámetros de tuning:
- `worker_num = 2` (Suficiente para el volumen estimado en clínica).
- `max_request = 2000` (Reinicio automático Poka-Yoke contra fugas de memoria).
- `heartbeat_check_interval = 30` / `heartbeat_idle_time = 65` (Detección de sockets muertos).
- `open_tcp_keepalive = true` (`tcp_keepidle = 60`, `tcp_keepinterval = 10`, `tcp_keepcount = 3`).
