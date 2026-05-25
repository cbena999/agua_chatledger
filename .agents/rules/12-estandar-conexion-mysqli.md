# Regla 12: Estándar de Uso Seguro de `Conexion.php` (Regla E01)

> **Origen del Issue:** Bug en `regresarCargoCancelado` (Apr 2026).  
> `real_escape_string()` con `$link = false` generaba Warning + cadena vacía → INSERT en `cambios` silenciosamente roto.

---

## 🔴 El Bug (Raíz del Problema)

`Conexion::real_escape_string()` llamaba a `mysqli_real_escape_string($this->link, ...)` **sin validar si `$this->link` es un objeto `mysqli` válido**.

Cuando la conexión falla o se pierde (link = `false`):

1. `real_escape_string()` → PHP Warning + devuelve `false` → variable queda como `""`
2. `q()` → `mysqli_error($this->link)` → PHP Warning (mismo problema encadenado)
3. El `INSERT INTO cambios` se ejecuta con campos vacíos **o** falla silenciosamente
4. No hay error visible en la UI. La auditoría queda rota sin dejar rastro.

### Cascada de Efectos

```
real_escape_string(link=false)
  → Warning PHP
  → retorna false / ""
  → INSERT INTO cambios con "Operador: " vacío
      → q(INSERT) con link=false
          → @mysqli_query sin efecto (retorna false)
          → mysqli_error(link=false) → Warning PHP adicional
              → _logFallback no escapa → loop silencioso
```

---

## ✅ El Fix (Aplicado en `Conexion.php` — Regla E01)

### `real_escape_string()` — ahora hardened

```php
// ANTES (frágil):
function real_escape_string($string) {
    return mysqli_real_escape_string($this->link, $string);
}

// AHORA (safe):
function real_escape_string($string) {
    if ($this->link) {
        return mysqli_real_escape_string($this->link, $string);
    }
    return addslashes((string)$string); // fallback seguro, nunca rompe
}
```

### `q()` — ahora hardened

```php
// ANTES (frágil):
function q($query) {
    $result = @mysqli_query($this->link, $query);
    $err = mysqli_error($this->link); // ← Fatal si link=false
    ...
}

// AHORA (safe):
function q($query) {
    $result = @mysqli_query($this->link, $query);
    if ($this->link) {          // ← Guard antes de mysqli_error
        $err = mysqli_error($this->link);
        if ($err !== '') { $this->_logFallback('ERROR', $query, $err); }
    }
    return $result;
}
```

---

## 📏 Regla E01 — Uso Mandatorio

> **Todo código que use `$y->real_escape_string()` o `$y->q()` asume que `$y->link` es válido.  
> La responsabilidad de garantizarlo recae en `Conexion.php`, no en el caller.**

### Esto Significa:

1. **Nunca** usar `mysqli_real_escape_string()` o `mysqli_error()` directamente — siempre a través de `$y->real_escape_string()` y `$y->q()`.
2. **Nunca** verificar `$y->link` desde los archivos de negocio (eso es responsabilidad encapsulada de la clase).
3. **Siempre** que se detecte un Warning `mysqli expects parameter 1 to be mysqli, boolean given` → la causa raíz es una llamada directa a `mysqli_*` en código de negocio, no en `Conexion.php`.

---

## 🔍 Archivos Afectados (Auditados Apr 2026)

Todos los siguientes archivos ya estaban correctos en su uso de `$y->real_escape_string()` — el fix en `Conexion.php` los protege automáticamente:

| Archivo | Uso | Estado |
|--------|-----|--------|
| `includes/negocio/cargos.php` | `real_escape_string` en 5 puntos | ✅ Protegido por E01 |
| `includes/negocio/contratos.php` | `real_escape_string` en 10 puntos | ✅ Protegido por E01 |
| `includes/negocio/usuarios.php` | `real_escape_string` en 3 puntos | ✅ Protegido por E01 |
| `includes/negocio/pq20cm.php` | `real_escape_string` en 1 punto | ✅ Protegido por E01 |
| `reportes/historial_auditoria.php` | `real_escape_string` en 2 puntos | ✅ Protegido por E01 |
| `admin/operaciones/configuracion.php` | `real_escape_string` en 2 puntos | ✅ Protegido por E01 |
| `admin/saneamiento/operaciones_multas_sync.php` | `real_escape_string` en 3 puntos | ✅ Protegido por E01 |
| `admin/saneamiento/monitor_fallbacks.php` | `real_escape_string` en 4 puntos | ✅ Protegido por E01 |
| `admin/saneamiento/saneamiento_administrativo.php` | `real_escape_string` en 1 punto | ✅ Protegido por E01 |
| `admin/saneamiento/mixtos_sp_actv.php` | `real_escape_string` en 1 punto | ✅ Protegido por E01 |

---

## 🚫 Anti-Patrones a Detectar en PR/Code Review

```php
// ❌ MAL: llamada directa sin guard
mysqli_real_escape_string($this->link, $v);  // si link=false → Warning + false

// ❌ MAL: construir SQL con variable que puede ser false
$esc = $y->real_escape_string($str); // antes del fix, podía ser false→""
$y->q("INSERT ... '$esc'");          // INSERT con campo vacío

// ✅ BIEN: siempre a través del método (que ahora tiene guard interno)
$esc = $y->real_escape_string($str); // ahora siempre retorna string
$y->q("INSERT ... '$esc'");
```

---

## 🔗 Referencias

- Fix commit: rama `main` (ex-`feature/upgrade-v2-win-xampp`), sesión Apr 15-16, 2026
- Regla relacionada: [11-estandares-codigo.md](./11-estandares-codigo.md)
- Regla relacionada: [04-arquitectura-mvc.md](./04-arquitectura-mvc.md)
