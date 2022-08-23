#!/bin/bash


if [ ! -f /var/www/html/wordpress/wp-config.php ];
then
chown -R www-data:www-data /var/www/html/wordpress
cp /conf /var/www/html/wordpress/wp-config.php
cat /www.conf > /etc/php/7.3/fpm/pool.d/www.conf
cd /var/www/html/wordpress
wp core install --allow-root --url=namina.42.fr\
 --title=namina.42.fr --admin_user=supervisor\
 --admin_password=strongpassword --admin_email=info@example.com\
 --path=/var/www/html/wordpress > resOfWPcore
WORDPRESS_SETTED=true
wp theme install --allow-root inspiro --activate --path=/var/www/html/wordpress/
fi


/usr/sbin/php-fpm7.3 --nodaemonize
