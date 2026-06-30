# Buenas Prácticas para la Gestión del Contexto y Prevención del Truncamiento

Este documento establece las directrices y estrategias operativas para optimizar el uso de la ventana de contexto en las interacciones con asistentes de IA (Google Antigravity y Claude Code), previniendo el truncamiento prematuro de las conversaciones y garantizando la persistencia del conocimiento del proyecto.

---

## 1. El Fenómeno del Truncamiento de Contexto

Las ventanas de contexto de las IAs se miden en **tokens** (la unidad básica de procesamiento de texto). Cuando un hilo de conversación se vuelve sumamente largo debido a explicaciones detalladas, trazas de código completas o dumps de bases de datos, se alcanza el límite físico de tokens del modelo.

### Síntomas del Truncamiento:
*   Los mensajes más antiguos de la conversación desaparecen visualmente del chat.
*   El sistema inyecta un bloque condensado de resumen (un **Checkpoint**) al inicio del prompt del modelo para sustituir la conversación cruda.
*   Aunque el asistente conserva las directrices generales, se pierde el detalle forense fino de los primeros turnos (ej. logs exactos de error o queries específicas del inicio).

---

## 2. Buenas Prácticas para Evitar el Truncamiento Prematuro

Para maximizar la duración y utilidad de una sola sesión de chat, tanto el operador humano como el asistente de IA deben seguir estas pautas:

### A. Modularización de Sesiones (Hilos Temáticos)
*   **Regla de Oro**: Una sesión por hito o bug. En cuanto se complete una tarea (ej. "Reconciliación del contrato 1235 resuelta"), cierra ese chat e inicia uno nuevo para el siguiente tema. No arrastres la historia de un bug resuelto a una nueva tarea de desarrollo.
*   **Por qué**: Un chat limpio inicia con cero tokens de historial, permitiendo que el 100% de la ventana de contexto se dedique a la tarea activa.

### B. Gestión de Salidas Masivas de Consola
*   **Prohibición**: Evita copiar y pegar salidas masivas de consola (como reportes SQL de miles de líneas o logs extensos de depuración) directamente en la caja de texto del chat.
*   **Solución**: Redirecciona la salida del comando a un archivo temporal o reporte en el disco (ej. `bash script.sh > /tmp/salida.log`) e indícale al asistente: *"Analiza el archivo `/tmp/salida.log`"*. El asistente utilizará herramientas optimizadas como `view_file` para extraer solo las partes necesarias, consumiendo una fracción del contexto.

### C. Solicitudes de Código Acotadas
*   Al solicitar análisis o edición de código, pide al asistente que trabaje sobre rangos específicos de líneas en lugar de procesar archivos de miles de líneas enteros si la edición es localizada.

### D. Uso Estratégico de Artifacts
*   Utiliza los **Artifacts** (archivos `.md` generados fuera del flujo del chat) para documentar planes, listados de tareas o bitácoras. Los asistentes leen y actualizan los Artifacts de forma optimizada sin saturar el flujo de mensajes del chat visual.

---

## 3. El Rol Estratégico de `agua_chatledger` y los Symlinks

El repositorio `/home/carlos/GitHub/agua_chatledger/` y su estructura de symlinks juegan un papel fundamental para solucionar el dilema de la pérdida de contexto.

### La Extensión "Chatledger for Antigravity"
**Chatledger for Antigravity** es una extensión de VS Code diseñada específicamente para:
> *"Automatically export AI conversation trajectories from Antigravity IDE to markdown files for version control and sharing."*

#### Validación de Funcionalidad:
Esta herramienta está **totalmente funcional y activa**. La prueba de su operación diaria es la existencia de más de 160 archivos de bitácora en la raíz del repositorio `/home/carlos/GitHub/agua_chatledger/` (tales como `Auditing_Host_C_Surcharge_Calculation_15a87ba76a88.md` o `Audit_Caja_Reconciliation_Discrepancies_78333e6a1a56.md`). Cada uno de estos archivos documenta la trayectoria completa, los pasos y la lógica de pensamiento de la IA en cada interacción.

#### Cómo contribuye a resguardar el contexto:
1.  **Bitácora Forense e Inmutable:** Registra no solo las respuestas finales, sino todo el proceso de pensamiento (`thinking`) de la IA, los comandos ejecutados y las herramientas invocadas. Si una modificación posterior causa una regresión de software, el desarrollador puede consultar la bitácora exacta de la sesión donde se introdujo el cambio para entender la justificación técnica.
2.  **Búsqueda Rápida de Soluciones Históricas:** Al exportar las trayectorias en texto plano Markdown indexadas por Git, el operador puede hacer búsquedas instantáneas usando `grep` o `ripgrep` sobre todas las conversaciones pasadas para reutilizar soluciones previas o entender decisiones complejas de diseño de base de datos.
3.  **Puente de Memoria Inter-Sesiones:** Cuando la ventana de contexto de un chat de desarrollo se llena (truncamiento), la extensión ya ha guardado la trayectoria en el disco. Al abrir una nueva conversación, el asistente puede leer el archivo `.md` de la sesión anterior para continuar exactamente donde se quedó sin experimentar lagunas de conocimiento.
4.  **Desacoplamiento de Código y Metadata:** Al estar symlinkeada, permite versionar las conversaciones de IA de forma independiente al código de negocio de Agua en producción, evitando que los logs saturen el historial de commits del software final.

