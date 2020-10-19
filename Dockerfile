FROM php:7.4-fpm

WORKDIR /var/www/html

RUN apt-get update \
    && apt-get install --quiet --yes --no-install-recommends \
     libzip-dev \
     unzip \
    && docker-php-ext-install zip pdo_mysql \
    && pecl install -o -f redis-5.1.1 \
    && docker-php-ext-enable redis

COPY --from=composer /usr/bin/composer /usr/bin/composer


RUN groupadd --gid 1000 banuaria \
    && useradd --uid 1000 -g banuaria  \
        -G www-data,root --shell /bin/bash \
        --create-home banuaria

USER banuaria
