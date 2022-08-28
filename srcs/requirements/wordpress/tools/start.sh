#!/bin/bash

cd /var/www/html/wordpress

if [ ! -f /var/www/html/wordpress/wp-config.php ];
then

cp /conf /var/www/html/wordpress/wp-config.php 
chmod 777 /var/www/html/wordpress/wp-config.php
cat /www.conf > /etc/php/7.3/fpm/pool.d/www.conf
wp core install --allow-root --url=namina.42.fr\
 --title=namina.42.fr --admin_user=namina\
 --admin_password=password --admin_email=namina@42.fr

wp user create --allow-root namina42   namina42@42.fr --role=author --user_pass=password
# wp theme install --allow-root inspiro --activate --path=/var/www/html/wordpress/
chown -R www-data:www-data /var/www/html/wordpress

chmod 777 -R /var/www/html/wordpress

wp plugin install redis-cache --activate --allow-root
wp plugin update --all --allow-root
# wp plugin activate redis-cache --allow-root
fi

wp redis enable --allow-root --force 
/usr/sbin/php-fpm7.3 --nodaemonize
