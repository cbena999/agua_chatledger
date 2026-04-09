# SKILL: Modern UI/UX Refactoring (CSS/HTML)
---
name: UI/UX Modern Refactor
description: Guía de transformación de layouts legado a estándares modernos (Flexbox/Grid/Responsive) en el proyecto Agua.
---

## 🎨 Principios de Diseño para Agua
Para las interfaces en el Host C y refactorings en el Host A, se deben seguir estos lineamientos:

### 1. Reemplazo de Layouts Legado
- **Fuera**: Evitar el uso de `<table>` para el diseño de la estructura de la página (solo para datos tabulares).
- **Dentro**: Utilizar **Flexbox** para alineación lineal y **CSS Grid** para la rejilla principal de la aplicación.
- **Variables CSS**: Definir colores corporativos (Azul Agua, Grises de fondo, Verdes de estado) en `:root` para consistencia.

### 2. Tipografía y Espaciado
- Utilizar fuentes modernas (ej. Inter o Roboto si es posible vía Google Fonts) con jerarquía clara de `<h1>` a `<h3>`.
- **Escala de Espaciado**: Usar unidades `rem` en lugar de `px` para facilitar la accesibilidad y el escalado.

### 3. Componentes UI (Plates Friendly)
Cada vista parcial debe ser:
- **Auto-contenida**: Estilos específicos encapsulados en clases únicas (ej. `contract-card`, `payment-row`).
- **Estados Visuales**: Definir estados de ":hover", ":active" y ":disabled" en botones y campos de entrada para mejorar la interactividad.

### 4. Responsividad
- Asegurar que los reportes clave (`carteravencida.php`) sean legibles en tablets o pantallas pequeñas mediante `media queries` básicas, sin sacrificar la densidad de información necesaria para la administración.

---
**Nota para Gemini**: Al recibir la tarea de "mejorar la vista" o "crear un reporte", este archivo define el estándar visual esperado.
