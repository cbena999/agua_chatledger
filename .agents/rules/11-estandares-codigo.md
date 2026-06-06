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

## 🎨 6. Centralización de Estilos (Cero CSS/JS Embebidos)

Para preservar la limpieza de las vistas y habilitar la correcta caché de archivos estáticos en el navegador, queda estrictamente prohibido incrustar bloques de estilos `<style>` o reglas CSS en línea (`inline styles`) complejas en las vistas (`views/*.php`) o reportes.

*   **Mandato:** Todo estilo visual nuevo o refactorizado debe alojarse en la hoja de estilos centralizada `/web-assets/css/paxstyle2.css`.
*   **Versionamiento (Cache-Busting):** Los enlaces de assets estáticos en el layout principal (`index2.php`) deben utilizar marcas de tiempo o versiones para forzar la recarga ante cambios.

---

## 📐 7. Jerarquía Visual y Densidad de Elementos de Formulario

El diseño visual del sistema debe alinearse a la estética **Glassmorphism Híbrido** de Agua V2:
*   **Densidad y Tamaño:** Mantener labels, inputs y la distribución general de los formularios de manera compacta y legible (heredados de la rama `main`). Los labels agrupadores de sección no deben parecer botones gigantes.
*   **Alineación de Botones:** En las fichas de información y opciones de pago, los botones de acción principal (como *Pagar* y *Cancelar*) deben alinearse consistentemente (ej. a la izquierda en la sección de Montos/Opciones).
*   **Iconografía e Iconos SVG:** Se deben evitar emojis tradicionales en favor de iconos limpios o SVG, asegurando que el color de contraste del icono destaque del color de fondo del botón para evitar invisibilidad visual (ej. iconos claros sobre botones de color oscuro y viceversa).
*   **Marcas de Agua y Contraste:** Las marcas de agua visuales (ej. `tl1.jpg` para el fondo) no deben entorpecer la lectura de la interfaz. Deben limitarse a una opacidad adecuada (ej. 0.35) y cargarse mediante clases CSS dedicadas (`.card-watermark`).

---

## 🗄️ 8. Arquitectura Multi-Cliente (Bases de Datos Aisladas)

Para la gestión de múltiples localidades o clientes en producción:
*   **Decisión Estratégica:** Se descarta el uso de esquemas con columnas de tipo `tenant_id` sobre una sola base de datos compartida.
*   **Mandato:** Cada cliente webapp utilizará su propia base de datos aislada (One Database per Client) y se mantendrá una rama Git independiente por cliente (ej. `main` para desarrollo base y `aguad_ac_oferta` para el despliegue del Tenant Tlapa en Host C). Esto garantiza aislamiento completo y simplifica el procedimiento de respaldo y restauración financiera.

---
**Nota para Gemini/Claude**: El incumplimiento de estas normas de escapado, encapsulamiento y estándares visuales se considera una deuda técnica crítica que debe corregirse proactivamente en cada refactorización.
