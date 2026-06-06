# Adding Error Logging To Voice Capture POC

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `6c2eafba-24fc-418d-94ac-744d17831867` |
| **Cascade ID** | `8fa6eeaa-6dba-446c-aaaa-e81239446150` |
| **Type** | Agent Conversation |
| **Total Steps** | 27 |
| **Started** | 5 June 2026, 9:10 pm |
| **Completed** | 5 June 2026, 9:11 pm |

---

## User Request

Analiza esta /opt/lampp/htdocs/agua/vozweb.php 
Y ponle algun logerror para validar aklgun errror de runtime, es una POC para que si es viable se añada la funcionalida de captura de numeros de contrato o nombre de cliente por voz.

<details>
<summary>Context</summary>

**Active File:** `paxstyle2.css`
**Language:** css
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 10 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 9dde5212-45f7-48cb-a67f-85c14d1b1ce5: 
- Created: 2026-06-04T23:03:26Z
- Last modified: 2026-06-06T03:05:53Z

### USER Objective:
Modernizing System Runbooks And Infrastructure

Objective: Modernize system operational documentation and architectural runbooks by cleaning up outdated environment configurations and enforcing strict coding standards across the Agua codebase.

Goals:
1. Deprecate and remove hardcoded environment variables (IPs, base database paths) from rule documentation, centralizing them in the `.mcp.json` Source of Truth.
2. Refactor rulesets (`11-estandares-codigo.md`, `06-accesos-rutas.md`) to reflect current operational practices for the V2 multi-client architecture.
3. Validate and sync the project's "Ground Truth" configuration to ensure consistency across infrastructure deployment scripts.
4. Codify technical debt remediation (zero inline CSS, database isolation, MVC enforcement) directly into the maintained Runbook for agent-driven development.

## Conversation 44a81d9b-3591-432e-b681-5a50406433f9: Updating Recibo Formatting Logic
- Created: 2026-06-02T19:47:04Z
- Last modified: 2026-06-02T20:26:39Z

### USER Objective:
Updating Recibo Formatting Logic

Main Objective: Modify the report generation logic in `recibo.php` to conditionally hide contract numbers when only one is associated with specific charges.

Goals:
1. Locate the logic in `recibo.php` that handles the concatenation of contract numbers (identified near lines 264-266 and 389-391).
2. Apply an conditional check to ensure that when `count($charge['contratos'])` equals 1, the code skips the concatenation of the contract number within the `leyenda` display string.
3. Verify the changes across both the original and copy sections of the receipt display to maintain consistency.
4. Ensure this fix specifically targets entries where the category is 6 or the description includes "FALTA ASAMBLEA", as requested.

## Conversation fe1bd6aa-acbd-4e2b-a05e-a96d6f77b6de: Syncing Project Documentation and Repositories
- Created: 2026-05-25T21:51:09Z
- Last modified: 2026-06-02T19:31:49Z

### USER Objective:
Tlapa Water System Localization

Main Objective:
Complete the migration of the `aguayd_os` development database and application interface to the Tlapa de Comonfort, Guerrero environment.

Goals:
1. Finalize the database anonymization using the generated SQL script, ensuring all user, contract, and firmantes data are mapped to Tlapa-specific records and street names.
2. Complete the localization of system views (reciboegreso.php, concentradocortecajaresumen.php, index2.php, egresos.php, and principal.php) to display the Tlapa dependency information and address details.
3. Validate the integrity of the localized reporting and audit logs within the `aguad_ac_oferta` branch.
4. Execute the final deployment to Host C via the isolated `/ayd-os/` directory using the existing deployment pipeline.

## Conversation f88316ca-5949-4d5c-a159-0ebdf4b1f3cf: Updating CaeliTandem Home Page
- Created: 2026-05-26T01:33:52Z
- Last modified: 2026-05-26T02:23:47Z

## Conversation 06286601-35ed-4cc8-b964-fff0355244db: Initializing New Development Repository
- Created: 2026-05-25T19:48:45Z
- Last modified: 2026-05-25T21:35:21Z

### USER Objective:
Initializing New Development Repository

Main Objective:
Provision a new Git repository and organize project files for the emp_devhj_sw project.

Goals:
1. Create the local directory structure `/home/carlos/GitHub/emp_devhj_sw/caelitandem_home`.
2. Initialize a new Git repository within the project root.
3. Migrate the entire contents of `/home/carlos/Documents/tmp01/empsw/` into the newly created `caelitandem_home` directory.

## Conversation 391ab92d-8c62-4053-97a8-3a6d6c7b506c: CaeliTandem SEO Strategy Implementation
- Created: 2026-05-24T05:38:16Z
- Last modified: 2026-05-25T19:36:52Z

## Conversation ea5f8c74-55db-4706-b2c7-e3abd8e5448e: Modernizing CaeliTandem Web Assets
- Created: 2026-05-21T21:19:44Z
- Last modified: 2026-05-25T19:03:32Z

## Conversation 9df8240f-6a37-4147-b8a3-c44b0ab61092: Restoring Nginx HTTPS Configuration
- Created: 2026-05-24T04:52:15Z
- Last modified: 2026-05-24T05:24:54Z

### USER Objective:
Restoring HTTPS For Nginx Sites

USER Objective:
Restore secure HTTPS access for the web applications hosted on the `oci-vm` instance by reconfiguring Nginx and renewing Let's Encrypt certificates.

