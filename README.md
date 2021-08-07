# PHP Docker Stack

Stack fully based on official PHP docker images - well suited for development and production workloads.

## Usage

Just copy your source code to www non-public root.

```yaml
FROM aur0/php:8
COPY src/ /var/www/
```
