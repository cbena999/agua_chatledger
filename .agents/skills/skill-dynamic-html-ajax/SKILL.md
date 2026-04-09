# SKILL: Dynamic UI and AJAX (jQuery/JS)
---
name: Dynamic UI & AJAX
description: Guía para estandarizar la interactividad dinámica y peticiones AJAX en Agua, basada en paxscript.js.
---

## ⚡ Estándar AJAX en Agua
La interactividad debe estar orquestada a través del archivo núcleo: `includes/js/paxscript.js`.

### 1. Peticiones de Datos
- **Método Principal**: Usar `$.ajax` con manejo de errores (`.fail()`) y completado (`.done()`).
- **Data Attributes**: Utilizar atributos `data-*` en el HTML para pasar variables (ej. `data-numcontrato`, `data-idusuario`) hacia los scripts. No codificar datos directamente en las funciones JS si es posible.

### 2. Estados de Carga
- Al iniciar una petición AJAX crítica (ej. buscar usuario u obtener histórico), se debe:
    1.  Mostrar unindicador visual (**Loading spinner** o texto de espera) en el contenedor objetivo.
    2.  Deshabilitar el botón de envío para evitar peticiones duplicadas.

### 3. Actualización de Interfaz (Parciales)
En lugar de reconstruir toda la página, se deben actualizar fragmentos de HTML devueltos por el `ruteador.php`:
- El servidor devuelve fragmentos HTML (vistas parciales de Plates).
- El JS inyecta el HTML (`$('#contenedor').html(data)`) y, opcionalmente, aplica animaciones de entrada (`fadeIn()`).

### 4. Validaciones en Tiempo Real
- Usar eventos de entrada (`input`, `change`) para validaciones rápidas (ej. formato de número de contrato, longitud de nombre).
- Proveer feedback visual inmediato (ej. cambio de color de borde y mensaje pequeño de error) antes de que el usuario envíe el formulario.

---
**Nota para Gemini**: Al extender funcionalidades en `paxscript.js`, asegurar que no se creen funciones globales redundantes y se compartan los selectores de jQuery.