Goals:
1. Analyze and correct the Nginx configuration on `oci-vm` to ensure all sites are reachable via HTTPS.
2. Troubleshoot and re-establish valid Let's Encrypt SSL certificates for the affected domains.
3. Implement a permanent HTTP-to-HTTPS redirect for all websites served by Nginx to ensure secure connectivity.
4. Validate automatic certificate renewal settings to prevent future service interruptions.
5. Document the resolved configuration and operational status to maintain infrastructure parity.

## Conversation af7746f8-b81d-460c-bf0e-b544940d5bde: Appending System Documentation Appendices
- Created: 2026-05-22T19:50:44Z
- Last modified: 2026-05-22T21:17:50Z

### USER Objective:
Appending System Documentation Appendices

Main Objective:
Update the "Entrega_Sistema_AyDV2_CM" documentation by appending the requested configuration and UI design specifications.

Goals:
1. Append the source code contents of `admin/operaciones/configuracion.php` to the project documentation to ensure transparency in system parameters.
2. Integrate the "Paleta de Colores del Buscador de Usuarios" specifications from the `analisis_paridad_3hosts.md` file into the documentation as a formal technical appendix.
3. Ensure the documentation reflects the current state of system operational controls and the visual feedback mechanisms implemented for contract management.

## Conversation 13a74b1c-4f0e-47a5-a1e1-389ca3638e08: Debugging Address Normalization Logic
- Created: 2026-05-20T18:12:05Z
- Last modified: 2026-05-22T17:11:45Z

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 5 June 2026, 9:10 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `vozweb.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
// Procesamiento de los datos cuando se envía el formulario
$mensaje = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = isset($_POST['nombre_completo']) ? trim($_POST['nombre_completo']) : '';
    $contrato = isset($_POST['numero_contrato']) ? trim($_POST['numero_contrato']) : '';

    // Aquí puedes guardar en base de datos o procesar la información
    $mensaje = "¡Datos recibidos con éxito en PHP!<br>Nombre: <b>$nombre</b><br>Contrato: <b>$contrato</b>";
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario con Dictado por Voz</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .form-container { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); width: 100%; max-width: 450px; }
        h2 { text-align: center; color: #333; margin-bottom: 20px; }
        .input-group { margin-bottom: 20px; }
        label { display: block; margin-bottom: 8px; color: #555; font-weight: bold; }
        .campo-voz { display: flex; gap: 10px; }
        input[type="text"] { flex: 1; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; }
        .btn-mic { background-color: #007bff; color: white; border: none; padding: 10px 15px; border-radius: 4px; cursor: pointer; font-size: 16px; transition: background 0.3s; }
        .btn-mic:hover { background-color: #0056b3; }
        .btn-mic.grabando { background-color: #dc3545; animation: pulso 1.5s infinite; }
        .btn-enviar { width: 100%; background-color: #28a745; color: white; border: none; padding: 12px; font-size: 18px; border-radius: 4px; cursor: pointer; font-weight: bold; margin-top: 10px; }
        .btn-enviar:hover { background-color: #218838; }
        .alerta { background-color: #d4edda; color: #155724; padding: 15px; border-radius: 4px; margin-bottom: 20px; border: 1px solid #c3e6cb; }
        @keyframes pulso { 0% { opacity: 1; } 50% { opacity: 0.5; } 100% { opacity: 1; } }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Registro de Contrato</h2>

    <?php if (!empty($mensaje)): ?>
        <div class="alerta"><?php echo $mensaje; ?></div>
    <?php endif; ?>

    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
        
        <!-- Campo Nombre Completo -->
        <div class="input-group">
            <label for="nombre_completo">Nombre Completo:</label>
            <div class="campo-voz">
                <input type="text" id="nombre_completo" name="nombre_completo" placeholder="Dicta o escribe el nombre" required>
                <button type="button" class="btn-mic" onclick="activarDictado('nombre_completo', this)">🎤</button>
            </div>
        </div>

        <!-- Campo Número de Contrato -->
        <div class="input-group">
            <label for="numero_contrato">Número de Contrato:</label>
            <div class="campo-voz">
                <input type="text" id="numero_contrato" name="numero_contrato" placeholder="Dicta o escribe el contrato" required>
                <button type="button" class="btn-mic" onclick="activarDictado('numero_contrato', this)">🎤</button>
            </div>
        </div>

        <button type="submit" class="btn-enviar">Guardar Datos</button>
    </form>
</div>

<script>
    // Inicialización de la API de reconocimiento de voz
    const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
    let reconocimiento Activo = null;

    if (!SpeechRecognition) {
        alert("Tu navegador no soporta el reconocimiento de voz de manera nativa. Usa Google Chrome o MS Edge.");
    }

    function activarDictado(idInput, botonAsociado) {
        if (!SpeechRecognition) return;

        // Si ya hay una grabación en curso, la detenemos
        if (reconocimientoActivo) {
            reconocimientoActivo.stop();
            return;
        }

        const recognition = new SpeechRecognition();
        recognition.lang = 'es-MX'; // Configurado para español de México (puedes cambiarlo a es-ES si prefieres)
        recognition.continuous = false;
        recognition.interimResults = false;

        const inputDestino = document.getElementById(idInput);

        recognition.onstart = function() {
            reconocimientoActivo = recognition;
            botonAsociado.classList.add('grabando');
            botonAsociado.innerText = "🛑";
            inputDestino.placeholder = "Escuchando...";
        };

        recognition.onresult = function(event) {
            let textoTranscrito = event.results[0][0].transcript;
            
            // Limpieza básica si es un número de contrato (quitar puntos o espacios extras que añade el dictado)
            if (idInput === 'numero_contrato') {
                textoTranscrito = textoTranscrito.replace(/[^0-9]/g, ''); // Deja solo números si es necesario
            }
            
            inputDestino.value = textoTranscrito;
        };

        recognition.onerror = function(event) {
            console.error("Error en reconocimiento: ", event.error);
        };

        recognition.onend = function() {
            reconocimientoActivo = null;
            botonAsociado.classList.remove('grabando');
            botonAsociado.innerText = "🎤";
            inputDestino.placeholder = idInput === 'nombre_completo' ? "Dicta o escribe el nombre" : "Dicta o escribe el contrato";
        };

        recognition.start();
    }
</script>

</body>
</html>

```

