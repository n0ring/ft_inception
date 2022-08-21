#!/bin/bash

apt update
apt install -y wget vim mariadb-server procps
cp 50-server.cnf /etc/mysql/mariadb.conf.d/
service mysql start
mysql < schema.sql