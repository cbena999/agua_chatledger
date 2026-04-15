# Regla 11: Estándares de Código y Seguridad (Data Hardening)

Esta regla define los estándares mandatorios para la escritura de código PHP y la interacción con la base de datos en el sistema **Agua**, garantizando la seguridad (anti-SQLi) y la portabilidad entre hosts (Host A / Host C).

---

## 🛡️ 1. Escapado Mandatorio de Variables

Toda variable dinámica, externa o proveniente de sesión que sea concatenada dentro de una sentencia SQL **DEBE** ser escapada para prevenir inyecciones SQL y fallos de sintaxis por caracteres especiales (como apóstrofes).

- **Mandato**: Utilizar siempre `$y->real_escape_string($variable)`.
- **Ejemplo Correcto**:
  ```php
  $descripcion_esc = $y->real_escape_string($descripcion);
  $sql = "INSERT INTO cambios (descripcion) VALUES ('$descripcion_esc')";
  $y->q($sql);
  ```
- **Prohibido**: Concatenar variables directamente sin escape, incluso si provienen de fuentes internas, para evitar fallos en bitácoras de cambios.

---

## 🏗️ 2. Encapsulamiento de Base de Datos (Clase Conexion)

Para asegurar la portabilidad del sistema (especialmente debido a las diferencias de puerto y configuración entre el Host A y el Host C/MariaDB), se prohíbe el uso de métodos directos de `mysqli_`.

- **Mandato**: Toda interacción con la base de datos debe realizarse a través de los métodos de la clase **`config/Conexion.php`**.
- **Métodos permitidos en lógica de negocio**:
    - `$y->q($query)`: Ejecución de consultas.
    - `$y->fetch_array($res)` / `$y->fetch_assoc($res)`: Recuperación de datos.
    - `$y->num_rows($res)`: Conteo de resultados.
    - `$y->real_escape_string($string)`: Escapado de datos.
    - `$y->error()`: Recuperación de mensajes de error del motor.
    - `$y->insert_id()`: Obtención del último ID generado.

---

## 🚨 3. Manejo de Errores y API Legacy

El sistema Agua V2 en Host C utiliza PHP 7.4.33, lo que invalida el uso de funciones `mysql_*` antiguas.

- **Mandato**: Reemplazar cualquier instancia de `mysql_error()` por **`$y->error()`**.
- **Contexto**: `mysql_error()` provoca un error fatal en PHP 7+. El método `$y->error()` está mapeado internamente a `mysqli_error($this->link)`, lo que garantiza compatibilidad y registro en los logs de error del servidor.

---

## 📊 4. Auditoría de Cambios (Tabla `cambios`)

Cada vez que se realice una inserción en la tabla de auditoría `cambios`, se debe asegurar que tanto el "antes" como el "después" estén escapados, ya que suelen contener textos descriptivos largos generados dinámicamente.

- **Regla de Oro**: Si el `INSERT INTO cambios` falla, se debe revisar si el mensaje de error está siendo capturado por el Monitor de Fallbacks (`admin/saneamiento/monitor_fallbacks.php`).

---
**Nota para Gemini/Claude**: El incumplimiento de estas normas de escapado y encapsulamiento se considera una deuda técnica crítica que debe corregirse proactivamente en cada refactorización.