</details>

---

## Agent Response

### Thinking

**Analyzing Syntax Errors**

I've hit a snag. Line 71, as indicated, has a syntax error: "reconocimiento Activo". The space is invalid. I'm now cross-referencing this with the file content to verify and proceed, hopefully with a solution in mind. I believe I have it!




### Actions

**Tool:** `view_file`
**File:** `11-estandares-codigo.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.000633635s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
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

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `02-reglas-negocio.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 02: Diccionario de Reglas de Negocio por Módulo

Este documento es una entidad viva para registrar el descubrimiento y clasificación de todas las reglas de negocio contenidas en la base de datos `awa` y la webapp **Agua**.

---

## 📋 Clasificación por Módulos Funcionales

### 📂 Módulo 01: Gestión de Contratos (Core)
| ID | Regla | Estado |
|:---:|---|:---:|
| **C01** | Límite de **2 tomas (contratos)** activas por usuario en el mismo domicilio físico. El domicilio comparado es `contrato.domicilio` (dirección física de la toma), **no** `usuario.domicilio` (dato de contacto del titular — campo independiente en tabla `usuario`, sin relación con validaciones de paridad ni tomas). La comparación usa normalización canónica `_normalizaDomicilioSQL()` / `_normalizaDomicilio()` (`contratos.php`) que unifica UPPER, acentos, variantes tipográficas (`n°/nº/no./nO.` → `N`), puntos y espacios múltiples — evita que typos burlen el límite. | Implementada |
| **C02** | Prohibida la modificación de estado de contratos en `4 (SUSPENSIÓN DEFINITIVA)`. | Implementada |
| **C03** | Registro obligatorio de folios únicos por cada nuevo contrato. | Validada |
| **C04** | **Motor de Paridad Universal**: Sincronización obligatoria; si una toma se activa/reconecta, su cargo anual debe restaurarse automáticamente. | Implementada |
| **C05** | **Limpieza por Suspensión Definitiva**: Al pasar a Estado 4, se debe forzar la desconexión física y la cancelación de deuda anual actual. | Implementada |
| **C06** | **Amnistía de Recargos en Reactivación**: Al pasar un contrato de `2 (SUSPENSIÓN TEMPORAL)` a `1 (ACTIVO)`, los recargos de años anteriores al año en curso se cancelan automáticamente (`estado=-1`). Solo permanece vigente la deuda del año actual. **NO aplica si el origen es estado `3 (SUSPENSIÓN ADMINISTRATIVA)`**: el adeudo íntegro se conserva (incluyendo anualidad del año en curso y todos los recargos históricos). Implementado en `_amnistiaRecargosHistoricos()` (contratos.php) + `_sincronizaParidadFinanciera()`. El registro en `cambios` indica explícitamente si se aplicó o no la amnistía. | Implementada |
| **C07** | **Restricción de Transiciones de Suspensión**: Prohibido el salto directo entre estados de suspensión (`2` y `3`). El contrato debe ser regularizado a `1 (ACTIVO)` primero para asegurar que los disparadores de paridad y amnistía se ejecuten según el origen correcto. Enforzado en UI (`ficha.php`) y Servidor (`contratos.php`). | Implementada |
| **C08** | **Límite de Tomas Físicas**: Restricción operativa de un máximo de **2 tomas físicas** registrables por cada contrato/domicilio. Enforzado en la UI de gestión de tomas. | Implementada |
| **C09** | **Límite de Domicilios Distintos por Usuario** (`max_domicilios_por_contrato`, default=3): Al crear un nuevo contrato, si el usuario ya tiene N domicilios físicos distintos (en `contrato.domicilio`) y el nuevo domicilio es diferente a todos ellos, el sistema bloquea la creación. Domicilio ya existente siempre pasa (segunda toma en mismo domicilio). No aplica retroactivamente. Configurable en `config_sistema` clave `max_domicilios_por_contrato`. Usar `0` para sin límite. Implementado en `guardaNuevoContrato()` (`contratos.php`). Basado en análisis real: 91.6% de usuarios tiene 1 domicilio, 7% tiene 2, 1.4% tiene 3, <0.1% tiene 4. | Implementada |
| **C10** | **Normalización canónica de `contrato.domicilio`**: Todo domicilio se normaliza al guardarse vía `_normalizaDomicilio()` en PHP y `_normalizaDomicilioSQL()` para comparaciones SQL. Reglas: UPPER, sin acentos (Á→A, Ñ→N…), variantes de número (`n°/nº/no./nO.` → `N`), sin puntos ni comas, espacios múltiples → uno. Aplica en `guardaNuevoContrato()`, `guardaContrato()` y `validaTomasSync()`. **No aplica a `usuario.domicilio`** — ese es dato de contacto personal y no participa en ninguna validación de paridad. | Implementada |

