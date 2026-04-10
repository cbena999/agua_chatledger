# Bitácora de Estabilización: Motor de Paridad y Paridad Universal de Contratos
**ID de Conversación**: `979d81d75006`  
**Estado**: Consolidado en Ground Truth y Scripts de Migración  
**Fecha**: 2026-04-10

## 🎯 Objetivo de la Intervención
Resolver la desincronización entre la infraestructura física (tomas) y la realidad financiera (deuda anual), asegurando que el sistema sea autoregulado y resiliente a procesos de migración masiva.

---

## 🛠️ Fixes Implementados

### 1. Motor de Paridad Universal (`_sincronizaParidadFinanciera`)
*   **Problema**: La activación de tomas físicas no restauraba cargos anuales cancelados previamente (Bug #1407).
*   **Solución**: Se centralizó una lógica de sincronización que detecta cambios de estado en tomas y ajusta el `estado` de los cargos anuales (Pendiente/Cancelado) automáticamente.
*   **Archivos**: `includes/negocio/contratos.php`

### 2. Blindaje de Suspensión Definitiva (Estado 4)
*   **Problema**: Contratos en Estado 4 seguían apareciendo con servicios activos o generando deuda potencial.
*   **Solución**: Implementación de un flujo de limpieza forzada. Al pasar a Estado 4, el sistema apaga físicamente todas las tomas y cancela la deuda anual del año corriente.
*   **Archivos**: `includes/negocio/contratos.php`

### 3. Persistencia en Scripts de Migración (Efecto Ground Truth)
*   **Problema**: Las mejoras solo vivían en el PHP; una nueva sincronización B->A->C borraba la consistencia.
*   **Solución**: Inyección de lógica de paridad directamente en los scripts SQL de migración.
*   **Archivos**: 
    - `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/03_sync_host_a.sql`
    - `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/04_recalc_contrato_toma.sql`

---

## 📈 Impacto Positivo

| Área | Impacto |
| :--- | :--- |
| **Integridad Financiera** | Eliminación de "Cargos Fantasma" en contratos inactivos y recuperación dinámica de ingresos al reconectar servicios. |
| **Experiencia del Operador** | El cajero ya no necesita recordar cancelar o restaurar cargos manualmente; el sistema lo hace tras cada clic en la ficha. |
| **Resiliencia Geográfica** | La base de datos ahora es "auto-curativa" durante la migración desde Host B, aplicando las reglas de Agua v2 desde el import. |
| **Seguridad de Datos** | Blindaje total contra ediciones accidentales en contratos históricamente cerrados. |

---

## 📂 Archivos Modificados

| Directorio | Archivo | Cambio Principal |
| :--- | :--- | :--- |
| `includes/negocio/` | [contratos.php](file:///opt/lampp/htdocs/agua/includes/negocio/contratos.php) | Inyección del Motor de Paridad en 4 funciones core. |
| `docs-dev/.../` | [03_sync_host_a.sql](file:///opt/lampp/htdocs/agua/docs-dev/migration-aguav2/syncawa_hostb_to_hosta/03_sync_host_a.sql) | Sección D7: Saneamiento de cargos para Estado 4. |
| `docs-dev/.../` | [04_recalc_contrato_toma.sql](file:///opt/lampp/htdocs/agua/docs-dev/migration-aguav2/syncawa_hostb_to_hosta/04_recalc_contrato_toma.sql) | Saneamiento post-recalculo de tomas por estado. |
| `.agents/rules/` | [02-reglas-negocio.md](file:///opt/lampp/htdocs/agua/.agents/rules/02-reglas-negocio.md) | Elevación de la Paridad a Regla de Oro (C04, C05). |

---

> [!TIP]
> **Próxima Acción Recomendada**: Ejecutar `run_sync.sh` en un ambiente de pruebas para validar que la migración masiva respeta ahora las reglas de paridad para los ~2,500 contratos activos.
