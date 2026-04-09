# Regla 06: Accesos y Seguridad (A/B)

Esta regla consolida los accesos a los ambientes activos de **Agua** (Host A y B).

---

## 🚀 Entornos Legales (Stack 1.8.3-5)

| Recurso | Ruta / Credencial |
|---------|-------------------|
| **XAMPP Home** | `/opt/lampp` |
| **PHP Bin** | `/opt/lampp/bin/php` |
| **MySQL Bin** | `/opt/lampp/bin/mysql` |
| **Source Code** | `/opt/lampp/htdocs/agua` |
| **Web Dev/Test URL** | [http://localhost/agua/login/index2.php](http://localhost/agua/login/index2.php) |
| **Web User** | `nancy` |
| **Web Password** | `260180` |

---

## 💾 Gestión de BD
Se deberán utilizar exclusivamente los conectores MCP configurados para garantizar el aislamiento entre ambientes:
- **`bdawahost-a`**: Ambiente de desarrollo primario.
- **`bdawahost-b`**: Mirror de producción.

---
**Nota para Gemini**: Cualquier script de automatización que requiera ejecución directa de PHP o MySQL debe referenciar los binarios ubicados en `/opt/lampp/bin/` para asegurar la compatibilidad con el stack legado.
