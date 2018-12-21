FROM php:7.2.13-apache

MAINTAINER Auro Florentino <auro@merco.net>

RUN apt-get update \
    && apt-get install -y --force-yes --no-install-recommends \
          cron \
          git \
          libfreetype6-dev \
          libjpeg-dev \
          libmagickwand-dev \
          libmemcached-dev \
          libpng-dev \
          libpq-dev \
          libssl-dev \
          libxml2-dev \
          libzip-dev \
          openssl \
          unzip \
          zip

RUN docker-php-ext-install bcmath

RUN docker-php-ext-install gd \
    && docker-php-ext-configure gd \
        --enable-gd-native-ttf \
        --with-jpeg-dir=/usr/lib \
        --with-freetype-dir=/usr/include/freetype2 \
    && docker-php-ext-install gd

RUN pecl install imagick \
    && docker-php-ext-enable imagick

RUN pecl install memcached \
    && docker-php-ext-enable memcached

RUN docker-php-ext-install pdo_pgsql

RUN docker-php-ext-install soap

RUN docker-php-ext-configure zip --with-libzip \
    && docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && echo "export PATH=${PATH}:/var/www/html/vendor/bin" >> ~/.bashrc

RUN composer --version
