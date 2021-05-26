FROM php:8.0-fpm-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

WORKDIR /app

RUN apk --no-cache add \
    bash \
    git \
    curl \
    && docker-php-ext-install \
    opcache
#    swoole
