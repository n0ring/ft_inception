#!/bin/bash

apt update
apt install -y wget vim mariadb-server procps
service mysql start
mysql < schema.sql
cp 50-server.cnf /etc/mysql/mariadb.conf.d/
