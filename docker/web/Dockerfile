FROM php:7.3-apache

RUN docker-php-ext-install mysqli pdo_mysql mbstring

RUN apt-get update
RUN apt-get install -y zlib1g-dev libzip-dev
RUN docker-php-ext-install zip

RUN apt-get install -y vim

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

#document root
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

WORKDIR /var/www/html

RUN a2enmod rewrite
RUN /etc/init.d/apache2 restart