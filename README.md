# PHP 7.4 Docker Stack

PHP 7.4 Docker Stack based on official PHP Dockerhub image with NginX  - for Development and Production workloads.

## Usage

Just create the following Dockerfile onto your project root:

```yaml
FROM aur0/php:7
COPY src/ /var/www/html/
```
