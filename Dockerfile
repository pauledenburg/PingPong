FROM php:7-apache

MAINTAINER Paul Edenburg <paul@i2s.nl>

# install mysql-bindings for PHP
RUN apt-get update && \
     apt-get -yqq install php5-mysql

# install PHP extensions to work with mysql
RUN docker-php-ext-install mysqli pdo pdo_mysql
