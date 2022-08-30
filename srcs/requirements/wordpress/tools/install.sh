#!/bin/bash

apt update && apt install -y php-fpm php7.3 php-mysqli wget vim sendmail

cp www.conf /etc/php/7.3/fpm/pool.d/

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

