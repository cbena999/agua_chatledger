# SKILL: Dexie.js — IndexedDB Wrapper
---
name: Dexie.js IndexedDB
description: Mejores prácticas de Dexie.js para persistencia offline en PWA, rendimiento, issues conocidos y workarounds.
---

## 💾 Contexto
Dexie.js se utiliza en la PWA del Restaurant para persistencia offline de órdenes, menú cacheado y configuración local. También se usa para cachear el modelo Vosk en `vozweb.php`.

---

## 1. Inicialización y Versionado

```javascript
const db = new Dexie('RestaurantDB');

// Versionado de schema (incrementar al cambiar estructura)
db.version(1).stores({
    ordenes:   '++id, mesa, estado, fecha, *items',
    menu:      'id, categoria, nombre, precio',
    config:    'clave',
    voskCache: 'modelName'  // Cache del modelo de voz
});

db.version(2).stores({
    ordenes:   '++id, mesa, estado, fecha, *items, meseroId',
    menu:      'id, categoria, nombre, precio',
    config:    'clave',
    voskCache: 'modelName'
});
```

> [!TIP]
> Las propiedades listadas en `stores()` son los **índices**, no las columnas. Puedes guardar cualquier propiedad; solo las indexadas son buscables eficientemente.

---

## 2. Operaciones CRUD

### 2.1 Inserción
```javascript
// Individual
await db.ordenes.add({ mesa: 5, estado: 'pendiente', fecha: new Date(), items: ['tacos x2'] });

// Masiva (SIEMPRE preferir bulk)
await db.menu.bulkPut([
    { id: 1, categoria: 'Platillos', nombre: 'Tacos', precio: 45 },
    { id: 2, categoria: 'Bebidas', nombre: 'Soda', precio: 20 },
]);
```

### 2.2 Consultas Indexadas (Rápidas)
```javascript
// Búsqueda por índice (logarítmica)
const pendientes = await db.ordenes.where('estado').equals('pendiente').toArray();

// Rango
const hoy = new Date(); hoy.setHours(0,0,0,0);
const ordenesHoy = await db.ordenes.where('fecha').aboveOrEqual(hoy).toArray();

// Compuesta (multi-criteria)
const resultado = await db.ordenes
    .where('mesa').equals(5)
    .and(o => o.estado === 'pendiente')
    .toArray();
```

### 2.3 Transacciones
```javascript
// Agrupar operaciones en transacción
await db.transaction('rw', db.ordenes, db.menu, async () => {
    const orden = await db.ordenes.get(42);
    orden.estado = 'completada';
    await db.ordenes.put(orden);
    // Si falla algo aquí, todo se revierte
});
```

---

## 3. LiveQuery (Reactividad)

```javascript
// React/Svelte: UI se actualiza automáticamente al cambiar la BD
import { useLiveQuery } from 'dexie-react-hooks';

function PanelOrdenes() {
    const pendientes = useLiveQuery(
        () => db.ordenes.where('estado').equals('pendiente').toArray()
    );
    // Se re-renderiza automáticamente cuando cambian las órdenes
}
```

```javascript
// Vanilla JS: Observable manual
Dexie.liveQuery(() => 
    db.ordenes.where('estado').equals('pendiente').toArray()
).subscribe(ordenes => {
    actualizarUI(ordenes);
});
```

---

## 4. Cache del Modelo Vosk

```javascript
// Guardar modelo descargado para evitar re-descarga
async function cachearModelo(nombre, arrayBuffer) {
    await db.voskCache.put({
        modelName: nombre,
        data: arrayBuffer,
        timestamp: Date.now()
    });
}

async function obtenerModeloCacheado(nombre) {
    return db.voskCache.get(nombre);
}
```

---

## 5. Manejo de Cuota de Almacenamiento

```javascript
// Monitorear espacio disponible
async function verificarEspacio() {
    if (navigator.storage && navigator.storage.estimate) {
        const { usage, quota } = await navigator.storage.estimate();
        const pct = ((usage / quota) * 100).toFixed(1);
        console.log(`Uso: ${pct}% (${(usage/1e6).toFixed(1)}MB / ${(quota/1e6).toFixed(0)}MB)`);
        
        if (usage / quota > 0.8) {
            // Limpieza proactiva
            await limpiarDatosAntiguos();
        }
    }
}

async function limpiarDatosAntiguos() {
    const hace30dias = new Date(Date.now() - 30 * 86400000);
    await db.ordenes.where('fecha').below(hace30dias).delete();
}
```

---

## 6. Issues Conocidos y Workarounds

| Issue | Descripción | Workaround |
|---|---|---|
| **Safari quota** | Límites más estrictos que Chrome | `navigator.storage.persist()` + monitoreo |
| **`.toArray()` en tablas grandes** | Carga todo en memoria → lag | Paginación: `.offset(n).limit(20)` |
| **No hay JOINs** | IndexedDB no soporta joins | Desnormalizar datos o hacer lookups manuales |
| **Zone.js (Angular)** | Intercepta eventos IDB → lento | Usar `NgZone.runOutsideAngular()` |
| **DB desaparece** | Navegador limpia datos en incógnito | `navigator.storage.persist()` |
| **QuotaExceededError** | Disco lleno o límite del browser | `try-catch` + limpieza proactiva |

---

## 7. Mejores Prácticas

1. **`bulkPut/bulkAdd`** siempre para múltiples registros.
2. **Índices solo en campos consultados** — no indexar todo.
3. **Transacciones** para operaciones multi-tabla.
4. **`navigator.storage.persist()`** al inicio para evitar limpieza automática.
5. **Virtual scrolling** si se muestran muchos registros.
6. **Web Worker** para queries pesadas o procesamiento de datos.
7. **Versionado incremental** del schema (nunca borrar versiones).

---
**Nota IA**: Preferir `where().equals()` sobre `.filter()` siempre. Usar `bulkPut` para inserciones masivas. Manejar `QuotaExceededError` con gracia.
