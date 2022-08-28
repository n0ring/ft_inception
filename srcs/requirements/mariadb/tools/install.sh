#!/bin/bash

apt update
apt install -y wget vim mariadb-server procps

sed -i "s|bind-address *|#bind-address |g" /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i "s|#port *|port |g" /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i "s|socket *|#socket |g" /etc/mysql/mariadb.conf.d/50-server.cnf
service mysql start
mysql < schema.sql