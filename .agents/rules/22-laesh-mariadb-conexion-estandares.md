# Regla 22: Estándares de Conectividad, Diseño de BD y Persistencia (Proyecto LAESH)

## 1. Conectividad PDO y Pool de Conexiones FPM
- **Persistencia PDO Obligatoria:** Toda conexión en `Common\DB` debe inicializarse con el atributo `PDO::ATTR_PERSISTENT => true`. Esto opera como un pool de conexiones a nivel de proceso PHP-FPM, reutilizando el socket TCP de MariaDB y reduciendo la latencia en ~5-30ms por llamada HTMX.
- **Aislamiento en Swoole:** Si Swoole requiere consultar MariaDB en el futuro, es **estrictamente obligatorio** usar `Swoole\Database\PDOPool` para arrendar conexiones por corrutina.

## 2. Parámetros de Internacionalización (Español MX)
Cada instancia de PDO creada por `Common\DB` debe ejecutar las siguientes sentencias al conectarse:
- `SET NAMES utf8mb4 COLLATE utf8mb4_spanish_ci`: Cotejo y ordenamiento nativo en Español de México (acentos, diéresis, letra `ñ`).
- `SET lc_time_names = 'es_MX'`: Formateo nativo de fechas SQL (`MONTHNAME()`, `DAYNAME()`) en español.
- `SET time_zone = '-06:00'`: Sincronización con la Hora del Centro de México.
- `SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))`: Exclusión de validaciones restrictivas de agrupamiento para queries legadas o de auditoría.

## 3. Estándares de Diseño de Base de Datos
- **Bajas Lógicas (Soft Deletes):** Queda estrictamente prohibido el uso de `DELETE` físico sobre entidades clínicas clave (`PACIENTES`, `ESTUDIOS`, `ORDENES`). Se utilizará la columna `activo = false` o ENUMs de estado.
- **Vistas Lógicas (Views):** Se pre-formatearán consultas complejas (JOINs) en Vistas de MariaDB (ej. `vw_ordenes_completas`) para descargar de procesamiento a PHP-FPM y renderizar fragmentos HTMX ultrarrápidos.
- **Integridad ACID y Stored Procedures:** La creación de órdenes y asignación de folios consecutivos unificados debe encapsularse en Procedimientos Almacenados (ej: `CrearOrdenLaboratorio`) con bloques `START TRANSACTION`, `COMMIT` y `ROLLBACK`.
