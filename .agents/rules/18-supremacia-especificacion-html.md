# Regla 18 - Supremacía de la Especificación HTML

Esta regla establece que para el subproyecto **Restaurant (Comandas VOSK)**, la "Single Source of Truth" (SSOT) para cualquier decisión de arquitectura, diseño de UI, flujo operativo y pila tecnológica reside de forma inamovible en los 12 documentos HTML ubicados en el directorio `docs/` del repositorio.

## Directrices Obligatorias:
1. **Auditoría Previa:** Ninguna característica nueva o refactorización puede comenzar sin antes ejecutar una validación (`grep_search` o lectura) sobre `Especificacion_Funcional_Comandas_VOSK.html` y `Especificacion_Tecnica_Comandas_VOSK.html` para entender cómo se diseñó originalmente.
2. **Restricción de Interfaces:** No se pueden aplicar patrones web estándar o "modernos" (como botones interactivos, pantallas táctiles o formularios web) si los documentos especifican una modalidad distinta (ej. interacción estrictamente por voz o automatización de hardware).
3. **Roles y Seguridad:** El comportamiento y permisos (RBAC) de Meseros, Cocineros y Cajeros está estrictamente tipificado en los manuales operativos HTML. El código debe modelar la realidad descrita allí.
4. **Corrección Continua:** Si se detecta un GAP o desalineación entre el código actual y los 12 HTMLs, este se considera un defecto prioritario (bug) que debe informarse al usuario y corregirse inmediatamente mediante un *roll-back* o refactorización.
