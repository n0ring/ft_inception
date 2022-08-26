#!/bin/bash

apt update 
apt install -y wget vim


wget https://github.com/vrana/adminer/releases/download/v4.7.3/adminer-4.7.3.php -P /var/www/html/adminer
mv /var/www/html/adminer/adminer-4.7.3.php /var/www/html/adminer/adminer.php
chmod 755 -R /var/www/html/adminer/adminer.php
chown -R www-data:www-data /var/www/html/adminer/