#!/bin/bash
sudo apt-get update && apt-get install -y git curl libmcrypt-dev default-mysql-client
sudo yes | pecl install mcrypt-1.0.1
sudo docker-php-ext-install pdo_mysql
sudo curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
sudo composer install
sudo ln -f -s .env.pipelines .env