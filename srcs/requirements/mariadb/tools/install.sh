#!/bin/bash

apt update
apt install -y wget vim mariadb-server procps
service mysql start
mysql < schema.sql
