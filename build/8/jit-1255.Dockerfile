FROM php:8.0.0alpha2-fpm

RUN docker-php-ext-install opcache
COPY ./build/8/conf/opcache.ini /usr/local/etc/php/conf.d/opcache.ini
COPY ./build/8/conf/jit-base.ini /usr/local/etc/php/conf.d/jit-base.ini
COPY ./build/8/conf/jit-1255.ini /usr/local/etc/php/conf.d/jit.ini