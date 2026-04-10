# Análisis y Rediseño: Estabilización de Contratos y Gestión de Tomas (Host C)

Este documento registra el proceso de estabilización del módulo de gestión de contratos en el Host C, enfocado en el rediseño semántico de las tomas de agua y la aplicación de reglas defensivas para estados administrativos.

**Conversación ID**: `67884311-645c-4f5a-ae15-979d81d75006`
**Fecha**: 2026-04-10

---

## 🎯 Objetivo de la Sesión
Modernizar la interfaz de "Ficha de Contrato" para distinguir entre la **infraestructura física** (existencia de manguera/descarga) y la **situación administrativa** (flujo activo o cortado), asegurando la integridad de datos durante la migración desde Host B.

---

## 🛠️ Implementación Técnica

### 1. Modelo Semántico de Tomas (V2)
Se ha migrado de un modelo plano en Host B (`agua=1`) a un modelo de objetos en Host C (`contrato_toma`).
- **Nivel Físico**: `tiene_agua/drenaje` (booleano). Define si la instalación existe.
- **Nivel Administrativo**: `estado_agua/drenaje` (booleano). Define si el servicio está fluyendo.

**Impacto**: El cajero ahora puede registrar que un usuario "tiene el tubo" pero el servicio está "cortado por adeudo", algo imposible en el sistema legacy sin perder el registro de la conexión.

### 2. Blindaje de Estados (Regla C02)
Se implementó una defensa contra la modificación de contratos en **Suspensión Definitiva (Estado 4)**:
- **Client-side**: Todos los inputs y selectores de la ficha se bloquean (`disabled`) y se oculta el botón de guardar.
- **Server-side**: La función `guardaContrato` realiza una verificación preventiva; si el contrato es estado 4, aborta la operación con un error.

### 3. Sincronización de Tarifas
Se validó que el cambio entre tipo **Normal** y **Comercial** gatilla una recalibración de la deuda pendiente (`_sincronizaDeudaPendienteContrato`), aplicando un *fallback* de `monto * 2` si la tarifa comercial no ha sido definida en el catálogo de Host C.

---

## 📋 Auditoría de Saneamiento (Gaps de Migración)

Se identificaron contratos en "Estado Gris": cuentan con estado Activo (1) o Suspensión (2, 5) pero llegaron con `0` servicios desde el legacy.

| Contrato | Usuario | Problema detectado |
| :--- | :--- | :--- |
| **48** | Griselda Hernández Amable | Activo/Suspendido sin infraestructura registrada. |
| **52** | Griselda Hernández Amable | Activo/Suspendido sin infraestructura registrada. |

**Query de Saneamiento Recomendado**:
```sql
SELECT c.numcontrato, u.nombre, c.estado, ct.observaciones 
FROM contrato c 
JOIN usuario u ON c.numusuario = u.noconsecutivo 
LEFT JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato 
WHERE (ct.tiene_agua = 0 AND ct.tiene_drenaje = 0) AND c.estado IN (1, 2, 5);
```

---

## 📂 Archivos Modificados
- [x] [ficha.php](file:///opt/lampp/htdocs/agua/views/contratos/ficha.php): Rediseño UI y bloqueo visual.
- [x] [contratos.php](file:///opt/lampp/htdocs/agua/includes/negocio/contratos.php): Validación server-side de estado 4.
- [x] [paxscript.js](file:///opt/lampp/htdocs/agua/includes/js/paxscript.js): Lógica de visibilidad dinámica.

**Commit Hash (Repo Agua)**: `d97cc8c`
