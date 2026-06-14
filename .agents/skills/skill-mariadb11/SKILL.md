# SKILL: MariaDB 11 — Features, Migración y Optimización
---
name: MariaDB 11 Ops
description: Features de MariaDB 11, migración desde MySQL/MariaDB 10.x, optimización del query optimizer, issues conocidos y workarounds.
---

## 🗄️ Contexto
Host C opera MariaDB (puerto 7002) con la base `aguayd_os`. El proyecto Restaurant usa MariaDB 11 en Docker. Esta guía cubre las diferencias clave y mejores prácticas.

---

## 1. Features Clave de MariaDB 11

### 1.1 Nuevo Modelo de Costos del Optimizador
El optimizador de consultas fue rediseñado para estimar costos con mayor precisión. **Impacto**: Algunas queries que eran rápidas pueden cambiar su plan de ejecución.

```sql
-- Forzar re-análisis de estadísticas tras migración
ANALYZE TABLE contratos;
ANALYZE TABLE ligacargos;
ANALYZE TABLE ligacargos_historico;
```

### 1.2 MariaDB Vector (AI/RAG)
```sql
-- Tipo de dato vectorial (para futuras integraciones de IA)
CREATE TABLE embeddings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT,
    vector BLOB -- Tipo vector nativo
);
```

### 1.3 ALTER TABLE No-Bloqueante
```sql
-- Agregar columna sin bloquear lecturas
ALTER TABLE usuario ADD COLUMN email VARCHAR(255) DEFAULT NULL,
    ALGORITHM=INSTANT;
```

### 1.4 Extensión TIMESTAMP 2038
El rango de `TIMESTAMP` se extiende hasta 2106, eliminando el clásico "Problema del Año 2038".

### 1.5 Seguridad Mejorada
- Configuración SSL automática.
- Nuevas funciones de encriptación nativas.

---

## 2. Migración desde MySQL/MariaDB 10.x

### 2.1 Checklist Pre-Migración
1. **Backup lógico** (nunca copiar datadir directamente):
   ```bash
   mysqldump --max_allowed_packet=512M --single-transaction \
     --databases aguayd_os > backup_pre_migration.sql
   ```
2. **No exportar bases de sistema** (`mysql`, `information_schema`).
3. **Verificar plugins de autenticación**:
   ```sql
   SELECT User, Host, plugin FROM mysql.user;
   ```
   MariaDB usa `mysql_native_password` por defecto; MySQL 8+ usa `caching_sha2_password`.

### 2.2 Post-Migración
```bash
# Obligatorio tras importar datos
mariadb-upgrade --force

# Re-analizar tablas críticas
mysql -e "ANALYZE TABLE usuario; ANALYZE TABLE contrato; ANALYZE TABLE ligacargos;"
```

### 2.3 Verificación de Integridad
```sql
-- Verificar que las vistas del split siguen funcionando
SELECT COUNT(*) FROM vw_ligacargos_all;
SELECT COUNT(*) FROM vw_ligacargos_pendientes;

-- Validar FK
SELECT * FROM information_schema.TABLE_CONSTRAINTS 
WHERE CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND TABLE_SCHEMA = 'aguayd_os';
```

---

## 3. Mejores Prácticas de Rendimiento

### 3.1 Configuración Recomendada (`my.cnf` / `my.ini`)
```ini
[mysqld]
# Motor InnoDB
innodb_buffer_pool_size = 256M    # 70% de RAM disponible
innodb_log_file_size = 64M
innodb_flush_log_at_trx_commit = 1  # Durabilidad completa

# Optimizer
optimizer_switch = 'index_merge=on,index_merge_union=on'

# Conexiones
max_connections = 50
max_allowed_packet = 64M

# Logs de queries lentas
slow_query_log = 1
slow_query_log_file = /var/log/mysql/slow.log
long_query_time = 2

# Charset
character_set_server = utf8mb4
collation_server = utf8mb4_unicode_ci
```

### 3.2 Indexación Efectiva
```sql
-- Índices compuestos para queries frecuentes del proyecto Agua
CREATE INDEX idx_lc_contrato_pagado ON ligacargos(id_contrato, pagado);
CREATE INDEX idx_lc_anio_cat ON ligacargos(anio, id_categoria);

-- Para búsquedas de usuarios por nombre
CREATE INDEX idx_usr_nombre ON usuario(nombre(50));
```

### 3.3 Transacciones Explícitas
```sql
-- Para operaciones de pago (múltiples updates)
START TRANSACTION;
  UPDATE ligacargos SET pagado = 1, fpago = NOW() WHERE id = ?;
  INSERT INTO pagos (id_contrato, monto, fecha) VALUES (?, ?, NOW());
COMMIT;
```

---

## 4. Incompatibilidades y Issues

| Issue | Descripción | Workaround |
|---|---|---|
| **GTID incompatible** | GTIDs de MySQL ≠ MariaDB | Usar replicación por posición si se mezclan |
| **JSON storage** | Diferencias sutiles en funciones JSON | Testear `JSON_EXTRACT`, `JSON_CONTAINS` |
| **Optimizer regresión** | Queries antes rápidas pueden cambiar plan | `ANALYZE TABLE` + `FORCE INDEX` si necesario |
| **InnoDB Change Buffer** | Removido en MariaDB 11 | No requiere acción; rendimiento neto mejorado |
| **Auth plugin mismatch** | Al migrar usuarios desde MySQL 8 | Ejecutar `ALTER USER 'root'@'%' IDENTIFIED VIA mysql_native_password` |
| **Error 176 Aria** | Corrupción tras apagado abrupto (Host C) | `repair_aria_system_tables.sql` + `aria_chk --recover` |

---

## 5. Docker Compose para Restaurant

```yaml
# Fragmento relevante de docker-compose.yml
services:
  mariadb:
    image: mariadb:11
    restart: unless-stopped
    environment:
      MARIADB_ROOT_PASSWORD: ${DB_ROOT_PASS}
      MARIADB_DATABASE: restaurantb
      MARIADB_USER: ${DB_USER}
      MARIADB_PASSWORD: ${DB_PASS}
    ports:
      - "3306:3306"
    volumes:
      - db_data:/var/lib/mysql
      - ./config/my.cnf:/etc/mysql/conf.d/custom.cnf:ro
    command: --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
```

---
**Nota para Agentes IA**: Al escribir queries SQL, respetar siempre la regla del split: usar `vw_ligacargos_all` o `vw_ligacargos_pendientes` (proyecto Agua). Para el proyecto Restaurant en MariaDB 11, aprovechar features modernos como `ALTER...ALGORITHM=INSTANT`. Siempre ejecutar `ANALYZE TABLE` tras migraciones masivas.
