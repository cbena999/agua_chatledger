# Mapa de Depuración de Cargos — Contratos Estado 4 (Suspensión Definitiva)

> **Fecha**: 2026-04-11  
> **Alcance**: Todos los puntos del código donde se depuran cargos activos (`estado=0`) en contratos con `estado=4`  
> **Versión schema**: V2 (split `ligacargos` + `ligacargos_historico`)

---

## Diagrama General de Flujo

![Mapa de Depuración Estado 4](mapa_depuracion_estado4(SDF).png)

---

## Detalle por Canal

### Canal 1 — Pipeline Sync B→A (Automático)

| Aspecto | Valor |
|---------|-------|
| **Archivo** | `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/03_sync_host_a.sql` (L174-198) |
| **Cuándo ocurre** | Cada vez que se ejecuta el workflow `/update-business-data` |
| **Qué depura** | Solo categorías **2 (Agua) y 3 (Drenaje)** con `estado=0` |
| **Acción** | `UPDATE ligacargos SET estado=-1` |
| **Auditoría** | `batch_id = 9999` + registro en tabla `cambios` |
| **Complemento** | `04_recalc_contrato_toma.sql` (L81-86) apaga tomas de Estado 4 |

**SQL ejecutado:**
```sql
-- Registrar movimiento en bitácora
INSERT INTO cambios (numcontrato, batch_id, fecha, descripcion, antes, despues)
SELECT DISTINCT lc.numcontrato, 9999, NOW(), 'Saneamiento Automático (Sync)', 
       'Estado: 0 (Pendiente)', 'Estado: -1 (Depurado)'
FROM ligacargos lc
JOIN contrato c ON lc.numcontrato = c.numcontrato
WHERE c.estado = 4 AND lc.estado = 0 AND lc.categoria IN (2, 3);

-- Ejecutar depuración
UPDATE ligacargos lc
JOIN contrato c ON lc.numcontrato = c.numcontrato
SET lc.estado = -1
WHERE c.estado = 4 AND lc.estado = 0 AND lc.categoria IN (2, 3);
```

> **⚠️ Gap**: Solo depura categorías 2 y 3. Otras categorías (multas, asambleas, ML, conexiones) quedan con `estado=0` en contratos Estado 4.

---

### Canal 2 — Transición de Estado desde UI (Operador)

| Aspecto | Valor |
|---------|-------|
| **Archivo** | `includes/negocio/contratos.php` → `cambiaestado()` (L270-275) |
| **Cuándo ocurre** | Cuando un operador cambia manualmente un contrato a Estado 4 |
| **Qué depura** | Solo anualidades del **año actual** (`ANUALIDAD DEL AGUA YYYY` / `ANUALIDAD DEL DRENAJE YYYY`) |
| **Cadena de llamadas** | `cambiaestado()` → `_sincronizaParidadFinanciera()` → `UPDATE estado=-1` |
| **Auditoría** | Registro en tabla `cambios` vía la función principal |

**Flujo interno:**
```
cambiaestado($contrato, ..., 4)
  ├─ UPDATE contrato SET estado=4
  ├─ UPDATE contrato_toma SET estado_agua=0, estado_drenaje=0
  ├─ UPDATE contrato SET agua=0, drenaje=0
  └─ _sincronizaParidadFinanciera($contrato, $y)
       ├─ n_agua = 0 → UPDATE ligacargos SET estado=-1 WHERE leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0
       └─ n_drenaje = 0 → UPDATE ligacargos SET estado=-1 WHERE leyenda='ANUALIDAD DEL DRENAJE 2026' AND estado=0
```

> **Nota**: Solo cancela anualidades del año actual. Cargos de años anteriores y de otras categorías persisten con `estado=0`.

---

### Canal 3 — Declaratoria "No Localizado" (Masivo)

| Aspecto | Valor |
|---------|-------|
| **Archivo** | `includes/negocio/usuarios.php` → `guardaUsuario()` (L222-262) |
| **Cuándo ocurre** | Cuando se marca a un usuario como "No Localizado" desde la ficha de usuario |
| **Qué hace** | Suspende **todos** los contratos del usuario a Estado 4 y apaga tomas |
| **⚠️ NO depura cargos** | Solo cambia `contrato.estado=4` y apaga tomas. **No llama a `_sincronizaParidadFinanciera()`** |
| **Resultado** | Los cargos pendientes quedan con `estado=0` → inflan la Cartera Vencida |

**Flujo interno:**
```
guardaUsuario($id, ..., no_localizado=1)
  ├─ UPDATE contrato SET estado = 4 WHERE numusuario = $id AND estado <> 4
  ├─ UPDATE contrato_toma SET estado_agua=0, estado_drenaje=0 WHERE c.numusuario = $id
  ├─ INSERT INTO cambios (Declaratoria No Localizado...)
  ├─ INSERT INTO notas (SUSPENSIÓN DEFINITIVA POR ACUERDO DE COMITÉ...)
  └─ ⛔ NO llama _sincronizaParidadFinanciera()  ← GAP
```

