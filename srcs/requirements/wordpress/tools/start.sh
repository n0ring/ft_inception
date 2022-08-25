#!/bin/bash


if [ ! -f /var/www/html/wordpress/wp-config.php ];
then

cp /conf /var/www/html/wordpress/wp-config.php 
cat /www.conf > /etc/php/7.3/fpm/pool.d/www.conf
cd /var/www/html/wordpress
wp core install --allow-root --url=namina.42.fr\
 --title=namina.42.fr --admin_user=supervisor\
 --admin_password=strongpassword --admin_email=info@example.com\
 --path=/var/www/html/wordpress
wp theme install --allow-root inspiro --activate --path=/var/www/html/wordpress/
chown -R www-data:www-data /var/www/html/wordpress
wp plugin install redis-cache  --allow-root --activate
wp plugin update --all --allow-root
fi

wp redis enable --allow-root --path=/var/www/html/wordpress/
/usr/sbin/php-fpm7.3 --nodaemonize
