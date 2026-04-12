# Mapa de Depuración de Estado 4 (SDF) — v1.1

Este documento define el protocolo de saneamiento financiero para contratos en **Suspensión Definitiva (Estado 4)** y los mecanismos de auditoría implementados en la infraestructura **Agua V2**.

---

## 📐 Arquitectura de Saneamiento SDF

El saneamiento de contratos SDF se ejecuta en dos capas diferenciadas para asegurar consistencia entre el puente de transición y el target final.

### Capa 1: Sincronización Automática (B → A → C)
| Ambiente | Proceso | Acción SQL |
|:---:|---|---|
| **Host A (Bridge)** | `03_sync_host_a.sql` | **Barrido Único**: `UPDATE ligacargos SET estado = -1` para contratos SDF. |
| **Host C (Target)** | `06_split_ligacargos` | **Barrido Multitabla**: El split regenera el histórico y hereda los estados -1 del puente. |

### Capa 2: Mantenimiento Preventivo (Webapp)
En la rama `feature/upgrade-v2-win-xampp` (enfocada en Host C), el motor de paridad en `includes/negocio/contratos.php` ejecuta un **Saneamiento Multitabla** cada vez que se detecta una transición al Estado 4:
- Limpia `ligacargos` (Activa).
- Limpia `ligacargos_historico` (Legado).

---

## 📜 Bitácora de Saneamiento (Audit Trail)

Se ha refactorizado la arquitectura de consulta para profesionalizar la auditoría de cargos depurados.

### [NUEVO] Master-Detail Sanitation Pattern
- **Host (Master)**: `admin/saneamiento/bitacora_eventos.php`
  - Vista cronológica de todos los eventos de cambio en la tabla `cambios`.
  - Enlaces directos a la ficha del contrato y al detalle de cargos depurados.
- **Detalle (Detail)**: `admin/saneamiento/bitacora_detalle.php`
  - Genera la **Contract Card** premium con la grilla de cargos depurados (Estado -1).
  - Lógica de columnas dinámica: Oculta "Usuario/Contrato" cuando se consulta para un contrato específico.
  - Orden cronológico inverso (Año vigente a más antiguo).

---

## ✅ Logros Técnicos (Sesión 2026-04-11)

1. **Unificación de Sincronización**: Eliminación de redundancia en `run_sync.sh` (B→A), delegando el saneamiento oficial a `03_sync_host_a.sql`.
2. **Normalización V2**: Corrección de nombres de archivos (`cv_por_tipo_edo_cto.php`) y enlaces en el panel de configuración.
3. **Optimización UI**: Reducción de tamaño de iconos y apertura en nuevas pestañas (`_blank`) para mejorar el flujo de trabajo administrativo.

---

## 🧪 Pruebas Express (Checklist de Validación)

- [ ] **T1 (Sync)**: Ejecutar `run_sync.sh` (B→A) y validar que el script `03_sync_host_a.sql` registre un `batch_id=0` en cambios para los contratos SDF depurados.
- [ ] **T2 (UI Enlaces)**: Cargar `configuración.php` y validar que el icono de Cartera Vencida por Tipo abra correctamente el reporte normalizado.
- [ ] **T3 (Master Bitácora)**: Abrir `bitacora_eventos.php` y confirmar que el filtrado por fecha muestra los últimos saneamientos.
- [ ] **T4 (Detail Bitácora)**: Desde la ficha de un contrato SDF, dar clic en "Ver Detalle" y confirmar que la grilla muestra los cargos del año 2026 primero.

---
*Generado por Antigravity — 2026-04-11*
