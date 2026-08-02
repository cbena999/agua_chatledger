# Regla 21: Trazabilidad SQL, Observabilidad y Logs de Desarrollo (Proyecto LAESH)

## 1. Observabilidad Dual-Path del Sistema (\Common\Logger)
- **Log General:** Se utiliza `\Common\Logger::log($level, $message, $userId)` para ingestar eventos generales (`INFO`, `WARN`, `ERROR`, `FATAL`).
- **Ruta Principal (DB):** Persiste los registros en la tabla `sys_logs` capturando nivel, mensaje, IP del cliente, ID del operador y marca temporal.
- **Ruta Redundante (File):** Si MariaDB no está disponible, escribe automáticamente en el archivo físico de emergencia local: `laesh-swbldi/logs/app.log`.

## 2. Telemetría y Fallback Log de Consultas SQL (\Common\DB::logFallback)
- **Indagación de Origen (Debug Backtrace):** `DB::logFallback()` utiliza `debug_backtrace()` para aislar el archivo y línea exacta de código fuente que detonó la falla de consulta SQL.
- **Agrupamiento por Hash CRC32:** Calcula un hash de 8 caracteres sobre el texto del query para agrupar fallas repetitivas en reportes de auditoría.
- **Persistencia en `fallback_log`:** Almacena el tipo de consulta (`SELECT`, `INSERT`, etc.), el texto completo del query SQL, y el mensaje de error arrojado por el driver PDO.

## 3. Estándares de Trazas para Desarrollo y Testing
- **Alternativa 1 (Logger del Proyecto):** Para pruebas de integración y volcado de variables complejas:
  `\Common\Logger::log('DEBUG', 'Arreglo: ' . print_r($data, true));`
  Monitoreo en vivo vía consola: `tail -f laesh-swbldi/logs/app.log`.
- **Alternativa 2 (error_log nativo):** Para depuración ligera en caliente:
  `error_log("DEBUG: Valor temporal token: " . $token);`
  Monitoreo en vivo vía consola: `docker compose logs -f laesh_swoole` (o `restaurantb_web`).