### ¿Cómo contribuye Chatledger a mitigar el truncamiento?
1.  **Memoria Externa Persistente:** En lugar de depender de que la IA "recuerde" lo que hizo en chats anteriores a través del historial de la interfaz, el asistente escribe bitácoras de estabilización (en `logs/`) y scopes funcionales (en `aguav2-scope/`). Al abrir un chat nuevo, el asistente lee estos archivos del disco y recupera el 100% del estado del arte instantáneamente.
2.  **Ground Truth Desacoplado de Git:** Los archivos meta de los agentes (`GEMINI.md`, `CLAUDE.md`, `.clauderules` y la carpeta `.agents/rules/`) están symlinkeados a una carpeta física externa al repositorio de código principal (`agua`). Esto significa que:
    *   Puedes cambiar de rama en Git (`git checkout feature/upgrade...` a `git checkout main`) sin que los archivos de directrices de la IA cambien, se borren o se generen conflictos de mezcla (merge conflicts).
    *   La IA siempre tiene las mismas reglas de negocio de última generación, independientemente del estado de la rama del código que se esté editando.
3.  **MCP Sincronizado:** El archivo `.mcp.json` también se comparte a través de la carpeta `chatledger`. Las credenciales y configuraciones del servidor se mantienen unificadas en un solo lugar y son leídas de forma automática por todos los asistentes (Gemini y Claude).

---

## 4. Prompts Recomendados para Iniciar Sesiones Limpias (Bridge de Contexto)

Cuando abras una nueva sesión de chat para continuar el desarrollo, utiliza una estructura de prompt que le permita al asistente posicionarse rápidamente utilizando el conocimiento del repositorio.

### Plantilla de Prompt de Inicio
```markdown
Iniciamos una nueva sesión de desarrollo.
1. Revisa el archivo maestro GEMINI.md para comprender la arquitectura actual.
2. Lee el alcance de la última estabilización en:
   - [Scope V2](file:///home/carlos/GitHub/agua_chatledger/aguav2-scope/scope-estabilizacion-fiscal-v2.md)
   - [Mora Legacy Plan](file:///opt/lampp/htdocs/agua/docs-dev/pase-a-prod/aguav2-2026/fixes/fix-issue-01/docs/PLAN_MOTOR_MORA_LEGACY.md)
3. Nuestro objetivo para esta sesión es: [Describir la tarea específica, ej. corregir el bug X o implementar la feature Y].
Proporciona un breve diagnóstico inicial a partir de los documentos leídos para confirmar que estás alineado.
```

### Ejemplo de Prompt de Inicio Efectivo
> *"Iniciamos sesión nueva. Lee el archivo `scope-estabilizacion-fiscal-v2.md` para ver el hito anterior. Nuestro objetivo de hoy es auditar por qué la declaratoria de No Localizado no está depurando los cargos en la tabla de históricos. Dime qué archivos de negocio planeas revisar."*

### Cómo Referenciar Trayectorias Previas en el Prompt

Al iniciar una nueva sesión o retomar una conversación truncada, puedes instruir al asistente de IA para que cargue y analice una bitácora de conversación pasada en `agua_chatledger`.

#### Métodos de Referencia Efectivos:
1. **Por ID de Conversación (Hash de 12 dígitos):**
   * Cada archivo exportado por Chatledger incluye el ID de la conversación en su nombre (ej: `..._78333e6a1a56.md`). Puedes pedirle al asistente que busque y lea ese archivo usando ripgrep o visualización de archivos.
   * *Ejemplo de prompt:* *"Busca en el repositorio de chatledger la conversación con ID `78333e6a1a56` y lee el archivo markdown correspondiente para entender el análisis que hicimos sobre el reporte de caja."*
2. **Por Ruta Absoluta o Enlace Markdown:**
   * Es el método más directo y rápido para que el asistente localice el archivo sin tener que buscarlo en el árbol de directorios.
   * *Ejemplo de prompt:* *"Por favor lee la trayectoria de la conversación anterior en: [Bitácora de Caja](file:///home/carlos/GitHub/agua_chatledger/Audit_Caja_Reconciliation_Discrepancies_78333e6a1a56.md) y dime cuáles fueron las conclusiones de la paridad financiera."*
3. **Por Búsqueda Temática de Palabras Clave:**
   * Si no recuerdas el ID exacto, puedes pedirle al asistente que busque en la carpeta raíz de `agua_chatledger` archivos relacionados con una palabra clave.
   * *Ejemplo de prompt:* *"Busca en `agua_chatledger` archivos `.md` que contengan 'mora legacy' o 'Zenón' y lee los más recientes para recuperar el contexto de las correcciones de nombres duplicados."*

---
*Documento de Buenas Prácticas —docs-dev/ga-cl-ia— 2026-06-30*