### 📂 Módulo 02: Facturación, Cargos y Recargos
| ID | Regla | Estado |
|:---:|---|:---:|
| **F01** | Solo contratos en estado `1 (ACTIVO)` y `3 (SUSPENSIÓN ADMINISTRATIVA)` generan recargos automáticos. Estado `2 (SUSPENSIÓN TEMPORAL)` está **excluido** — la anualidad ya está cancelada (`estado=-1`) y no procede recargo sobre ella. Estado `4` también excluido. Implementado en `calcula_recargos()` (`cargos.php`). **Guard G01 (2026-04-26)**: `calcula_recargos()` retorna inmediatamente si `recargo=0` en el cargo (ruta aplicación manual). La ruta de paridad automática (`_sincronizaDeudaPendienteContrato()`) usa `categoria IN (2,3)` por diseño y no pasa por este guard. | Implementada |
| **F02** | Cargos manuales a contratos en `4 (SUSPENSIÓN DEFINITIVA)` están prohibidos. | Crítica |
| **F03** | **Auditoría de Reasignación de Cargos**: `regresarCargoCancelado()` valida estado del contrato (bloquea en estado 4) y registra la identidad del operador (`$_SESSION['usuario']`) en la tabla `cambios`. Requiere confirmación de usuario en la UI. | Implementada |
| **F04** | El cálculo de la deuda debe ser atómico (Cargos + Recargos = Deuda Total). | Validada |
| **F05** | **Semántica dual del campo `recargo` — NUNCA contabilizar como monto financiero ni usar como filtro de tipo en `ligacargos`** — El campo `recargo` existe con dos semánticas incompatibles según la tabla: (1) En `cargos` (catálogo): es un **flag entero `INT(0/1)`** que indica si el tipo de cargo puede generar recargo moratorio — uso correcto en UI y filtros sobre la tabla `cargos`. (2) En `ligacargos` / `ligacargos_historico`: es un **monto decimal heredado** del catálogo al momento del INSERT — en Host C vale `0.00` para casi todos los registros; en datos migrados de Host A/B puede valer `1.00` (artefacto histórico de cuando el flag se copió como float). **Reglas críticas**: (a) Nunca sumar `ligacargos.recargo` como parte de la deuda o ingreso. (b) Nunca usar `AND ligacargos.recargo = 1` como filtro de tipo de cargo — siempre falla en Host C produciendo falsos negativos silenciosos. (c) El discriminador canónico para identificar recargos moratorios es `categoria IN (16, 17)` (configurables en `config_sistema`: `recargo_categoria_agua`, `recargo_categoria_drenaje`) o el alias `es_recargo_moratorio` de las vistas. (d) Para reclasificaciones de leyendas especiales usar `leyenda LIKE + categoria` como fuente de verdad, sin `recargo`. **Archivos corregidos** (2026-04-15): `admin/reportes/auditoria_integridad_bd.php` líneas 69 y 136 (recargos huérfanos), `docs-dev/migration-aguav2/host-c-setup/07_patch_categorias_v2.sql` (reclasificación cat 19-22). **Usos válidos de `recargo` que NO deben tocarse**: filtros sobre tabla `cargos` (`AND recargo=0` en contratos.php:55/399), coloreado UI en `views/cargos/` y `views/contratos/ficha.php` — todos operan sobre el catálogo donde `recargo` sí es flag INT. | Implementada |

| **F06** | **Cobertura dual obligatoria en operaciones sobre ligacargos (Host C split-schema)** — En Host C, los cargos de `anio<=2025` viven en `ligacargos_historico` y los de `anio>=2026` en `ligacargos` activa. Cualquier operación PHP que lea, modifique o cancele cargos **debe cubrir ambas tablas**. Reglas concretas: **(a) SELECTs de cargos cancelados/pendientes**: usar siempre `vw_ligacargos_all` o `vw_ligacargos_pendientes` (las vistas hacen UNION automáticamente) — nunca `FROM ligacargos` directo en queries de ficha/cartera. **(b) Subqueries de id_cargo**: usar `COALESCE((SELECT id FROM ligacargos WHERE ...), (SELECT id FROM ligacargos_historico WHERE ...))` para obtener el PK correcto sin importar en qué tabla vive el registro. **(c) UPDATEs de estado**: cuando se opera por `id_cargo` conocido, ejecutar UPDATE en ambas tablas siempre — la que no contiene el registro simplemente afecta 0 filas, sin daño. `UPDATE ligacargos SET estado=X WHERE id=$id AND numcontrato='$c'` + `UPDATE ligacargos_historico SET estado=X WHERE id=$id AND numcontrato='$c'`. Es más robusto que pasar un flag `en_historico` que puede llegar incorrecto. **(d) Fallback por leyenda**: también cubrir ambas tablas. **Por qué se repite el bug**: cada sesión tiende a escribir solo `FROM ligacargos` olvidando el histórico. Si el fix solo opera en una tabla, el cargo del año equivocado no se modifica y el INSERT de auditoría en `cambios` puede ejecutarse pero sin efecto real en BD. **Archivos críticos**: `includes/negocio/cargos.php` (`regresarCargoCancelado`, `pagacancelacargos`), `includes/negocio/contratos.php` (SELECT cancelados para ficha), `_amnistiaRecargosHistoricos` (ya correcto: opera en ambas tablas). | Implementada |
| **F07** | **Exención de Recargos 1er Año**: Los contratos nuevos están exentos de recargos moratorios durante su primer año calendario de vida (año de alta). Enforzado por el flag `contrato.exento_recargo_primer_anio=1` y saneamiento D1. | Implementada |
| **F08** | **Coherencia de Infraestructura**: Prohibido el cobro de servicios (ej. drenaje) en contratos que no cuenten con la infraestructura instalada (`contrato.drenaje=0`). La UI debe bloquear la asignación manual de estos cargos. | Implementada |
| **F09** | **Guard de Categoría para flag `recargo` (G02, 2026-04-26)**: `creaCargo()` y `modificaCargo()` fuerzan `recargo=0` en server-side para cualquier categoría distinta a `2 (AGUA)` y `3 (DRENAJE)`, independientemente de lo que envíe el formulario. Esto cierra la vía UI donde el checkbox "Es una multa" podía activar `recargo=1` en categorías incorrectas. Implementado en `includes/negocio/cargos.php` líneas 584 y 635. | Implementada |

