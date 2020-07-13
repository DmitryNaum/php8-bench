FROM php:7.4.8

RUN docker-php-ext-install opcache
COPY ./build/7.4/conf/opcache.ini /usr/local/etc/php/conf.d/opcache.ini