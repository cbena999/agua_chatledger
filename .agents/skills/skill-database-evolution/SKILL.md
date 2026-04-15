# SKILL: Database Evolution and Migration (MySQL to MariaDB)
---
name: Database Evolution
description: Guía para la partición histórica de ligacargos y migración de BD de Host A a Host C.
---

## 🏛️ Evolución de la Base de Datos
Esta habilidad se enfoca en escalar la base de datos **Agua** desde su legado (Host A/MySQL 5.6) hacia el futuro (Host C/MariaDB 10.4.27).

### 0. Especificación del Stack Host C (Windows)

| Componente | Versión |
| :--- | :--- |
| **Paquete** | `xampp-portable-windows-x64-7.4.33-0` |
| **Apache** | 2.4.54 |
| **MariaDB** | 10.4.27 |
| **PHP** | 7.4.33 |
| **phpMyAdmin** | 5.2.0 |

- **Directorio XAMPP**: `F:\xampp`
- **Webapp**: `F:\xampp\htdocs\agua`

### 1. Partición de Datos (Split de `ligacargos`)
Este es el hito técnico principal para el Host C:
- **Criterio de División**: Mover el histórico del año 2025 y anteriores hacia una nueva tabla: `ligacargos_historico`.
- **Estrategia de Ejecución**:
    1.  **Extract**: Identificar registros (`fpago` o `fecha`) con año <= 2025.
    2.  **Load**: Insertar esos registros en la estructura idéntica de `ligacargos_historico`.
    3.  **Delete**: Eliminar solo aquellos que se hayan copiado exitosamente de `ligacargos`.
- **Ventaja**: El Host C operará con una tabla de `ligacargos` ligera (aprox. el 15% del tamaño actual), lo que acelerará drásticamente los reportes de cobranza diaria.

### 2. Estándar de Cambios (UP/DOWN scripts)
- Todo cambio estructural (ej. nuevo campo `id_colonia_norm`, cambio de tipo de datos, nuevo índice) debe venir en un script SQL documentado.
- **Rollback (REVERSA)**: Se debe proveer un script que deshaga exactamente el cambio realizado para pruebas seguras en el Host C.

### 3. Regla Crítica — Consultas PHP sobre `ligacargos` en Host C

Con el split implementado, **todo PHP que lea `ligacargos` debe usar las vistas**, nunca la tabla directa:

| Caso de uso | Vista correcta | Tabla incorrecta |
|-------------|---------------|-----------------|
| Reportes que necesitan todos los registros (pagados + pendientes) | `vw_ligacargos_all` | `ligacargos` |
| Reportes de deuda pendiente (estado=0) | `vw_ligacargos_pendientes` | `ligacargos` |
| INSERT de nuevos cargos | `ligacargos` (tabla activa) | — |
| UPDATE/DELETE sobre cargos pendientes | `ligacargos` **Y** `ligacargos_historico` | solo `ligacargos` |

**Patrón secundario a evitar**: usar `vw_ligacargos_pendientes` en el FROM pero referenciar `ligacargos.campo` en el WHERE — esto genera un cross join implícito con la tabla directa.

**Campo `recargo` — trampa de semántica dual (ver F05 en 02-reglas-negocio.md)**:
- En `cargos` (catálogo): `recargo INT` es un **flag booleano** (0=no genera recargo, 1=sí genera).
- En `ligacargos` / `ligacargos_historico`: `recargo DECIMAL` es un **monto heredado** del catálogo al hacer INSERT — en Host C vale `0.00`; en datos migrados de Host A/B puede valer `1.00` (artefacto, no deuda real).
- **Nunca sumar `ligacargos.recargo` en totales financieros.**
- **Discriminador canónico**: `categoria IN (16,17)` o el alias `es_recargo_moratorio` de las vistas.
- Filtros como `AND l.recargo = 1` son incorrectos en Host C y deben reemplazarse por `AND l.categoria IN (16,17)`.

Archivos ya corregidos (2026-04-07, commit `bd1cb2f`):
- `reportes/listadeudores.php` — WHERE con `ligacargos.monto` → `vw_ligacargos_pendientes.monto`
- `reportes/carteravencida.php` — añadido `OR anio IS NULL` para históricos migrados
- `reportes/concentradocortecajaresumen.php` — `FROM ligacargos` → `FROM vw_ligacargos_all`
- `includes/negocio/cargos.php` — SELECT duplicados y UPDATE masivo corregidos
- `docs-dev/sanemiento-limpieza/reportes/genera_csv.php` — 4 JOINs directos corregidos

### 4. Ajustes de Consulta (SQL Mode)
Para MariaDB 10.4.27, se debe:
- **ONLY_FULL_GROUP_BY**: Asegurar que todas las consultas con `GROUP BY` incluyan todas las columnas del `SELECT` que no sean funciones de agregación.
- **Charset**: Estandarizar la creación de tablas y campos de texto con `CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci` para soporte total de caracteres especiales.

### 4. Auditoría de Integridad (Limpieza)
- Periódicamente ejecutar scripts de detección de **"Residuos Legado"**:
    - Cargos sin contratos válidos (`id_orphans`).
    - Folios duplicados o nulos en estados inconsistentes.
    - Usuarios sin contratos o con todos los contratos en suspensión definitiva (usando el nuevo reporte de "Usuarios Especiales").

### 5. Monitoreo y Profiling (MariaDB 10.4+)
Para el Host C, el archivo `my.ini` (`F:\xampp\mysql\bin\my.ini`) debe incluir **obligatoriamente**:

| Variable | Valor | Propósito |
| :--- | :--- | :--- |
| `slow_query_log` | 1 | Activar slow query log |
| `long_query_time` | 1 | Umbral en segundos |
| `log_queries_not_using_indexes` | 1 | Detectar full table scans |
| `log_throttle_queries_not_using_indexes` | 10 | Limitar flood (queries/min) |
| `log_slow_verbosity` | `query_plan,explain` | Plan de ejecución en slow log |
| `log_slow_disabled_statements` | `""` (vacío) | **Habilitar logging de statements dentro de SPs** (default=`sp` los deshabilita) |
| `log_output` | FILE | Output a archivo (no a tabla) |
| `general_log` | 0 | **OFF por defecto** — activar solo para diagnóstico |

- **Ruta de logs**: `F:/aguav2/logs/` (4 archivos: slow, error, general, pid)
- **Referencia de config**: [optimizacion/my.ini](file:///opt/lampp/htdocs/agua/docs-dev/migration-aguav2/host-c-setup/optimizacion/my.ini)

---
**Nota para Gemini**: Al manipular la base de datos en Host C o sincronizar B -> A, estas reglas de integridad, partición y monitoreo son mandatorias.
