#!/bin/bash


mkdir -p /var/www/html/wordpress
mkdir -p /run/php
touch /run/php/php7.3-fpm.pid

apt update
apt install -y php-fpm php7.3 php-mysqli wget vim mariadb-client sendmail

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html/wordpress
wp core download --allow-root
