#!/bin/bash


mkdir -p /var/www/html/
apt update
apt install -y php-{fpm,pear,cgi,common,zip,mbstring,net-socket,gd,xml-util,mysql,bcmath}
apt install -y vim mariadb-client wget
wget https://wordpress.org/latest.tar.gz
chown -R www-data:www-data /var/www/html/wordpress/

tar -xzvf latest.tar.gz -C /var/www/html/
cp tools/conf /var/www/html/wordpress/wp-config.php