### 📂 Módulo 03: Usuarios y Segmentación
| ID | Regla | Estado |
|:---:|---|:---:|
| **U01** | Usuario estado `2` = **No Localizado**. Excluido de búsquedas estándar. | Implementada |
| **U02** | Clasificación de "Usuarios Especiales": Aquellos sin contratos vinculados o con todos en suspensión definitiva. | Reporte V2 |
| **U03** | **Tratamiento de No Localizados**: Usuarios con `estado=2` disparan la suspensión definitiva de sus contratos vinculados. Su deuda **no segmenta ni contabiliza** en los reportes financieros operativos (cortes de caja, cartera vencida) — ver R06. | Implementada |
| **U04** | **Purga de Usuarios Placeholder**: Usuarios sin nombre (NULL o vacío) se eliminan automáticamente del padrón **solo si no tienen contratos vinculados** (para evitar huérfanos). Saneamiento D10. | Implementada |
| **F10** | **Homonimia Estructural**: Se prohíbe alterar el campo `usuario.nombre` para marcar duplicados. Se utiliza la columna `id_homonimo_padre` para vincular el registro secundario con el principal. El motor de búsqueda (`buscaUsuarioCambio`) detecta estos vínculos y la UI aplica semáforos (🟢/🟡/🔴) según el estado de los contratos asociados. Implementado en `includes/negocio/usuarios.php` y `views/usuarios/options.php`. Saneamiento corregido en `10c_saneamiento_duplicados.sql`. | Implementada |

### 📂 Módulo 06: Asambleas y Participación
| ID | Regla | Estado |
|:---:|---|:---:|
| **A01** | **Consolidación de Asambleas**: Máximo de **3 asambleas permitidas por fecha** calendario. Enforzado por el trigger `tr_asamblea_limit_3` en Host C. El saneamiento D9 consolida asambleas duplicadas históricas (B→A) eligiendo como "ganadora" la de mayor asistencia y reasignando asistentes automáticamente. | Implementada |

### 📂 Módulo 04: Pagos, Caja y Folios
| ID | Regla | Estado |
|:---:|---|:---:|
| **P01** | Cada pago debe generar un folio único e incremental que vincule a `ligacargos`. | Validada |
| **P02** | Los folios de pago manuales no deben solaparse con folios de contratos nuevos. | En Revisión |

### 📂 Módulo 05: Reportes y Validación de Datos
| ID | Regla | Estado |
|:---:|---|:---:|
| **R01** | Sincronización estricta entre sumatoria de listas y totales de encabezado en todos los reportes operativos. | Validada |
| **R02** | **Filtros Canónicos de Cartera y Deuda** — Todos los reportes financieros deben aplicar los mismos filtros para consistencia (17 categorías INCLUIDAS, 5 EXCLUIDAS). `excluir_cartera = [6, 19, 20, 21, 22]` (Faltas Asamblea y conceptos únicos V2). Cat 11, 16 y 17 (Recargos) **SÍ se incluyen** en Cartera Vencida si su `anio < anio_ref`, consolidándose en la columna **R.CART.** para asegurar el cuadre a $0. Siempre añadir `AND c.estado != 4` (Suspensión Definitiva) y `AND u.estado != 2` (No Localizados) en reportes de deuda pendiente. Implementado en `concentradocortecaja.php`, `concentradocortecajaresumen.php`, `carteravencida.php`, `listadeudores.php`. Ver guía maestra en `docs-dev/doc-estabilizacion/CARTERA_VENCIDA_MODELO_Y_REPORTES.md`. | Implementada |
| **R03** | **Semántica canónica de estados en `ligacargos` / `ligacargos_historico`** — `estado=0`: pendiente de cobro. `estado=1`: pagado (por `sp_pagar_cargo` o caja.php). `estado=-1`: cancelado canónico (por `sp_cancelar_cargo`, D7, Paso 8-B, saneamiento 10c). **`estado=2` NO EXISTE** como valor válido en ligacargos — era un bug en scripts previos; todos corregidos. `estado=-2`: legacy pre-2018 (≈68 registros históricos, solo lectura). `estado=-3`: legacy pre-2018 (≈166 registros históricos, solo lectura). Para cartera y deuda solo consultar `estado=0`. Toda cancelación produce `estado=-1` con `fpago=NOW()`. Documentado en `docs-dev/doc-estabilizacion/pase-a-prod/MIGRATION_PROTOCOL.md`. | Implementada |
| **R04** | **SQL dinámico desde catálogo** — `concentradocortecaja.php` y `concentradocortecajaresumen.php` construyen sus CASE/COUNT dinámicamente desde `SELECT id, nombre, nombrecorto FROM categorias ORDER BY id`. Esto asegura que las categorías 19–22 (V2) estén incluidas automáticamente sin hardcoding. Nunca hardcodear IDs de categoría en los reportes de caja; leer siempre desde el catálogo. | Implementada |
| **R05** | **Conteo de folios en caja** — Un folio puede cubrir múltiples contratos del mismo usuario. El contador por columna en `concentradocortecaja.php` usa `$folios_c[$cid][$folio] = true` (array-set) para contar folios únicos, no filas del GROUP BY. El total al pie usa `COUNT(DISTINCT folio)`. Ambos deben coincidir con los `(n=X)` de `concentradocortecajaresumen.php`. Verificado $0 diferencia en 5 períodos 2024-2026. | Implementada |
| **R06** | **C.N.L. (Cartera No Localizada, `u.estado=2`) excluida de reportes financieros** — Usuarios con `estado=2` (NO LOCALIZADO) y sus cargos de cartera se excluyen de todos los reportes: `concentradocortecaja.php` (columna eliminada, `u.estado != 2` en R.CART), `concentradocortecajaresumen.php` (línea eliminada, `u.estado != 2` en cartera), `carteravencida.php` (segmentación eliminada, tabla unificada). En `concentradocortecaja.php` queda solo la definición en el Glosario de Conceptos como referencia informativa. En Host C actualmente no existen usuarios con `estado=2`, por lo que el impacto numérico es $0. | Implementada |
| **R07** | **Parámetros URL de reportes de caja** — `concentradocortecaja.php`: `inicio` (DD/MM/AAAA), `fin` (DD/MM/AAAA), `anio_corte` (opcional, override de año de ciclo). `concentradocortecajaresumen.php`: ídem + `existencia_anterior` (requerido). `anio_corte` solo es necesario cuando `inicio` y `fin` son de años distintos (período que cruza cambio de año); sin él el PHP usa `anio_i` como default (correcto para todos los períodos reales del sistema). El modal HTML en `listados.php` / `paxscript.js` muestra el campo `anio_corte` condicionalmente y con nota explicativa. `carteravencida.php`: solo `anio` (default = año actual). | Implementada |

