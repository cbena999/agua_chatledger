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
**Nota para Gemini**: Cualquier nueva funcionalidad o refactorización debe respetar esta segmentación de archivos y directorios para mantener el orden arquitectónico.
