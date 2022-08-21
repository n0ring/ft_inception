#!/bin/bash


# mkdir -p /var/www/html/
mkdir -p /run/php


apt update
apt install -y php-fpm php7.3 php-mysqli wget vim mariadb-client

wget https://wordpress.org/latest.tar.gz

tar -xzvf latest.tar.gz -C /var/www/html/
chown -R www-data:www-data /var/www/html/wordpress/

cp /tools/conf /var/www/html/wordpress/wp-config.php
cp /tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf


#  for wp-cli
# wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp

# wp user create namina f9lcon@yandex.ru --user_pass=password --role=author --allow-root --path=/var/www/html/wordpress