> **⛔ Gap crítico**: La declaratoria No Localizado deja todos los cargos con `estado=0`. Solo se limpiarán parcialmente en el próximo sync (Canal 1, categorías 2+3 solamente) o manualmente vía el Panel de Saneamiento (Canal 4).

---

### Canal 4 — Panel de Saneamiento Administrativo (Manual)

| Aspecto | Valor |
|---------|-------|
| **Archivo** | `admin/saneamiento_administrativo.php` (L168-202) |
| **Cuándo ocurre** | Ejecución manual por operador desde el menú del engranaje |
| **Qué depura** | **Todas** las categorías seleccionadas por el operador |
| **Tablas** | Ambas tablas físicas (`ligacargos` + `ligacargos_historico`) |
| **Acción** | `UPDATE estado=-1` con preview de impacto antes de confirmar |
| **Auditoría** | `batch_id = timestamp` + tabla `cambios` + bitácora visual |
| **Verificación** | `admin/verif_depuracion_cargos_estado4.php` — prueba de cero |

**SQL ejecutado (simplificado):**
```sql
-- Audit trail
INSERT INTO cambios (numcontrato, batch_id, fecha, descripcion, antes, despues)
SELECT DISTINCT l.numcontrato, $batch_id, NOW(), 
       'Saneamiento Administrativo: $motivo', 
       'Estado Cargo: 0 (Pendiente)', 'Estado Cargo: -1 (Depurado)'
FROM vw_ligacargos_all l JOIN contrato c ON l.numcontrato = c.numcontrato
WHERE $where;

-- Depuración en ambas tablas físicas
UPDATE ligacargos l JOIN contrato c ON l.numcontrato = c.numcontrato 
SET l.estado = -1 WHERE $where;

UPDATE ligacargos_historico l JOIN contrato c ON l.numcontrato = c.numcontrato 
SET l.estado = -1 WHERE $where;
```

---

## Tabla Comparativa

| Canal | Trigger | Categorías que limpia | Tablas afectadas | Audit trail | Gap identificado |
|-------|---------|-----------------------|------------------|-------------|------------------|
| **1. Sync B→A** | Automático (workflow) | Solo 2, 3 | `ligacargos` | ✅ batch 9999 | Ignora cat 1, 4-18 |
| **2. Cambio Estado UI** | Operador (manual) | Anualidades año actual | `ligacargos` | ✅ cambios | Solo año en curso |
| **3. No Localizado** | Operador (manual) | **Ninguna** | N/A | ✅ cambios (solo estado) | ⛔ No depura cargos |
| **4. Panel Saneamiento** | Operador (manual) | Todas las seleccionadas | Ambas tablas | ✅ batch + bitácora | Ninguno |

---

## Gaps Identificados y Recomendaciones

### Gap 1: Sync solo limpia categorías 2 y 3
**Ubicación**: `03_sync_host_a.sql` L190  
**Riesgo**: Multas, asambleas, conexiones, ML quedan con `estado=0` en contratos Estado 4 → cartera vencida inflada.  
**Fix sugerido**: Cambiar `AND lc.categoria IN (2, 3)` por una condición que cubra todas las categorías, o eliminar el filtro de categoría.

### Gap 2: Declaratoria No Localizado no depura cargos
**Ubicación**: `usuarios.php` L222-262  
**Riesgo**: Todos los cargos quedan vivos. El operador no se entera de que necesita ir al panel de saneamiento.  
**Fix sugerido**: Agregar llamada a `_sincronizaParidadFinanciera()` para cada contrato suspendido dentro del bloque `foreach ($ctos_afectados ...)`.

### Gap 3: Transición UI solo cancela año actual
**Ubicación**: `contratos.php` → `_sincronizaParidadFinanciera()` L573-602  
**Riesgo**: Cargos de años anteriores persisten con `estado=0`.  
**Mitigación actual**: El pipeline sync (Canal 1) y el panel manual (Canal 4) cubren este caso eventualmente.

---

## Hallazgos y Clarificaciones Críticas

Tras auditar los 4 canales, se concluye que para alcanzar la **integridad fiscal absoluta**, toda operación sobre el Estado 4 (SDF) debe cumplir el **Standard SDF**:

1.  **Tablas**: Se **debe** depurar en ambas tablas (`ligacargos` + `ligacargos_historico`). Si solo se toca la parte activa, eladeudo de años anteriores (2018-2025) persistirá como rezago histórico.
2.  **Categorías**: Se **debe** incluir todas las categorías (1-18). No tiene sentido mantener multas o cuotas de asamblea en un contrato cuya relación con el sistema ha terminado definitivamente.
3.  **Periodos**: Se **debe** incluir todos los años sin excepción.

---

## 🌟 Referencia de Integridad: Amnistía de Recargos (Regla C06)