---

## 🔍 Bitácora de Descubrimiento (Pendientes de Validar)
Espacio para anotar comportamientos detectados en el código legado o procedimientos manuales que deben formalizarse como reglas:
1.  **[D001]**: Investigar el trigger exacto de `calcula_recargos.php` para definir la fecha de corte mensual.
2.  **[D002]**: Validar la lógica de "Metros Lineales" y su impacto en la deuda histórica.
3.  **[D003]**: Determinar si existen descuentos automáticos por "Pronto Pago" no documentados.

---

---

**Nota para todos los agentes IA (Claude Code y Antigravity/Gemini)**: Al explorar el código, si descubres una nueva restricción o lógica condicional, agrégala aquí con un ID incremental y su módulo correspondiente.

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `13-idioma-espanol.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 13: Idioma de Comunicación y Documentación (Español)

Esta regla define el estándar obligatorio para el idioma utilizado por el asistente de IA (Antigravity/Gemini) en todas las comunicaciones con el usuario, generación de documentación y reportes de sesión.

---

## 🇪🇸 1. Idioma Oficial del Asistente

Todas las interacciones verbales, resúmenes, respuestas directas, explicaciones de código y respuestas a consultas deben redactarse exclusivamente en **Español**.

---

## 📝 2. Documentación y Planes de Implementación

Cualquier documento técnico secundario generado por la IA en el directorio de artefactos (`/home/carlos/.gemini/antigravity/brain/<session-id>/`), incluyendo pero no limitado a:
- Planes de Implementación (`implementation_plan.md`)
- Hojas de Ruta y Checklists (`task.md`)
- Walkthroughs de Sesión (`walkthrough.md`)
- Notas de investigación y bitácoras de depuración

**DEBEN** ser redactados y estructurados completamente en **Español**, manteniendo el rigor técnico y la terminología oficial del proyecto.

---

## 🏷️ 3. Mensajes de Commit y Bitácoras de Cambios

Los mensajes descriptivos del flujo de control de versiones (Git) generados automáticamente o sugeridos, así como las explicaciones adjuntas en las herramientas de modificación de archivos, deben alinearse al uso del idioma español.

```

</details>

---

## Agent Response

### Thinking

**Analyzing the Situation**

I've got it! Rule 13 dictates Spanish communication and documentation, which is ideal. My current focus is to skip those initial MCP server checks, tables, or database actions. The user's request appears focused on analysis alone.


**Examining the Code**

I'm now diving deep into `vozweb.php`. It's a straightforward PHP/HTML/JavaScript app using the Web Speech API for voice input of name and contract number. I'm focusing on potential runtime errors. I've identified several potential PHP-side issues, such as missing POST data for the name or contract, and their format inconsistencies. I'm also considering logging these errors, including developing an AJAX endpoint for JavaScript errors from the front-end!


**Implementing Error Logging**

Now, I'm focusing on error logging. I realize the elegance of sending client-side errors via `fetch` to PHP using `error_log()`. I've added error checks for `SpeechRecognition` support and will log errors like 'no-speech' or 'audio-capture' to the console and potentially send them. I also fixed the syntax error and I'm developing a robust PHP logging block to handle client-side logs sent via AJAX. I have added checks for the form and its submissions.


**Developing Error Handling**

I'm now implementing the client-side error logging with `fetch` to send errors to `vozweb.php` via POST with JSON data. I'm binding to `window.onerror` and `window.onunhandledrejection`, specifically logging errors related to `SpeechRecognition` and unsupported browsers. I'm also preparing a UI message area to display logs in real-time. Finally, I'm working on the PHP AJAX endpoint with error details.


**Refining PHP Error Handling**

