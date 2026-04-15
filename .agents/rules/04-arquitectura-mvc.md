# Regla 04: Arquitectura MVC y Localización de Lógica

Esta regla define la arquitectura técnica del sistema **Agua** y el propósito de sus directorios.

---

## 🏛️ Estándar Arquitectónico
El sistema sigue un patrón **MVC** simplificado con las siguientes tecnologías:
- **Vista (View)**: Utiliza el motor **Plates Template Engine (v3.3)** en el directorio `views/`.
- **Controlador (Controller)**: Centralizado en **`ruteador.php`**.
- **Interactividad**: Gestionada por **AJAX/jQuery** y el archivo núcleo **`includes/js/paxscript.js`**.

---

## 📁 Localización de la Verdad (Logic)

- **Lógica de Negocio y Negocio Compartido**: Todo el procesamiento de deuda, recargos y cálculo operativo reside en:
    - **`includes/negocio/`** (Funciones PHP núcleo).
    - **`views/`** (Lógica de presentación empresarial).
- **Control Central**:
    - **`ruteador.php`**: Gestiona el flujo de peticiones.
    - **`config/Conexion.php`**: Gestión de la conexión a la base de datos (se refactoriza para portabilidad).
- **Reportes Especializados**:
    - **`admin/`**: Módulos administrativos y de consulta financiera.
- **Librerías de Terceros**:
    - **`lib/`**: Librerías externas como `barcode`, `image_generation`, etc. (No contiene lógica de negocio del sistema).

---

## 🛠️ Estándares de Codificación e Integridad (Data Hardening)

Para garantizar la seguridad y portabilidad del sistema (especialmente en el Host C), se deben seguir estrictamente estas reglas:

### 1. Escapado de Datos (SQL Injection Prevention)
Toda variable externa o dinámica que se concatene en una consulta SQL **DEBE** ser escapada previamente:
- **Correcto**: 
  ```php
  $nombre_esc = $y->real_escape_string($nombre);
  $y->q("INSERT INTO cambios (descripcion) VALUES ('$nombre_esc')");
  ```
- **Prohibido**: Concatenar variables directamente (`" VALUES ('$nombre')"`) sin escape.

### 2. Encapsulamiento de Base de Datos
No se deben utilizar funciones nativas de `mysqli_*` directamente en los archivos de lógica de negocio (PHPs en `includes/negocio/` o `views/`). 
- **Regla**: Toda interacción debe ser a través de la clase **`Conexion.php`**.
- Metodos mandatorios: `$y->q()`, `$y->fetch_array()`, `$y->fetch_assoc()`, `$y->num_rows()`, `$y->real_escape_string()`, `$y->error()`.

### 3. Manejo de Errores Legacy
Se prohíbe el uso de la función **`mysql_error()`** (inexistente en PHP 7.4). En su lugar:
- Usar **`$y->error()`** para obtener el mensaje de error de la base de datos a través de la conexión activa.
- Ejemplo: `error_log("Error: " . $y->error());`

---
**Nota para Gemini**: Cualquier nueva funcionalidad o refactorización debe respetar esta segmentación de archivos y directorios para mantener el orden arquitectónico.
