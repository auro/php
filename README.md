# PHP 7.4 Docker Stack

PHP 7.4 Docker Stack based on official PHP Dockerhub images - for Development and Production workloads.

## Usage

Just create the following Dockerfile onto your project root:

```yaml
FROM aur0/php:7
COPY src/ /var/www/html/
```

```yaml
FROM aur0/php:7-cli
COPY src/ /var/www/html/
```

```yaml
FROM aur0/php:7-fpm
COPY src/ /var/www/html/
```

```yaml
FROM aur0/php:8
COPY src/ /var/www/html/
```

```yaml
FROM aur0/php:8-cli
COPY src/ /var/www/html/
```

```yaml
FROM aur0/php:8-fpm
COPY src/ /var/www/html/
```
