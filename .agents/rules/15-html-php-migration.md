# Regla 15: LAESH — Migración HTML → PHP Stack (Merge Iterativo)

> **Proyecto:** LAESH — Bloc Digital y Sitio Web Corporativo  
> **Archivos afectados:** `laesh-swbldi/` — módulos `website/`, `admrc/`, `rc/`, `md/`  
> **Leer antes de:** convertir cualquier archivo HTML a PHP, o antes de modificar un PHP ya convertido.

---

## Regla cardinal (NO negociable)

**R15.1 — Los HTML fuente NUNCA se eliminan durante la migración.**

Los archivos `.html` en `laesh-swbldi/website/uipv1/` son la fuente primaria de diseño y UX.
El cliente sigue recibiendo mejoras visuales y ajustes de UX directamente en el HTML.
La operación "Convertir HTML → PHP" es **repetible con enfoque de merge**, no un evento único destructivo.

```
HTML (fuente de verdad UI) ──→ merge ──→ PHP (implementación del stack)
         ↑                                          |
 mejoras UX del cliente                   lógica auth/RBAC/HTMX
```

**Prohibido:**
- `rm`, `git rm`, mover fuera del repo o sobreescribir el `.html` original con el `.php` convertido.
- Usar el nombre de archivo del HTML para el PHP (ej: convertir `gestion-web.html` a `gestion-web.php` en el mismo directorio — crea colisión de rutas en Apache).

---

## Estructura de módulos PHP (Flight PHP)

Cada portal tiene su propio módulo con Flight como micro-router:

```
laesh-swbldi/
├── commons/              ← Infraestructura compartida (NO MODIFICAR sin revisar R14)
│   ├── autoload.php
│   ├── commons.php       ← Bootstrap: Delight-Auth, Flight, Plates, RbacManager
│   ├── config.php        ← DSN: laesh_db @ 127.0.0.1:6002
│   ├── DB.php
│   ├── Logger.php
│   ├── RbacManager.php
│   └── CsrfGuard.php     ← Crear si no existe (ver R14.12–R14.13)
│
├── website/              ← Sitio público (index.html + login PHP)
│   ├── uipv1/            ← HTML source — NUNCA BORRAR
│   │   ├── index.html    ← FUENTE (mantener)
│   │   ├── medicos.html  ← FUENTE (mantener)
│   │   ├── labadmin.html ← FUENTE (mantener)
│   │   └── gestion-web.html ← FUENTE (mantener)
│   └── login.php         ← PHP convertido: modal auth + Flight routes
│
├── admrc/                ← Admin CMS (gestion-web convertido)
│   ├── index.php         ← Flight router — requiere rol ADMIN
│   └── views/
│       └── gestion_web.php ← Plates template — merge de gestion-web.html
│
├── rc/                   ← Recepción (labadmin.html convertido)
│   ├── index.php
│   └── views/
│       └── recepcion.php
│
└── md/                   ← Médico (medicos.html convertido)
    ├── index.php
    └── views/
        └── medicos.php
```

---

## Protocolo de merge iterativo

Cuando el cliente entrega ajustes sobre el HTML fuente:

1. **Leer el HTML actualizado** (diff mental o `git diff`) — identificar cambios de estructura, textos, clases CSS.
2. **Aplicar en la vista Plates** (`.php` en `views/`) — propagar los cambios de estructura/texto.
3. **No tocar** la lógica PHP del router (`index.php`) salvo que el cambio HTML afecte el comportamiento del backend (nuevos campos, nuevas rutas, nuevo CSRF scope).
4. **Commitear ambos** — HTML actualizado + PHP actualizado en el mismo commit con mensaje `feat(laesh): merge UX update de {archivo}.html → {modulo}/views`.

---

## Roles RBAC → Portales

| Rol en `empleados.rol` | Portal de destino tras login | Permiso requerido |
|---|---|---|
| `MEDICO` | `/md/` (medicos.php) | `ver_ordenes_propias` |
| `RECEPCION` | `/rc/` (labadmin.php) | `gestionar_ordenes` |
| `ADMIN` | `/admrc/` (gestion-web.php) | `gestionar_cms` |

El login en `website/login.php` determina el redirect post-autenticación con:
```php
$role = Flight::rbac()->getRole();
$redirectMap = ['MEDICO'=>'/md/', 'RECEPCION'=>'/rc/', 'ADMIN'=>'/admrc/'];
Flight::redirect($redirectMap[$role] ?? '/login?error=sin_rol');
```

---

## Convenciones de código PHP convertido

**R15.2 — Primer paso de todo controlador POST: CSRF Guard**  
Ver R14.12. `\Common\CsrfGuard::validate()` antes de Delight-Auth o PDO.

**R15.3 — Plates templates usan el mismo CSS que el HTML fuente**  
Las rutas de assets (`/laesh-web-assets-uipv1a/`) se mantienen idénticas. No crear rutas alternativas.

**R15.4 — HTMX para operaciones CMS (sin full-page reload)**  
Las acciones del CMS (`btn-cms-save-action`) usan `hx-post` apuntando a rutas del módulo `admrc/`.
El HTML fuente puede tener el atributo `hx-*` añadido en el merge; no es breaking change para el HTML estático.

**R15.5 — Phone-as-Email en Delight-Auth**  
`users.email` almacena `{10_digits}@laesh.local`. `users.username` almacena el teléfono de 10 dígitos.
El formulario de login captura teléfono → el controlador construye el email virtual antes de llamar a `$auth->login()`.

---

## Lo que NO forma parte de la conversión PHP

- Archivos `.html` de referencia UX del cliente → quedan en `website/uipv1/` sin cambio.
- Assets CSS/JS/WebP → no se duplican; las rutas del Plates template apuntan a los mismos assets.
- `medicos.html` y `labadmin.html` — pendientes de conversión en sprints futuros; hoy solo `gestion-web.html` y el login modal de `index.html`.

---

**Última actualización:** 2026-08-17  
**Fuente de verdad de roles/RBAC:** `laesh-swbldi/commons/RbacManager.php`  
**Regla relacionada:** [[14-laesh-modelo-datos-decisiones]] (auth, CSRF, force_logout)