Al analizar la reactivación de contratos, se identificó que la función `_amnistiaRecargosHistoricos()` ya implementa el **Standard V2** de forma nativa. Este módulo sirve como el "Estándar de Oro" para las correcciones de los Gaps detectados:

| Criterio | Amnistía (Reactivación) | Gaps SDF (Suspensión) | Acción de Mejora |
| :--- | :--- | :--- | :--- |
| **Tablas** | ✅ **Bimultitabla**: Afecta `ligacargos` + `ligacargos_historico`. | ⚠️ Solo Activa. | Replicar lógica multitabla. |
| **Categorías** | ✅ **Precisa**: Filtra `recargo = 1` de forma quirúrgica. | ⚠️ Filtro parcial (2,3). | Ampliar a todas (1-18). |
| **Cronología** | ✅ **Total**: Usa `anio < $anio_actual` para todo el pasado. | ⚠️ Solo año actual. | Barrido histórico total. |

---

## 🛠️ Plan de Homologación y Solución Integral

El objetivo es que los 4 canales se comporten de manera idéntica frente al Estado 4, utilizando el **Patrón Amnistía** (multitabla + auditoría) para asegurar que no queden "Cargos Zombi".

### Fase 1: Corrección del Pipeline Automático (Canal 1)
*   **Acción**: Modificar `03_sync_host_a.sql` para eliminar el filtro `AND lc.categoria IN (2, 3)`.
*   **Acción**: Duplicar la query de depuración para que afecte tanto a `ligacargos` como a `ligacargos_historico` durante el sync.

### Fase 2: Robustecimiento de la Lógica de Negocio (Canal 2 y 3)
*   **En `contratos.php`**: Actualizar `_sincronizaParidadFinanciera()` para que aplique el **Standard SDF** (limpieza total multitabla) cuando el estado destino sea 4.
*   **En `usuarios.php`**: Invocar formalmente el motor de depuración tras la suspensión masiva por "No Localizado".

### Fase 3: Centralización y Auditoría Final (Canal 4)
*   **Consolidación**: El Panel Administrativo se mantiene como la herramienta de visualización y reversión profunda.
*   **Bitácora**: Estandarizar el registro en `cambios` con el conteo de filas afectadas, similar a como lo hace la Amnistía.

---

## 📈 Estado de Gaps (Post-Auditoría)

| Gap | Riesgo | Solución Planificada |
| :--- | :--- | :--- |
| **G1: Sync Parcial** | Cartera inflada por multas/asambleas | Eliminar filtro de categorías en SQL de Sync |
| **G2: No Localizado Huérfano** | Cargos vivos tras suspensión masiva | Inyectar llamada a depuración en lógica de usuario |
| **G3: UI de Año Único** | Rezago histórico pendiente tras susp. | Barrido multi-año automático en cambio de estado |

## 📊 Impacto en Reportes y Listados (Propagación en Cascada)

La implementación del **Standard SDF** (`estado = -1`) tiene un efecto inmediato y automático en los módulos de Listados, eliminando los "Adeudos Fantasma" desde la raíz del dato:

| Módulo / Reporte | Efecto tras Depuración | Razón Técnica |
| :--- | :--- | :--- |
| **Lista de Deudores** (`listadeudores.php`) | ✨ **Limpieza Automática** | Este reporte no filtra por estado de contrato. Al cambiar cargos a `-1`, desaparecen del listado de deudas pendientes. |
| **Cartera Vencida** (`carteravencida.php`) | 🔒 **Integridad de Paridad** | Aunque ya oculta contratos Estado 4, la depuración evita que viejas deudas reaparezcan si el contrato se reactiva. |
| **Corte de Caja** (`concentrado...`) | ✅ **Sin Impacto Contable** | El corte rastrea `estado = 1` (Pagado). La depuración de `estado = 0` (Pendiente) no altera la historia de recaudación. |
| **Padrón de Usuarios** | 📉 **Estadísticas Reales** | Los contratos SDF dejan de contar como "deudores" en los indicadores de eficiencia del padrón. |

> **Conclusión**: No se requieren ajustes manuales en los archivos PHP de reportes; la depuración a nivel de base de datos es la solución definitiva que se propaga por todo el sistema.

---

## Archivos del Ecosistema de Saneamiento Estado 4

| Archivo | Rol |
| :--- | :--- |
| `admin/saneamiento_administrativo.php` | Panel operativo — ejecuta la depuración |
| `admin/verif_depuracion_cargos_estado4.php` | Verificación post-depuración (prueba de cero) |
| `admin/bitacora_saneamiento.php` | Auditoría de lotes ejecutados |
| `includes/negocio/contratos.php` | Motor de paridad (Standard SDF) |
| `includes/negocio/usuarios.php` | Declaratoria No Localizado (Link a depuración) |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/03_sync_host_a.sql` | Depuración total automática en sync |
| `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/04_recalc_contrato_toma.sql` | Apagado de tomas Estado 4 |