I've just added extensive PHP-side logging, which includes logging all form submission attempts, validation errors like missing or non-numeric contract numbers, and even successful form processing. This logging is done using `error_log()`, ensuring detailed information about the flow, and potential issues within the application. I've also implemented checks to determine the success of each form submission.


**Evaluating the Styling**

I am now carefully considering the styling. I've realized that Rule 11, specifically regarding inline or embedded CSS in views, doesn't directly apply to this `vozweb.php` POC file. Since this is a standalone POC, I'm leaning toward keeping the styles self-contained, as recommended, to avoid cluttering the central stylesheet. Also, I'm thinking of adding a visual console log to the interface, perhaps named "Consola de Diagnóstico" or "Logs en Tiempo Real," to enhance user experience by displaying events and errors dynamically.

I'm now reading the Javascript section.


**Designing the UI**

I'm now focused on the UI, specifically the diagnostic panel. The JavaScript `logErrorAlServidor` function is nearly complete! I'm creating `agregarLogUI` to display logs in a new diagnostic panel. I'm adding a basic HTML layout with a header, body, and clear button, plus some styles to make it look premium. I'm excited because the client-side error logging will be complete!

```html
    <!-- Consola de Diagnóstico (POC Logs) -->
    <div class="diagnostic-panel" id="diagnosticPanel">
        <div class="diagnostic-header">
            <span>Logs de Diagnóstico (POC)</span>
            <button type="button" class="btn-clear-logs" onclick="limpiarLogsUI()">Limpiar</button>
        </div>
        <div class="diagnostic-body" id="diagnosticLogs">
            <div class="log-entry log-info">POC inicializada. Listo para capturar voz.</div>
        </div>
    </div>
```

```css
    .diagnostic-panel { margin-top: 25px; background: #282c34; color: #abb2bf; border-radius: 6px; padding: 12px; font-family: monospace; font-size: 12px; max-height: 150px; overflow-y: auto; border: 1px solid #1e222b; }
    .diagnostic-header { display: flex; justify-content: space-between; align-items: center; border-bottom: 1px solid #3e4452; padding-bottom: 6px; margin-bottom: 8px; font-weight: bold; color: #61afef; }
    .btn-clear-logs { background: none; border: none; color: #e06c75; cursor: pointer; }
    .btn-clear-logs:hover { color: #c778dd; }
    .diagnostic-body { padding: 6px; }
    .log-entry { margin-bottom: 4px; padding: 4px 8px; border-radius: 4px; }
    .log-info { background-color: rgba(68, 172, 237, 0.1); border: 1px solid rgba(68, 172, 237, 0.3); color: #d1d1d1; }
    .log-error { background-color: rgba(240, 80, 50, 0.1); border: 1px solid rgba(240, 80, 50, 0.3); color: #f08050; }
    .log-warning { background-color: rgba(230, 180, 50, 0.1); border: 1px solid rgba(230, 180, 50, 0.3); color: #e0c050; }
```


**Refining the Implementation**

Now I'm crafting the complete `vozweb.php` content, integrating robust PHP and JavaScript error logging, along with a user-friendly diagnostic panel for a premium UI. I'm focusing on a clean, professional look using modern CSS while adhering to Rule 11. I'm prioritizing client-side error capture using `window.onerror`, promise rejections, and `SpeechRecognition` errors. The plan is to log errors locally and display them in the diagnostic panel.


**Finalizing the Implementation**

