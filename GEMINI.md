# GEMINI.md - Central Project Context for Agua (MASTER INDEX)

Este archivo es el punto de entrada principal para el asistente de IA (Antigravity/Gemini) y un resumen del contexto del proyecto **Agua**. El conocimiento detallado y las reglas de oro se han distribuido en archivos modulares dentro de `.agents/rules/`.

> [!IMPORTANT]
> **Gemini**: Debes consultar y seguir las reglas detalladas en el directorio `.agents/rules/` para cada tarea orquestada en este proyecto.

---

## 🗺️ Índice de Reglas y Conocimiento (Ground Truth)

| Regla | Descripción | Archivo |
| :--- | :--- | :--- |
| **01** | **Infraestructura y Hosts** | [.agents/rules/01-infra-hosts.md](file:///.agents/rules/01-infra-hosts.md) |
| **02** | **Diccionario de Reglas por Módulo** | [.agents/rules/02-reglas-negocio.md](file:///.agents/rules/02-reglas-negocio.md) |
| **03** | **Sincronización de Datos (B -> A)** | [.agents/rules/03-sincronizacion-b-a.md](file:///.agents/rules/03-sincronizacion-b-a.md) |
| **04** | **Arquitectura MVC y Directorios** | [.agents/rules/04-arquitectura-mvc.md](file:///.agents/rules/04-arquitectura-mvc.md) |
| **05** | **Despliegue y Automatización (Host C)** | [.agents/rules/05-despliegue-host-c.md](file:///.agents/rules/05-despliegue-host-c.md) |
| **06** | **Accesos, Rutas y Herramientas** | [.agents/rules/06-accesos-rutas.md](file:///.agents/rules/06-accesos-rutas.md) |
| **07** | **Control de Versiones y Git Workflow** | [.agents/rules/07-git-workflow.md](file:///.agents/rules/07-git-workflow.md) |
| **08** | **Integridad del Ground Truth / Runbook** | [.agents/rules/08-integridad-ground-truth.md](file:///.agents/rules/08-integridad-ground-truth.md) |
| **09** | **Documentación de Sesión** | [.agents/rules/09-sesion-summary.md](file:///.agents/rules/09-sesion-summary.md) |
| **10** | **Limitantes Conocidas de la Webapp** | [.agents/rules/10-limitantes-webapp.md](file:///.agents/rules/10-limitantes-webapp.md) |
| **11** | **Estándares de Código y Seguridad** | [.agents/rules/11-estandares-codigo.md](file:///.agents/rules/11-estandares-codigo.md) |
| **12** | **Uso Seguro de `Conexion.php` (mysqli)** | [.agents/rules/12-estandar-conexion-mysqli.md](file:///.agents/rules/12-estandar-conexion-mysqli.md) |
| **13** | **Idioma de Comunicación y Documentación** | [.agents/rules/13-idioma-espanol.md](file:///.agents/rules/13-idioma-espanol.md) |

### 🍔 Reglas Específicas: Proyecto Restaurant (Comandas VOSK)
| Regla | Descripción | Archivo |
| :--- | :--- | :--- |
| **14** | **Arquitectura y Activos PWA (Offline SSOT)** | [.agents/rules/14-restaurant-arquitectura-pwa.md](file:///.agents/rules/14-restaurant-arquitectura-pwa.md) |
| **15** | **Estándares UI/UX y Patrones HTMX** | [.agents/rules/15-restaurant-htmx-estandares.md](file:///.agents/rules/15-restaurant-htmx-estandares.md) |
| **16** | **Alineación con Especificación Técnica (Scaffolding)** | [.agents/rules/16-restaurant-scaffolding-especificacion.md](file:///.agents/rules/16-restaurant-scaffolding-especificacion.md) |
| **17** | **Autenticación, Sesiones y Seguridad RBAC** | [.agents/rules/17-restaurant-delight-auth-rbac.md](file:///.agents/rules/17-restaurant-delight-auth-rbac.md) |
| **18** | **Supremacía de la Especificación HTML** | [.agents/rules/18-supremacia-especificacion-html.md](file:///.agents/rules/18-supremacia-especificacion-html.md) |

> [!IMPORTANT]
> **MANDATO ESTRICTO PARA COMANDAS VOSK:** Antes de escribir código, proponer un diseño, o modificar un flujo, **ESTÁS OBLIGADO** a auditar y alinear tu solución contra el contexto definido en los documentos maestros ubicados en `docs/`: 
> 1) `Especificacion_Funcional_Comandas_VOSK.html`
> 2) `Especificacion_Tecnica_Comandas_VOSK.html`
> (y los otros 10 documentos de la suite). 
> **Cualquier desviación técnica o de UX/UI respecto a estos 12 HTMLs se considera un bug crítico.** No asumas flujos web estándar (ej. interfaces táctiles) si la especificación dicta otra cosa (ej. interfaces de voz exclusivas).

### 🩺 Reglas Específicas: Proyecto LAESH (Bloc Digital & Sitio Web)
| Regla | Descripción | Archivo |
| :--- | :--- | :--- |
| **19** | **Arquitectura Frugal y Bootstrap Global** | [.agents/rules/19-laesh-arquitectura-frugal.md](file:///.agents/rules/19-laesh-arquitectura-frugal.md) |
| **20** | **Servidor WebSockets Swoole v6, Bridge y QoS** | [.agents/rules/20-laesh-swoole-qos-notificaciones.md](file:///.agents/rules/20-laesh-swoole-qos-notificaciones.md) |
| **21** | **Trazabilidad SQL, Observabilidad y Logs de Dev** | [.agents/rules/21-laesh-trazabilidad-observabilidad.md](file:///.agents/rules/21-laesh-trazabilidad-observabilidad.md) |
| **22** | **Estándares de Conectividad, BD y Persistencia** | [.agents/rules/22-laesh-mariadb-conexion-estandares.md](file:///.agents/rules/22-laesh-mariadb-conexion-estandares.md) |
| **23** | **Supremacía de la Especificación HTML** | [.agents/rules/23-laesh-supremacia-especificacion-html.md](file:///.agents/rules/23-laesh-supremacia-especificacion-html.md) |

> [!IMPORTANT]
> **MANDATO ESTRICTO PARA PROYECTO LAESH:** Todo desarrollo, refactorización o propuesta de arquitectura debe auditarse obligatoriamente contra los documentos maestros en `laesh/et/`: `Especificacion_Tecnica.html`, `Tecnica_Modelo_Datos.html`, `Tecnica_Infraestructura_Despliegue.html` y `Memoria de Instalación Certificados Locales HTTPS.html`. Cualquier desviación técnica se considera un bug crítico.

---

## 🛠️ Skills Personalizadas (Workflows y Estándares)
Estas habilidades definen **cómo** ejecuto las tareas técnicas:

### Arquitectura Core y Backend
- **[UI/UX Modern Refactor](file:///.agents/skills/skill-ui-modern-refactor/SKILL.md)**: Estándares de CSS/HTML para el Host C.
- **[Dynamic UI & AJAX](file:///.agents/skills/skill-dynamic-html-ajax/SKILL.md)**: Interactividad con `paxscript.js`.
- **[Plates Templating Patterns](file:///.agents/skills/skill-plates-templating/SKILL.md)**: Uso del motor de plantillas Views.
- **[Flight PHP Framework](file:///.agents/skills/skill-flightphp/SKILL.md)**: Arquitectura micro-framework, routing y middleware.
- **[PHP 8.3 Migration](file:///.agents/skills/skill-php83-migration/SKILL.md)**: Refactorización y modernización de código (7.4 → 8.3).
- **[PHP-Migration-74](file:///.agents/skills/skill-migration-php74/SKILL.md)**: Refactorización de PHP 5.5 a 7.4.
- **[Swoole Async Server](file:///.agents/skills/skill-swoole-async/SKILL.md)**: Servidor WebSocket persistente y anti-memory-leak.

### Base de Datos e Infraestructura
- **[MariaDB 11 Ops](file:///.agents/skills/skill-mariadb11/SKILL.md)**: Features, migraciones y modelado AI/Vectorial.
- **[Database Evolution](file:///.agents/skills/skill-database-evolution/SKILL.md)**: Partición de `ligacargos` y migración a MariaDB.
- **[Apache 2.4 Hardening](file:///.agents/skills/skill-apache24-hardening/SKILL.md)**: Seguridad, vhosts, PHP-FPM y configuraciones.
- **[Delight PHP Auth](file:///.agents/skills/skill-delight-php-auth/SKILL.md)**: Autenticación nativa segura para PHP Vanilla.

### Frontend Moderno y PWA
- **[HTMX Patterns](file:///.agents/skills/skill-htmx-patterns/SKILL.md)**: Interactividad hipermedia server-driven.
- **[Native Service Worker](file:///.agents/skills/skill-service-worker-native/SKILL.md)**: PWA offline-first, caché de app shell y red.
- **[Dexie.js IndexedDB](file:///.agents/skills/skill-dexie-indexeddb/SKILL.md)**: Persistencia offline de datos en navegador.

### Tecnologías de Voz (Speech)
- **[Vosk Offline STT](file:///.agents/skills/skill-vosk-stt/SKILL.md)**: Reconocimiento de voz local vía WASM/WebSocket.
- **[Web Speech API (TTS)](file:///.agents/skills/skill-speech-synthesis/SKILL.md)**: SpeechSynthesis nativo y quirks de browser.
- **[EasySpeech Wrapper](file:///.agents/skills/skill-easyspeech-wrapper/SKILL.md)**: Abstracción mitigante de errores en Text-To-Speech.

---

## 🏗️ Workflows Disponibles (Procesos Detallados)
- **[/update-business-data](file:///.agents/workflows/update-business-data.md)**: Sync B → A (Comando: `Sync-B2A`)
- **[/deploy-to-host-c](file:///.agents/workflows/deploy-to-host-c.md)**: Sync A → C (Comando: `Sync-A2C`)

---

## 🚨 Módulos Críticos y Auditoría Constante
Existen funcionalidades core que requieren especial atención para asegurar la congruencia de datos:
- **Lógica Híbrida y Retroactividad (V2)**: Motor de Mora Continuo y Reglas de Paridad en `transiciones_estado_contratos.md`.
- **Estados de Contrato**: Transiciones entre `1 (ACTIVO)`, `2 (SUSPENSIÓN TEMPORAL)`, `3 (SUSPENSIÓN ADMINISTRATIVA)` y `4 (SUSPENSIÓN DEFINITIVA)`. Ver matriz completa en `transiciones_estado_contratos.md`.
- **Cartera Vencida (`carteravencida.php`)**: Validación de deuda morosa.
- **Corte de Caja (`concentradocortecaja.php`)**: Ingresos diarios contra reportes detallados.
- **Resumen de Caja (`reportes/concentradocortecajaresumen.php`)**: Consolidación total.
- **Saneamiento Estructural (PMU)**: Consolidación de asambleas, unicidad de cargos y depuración de usuarios placeholder en `docs-dev/doc-estabilizacion/funcionalidad-reglas-negocio/analisis_paridad_3hosts.md`.
- **Plan de Pruebas Maestro**: `docs-dev/doc-estabilizacion/pruebas-cp-manuales-auto/Plan de Pruebas — Sprint Post-Correcciones.md`.

---

## 🚀 Estado Actual: Rama aguad_ac_oferta (Tenant Tlapa)

- Base de datos de oferta: `aguayd_os` (Host C: Puerto 7002 / MariaDB)
- **Cambios Estructurales de BD (`aguayd_os`)**: Cualquier nuevo script de alteración de estructura para la base de datos de Tlapa se debe colocar en `docs-dev/migration-aguav2/hostc-os-setup/`.
- Interfaz Híbrida Glassmorphism: `mockup_v4_hybrid.php` integrada en la raíz, conectada al motor de reportes de tomas, estadísticas en tiempo real y directorio interactivo de ciudadanos (1,409 registros).
- Sincronización y Despliegue de Oferta: Los scripts y herramientas de localización residen en `docs-dev/pase-a-prod/aguad-osv3-2026/` (anonymization y deploy).
- Puertos Host C: Apache **7001**, MariaDB **7002**
- Ruta Web del Tenant: `http://192.168.1.128:7001/ayd-os/`

## 🛡️ Automatización y Hardening Host C (2026-05-08)
El entorno Windows 10 ha sido convertido en un Appliance Kiosko 100% automatizado:
- **Agnóstico a Discos:** Todos los scripts y archivos de configuración (Apache/MySQL/PHP) heredan dinámicamente la unidad destino desde `config.ps1`.
- **Auto-Arranque:** Tareas Programadas inician los servicios al logueo de sesión.
- **Apagado Seguro:** El script `shutdown-server.ps1` fuerza un volcado físico en ZIP de la BD antes de apagar la máquina (evitando corrupciones).
- **Kiosko Restringido:** El script `setup-full.ps1` crea una carpeta `aguav2` en el escritorio para la gestión técnica, y deja expuesto solo el Kiosko de Chrome y el botón de apagado para los operadores. Chrome está bloqueado vía Registro para evitar actualizaciones.

> **⚠️ Filosofía de Uso**: Los scripts `Sync-*` y `Full-Pipeline-Sync` son **Herramientas de Migración**, no tareas recurrentes. Se ejecutan durante el desarrollo para estabilizar Host C. En producción (Go-Live) se ejecutan **una última vez** y luego se retiran. Host C opera autónomamente.

> Ver tabla de comandos canónicos y comportamiento de flags en: `docs-dev/migration-aguav2/MIGRATION_PROTOCOL.md`

---

## 🍔 Estándares de Oro: Proyecto Restaurant (Comandas VOSK)
Para evitar regresiones de interfaz y optimizar el uso de tokens, los agentes de IA deben respetar obligatoriamente estos 6 principios fundamentales:

1. **Rutas Absolutas de Activos (`/web-assets/`):**
   * **Regla Estricta:** Todas las llamadas a recursos (CSS, JS, fuentes, imágenes) en plantillas, vistas o scripts PHP **DEBEN** usar la ruta absoluta raíz `/web-assets/` (ej: `/web-assets/css/style.css`), omitiendo el prefijo `/restaurant/`. Esto garantiza la paridad con la caché offline del Service Worker (`sw.js`).
   * **Cero Symlinks:** No se debe depender de enlaces simbólicos de sistema en el despliegue para acceder a los activos estáticos.

2. **Diferenciación de Pruebas (CLI vs. UI Browser):**
   * **Pruebas CLI (`www/tests/run_functional_tests.php`):** Validan la BD, stored procedures, permisos RBAC en BD e inserciones transaccionales vía PDO. **No prueban** rutas HTTP, redirecciones de Flight PHP, carga de assets estáticos ni restricciones de navegador.
   * **Pruebas de UI/Navegador:** Requieren entorno web real, HTTPS activo, inyección de cookies de sesión, redirecciones basadas en roles y hardware (micrófono) del cliente. Un pase exitoso de CLI no garantiza el funcionamiento de la UI.

3. **Seguridad HTTPS Obligatoria:**
   * La captura de audio por VOSK requiere permisos de micrófono (`getUserMedia()`), los cuales están **bloqueados en HTTP** en navegadores móviles. El acceso local debe forzarse por HTTPS (ej. `https://192.168.1.71:8443`).
   * Queda prohibido el uso alternativo de la flag `chrome://flags/#unsafely-treat-insecure-origin-as-secure`. En su lugar, se inyectan certificados generados localmente por `mkcert`, y se debe instalar la CA raíz (`ca.crt`) en los dispositivos clientes.

4. **Autenticación por NIP (PIN Único):**
   * El inicio de sesión se realiza mediante un PIN numérico de 4 dígitos. El backend procesa el NIP, recupera el email del usuario desde Delight Auth y redirige dinámicamente utilizando el encabezado HTMX `HX-Redirect` al dashboard que corresponda al rol (`/mesero/`, `/cocina/`).

5. **Aislamiento de Lógica VOSK / Service Worker:**
   * La inicialización del modelo de voz VOSK y el AudioWorklet no deben entrelazarse con el Service Worker global. La inicialización y ejecución del modelo y del reconocedor VOSK corren en el hilo principal (app-voice.js) mediante la API nativa de Window.Vosk, mientras que el AudioWorklet (pcm-processor.js) corre en el hilo de audio de baja latencia. Se almacenan las comandas fallidas en IndexedDB (`Dexie.js`) en lugar de depender del Background Sync nativo.

6. **Gramática Kaldi y Levenshtein local:**
   * Para mitigar el ruido en cocina y comedor, el reconocedor Kaldi restringe su escucha a un vocabulario JSON cerrado (`grammar`). Las palabras transcritas se limpian y mapean a IDs de base de datos en cliente aplicando la distancia de Levenshtein con un umbral de tolerancia máximo de **3 caracteres**.

7. **Persistencia y Sesión Multiusuario (Remember Me):**
   * Configuración de sesión PHP a **24 horas** (`commons.php`) y cookies persistentes de navegador de **28 días** (`index.php`) via Delight Auth. Al alternar de usuario (PIN), se destruye atómicamente la sesión activa del usuario anterior en base de datos para impedir el traslape de credenciales en el mismo dispositivo físico.

8. **Manejo de Interrupciones en el Dispositivo (Doze/Llamadas):**
   * Control del ciclo de vida del micrófono mediante eventos de `visibilitychange` (`app-voice.js`). La PWA debe pausar inmediatamente la captura de audio y resguardar el estado transitorio del dictado si la pantalla se apaga, entra una llamada o la aplicación pasa a segundo plano.

9. **Prevención de Doble Envío Transaccional (Dexie / SW):**
   * Empleo de estados transicionales `'sending'` en IndexedDB (Dexie) a través de transacciones de escritura exclusivas. Esto bloquea la concurrencia entre hilos concurrentes del foreground (eventos `online`) y del background (`sync` del Service Worker), garantizando cero duplicaciones en el servidor.

## 📄 Estándares de Oro: Gestión y Generación de Contratos

Para mantener la consistencia jurídica, técnica y comercial de las propuestas y acuerdos de desarrollo con los clientes, se establecen las siguientes reglas:

1. **Ubicación de PDFs Oficiales**: Todos los PDFs generados a partir de los documentos contractuales oficiales (`Contrato_Base_Desarrollo.md`, `Anexo_A_Sitio_Web.md` y `Anexo_A_Bloc_Digital.md`) deben almacenarse exclusivamente dentro del subdirectorio `contrato/` de la versión correspondiente (ej: `v1.1.3/contrato/`), manteniendo las propuestas comerciales, cartas de presentación, cuadros comparativos y diagramas auxiliares en el directorio raíz.
2. **Firmas Bilaterales**: Todos los anexos de los contratos deben incluir obligatoriamente los bloques de firma de ambas partes ("EL PRESTADOR" y "EL CLIENTE"). En el caso de personas morales, el bloque de firma de "EL CLIENTE" debe incluir el nombre y firma del Representante Legal.
3. **Centralización de la Adaptabilidad**: El alcance tecnológico de responsividad y compatibilidad de dispositivos (Sistemas Operativos, navegadores y la exclusión de tabletas o desarrollo PWA/nativo) se define y centraliza en el Contrato Marco. Los anexos se limitarán a referenciar esta definición.

---

## 🔒 Fixes de Seguridad en Motor de Recargos (2026-04-26)

Dos guards implementados en `includes/negocio/cargos.php` para blindar el flag `recargo` del catálogo:

| Guard | Función | Descripción |
|-------|---------|-------------|
| **G01** | `calcula_recargos()` | Retorno temprano si `recargo=0` — la ruta de aplicación manual ya no genera mora en cargos sin flag. |
| **G02** | `creaCargo()` / `modificaCargo()` | Fuerza `recargo=0` server-side para cualquier categoría ≠ 2 (AGUA) o 3 (DRENAJE). Cierra la vía UI del checkbox "Es una multa". |

**Cambios en BD asociados:**
- `config_sistema.descripcion` extendida de `varchar(255)` → `TEXT` (Hosts A y C).
- Nuevos parámetros: `paridad_anios_max_recargo=5`, `paridad_ignorar_fpago_fantasma=1`.
- Script sincronizado: `docs-dev/migration-aguav2/host-c-setup/03_config_datos_catalogo.sql`.

**UI:** `admin/operaciones/configuracion.php` rediseñado — 2 columnas, modal de confirmación con diff, descripciones desde BD. Ver regla F09 en `02-reglas-negocio.md`.

---

## 🔒 Fixes Financieros y Arquitectura Poka-Yoke (2026-04-28)

Se implementaron parches estructurales para asegurar la integridad de la configuración y la reversibilidad forense:

| Fix | Componente | Descripción |
|-------|---------|-------------|
| **Poka-Yoke Numérico** | `cargaConfig()` | Intercepción con `preg_match` y `str_replace` para sanear globalmente cualquier número formateado (ej. "10,500.00") en `config_sistema` antes del casteo `floatval/intval`. Protege 18 variables nativas. |
| **Reversa Incondicional** | `_getReversal()` | El botón "Revertir transición" se ha desacoplado de las reglas de deuda y ahora es permanentemente visible en la UI tras un cambio de estado válido. |
| **Límite Bomba** | `calcula_recargos()` | Se introdujo una regla de quiebre de deuda máxima (`reversal_threshold`). El motor deja de generar mora si el contrato alcanza este tope de deuda. |
| **Toggle de Límite** | `reversal_threshold_enable` | Nuevo parámetro global para activar/desactivar (1/0) el Límite Bomba de recargos a voluntad del operador. Por default, apagado. |

---

## 🐛 Bugs Host C corregidos (2026-04-07, commit `bd1cb2f`)

Derivados del split `ligacargos`: 5 PHPs usaban `FROM ligacargos` directa (perdían datos ≤2025).

| Archivo | Fix aplicado |
|---------|-------------|
| `reportes/listadeudores.php` | Eliminado cross join implícito `ligacargos.monto` → `vw_ligacargos_pendientes.monto` |
| `reportes/carteravencida.php` | Añadido `OR anio IS NULL` para históricos migrados sin anio |
| `reportes/concentradocortecajaresumen.php` | `FROM ligacargos` → `FROM vw_ligacargos_all` |
| `includes/negocio/cargos.php` | SELECT duplicados y UPDATE masivo corregidos (UPDATE ahora aplica en ambas tablas) |
| `docs-dev/sanemiento-limpieza/reportes/genera_csv.php` | 4 JOINs directos → `vw_ligacargos_all` |

**Regla para nuevos PHPs**: Todo SELECT debe usar `vw_ligacargos_all` o `vw_ligacargos_pendientes`. Ver [skill-database-evolution/SKILL.md](.agents/skills/skill-database-evolution/SKILL.md).

---
---

## 🏗️ Arquitectura Brain / Ground Truth Multi-Workspace (2026-06-12)

Todo el contexto de agentes IA (Reglas, MCP, Configuraciones) vive única y exclusivamente en `agua_chatledger`. 
Los repositorios de desarrollo (`agua`, `restaurantb/www`, etc.) **nunca** deben contener estos archivos físicamente, solo deben tener `symlinks` (enlaces simbólicos) apuntando hacia `agua_chatledger`.

**Reglas de Vinculación para Nuevos Workspaces/Repositorios:**
Para asociar la inteligencia (Ground Truth) a un nuevo proyecto o directorio, se debe replicar la cadena de symlinks y blindar el control de versiones:
1. **Crear Symlinks (7):** `.agents`, `.claude`, `.mcp.json`, `CLAUDE.md`, `GEMINI.md`, `.clauderules`, `docs-dev/ga-cl-ia`. *(El archivo `mcp_config.json` ha sido descontinuado; el IDE Antigravity leerá `.mcp.json` a través de los symlinks)*.
2. **Proteger el Repo:** Añadir estas rutas exactas al `.gitignore` del nuevo proyecto para evitar comitear contexto de IA.
3. **Multi-Root Workspace:** Agrupar ambos directorios (`agua_chatledger` y el repo de código) en un `.code-workspace` de VS Code. De esta forma, al cambiar de rama (ej. a `aguad_ac_oferta`) en `agua_chatledger`, todos los repositorios enlazados mutan su comportamiento de IA y configuración MCP de manera instantánea y centralizada.

**Antes de cualquier refactoring de archivos meta, leer regla 08.**

Validar integridad de Symlinks y SSOT:
```bash
bash docs-dev/ga-cl-ia/chatledger_validate.sh
```

> ⚠️ **Regla Estricta de Sincronización Git (2026-07-27)**: Antigravity / Gemini **NO** ejecutará `sync_all_repos.sh`, `git commit` ni `git push` de forma automática tras modificar archivos. Las operaciones de sincronización y commit se realizarán ÚNICAMENTE ante la solicitud explícita del usuario.


## 🛡️ Saneamiento y Resiliencia Extrema (2026-05-10)
Se implementó un sistema de protección de triple capa para el Host C, blindándolo contra apagados abruptos y asegurando la veracidad de la auditoría:

| Capa | Componente | Descripción |
|:---:|---|---|
| **L1** | **Smart Backup** | `start-webapps.ps1` detecta si falta el backup de ayer. Si hubo actividad y el backup no existe, realiza un "Catch-up Backup" antes de iniciar MySQL. Omite automáticamente días no laborables (domingos/feriados) si no hay cambios en la DB. |
| **L2** | **Pre-Vuelo** | Limpieza automática de archivos `.pid` huérfanos y ejecución externa de `aria_chk --recover` sobre las tablas de sistema MariaDB antes de lanzar el servicio. |
| **L3** | **Auto-Repair SQL** | Health-check automático al inicio. Si detecta el Error 176 (Aria checksum), invoca `repair_aria_system_tables.sql` para reconstruir las tablas físicamente antes de abrir Apache. |

**Hitos de Estabilización (Sesión 2026-05-10):**
*   **Watchdog Automatizado**: El `monitor-ups.ps1` ahora inicia automáticamente en modo oculto vía `start-webapps.ps1`, asegurando protección 24/7 sin intervención manual.
*   **Fail-Safe UPS**: El cronómetro de apagado (8 min) ahora es independiente de la interacción del usuario (no bloqueante), garantizando el cierre seguro incluso en ausencia del operador.
*   **Dashboard de Consolidación**: Interfaz de "Cierre Anual" rediseñada como un tablero pro-activo que muestra registros pendientes y estado de las tablas en tiempo real.
*   **Auditoría Global**: El reporte de historial (`id=0`) fue habilitado para visualizar los logs de sistema (migraciones, splits, configuraciones) bajo el identificador universal de sistema.

**Estabilización Financiera y Cartera Vencida (2026-05-11):**
*   **Modelo de Cartera Homologado**: Se formalizó el cálculo de Cartera Vencida (17 categorías incluidas, 5 excluidas) asegurando el cuadre a $0 en el reporte de caja mediante la inclusión de recargos históricos (11, 16, 17) en R.CART.
*   **UI/UX de Reportes**: Renombrado de botones de acceso y encabezados en `carteravencida.php` y `concentradocortecaja.php` para mayor claridad del operador (`RECUP. CARTERA <$anio_ref`).
*   **Fuente de Verdad**: Documento maestro creado en `docs-dev/doc-estabilizacion/CARTERA_VENCIDA_MODELO_Y_REPORTES.md`.

**Hitos de Estabilización y Hardening (2026-05-11 - Sesión 2):**
*   **Conectividad Host C**: Restaurada tras apertura de Firewall en puerto **7002** (MariaDB) y **7001** (Apache). (La IP y credenciales han sido delegadas al SSOT maestro).
*   **Auto-Elevación Poka-Yoke**: Todos los scripts de PowerShell (`.ps1`) ahora cuentan con lógica de auto-elevación a Administrador, eliminando errores de permisos del operador.
*   **Configuración de Firewall**: Nuevo script `setup-firewall.ps1` integrado en el instalador maestro para automatizar la apertura de puertos en Windows 10.
*   **Detección Robusta de Monitor**: El script `status-webapps.ps1` ahora detecta el Monitor UPS incluso si los permisos de visibilidad de procesos están restringidos.
*   **Fix Kiosko Chrome**: Ajuste de rutas para el acceso directo de Google Chrome, garantizando compatibilidad con instalaciones de 64 bits.

**Optimización de Homónimos y UI (2026-05-12):**
*   **Manejo Estructural de Duplicados**: Se implementó la columna `id_homonimo_padre` en la tabla `usuario` para rastrear duplicados sin alterar el campo `nombre`. Se revirtieron todas las concatenaciones sucias (ej. `[DUPLICADO DE...]`) en la base de datos.
*   **Semaforización de Usuarios**: El motor de búsqueda en "Nuevo Contrato" y "Cambio de Propietario" ahora incluye un semáforo visual (🟢, 🟡, 🔴) basado en el estado de los contratos de los homónimos detectados.
*   **Detección Robusta**: La lógica de búsqueda fue blindada para ignorar acentos y sufijos temporales, asegurando la visibilidad total de registros suspendidos o duplicados.
*   **Pipeline Clean-up**: El script `10c_saneamiento_duplicados.sql` fue refactorizado para usar el nuevo estándar estructural.

**Pipeline B→A→C Estabilizado y Semáforos UI (2026-05-12 — Sesión 4):**
*   **Ejecución Full-Pipeline-Sync**: Completado exitosamente — 1,409 usuarios, 1,410 contratos, 200,921 ligacargos (split 7,105 activos / 193,816 histórico). Todos los checks de integridad en ✅.
*   **Hardening de Schema Base**: La columna `id_homonimo_padre` se integró permanentemente en `02_schema_tablas_base.sql`. El parche temporal `12_add_homonimo_padre.sql` fue eliminado. El pipeline es ahora idempotente ante DROP DATABASE.
*   **Fix QA Pipeline**: `12_validate_pipeline.sql` actualizado para validar el vínculo estructural (`id_homonimo_padre`) en lugar de buscar sufijos sucios `[DUPLICADO...]` en el nombre.
*   **Fix Visibilidad Homónimos**: `includes/negocio/usuarios.php` — la cláusula `HAVING` fue extendida para incluir usuarios con vínculo estructural (`id_homonimo_padre > 0`), evitando que homónimos sin contratos quedaran ocultos en el buscador.
*   **Paleta de Colores Semáforo (UI definitiva)**: `views/usuarios/options.php` — 🟣 Lila `#ede0ff` para **cualquier usuario sin contratos** (independiente de homónimo); 🟢🟡🔴 semáforos solo para homónimos con contratos. Sin color = usuario normal con contratos.
*   **Fix Auth `cambiaestado()`**: `includes/negocio/contratos.php` — verificación de contraseñas (presidente/tesorero) añadida antes de ejecutar el cambio de estado, siguiendo el mismo patrón de `cancelarCargos()`.
*   **Documentación**: `analisis_paridad_3hosts.md` actualizado con la paleta de colores definitiva. `ISSUES_Y_BACKLOG.md` extraído de `CARTERA_VENCIDA_MODELO_Y_REPORTES.md`.

**Unificación de Infraestructura e IPs (2026-05-12 — Sesión 5):**
*   **Single Source of Truth (SSOT)**: Se centralizó la configuración de red y credenciales de bases de datos para los tres entornos. La **única fuente de verdad** para las IPs, puertos, usuarios y passwords de Host A, Host B y Host C es ahora el archivo `/home/carlos/GitHub/agua_chatledger/.mcp.json`. Queda estrictamente prohibido el uso de IPs *hardcodeadas* (como `192.168.1.84` o `192.168.1.81`) en scripts y documentos.

**Estabilización de Usuario No Localizado y Seguridad (2026-05-13 — Sesión 1):**
*   **Flujo NL Cascada**: Se estabilizó la declaratoria de "Usuario No Localizado", asegurando la suspensión masiva (Estado 4 - SDF) de todos sus contratos vinculados.
*   **Hardening Poka-Yoke**: Refactorización de `usuarios.php` y `contratos.php` para usar `password_verify()` y `trim()`, eliminando errores por espacios accidentales y permitiendo el uso de hashes Bcrypt modernos.
*   **Fix UI Reversión**: Se corrigió el bug de visibilidad que ocultaba el botón de reversión en contratos con Suspensión Definitiva. El botón es ahora permanente ante snapshots válidos.
*   **Restablecer Usuario**: Nueva funcionalidad añadida para revertir manualmente el estado de un usuario NL a Activo, permitiendo correcciones administrativas sin bloqueos.
*   **Auditoría de Contraseñas**: Análisis de gaps realizado en el módulo de Comité; identificado riesgo de visibilidad de contraseñas nuevas y falta de doble confirmación.

**Producción Final y Hardening Host C (2026-05-13 — Sesión 2):**
*   **Poka-Yoke de Duplicados**: Implementado bloqueo estructural en `views/usuarios/options.php`. Los registros con `id_homonimo_padre > 0` aparecen ahora deshabilitados (`disabled`) con icono 🚫 y redirección al ID Maestro, previniendo la fragmentación de datos en Nuevos Contratos y Cambios de Propietario.
*   **Protección de Directorio**: Scripts `protect-folder.ps1` y `unprotect-folder.ps1` desplegados para blindar la raíz del sistema mediante reglas NTFS Deny. Se han actualizado para heredar dinámicamente la ruta desde `config.ps1`, corrigiendo el error de ruta inexistente.
*   **Dashboard de Consolidación**: Integración de acceso directo a **App Asambleas** en la ficha de Configuración y Saneamiento, utilizando rutas relativas para portabilidad entre hosts.
*   **Hardening UPS**: El tiempo de gracia en batería fue ajustado a **5 minutos** en `config.ps1`, optimizando el margen de seguridad para el cierre de la base de datos.
*   **Control de Chrome**: Identificado el pipeline de congelamiento de versiones en `setup-kiosk-shortcut.ps1` y su reversión en `revert-chrome-updates.ps1`.

**Estabilización de Interfaz, Saneamiento y Asamblea (2026-05-14):**
*   **Fix "Lila" Universal**: Se expandió la lógica de semaforización en `options.php` para incluir a usuarios con historial (contratos en SDF) como candidatos a color Lila. Esto asegura que placeholders con historia previa sean identificables en búsquedas de ítem único.
*   **Saneamiento Zenón (1590 Master)**: Se consolidó al usuario Zenón Martínez López bajo el ID **1590** (que contiene los datos de contacto y notas), reasignándole los contratos **1378** y **391**. El ID 1057 quedó vinculado como duplicado estructural.
*   **Filtros Especiales**: Se añadieron opciones de filtrado granular ("Sin nombre, con dir." y "Sin nombre ni dir.") en el tablero de Usuarios Especiales.
*   **Hardening Shutdown**: Se implementó manejo de errores robusto en `shutdown-server.ps1` y `stop-webapps.ps1`.
*   **Optimización Ticket Asamblea**: 
    *   Ficha de ticket ahora se cierra automáticamente tras imprimir o al hacer clic fuera (con auto-foco en buscador).
    *   Formato optimizado para impresoras térmicas (Courier New, márgenes mínimos, sin corchetes en contratos).
    *   **Ajuste Final (v2.1)**: Fuentes escaladas (Nombre 19px, Registro 17px, Comité 13px), todo justificado a la izquierda, y márgenes de impresión negativos (-4mm) para ahorro extremo de papel.
    *   Periodo de gracia de **7 días** para reabrir asambleas cerradas.
*   **Validación Full-Pipeline-Sync**: Ejecución verificada en Host C — 100% de paridad (200,931 cargos), saneamiento de folios mixtos (8 reparados) y consolidación real de Zenón confirmada.

**Estabilización de UI, Cobros Libres y Control UPS (2026-05-16):**
*   **Ajuste Libre de Cobros (LIBRE)**: Se implementó un flujo flexible donde cualquier cargo de catálogo que incluya la bandera `(LIBRE)` en su nombre disparará un *prompt* interactivo para que el operador defina el monto. El backend en `cargos.php` limpia la etiqueta y exenta el cargo de multiplicadores automáticos (comercial/metros) garantizando cuadres limpios.
*   **Monitor UPS Condicional**: El "Vigilante" de fallos eléctricos (`monitor-ups.ps1`) ahora respeta la directiva `monitoreo_ups=1|0` del archivo `configuracion.txt`. Si se desactiva, el servidor inicia de forma normal sin invocar el bucle de ping ni detonar apagados automatizados (ideal para pruebas o escenarios sin UPS conectado al router).
*   **Transparencia en Hardening NTFS**: Se ajustaron los mensajes de salida de `protect-folder.ps1` y `unprotect-folder.ps1` para reflejar y confirmar su capacidad nativa de blindar `xampp`, `aguav2` y `aguav2-2026` simultáneamente contra borrados **y renombrados**, dando plena certidumbre al operador.
*   **Semaforización "Lila" Poka-Yoke**: Corrección en `nuevo.php` y `options.php` para asegurar que el `<select>` principal adopte el color visual de estado (Lila, Verde, Amarillo) del usuario seleccionado. Además, se refinó la regla Lila para incluir apropiadamente a usuarios históricos (con todos sus contratos en Estado 4), permitiendo actualizar sus nombres *Placeholder* de inmediato en la ficha de Nuevo Contrato.

**Homologación de Catálogo, Reportes y Pipeline (2026-05-16 — Sesión 2):**
*   **Ordenamiento de Reportes de Caja**: `concentradocortecajaresumen.php` refactorizado con array `$orden_impresion` que impone la jerarquía oficial de conceptos: Agua → Drenaje → Recargos → Servicios → Cartera → Trámites → Sanciones.
*   **Sufijo A/D en Etiquetas**: Los conceptos de Reconexión y Cancelación de Servicio actualizados a "...A/D" en `concentradocortecaja.php` (glosario), `concentradocortecajaresumen.php` ($etiquetas), la tabla `categorias` en Host C (IDs 13 y 14) y en `08_saneamiento_catalogo.sql`.
*   **Conceptos `(LIBRE)` en Pipeline**: Los dos conceptos `DIFERENCIA CAMBIO TOMA AGUA/DRENAJE (LIBRE)` — creados directamente en Host C — se agregaron a `08_saneamiento_catalogo.sql` con `INSERT IGNORE` para garantizar su presencia en cualquier rebuild del pipeline. Regla: `recargo=0`, `monto=0`, `anio=0`.
*   **Homologación de Categorías (BD + Pipeline)**: Todos los nombres de la tabla `categorias` fueron homologados contra los `$etiquetas[]` de los reportes PHP. El Paso 3-B de `10_pipeline_saneamiento.sql` fue corregido: `REPLACE INTO` → `INSERT...ON DUPLICATE KEY UPDATE` (para respetar FK), + bloque `UPDATE` para IDs 1-18 con nombres completos y oficiales (ej. `MULTA POR DESPERDICIO DE AGUA`, `CONSTANCIA DE NO ADEUDO`, `REPARACION DE FUGAS`).
*   **Guía del Catálogo de Cargos**: Nuevo documento `docs-dev/doc-estabilizacion/GUIA_CATALOGO_CARGOS.md` — referencia completa para operadores sobre: anatomía de un cargo, reglas por campo, cuándo usar `(LIBRE)` vs `repetir=1` (R(N)), conceptos por año, y catálogo de issues conocidos.
*   **Homologación de MDs**: Nombres de categorías 13, 14, 20, 21, 22 actualizados en `CARTERA_VENCIDA_MODELO_Y_REPORTES.md` y `REPORTES_CAJA_CARTERA_DECLARACION.md` para alinearlos con los nombres canónicos de la BD.

**Validación Pipeline Final y Blindaje (2026-05-18):**
*   **Validación Full-Pipeline-Sync**: Confirmada la ejecución exitosa del pipeline completo hacia Host C. Datos migrados sin configuración drift: 1,409 usuarios, 201,130 cargos (7,207 activos / 193,923 históricos). Tablas Poka-Yoke intactas (`id_homonimo_padre` y bandera `repetir=1` en cobros LIBRE).
*   **Manuales Operativos Creados**: Se generaron los documentos `doc_cajero_transiciones_estado.md`, `doc_tesorero_corte_cartera.md` y `doc_ejecutivo_comite.md` detallando las reglas de paridad, el modelo homologado de Cartera Vencida y la matriz de los 6 casos de transición de estados de contrato.
*   **Blindaje Extremo NTFS**: Se actualizó `protect-folder.ps1` para aplicar bloqueos `(DE, DC)` directamente a la carpeta `$desktop\aguaV2` en lugar de solo a los `.lnk` internos. Esto impide el arrastre a papelera y borrado de los atajos administrativos.

**Sincronización B→A y Hardening MySQL (2026-05-19):**
*   **Fix Truncamiento de Datos**: Se identificó y resolvió una pérdida silenciosa de datos en la migración Host B → Host A causada por el límite `max_allowed_packet` (1MB). El script `run_sync.sh` fue endurecido con los parámetros extendidos (`--max_allowed_packet=512M`, `--net_buffer_length=10M`).
*   **Auditoría y Paridad**: Se generaron reportes para identificar los contratos omitidos y se ejecutó un Full Sync restaurando la paridad estructural completa entre los Hosts A, B y C.

**Normalización de Calles y Reporte de Impresión de Credenciales (2026-05-20):**
*   **Agrupamiento de Calles Robusto**: Se implementó una lógica de agrupamiento por expresiones regulares en `listadeudoresxc.php` para normalizar acentos, números ordinales y calificativos de dirección en las calles, evitando truncamiento de palabras clave como "NORTE".
*   **Impresión de Credenciales en Lote**: Se diseñó un nuevo visualizador tamaño Carta en `imprimir_credencial.php` que acomoda hasta 3 credenciales de `8.8 x 5.8 cm` por cara con guías de corte y línea discontinua de doblez central. Integrado mediante popup en `ficha.php`.

**Optimización de Impresión de Reportes y Rotación de Respaldos (2026-05-21):**
*   **Aprovechamiento de Papel en Reportes**: Se incrementó la capacidad de registros por página de **42 a 46** en 5 reportes críticos (`listacontratosestado.php`, `listacontratos.php`, `listacontratosnuevos.php`, `listausuarios.php`, y `listadeudores.php`). Esto optimiza el uso de la hoja tamaño Carta reduciendo las hojas impresas sin riesgo de desborde por nombres o domicilios largos.
*   **Rotación de Respaldos de BD (PowerShell)**: Se implementó un algoritmo de rotación basado en cantidad (máximo 7 respaldos más recientes) tanto en `start-webapps.ps1` como en `stop-webapps.ps1`. Esto evita que las múltiples pruebas de apagado/encendido del operador saturen el disco con más de 7 archivos de respaldo (data-*.zip), reemplazando el filtrado temporal estático de 7 días.

**Seguridad y Autocompletado de Credenciales (2026-05-22):**
*   **Desactivación de Autocompletado en Login**: Se agregaron los atributos HTML `autocomplete="off"` en el `<form>` y en el input de usuario, y `autocomplete="new-password"` en el input de contraseña de `login/index.php`. Esto mitiga el comportamiento agresivo de autocompletado en navegadores modernos (Chrome/Firefox/Edge), manteniendo los campos limpios y evitando riesgos de seguridad por credenciales recordadas.

**Habilitación HTTPS y Nginx en OCI VM (2026-05-23):**
*   **Certificado Let's Encrypt**: Solicitud y activación exitosa de SSL para `www.caelitandem.lat` vía Certbot + plugin Nginx. Redirect 301 HTTP → HTTPS configurado limpiamente.
*   **Auto-Renovación Blindada**: Script `/home/ubuntu/scripts/renew-certs.sh` + cron `/etc/cron.d/certbot-custom` (3:00 AM diario). Timer `certbot.timer` de systemd verificado activo.
*   **Alcance**: Todos los sitios del OCI VM (www, kanboard, n8n, oken8n) ahora operan en HTTPS con renovación automática. Esta configuración es del servidor CaeliTandem, **no del proyecto Agua**.

**Documentación de Entrega Sistema Agua V2 (2026-05-21—22):**
*   **Manual Técnico-Operativo**: Generado `Manual_Entrega_Sistema_Recaudacion_Agua_V2.pdf` (HTML + PDF) vía script Python. Incluye arquitectura MVC, diagramas, catálogos y manuales por rol.
*   **Apéndices**: Código fuente de `configuracion.php` y paleta de colores semáforo del buscador integrados como apéndices formales del documento de entrega.

**Iniciación Repositorio emp_devhj_sw / CaeliTandem (2026-05-25):**
*   **Nuevo Repo**: Inicializado `/home/carlos/GitHub/emp_devhj_sw/caelitandem_home` para el proyecto CaeliTandem SEO, separado del proyecto Agua.
*   **Script dos-repos-branch-git.sh**: Creado en `docs-dev/scripts/` como guía de referencia del flujo canónico de commits para ambos repos (agua + agua_chatledger). **No es un script ejecutable automatizado**, sino documentación operativa del flujo Git de cierre de sesión.

**Estabilización de Localización y Despliegue de Oferta (2026-06-09):**
*   **Poka-Yoke Visual (Exclusión de Colonia del Maestro)**: Se eliminó todo logo, marca de agua (`sellote.png`, `selloteAlfa1.png`, `selloteAlfa1_Final.png`) y cédula fiscal (`rfc.png`) del comité original en `recibo.php`, `reciboegreso.php`, `contratoinfo2.php` y `credencial.php` para la versión de Tlapa.
*   **Aislamiento y Consolidación de Oferta**: Los archivos de desarrollo y demo (`v-ospv/`) y los de pase a producción (`aguad-osv3-2026/`) quedaron totalmente aislados de la rama `main`.
*   **Flujo Mandatorio de Despliegue PHP**: Se documentó formalmente que para aplicar cambios PHP locales en Host C se debe ejecutar obligatoriamente el pipeline de empaquetado (`prepare_deploy_win10.sh`) y subida HTTP (`deploy_http.py`).

**Scaffolding y Configuración Base Comandas VOSK (2026-07-02):**
*   **Reconstrucción e Ingesta de BD**: Recreación de la base de datos `vcd01` con la carga semilla de un catálogo de Taquería Mexicana (pastor, suadero, alambres, aguas, refrescos) listo para las pruebas de voz offline.
*   **Entorno Frugal sin Dependencias**: Despliegue local y aislado de Flight PHP, Plates, Delight Auth, HTMX, Dexie.js y Chart.js en `www/restaurant/` y `www/web-assets/libs/`.
*   **Estructura Core y Front Controller**: Creación de `index.php` con enrutamiento base, bootstrap centralizado (`commons.php`), layout premium glassmorphism oscuro y esqueletos de vistas de todos los actores del sistema.

**Estabilización de Scaffolding y Auditoría Comandas VOSK (2026-07-02 - Sesión 2):**
*   **Depuración e Integración de Historial**: Remoción de archivos base de Agua duplicados y obsoletos en `sistema/` (`Conexion.php`, `config.php`, etc.), preservando la plantilla de Reloj Checador.
*   **Trazabilidad y Auditoría**: Modernización del visor `monitor_fallbacks.php` (trazabilidad de `sys_logs`) con Delight Auth y estilo Glassmorphism.
*   **Mapeo de Auditoría y Folios**: Creación de las tablas `folios_ticket` (secuenciador de folios) e `historial_operaciones` (bitácora de auditoría detallada), y del visor administrativo interactivo `reportes/historial_operaciones.php`.
*   **Delimitación del Alcance Financiero**: Validación de que el alcance del proyecto cubre únicamente **Ingresos de Operación** (comandas, cobros, cortes de caja), quedando fuera del alcance los egresos.

**Arquitectura VOSK Frontend y Pruebas Offline (2026-07-02 - Sesión 3):**
*   **Pipeline NLP Estabilizado**: Implementación definitiva de los 6 pilares de resiliencia (AudioWorklet 16kHz, Web Worker asíncrono, Gramática Kaldi, Levenshtein JS, Dexie.js y Delta Hash / Garbage Collection).
*   **Test Suite de Integración PWA**: Creación de una suite de pruebas automática (`/sistema/pruebas-nlp`) que evalúa físicamente el hardware del Android. Ejecución condicionada al uso de puertos Docker (6001 HTTP / 8443 HTTPS).
*   **Expansión de Roles y RBAC Base**: Ampliación del seed SQL (`05_seed_data.sql`) integrando al rol Cajero y 5 permisos granulares RBAC (`ver_kds`, `tomar_ordenes`, `cobrar_mesas`, `gestionar_menu`, `ver_reportes`) mapeados lógicamente contra los usuarios.

**Observabilidad de PWA y Ficha Técnica Comercial (2026-07-05):**
*   **Monitoreo y Telemetría PWA (Heartbeat)**: Implementación de la señal de latido (Heartbeat) de los meseros en línea enviada cada 15 segundos y alertas en tiempo real en la vista del Cajero mediante HTMX.
*   **Indicadores de Sincronización en PWA**: Adición de contadores visibles en colores semáforo para el estado de conexión PWA, cola de comandos offline (`Dexie.js Outbox`) y notificaciones de preparación en cocina.
*   **Historial de Desconexión de Meseros**: Creación de la bitácora de cortes de red por turno/día en la interfaz del cajero con historial rotativo de hasta 1 mes.
*   **Gestión Híbrida de Energía**: Formalización en `Funcional_Flujos_Trabajo_Comandas_VOSK.html` (RN-2.3) del uso eficiente de batería para Meseros (cierre de AudioContext tras Push-to-Talk) frente al uso ininterrumpido en Cocina (WakeLock).
*   **QA y Ficha Comercial**: Expansión de la suite de pruebas en `Pruebas_Casos_Validacion_Comandas_VOSK.html` (casos QA-OPER-05 a 08) y creación del documento de presentación del producto `Ficha_Tecnica_Comercial_Comandas_VOSK.html`.

**Alineación Fonética y Optimización de Catálogo VOSK (2026-07-05 - Sesión 2):**
*   **Alineación del Catálogo Semilla**: Refactorización de `05_seed_data.sql` para usar IDs de productos explícitos, sincronizando los datos semilla con los ejemplos de dictado de la especificación técnica ("Taco de tripa" = ID 14, "Refresco" = ID 25) y refinando sus palabras clave/fonética ("taco arto", "chesco").
*   **Orquestación de Base de Datos**: Integración de la tabla de telemetría PWA (`08_pwa_telemetry.sql`) y la declaración `USE vcd01;` en el script orquestador `setup.sh`, garantizando instalaciones e inicializaciones limpias desde cero.
*   **Precarga de Versión Semilla**: Ingesta en `07_catalogo_versiones.sql` de una versión publicada inicial (`v1.0.0`) con la precomputación del Delta Hash (`13cf4afbd58187b03f3fbe50bc06908a`) y el payload JSON del menú, asegurando la inmediata descarga de gramática optimizada por las PWA clientes.
*   **Validación del Motor Transaccional**: Ejecución y paso exitoso del 100% de la suite de pruebas funcionales automatizadas (`www/tests/run_functional_tests.php`).

**Estabilización y Tuning Fino de Comandas VOSK (2026-07-05 - Sesión 3):**
*   **Caché y Resiliencia Offline (SW)**: Implementación de la estrategia *Cache-First* en el Service Worker (`sw.js`) para acelerar la inicialización del motor VOSK WASM (~38MB del modelo y ~5.5MB de vosk.js), y activación de `navigator.storage.persist()` para blindar IndexedDB contra desalojo automático.
*   **Optimización de CPU y Batería (RMS VAD)**: Integración de filtros de nivel de volumen Root Mean Square (RMS) en el procesador de audio (`pcm-processor.js`) para descartar el silencio localmente en cliente y reducir la carga de CPU y el tráfico IPC de hilos en más de un 40%.
*   **Watchdog de Fugas de Memoria WASM**: Diseño de una política *Kill-and-Respawn* para reiniciar de manera segura el Web Worker de VOSK en periodos de inactividad, previniendo fallos Out-of-Memory (OOM) en terminales de bajo hardware con sesiones prolongadas.
*   **Documentación de Pruebas Manuales**: Inserción de recomendaciones de QA que aclaran el alcance técnico entre una Limpieza Total (Clear Site Data) y el botón operativo de "Forzar Sincronización" en la PWA.

**Última actualización**: 2026-08-15

**Estabilización de Sesión Persistente, Interrupciones y Entrega de Turno (2026-07-06 — Sesión 1):**
*   **Persistencia PHP Extendida**: Habilitado el tiempo de vida de sesión a **24 horas** en `commons.php` para prevenir expiraciones silenciosas en los dispositivos móviles durante la jornada laboral.
*   **Remember Me de 28 Días**: Configurado el inicio de sesión a **28 días** en `index.php` a través de Delight PHP Auth para asegurar una ventana de persistencia física en el navegador y evitar desconexiones accidentales cuando el terminal suspende la pestaña en segundo plano (Doze).
*   **Aislamiento y Cambio de Identidad**: Implementado flujo de token único por dispositivo. Al ingresar un nuevo NIP se limpia incondicionalmente la sesión anterior, previniendo el traslape de credenciales en dispositivos compartidos.
*   **Manejo de Interrupciones Físicas**: Inyectado listener de `visibilitychange` en `app-voice.js` para capturar la comanda dictada y apagar lógicamente el micrófono cuando el dispositivo recibe una llamada o bloquea la pantalla.
*   **Bloqueo Transaccional (`sending`)**: Implementado cambio de estado atómico en Dexie.js (`pending` -> `sending`) dentro de una transacción de escritura exclusiva para evitar que el hilo de primer plano y el Service Worker procesen la misma comanda duplicando pedidos.
*   **Prevención de Poison Pills**: Patcheado el bucle de sincronización en `db.js` y `sw.js` para marcar comandas con error 400 del servidor como `failed_invalid`, evitando bucles de reintento infinitos.
*   **Documentación de Pruebas y Flujos**: Incorporación de casos de prueba manuales 2.1.B y 2.1.C en `Pruebas_Casos_Validacion_Comandas_VOSK.html`, actualización del flujo 6.5.B en `Funcional_Flujos_Trabajo_Comandas_VOSK.html` y adición de notas operativas de seguridad en `Manual_Operativo_Comandas_VOSK.html`.

**Instalación PWA Android y Scripts de Orquestación (2026-07-06 — Sesión 2):**
*   **Empaquetado Nativo Android (Add to Home Screen)**: Consolidación arquitectónica del Webcontext PWA (`manifest.json`, iconos 192/512, `sw.js`, `db.js`) requerida para que Chrome/Safari no rechacen el prompt de instalación nativa (Standalone). Estructura documentada formalmente en `Instrucciones_Despliegue_Comandas_VOSK.html`.
*   **Alineación Manual Operativo**: La Sección 10 del `Manual_Operativo_Comandas_VOSK.html` fue reescrita como una guía estrictamente operativa (Cajeros/Gerentes) con instrucciones de 2 pasos (Instalar Certificado y Añadir a Pantalla), eliminando la carga técnica.
*   **Reubicación de Orquestadores Python**: Los scripts utilizados para la actualización masiva de documentos HTML (`align_docs.py`, `align_docs_deep.py`, `update_docs_multipulse.py`) fueron movidos de la raíz del repo maestro hacia su nueva ubicación canónica en `restaurantb/docs/py/` para mejor organización.
*   **Mitigación de Crash de IA**: Restauración y verificación forense del árbol de trabajo tras interrupción de sesión. Corrección de HTML corrupto (`<tr>` y `<td>` truncados) en el Manual Operativo y confirmación de que la arquitectura de la Fase 4 permaneció 100% íntegra en el código fuente.

**Consolidación y Generación del Paquete Contractual v1.1.3 LAESH (2026-07-30):**
*   **Diseño e Integración del Contrato Marco y Anexos v1.1.3**: Generación y refinamiento de `Contrato_Base_Desarrollo.md`, `Anexo_A_Sitio_Web.md` y `Anexo_A_Bloc_Digital.md` para el cliente LAESH ($45k MXN consolidado).
*   **Condensación y Homologación de Documentos**: Reducción de extensión (Contrato Base a 3 págs, Anexo Sitio Web a 1 pág, Anexo Bloc Digital a 2 págs) manteniendo paridad semántica, legal y funcional.
*   **Depuración de Extranjerismos y Alcances**: Traducción a español claro (panel de administración, hospedaje web, defectos de programación), extensión a 6 secciones en el sitio web (Promociones), precisión sobre no compra de hosting (solo configuración), inclusión de enlaces FB/WA, plazo a 10 días para contenidos, sesiones con reseteo admin, PDFs permanentes y panel de configuración global.
*   **Compilación Automatizada de PDFs**: Extensión de `build_pdf.py` e impacto en `contrato/` (`Contrato_Base_Desarrollo.pdf`, `Anexo_A_Sitio_Web.pdf`, `Anexo_A_Bloc_Digital.pdf`).

**Homologación de Alcances y Análisis de Assets Contratos LAESH (2026-07-31):**
*   **Corrección de Fechas y Nombres**: Actualización de la fecha de firma a "Lunes 3 de Agosto de 2026" y renombramiento a "Sitio Web Corporativo".
*   **Homologación Cruzada**: Sincronización del Resumen Comercial vs los 3 anexos contractuales, ajustando el alcance a 6 secciones, 21 funcionalidades operativas, limitantes de borrado para perfiles médicos, y exclusiones de garantías (servidores/conexión).
*   **Precisión de Adaptabilidad (Responsividad)**: Modificación del término genérico "responsivo" para detallar los Sistemas Operativos compatibles (Windows 10/11, macOS 12+, Android 12+, iOS 16+), tamaños de pantalla soportados (1280px hasta 4K), compatibilidad nativa (Safari 17+, Chrome 115+, Edge 115+) y la exclusión explícita de tabletas (ej. iPad) y aplicaciones nativas o PWAs.
*   **Identificación de Entregables del Cliente (Assets)**: Generación del listado maestro `assets_requeridos_cliente.md` a partir de un análisis de los mockups (v1.0) para asegurar la entrega de logotipos, Excel de catálogos y accesos de Hostinger a tiempo.
*   **Eliminación de Anglicismos**: Purga final de términos comerciales ambiguos ("CMS", "tiempo real").
*   **Regla de Ubicación de Contratos (PDFs)**: Todos los PDFs generados a partir de los documentos contractuales oficiales (`Contrato_Base_Desarrollo.md`, `Anexo_A_Sitio_Web.md` y `Anexo_A_Bloc_Digital.md`) deben almacenarse exclusivamente dentro del subdirectorio `contrato/` (ej: `v1.1.3/contrato/`), manteniendo las propuestas comerciales, cartas de presentación y diagramas auxiliares en el directorio raíz.

**Integración de Seguridad, Homologación y Detalle de Insumos (2026-08-04):**
*   **Seguridad Integral**: Creación y refinamiento de `Tecnica_Seguridad_Integral.html` con una Matriz de Trazabilidad por Ambiente (Desarrollo, Docker, VPS Prod, Despliegue) para el ecosistema LAESH.
*   **Mitigación de Gaps de Infraestructura**: Integración de directivas contra DoS mediante límites de subida de archivos controlados por base de datos (tabla `configuraciones`) y hardening SSH (bloqueo de root y llaves criptográficas).
*   **Normalización de Índices**: Homologación del estilo visual, CSS global y navegación TOC (`<nav class="toc">`) en los 4 documentos técnicos del proyecto.
*   **Mockups de Insumos**: Re-redacción no técnica de `assets_requeridos_cliente.md` enriquecida con imágenes capturadas con Chrome headless sobre objetivos de Google Ads y Facebook Messenger.
*   **Otros Alcances (Upsells)**: Segmentación explícita de Facebook Ads y Blog dinámico en la lista de insumos, incluyendo una tabla de diferencias con el panel básico para facilitar la venta adicional de módulos.

**Especificación de Secciones, Formato Media Carta y Generación de PDF Excluido (2026-08-05):**
*   **Detalle de Secciones y Banners**: Incorporación del requerimiento de hasta 6 secciones del sitio web y delimitación de dimensiones recomendadas para imágenes (1920x600px). Renombrado del alcance a "Sitio Web Corporativo" y remoción de cláusulas temporales ("10 días").
*   **Impresión de Solicitud en Hojas Blancas**: Configuración de impresión Media Carta (hoja cortada horizontalmente a la mitad, con generación automática de cabecera en PHP), vinculando requerimientos de marca/modelo de impresora para calibración.
*   **Generador PDF con Exclusión de Upsell**: Modificación de `build_pdf.py` para añadir la tarea `assets` que compila `assets_requeridos_cliente.pdf` (Letter, font size 11) truncando dinámicamente el contenido antes de la sección de "Otros Alcances" (dejando la venta adicional oculta en el código de producción pero fuera del documento de firma del cliente). Ajuste posterior de márgenes a 12mm, line-height a 1.35 y altura de mockups para compactar el documento y asegurar que quepa exactamente en 2 páginas.

**Kickoff Desarrollo Primera Etapa LAESH Sitio Web & Bloc Digital (2026-08-06):**
*   **Alcance Inicial**: Arranque oficial de la primera etapa abarcando configuración de ambientes (local y remoto con dominio), modelado de base de datos para CMS/Auth, diseño y refinamiento de propuestas de UI (User Interfaces), e integración y extracción de web assets.
*   **Alineación de Contexto**: Sincronización del asistente de IA con los nuevos repositorios de prototipos y documentación técnica (`portafolio-dev-2026/blocklabgd/v1.2/`, `laesh-web-assets/`, `laesh-swbldi/website/uipv0/`, y `laesh/et/`).
*   **Mapeo de Rutas y Ambientes (Local vs Remoto/OCI)**:
    *   **maqueta0**: Remoto `sftp://ubuntu@oci-vm/home/ubuntu/n8n-php/mvps/laesh/` corresponde localmente a `/home/carlos/GitHub/caelitandem_home/restaurantb/www/laesh-swbldi/website/uipv0/`.
    *   **uipv1**: Remoto `sftp://ubuntu@oci-vm/home/ubuntu/n8n-php/mvps/laesh/uipv1/` corresponde localmente a `/home/carlos/GitHub/caelitandem_home/restaurantb/www/laesh-swbldi/website/uipv1/`.
    *   **uipv2**: Remoto `sftp://ubuntu@oci-vm/home/ubuntu/n8n-php/mvps/laesh/uipv2/` corresponde localmente a `/home/carlos/GitHub/caelitandem_home/restaurantb/www/laesh-swbldi/website/uipv2/`.
    *   **Regla de Recursos Web**: Los contenidos estáticos y assets ubicados en el directorio `/home/carlos/GitHub/caelitandem_home/restaurantb/www/laesh-web-assets/` corresponden obligatoriamente a las páginas (HTML/PHP) que se desarrollen dentro de `uipv1/` y `uipv2/`.

> [!IMPORTANT]
> **Terminología de Sesión**:
> - **Ground Truth**: Denominación del contexto maestro para **Claude**.
> - **Runbook**: Denominación del contexto maestro (GEMINI.md + .agents/) para **Gemini**.

## ⚠️ Reglas Especiales de Asistencia (Agentes IA)
- **Verificación Visual Automatizada**: Evita realizar la "Verificación Visual Automatizada" (pruebas de navegador/capturas con `browser_subagent`) por default. Debes esperar autorización explícita del usuario antes de ejecutarla.
- **Despliegues a OCI VPS**: Queda estrictamente prohibido realizar cualquier tipo de despliegue automático a OCI VPS (vía rsync, scp u otros comandos). Los despliegues a entornos remotos se realizarán **única y exclusivamente bajo solicitud explícita del usuario**.

---

## 🎨 Estándares de Oro UI/UX y Flujos: Ecosistema LAESH Sitio Web & Portales (`laesh-swbldi/website/uipv1/`)

1. **Alineación 1:1 Menú Lateral <-> Breadcrumb:** 
   El texto exacto de la opción seleccionada en la barra lateral (`aside.sidebar`) DEBE coincidir carácter por carácter con el título que se renderiza dinámicamente en el encabezado flotante (`#header-bc-current`).
   * *Médico:* `Nueva Orden`, `Órdenes Anteriores`, `Reportes`, `Catálogo de Estudios`.
   * *Recepción:* `Tablero de Recepción`, `Directorio de Pacientes`, `Médicos Tratantes`, `Reportes y Estadísticas`, `Catálogo de Análisis`, `Órdenes Anteriores`, `Cambios en contenidos SitioWeb`.

2. **Decisor de Búsqueda Predictiva por Estado (`medicos.html`):**
   Al seleccionar un paciente/folio desde la lista de autocompletado en el portal médico (`input-buscador-medico`), el sistema intercepta el estado de la solicitud (`m.estado`):
   * Si es `Resultados Listos` o `Cerrada`: abre de inmediato el **Modal de PDF Clínico** (`verResultados`).
   * Si es `Remitido` o `En Atención`: abre el **Modal de Solicitud Digital** (`verSolicitudDigital`).
   * El texto del `(estado)` en el resultado se renderiza en **Rojo (`#dc2626`)** con negrita legible (`font-weight: 700`).

3. **Homologación de Grillas y Trazabilidad:**
   Todas las tablas operativas (`#tabla-medico`, `#tabla-historial-completo`, `#tabla-recepcion`, `#tabla-historial-completo-admin`) comparten el estándar homologado de columnas (Folio, Paciente, Estudios, Fecha Emisión, Fecha Resultado, Estado, Acción), garantizando paridad entre el laboratorio y los médicos tratantes.

4. **Escalado Proporcional en Pantallas Grandes (Desktop / Laptop):**
   En pantallas `>=1025px`, el contenedor de carruseles e imágenes expande sus paddings laterales a `4.5rem` y las tarjetas clínicas mantienen una altura de imagen de `280px` (`object-fit: cover`) con tipografías proporcionales (+3) para un look & feel de alta gama.

5. **Mapeo de Secciones UI del CMS Personalizado (`gestion-web.html`):**
   `gestion-web.html` refleja de forma exacta las 5 secciones navegables reales de `index.html`:
   * **1. Banner Principal (`#hero` / `#inicio`):** Edición de imágenes de fondo, etiquetas, títulos y textos CTA de los 3 slides.
   * **2. Estudios de Rutina (`#especialidades`):** Edición del carrusel de tarjetas de especialidades e imágenes de área.
   * **3. Promociones Vigentes (`#promociones`):** Subida y reemplazo del banner gráfico oficial (`PROMOCIONES 2026.webp`) y sus títulos explicativos. (Sin tarjetas redundantes de descuento).
   * **4. Calidad e Instalaciones (`#calidad`):** Gestión de la galería fotográfica de áreas de laboratorio y certificaciones.
   * **5. Ubicación y Contacto (`#ubicacion`):** Edición de teléfonos, dirección física, horario, responsable sanitario, WhatsApp y croquis (`mapa_laesh.webp`).
   *(Nota: Se han removido secciones obsoletas como Membresías y tarjetas individuales de promoción que no pertenecen a index.html).*
