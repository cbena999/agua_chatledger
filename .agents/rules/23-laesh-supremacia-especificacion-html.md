# Regla 23: Supremacía de la Especificación Técnica HTML (Proyecto LAESH)

## 1. Documentos Maestros del Ground Truth
El diseño de base de datos, arquitectura de notificaciones, infraestructura de red y flujos de negocio del proyecto LAESH están regidos y centralizados exclusivamente en los archivos HTML ubicados en `laesh/et/`:
1. `Especificacion_Tecnica.html`
2. `Tecnica_Modelo_Datos.html`
3. `Tecnica_Infraestructura_Despliegue.html`
4. `Memoria de Instalación Certificados Locales HTTPS.html`

## 2. Obligatoriedad de Alineación
- **Cero Desviaciones:** Antes de escribir código PHP, modificar esquemas DDL en MariaDB, o proponer cambios en los contenedores Docker, **el agente de IA está obligado** a consultar y alinear la solución propuesta contra la especificación HTML correspondiente.
- **Definición de Bug Crítico:** Cualquier implementación que contradiga o ignore los contratos técnicos, tablas de tuning o flujos documentados en las especificaciones HTML se considera un bug crítico que debe ser corregido inmediatamente.
- **Sincronización Bidireccional:** Cualquier mejora o parámetro nuevo acordado durante el desarrollo (ej: `PDO::ATTR_PERSISTENT`, cotejo `utf8mb4_spanish_ci`, DDLs de `fallback_log`) **debe ser actualizado de inmediato en los documentos HTML** para preservar la integridad del SSOT (Single Source of Truth).
