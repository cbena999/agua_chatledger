# 15. Estándares HTMX y UX (Proyecto Restaurant Comandas)

Esta regla define los patrones formales de interacción de UI/UX implementados mediante **HTMX** para garantizar la resiliencia transaccional y prevenir fugas de estado en el sistema de comandas en tiempo real.

## 1. Idempotencia y Prevención de Duplicados (UI-Side)

Dada la latencia asíncrona y la inestabilidad de las redes Wi-Fi locales, la interfaz no debe permitir acciones redundantes.
- **Regla Estricta**: Todo botón que dispare una escritura (POST/PUT/DELETE) hacia el servidor debe usar el atributo HTMX `hx-disabled-elt="this"`.
- **Efecto**: HTMX deshabilita de manera nativa y atómica el elemento en el DOM hasta recibir la respuesta completa del backend, evitando que doble clic ("dedo rápido") o impaciencia del mesero inserte múltiples comandas.

## 2. Bloqueo Global de Interfaz (KDS)

En procesos masivos o que requieran bloqueo visual completo (como el cierre de cuentas o sincronizaciones masivas de cocina):
- **Regla Estricta**: Se debe implementar una capa de Overlay Spinner superior.
- **Implementación**: Usar el atributo `hx-indicator=".overlay-spinner"` para que HTMX inyecte automáticamente la clase `.htmx-request` sobre la capa de bloqueo visual, congelando toda la pantalla durante el *roundtrip* de red.

## 3. Patrón PRG Asíncrono (Post-Redirect-Get)

El clásico refresco completo del navegador está penalizado y prohibido tras una mutación de estado.
- **Regla Estricta**: Tras la creación o modificación exitosa de una comanda, Flight PHP (backend) NO debe redireccionar mediante el header HTTP estándar `Location`.
- **Implementación**: Debe responder con la cabecera `HX-Redirect` o `HX-Location`. Esto instruye a HTMX a realizar la redirección mediante AJAX, preservando la App Shell e impidiendo alertas del navegador de "Reenviar formulario".
- **Detección Confiable de HTMX/AJAX (CRÍTICO)**: 
  Dado que HTMX no envía por defecto la cabecera `X-Requested-With: XMLHttpRequest` (utilizada por `$request->ajax`), el backend **debe** verificar explícitamente la presencia de la cabecera `HX-Request`.
  * *Estándar PHP*: `$isAjax = $request->ajax || isset($_SERVER['HTTP_HX_REQUEST']);`
  * *Fallo conocido*: Si no se incluye la comprobación de `HTTP_HX_REQUEST`, el servidor tratará la solicitud HTMX como una petición normal de navegador, emitiendo una redirección 302 estándar. El navegador seguirá el 302 en segundo plano y HTMX insertará (swapeará) el HTML de la página redireccionada completa dentro del contenedor de destino original (ej. inyectando el dashboard dentro de la caja de error del login).

## 4. OOB Swaps para Elementos Auxiliares

Cuando la recarga parcial de un formulario afecte contadores o barras de navegación fuera de su contenedor principal (Target):
- **Regla Estricta**: Usar Intercambios Fuera de Banda (OOB) en lugar de actualizar toda la vista.
- **Implementación**: El servidor anexará al HTML principal elementos marcados con `hx-swap-oob="true"` (ej. `<div id="breadcrumb" hx-swap-oob="true">...</div>`), garantizando que las notificaciones o migas de pan se mantengan síncronas sin recargar el `<body>`.
