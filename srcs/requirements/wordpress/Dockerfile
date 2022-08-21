FROM debian:buster
COPY . .
RUN chmod +x tools/install.sh && sh tools/install.sh

# ADD ./tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf
ENTRYPOINT /usr/sbin/php-fpm7.3 --nodaemonize
# CMD "/bin/bash"