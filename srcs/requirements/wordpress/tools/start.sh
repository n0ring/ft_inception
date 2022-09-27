#!/bin/bash

cd /var/www/html/wordpress

chmod 777 -R /var/www/html/wordpress
chown -R www-data:www-data /var/www/html/wordpress
mkdir -p /run/php
touch /run/php/php7.3-fpm.pid


if [ ! -f /var/www/html/wordpress/wp-config.php ];
then
wp core download --allow-root
mv /conf /var/www/html/wordpress/wp-config.php 
chmod 777 /var/www/html/wordpress/wp-config.php

wp core install --allow-root --url=${HOST_NAME}\
 --title=namina.42.fr --admin_user=${MYSQL_USER}\
 --admin_password=${MYSQL_PASSWORD} --admin_email=namina@42.fr

wp user create --allow-root ${MYSQL_USER2}   namina42@42.fr --role=author --user_pass=${MYSQL_PASSWORD2}
wp theme install --allow-root inspiro --activate --path=/var/www/html/wordpress/


wp plugin install redis-cache --activate --allow-root
wp plugin update --all --allow-root
echo ${MYSQL_USER} > res
fi

wp redis enable --allow-root
/usr/sbin/php-fpm7.3 --nodaemonize