Now I'm making the finishing touches! I'm verifying the Javascript error capture, diagnostic panel logs, and UI integration. With Javascript, I'm logging errors to both the console and the diagnostic panel, including speech recognition issues. I am also working on the submit event. The PHP-side logging and AJAX endpoint are both finalized.

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario con Dictado por Voz (POC)</title>
    <style>
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%); 
            color: #f1f5f9;
            display: flex; 
            justify-content: center; 
            align-items: center; 
            min-height: 100vh; 
            margin: 0; 
            padding: 20px;
            box-sizing: border-box;
        }
        .form-container { 
            background: rgba(30, 41, 59, 0.7); 
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            padding: 30px; 
            border-radius: 12px; 
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37); 
            width: 100%; 
            max-width: 480px; 
        }
        h2 { 
            text-align: center; 
            color: #38bdf8; 
            margin-top: 0;
            margin-bottom: 25px; 
            font-size: 24px;
            font-weight: 600;
        }
        .input-group { margin-bottom: 20px; }
        label { display: block; margin-bottom: 8px; color: #94a3b8; font-weight: 500; font-size: 14px; }
        .campo-voz { display: flex; gap: 10px; }
        input[type="text"] { 
            flex: 1; 
            padding: 12px; 
            font-size: 16px; 
            border: 1px solid rgba(255, 255, 255, 0.15); 
            border-radius: 6px; 
            background: rgba(15, 23, 42, 0.6);
            color: #f1f5f9;
            transition: all 0.3s ease;
        }
        input[type="text"]:focus {
            outline: none;
            border-color: #38bdf8;
            box-shadow: 0 0 0 2px rgba(56, 189, 248, 0.2);
        }
        .btn-mic { 
            background-color: #38bdf8; 
            color: #0f172a; 
            border: none; 
            padding: 10px 18px; 
            border-radius: 6px; 
            cursor: pointer; 
            font-size: 18px; 
            transition: all 0.3s ease; 
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .btn-mic:hover { background-color: #0ea5e9; }
        .btn-mic.grabando { 
            background-color: #ef4444; 
            color: white;
            animation: pulso 1.5s infinite; 
        }
        .btn-enviar { 
            width: 100



### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 12.999645755s
- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Code Edit

**Status:** Completed
**Created:** 5 June 2026, 9:10 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `09-sesion-summary.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 09: Documentación de Sesión — Resumen de Issues Resueltos

Esta regla define el protocolo para generar y persistir el asset de cierre de cada sesión donde se haya implementado y **verificado** funcionalidad.

Válida para **Claude Code** y **Google Antigravity/Gemini** por igual.

---

## 📋 Protocolo: "Verificación = Aprobación implícita + Commit"

### Cuándo aplica
Al finalizar una sesión donde se implementaron cambios **Y** el usuario los ha verificado (explícita o implícitamente con expresiones como "OK", "funciona", "listo", "dale", "sí", "correcto", etc.).

### ⚠️ Obligatorio al INICIAR sesión
Leer [`.agents/pending.md`](../pending.md) antes de responder sobre pendientes. No confiar solo en memoria — el archivo es la fuente de verdad de tareas en vuelo.

### ⚠️ Obligatorio al CERRAR sesión
Actualizar [`.agents/pending.md`](../pending.md) con:
1. Marcar como ✅ resuelto lo que se verificó en esta sesión (moverlo a la tabla "Resueltos")
2. Agregar cualquier pendiente nuevo que quedó a medias, con estado BD exacto y próximo paso concreto
3. Incluir `pending.md` en el commit de cierre

### Flujo obligatorio

```
1. Agente implementa y presenta resumen de cambios al usuario
2. Agente pregunta: "¿Verificaste el resultado? Si es OK, genero el resumen y hago el commit."
3a. Usuario confirma → Agente genera el MD + hace commit + push (ver §Formato)
3b. Usuario reporta problema → Agente corrige PRIMERO, sin documentar aún
3c. Usuario dice "no subas aún" → Agente genera MD localmente, espera sin commitear
```

> [!IMPORTANT]
> La verificación del usuario **ES** la aprobación. No se pide una segunda confirmación
> para el commit después de que el usuario confirmó. Hacerlo genera fatiga innecesaria.

### Excepción
Si el usuario dice explícitamente: "solo verifica / no subas todavía / espera" → el agente
genera el MD como draft (visible en chat como artifact), pero **no** ejecuta el commit.

---

## 📄 Formato del Resumen

**Nombre de archivo:**
```
Issues_Resueltos_<Tema>_<conversation-id-short>.md
```
Donde `<conversation-id-short>` son los primeros 8 caracteres del conversation ID.

**Repositorio destino:** `agua_chatledger` (rama `master`)

**Estructura del archivo:**

```markdown
# Issues Resueltos — Sesión YYYY-MM-DD
**Conversación:** `<conversation-id>`
**Rama:** `<rama-de-código>`

---

## Issue N — <Nombre corto del issue>

### Scope Funcional
[Qué hacía el sistema antes / qué hace ahora / impacto para el usuario/cajero]

### Scope Técnico
[Archivos modificados, funciones nuevas/editadas, queries SQL clave, refs a reglas]

---

## Runbook — Cambios en `.agents/`
[Si aplica: nuevas reglas, reglas modificadas, renumerciones]

---

## Archivos Modificados

| Archivo | Repo | Tipo de cambio |
|:---|:---:|:---|

---

## Verificación

| Check | Resultado |
|:---|:---:|

### Pruebas manuales pendientes
[Lista de pasos para validar en Host A / Host C]

---
*Generado por <Agente> — YYYY-MM-DD*
```

---

## 🗂️ Commit Protocol

### Repo `agua` (código PHP/JS/SQL)
```bash
git add <archivos-modificados>
git commit -m "feat|fix|refactor(<scope>): <descripción técnica concisa>

- detalle 1
- detalle 2"
git push origin <rama>
```

### Repo `agua_chatledger` (Runbook + Issues MD)
```bash
# Validar integridad primero (OBLIGATORIO)
bash docs-dev/ga-cl-ia/chatledger_validate.sh

git add .agents/rules/<nuevas-reglas>.md
git add Issues_Resueltos_<...>.md
git commit -m "docs(<scope>): <descripción>

- Nuevas reglas: <IDs>
- Issues_Resueltos_<...>.md generado"
git push origin master
```

> [!WARNING]
> **Siempre ejecutar `chatledger_validate.sh` antes del commit en `agua_chatledger`.**
> Si el script reporta errores → no commitear hasta resolverlos.
> Ver Regla 08 para detalle de integridad.

---

## 🔍 Criterios de calidad del resumen

Un buen resumen debe permitir que:
1. **Cualquier agente (Claude o Gemini)** pueda entender qué cambió sin leer el diff completo.
2. **El usuario** pueda usarlo como bitácora de auditoría para el comité o tesorería.
3. **Un desarrollador futuro** pueda replicar o revertir el cambio con la información del MD.

### No incluir en el MD
- Conversación completa o transcripción de chat
- Código PHP completo (solo snippets de la función/query nuclear)
- Detalles de depuración intermedios que no aportaron al resultado final

---

## 📌 Notas para Agentes IA

- **Claude Code:** Se espera que sigas este protocolo al cerrar una sesión de implementación verificada. Si el usuario no pregunta explícitamente, puedes proponer el cierre con: *"¿Listo para documentar y subir?"*
- **Antigravity/Gemini:** Ídem. El conversation ID está disponible en el contexto de sistema.
- **Ambos:** Si hay cambios en `.agents/rules/` pendientes de esta sesión, siempre incluirlos en el mismo commit del `agua_chatledger`.

---
**Última actualización:** 2026-04-10

```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 5 June 2026, 9:10 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3.5 Flash (Medium)
</details>

---

---

*Generated by Chatledger for Antigravity*