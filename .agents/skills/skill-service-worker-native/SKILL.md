# SKILL: Service Worker Nativo — Offline First PWA
---
name: Native Service Worker
description: Estrategias de caché, App Shell, ciclo de vida y mejores prácticas para Service Workers nativos en PWA (2024+).
---

## 🌐 Contexto
El proyecto **Restaurant** (caelitandem) es una PWA offline-first. Depende de un Service Worker nativo (sin Workbox) para gestionar el caché de la UI (App Shell) y manejar la red durante caídas de conectividad.

---

## 1. Estrategias de Caché

### 1.1 Cache-First (Archivos Estáticos / App Shell)
Uso: Assets que raramente cambian (CSS, fuentes, JS, iconos).
```javascript
// Estrategia: Cache, luego Red
self.addEventListener('fetch', event => {
    if (esAssetEstatico(event.request.url)) {
        event.respondWith(
            caches.match(event.request).then(cachedResponse => {
                // Si está en caché, devolver de inmediato
                if (cachedResponse) return cachedResponse;
                
                // Si no, fetch de la red y guardar en caché
                return fetch(event.request).then(response => {
                    return caches.open(STATIC_CACHE).then(cache => {
                        cache.put(event.request, response.clone());
                        return response;
                    });
                });
            })
        );
    }
});
```

### 1.2 Network-First (Datos Dinámicos / API)
Uso: Datos que deben estar frescos (ej. lista de mesas activas).
```javascript
// Estrategia: Red, luego Cache
self.addEventListener('fetch', event => {
    if (esRutaApi(event.request.url)) {
        event.respondWith(
            fetch(event.request)
                .then(response => {
                    // Si hay red, clonar y guardar en cache dinámico
                    const resClone = response.clone();
                    caches.open(DYNAMIC_CACHE).then(cache => cache.put(event.request, resClone));
                    return response;
                })
                .catch(() => {
                    // Si no hay red (offline), intentar recuperar del caché
                    return caches.match(event.request);
                })
        );
    }
});
```

### 1.3 Stale-While-Revalidate (Recursos mixtos)
Uso: Avatares, imágenes de menú, configuración base.
```javascript
event.respondWith(
    caches.match(event.request).then(cachedResponse => {
        const fetchPromise = fetch(event.request).then(networkResponse => {
            caches.open(DYNAMIC_CACHE).then(cache => cache.put(event.request, networkResponse.clone()));
            return networkResponse;
        });
        return cachedResponse || fetchPromise;
    })
);
```

---

## 2. Ciclo de Vida del Service Worker

### 2.1 Install (Pre-caché de App Shell)
```javascript
const CACHE_NAME = 'restaurant-v2';
const APP_SHELL = [
    '/',
    '/index.php',
    '/web-assets/css/pwa.css',
    '/web-assets/js/app.js',
    '/offline.html'
];

self.addEventListener('install', event => {
    // Forzar activación inmediata (skip waiting)
    self.skipWaiting();
    
    event.waitUntil(
        caches.open(CACHE_NAME).then(cache => {
            return cache.addAll(APP_SHELL);
        })
    );
});
```

### 2.2 Activate (Limpieza de cachés antiguos)
```javascript
self.addEventListener('activate', event => {
    // Tomar control inmediato de los clientes sin recargar la página
    event.waitUntil(clients.claim());
    
    event.waitUntil(
        caches.keys().then(cacheNames => {
            return Promise.all(
                cacheNames.map(cache => {
                    if (cache !== CACHE_NAME) {
                        console.log('SW: Borrando caché antiguo', cache);
                        return caches.delete(cache);
                    }
                })
            );
        })
    );
});
```

---

## 3. Fallback Offline (Graceful Degradation)

```javascript
// Si una página completa falla y no está en caché, mostrar fallback offline
self.addEventListener('fetch', event => {
    if (event.request.mode === 'navigate') {
        event.respondWith(
            fetch(event.request).catch(() => {
                return caches.match('/offline.html');
            })
        );
    }
});
```

---

## 4. Issues Conocidos y Workarounds

| Issue | Descripción | Workaround |
|---|---|---|
| **HTTPS requerido** | Service Worker solo funciona en HTTPS | `localhost` es excepción; en prod usar Let's Encrypt |
| **Bloat de almacenamiento** | Caché crece infinitamente si no se purga | Manejar en evento `activate` o borrar manual |
| **Actualización zombi** | Nuevo SW esperando y usuarios con versión vieja | Usar `self.skipWaiting()` + prompt recarga UI |
| **CORS** | Peticiones a dominios externos fallan sin cors | Asegurar headers en APIs y assets CDN |
| **Cache Poisoning** | Cachar responses opacos / error | Chequear `response.ok` antes de hacer `cache.put()` |

---

## 5. Mejores Prácticas

1. **Pre-cache App Shell**: Garantiza carga instantánea inicial.
2. **Versionado estricto**: Cambiar `CACHE_NAME` al subir nueva versión de app.
3. **No cachear POST/PUT**: Service Worker API Cache no soporta mutaciones. Usar **Background Sync** o Dexie.js.
4. **Verificar `response.ok`**: No almacenar respuestas 404 ni 500.

---
**Nota IA**: Implementar offline-first asume que el backend Flight puede estar inaccesible. Las peticiones HTMX fallarán; Dexie y el SW cubren la UX en esos cortes.
