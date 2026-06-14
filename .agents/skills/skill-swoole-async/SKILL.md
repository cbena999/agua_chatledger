# SKILL: Swoole — Servidor Async para PHP
---
name: Swoole Async Server
description: WebSocket, async I/O, connection pooling, anti-memory-leak y Docker para Restaurant.
---

## ⚡ Contexto
Swoole sirve como servidor WebSocket para comunicación real-time entre mesero (PWA), cocina y caja en el proyecto Restaurant.

---

## 1. Paradigma: Proceso Persistente

| Aspecto | PHP+Apache | PHP+Swoole |
|---|---|---|
| Ciclo de vida | Muere por request | Permanente en memoria |
| Estado global | Se limpia solo | **Persiste** (¡peligro!) |
| Conexiones DB | Nueva por request | Pool reutilizable |
| `die()`/`exit()` | Termina script | **Mata el worker** ❌ |

---

## 2. WebSocket Server (Cocina↔Mesero)

```php
$server = new Swoole\WebSocket\Server('0.0.0.0', 9502);
$server->set([
    'worker_num' => 2,
    'max_request' => 1000,  // Previene memory leaks
    'heartbeat_check_interval' => 30,
]);

$conexiones = ['mesero' => [], 'cocina' => [], 'caja' => []];

$server->on('message', function ($server, $frame) use (&$conexiones) {
    $data = json_decode($frame->data, true);
    if ($data['tipo'] === 'nueva_orden') {
        foreach ($conexiones['cocina'] as $fd => $_) {
            if ($server->isEstablished($fd))
                $server->push($fd, json_encode($data));
        }
    }
});
$server->start();
```

## 3. Connection Pooling
```php
use Swoole\Coroutine\Channel;
class DbPool {
    private Channel $pool;
    public function __construct(int $size = 5) {
        $this->pool = new Channel($size);
        for ($i = 0; $i < $size; $i++)
            $this->pool->push(new PDO('mysql:host=mariadb;dbname=restaurantb','user','pass'));
    }
    public function get(): PDO { return $this->pool->pop(); }
    public function put(PDO $pdo): void { $this->pool->push($pdo); }
}
```

## 4. Anti-Memory-Leak
- ❌ `global`, `static` que acumulen datos, `die()`/`exit()`
- ✅ `try-catch`, `max_request=1000`, `unset()` tras uso, request-scoped storage

## 5. Task Workers
Delegar tareas pesadas (imprimir ticket, generar PDF) a task workers para no bloquear el reactor.

## 6. Issues y Workarounds

| Issue | Workaround |
|---|---|
| Memory leak | `max_request` + no variables globales |
| Worker crash por `die()` | Siempre `try-catch` |
| Blocking I/O (`sleep`, `curl`) | `co::sleep()`, Swoole HTTP Client |
| Hot reload | `kill -USR1 <pid>` o `$server->reload()` |
| SSL en WebSocket | Terminar SSL en Nginx, no en Swoole |

---
**Nota IA**: Nunca usar `die()`, `exit()`, `global` en código Swoole.
