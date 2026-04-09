# SKILL: PHP Migration and Refactoring (Legacy to 7.4)
---
name: PHP-Migration-74
description: Guía de refactorización de PHP 5.5 a 7.4 para el Host C.
---

## 🚀 Guía de Refactorización de Backend
Para asegurar que el sistema Agua funcione sin errores (Warnings/Deprecated) en el Host C (PHP 7.4.33).

### 1. Funciones Depreciadas
- **MySQL (mysqli_v/s mysql_)**: El sistema ya usa `mysqli_`, pero se debe asegurar que se use siempre el conector `$this->link` (vía `Conexion.php`) y no se use el antiguo parámetro global.
- No utilizar `ereg()` ni `split()`. Usar alternativamente `preg_match()` y `explode()`.

### 2. Manejo de Errores y Excepciones
- Implementar bloques `try-catch` en las operaciones más delicadas (consultas SQL de pago o registro de contrato).
- No permitir que salgan errores PHP a la pantalla final. Utilizar logs de sistema o el archivo `error_log` del stack.

### 3. Tipado de Datos y Nulos
- PHP 7.4 permite tipos en las propiedades de las clases (ej. `public string $nombre;`). Se recomienda añadir tipos donde sea seguro para mejorar la legibilidad y detección de errores.
- Tener cuidado con los valores `null` en operaciones aritméticas, ya que PHP 7.4 es más estricto que PHP 5.5.

### 4. Portabilidad y Rutas
- Reemplazar todas las rutas absolutas (`/opt/lampp/...`) por constantes basadas en `__DIR__` o variables de entorno (`$_SERVER['DOCUMENT_ROOT']`).
- **Separador de Directorios**: Usar `DIRECTORY_SEPARATOR` o `/` (Windows acepta `/` en la mayoría de los casos de PHP) para evitar fallas en el Host C.

---
**Nota para Gemini**: Al mover código hacia el Host C, estas son las transformaciones que el código **debe** sufrir durante el despliegue mediante scripts.
