FROM php:7.3-fpm
 
RUN apt-get update && apt-get install -y libmcrypt-dev mariadb-client \
    && docker-php-ext-install pdo_mysql
 
WORKDIR /var/www