#!bin/bash


apt update
apt install -y redis vim
sed -i 's/protected-mode yes/protected-mode no/g' /etc/redis/redis.conf
sed -i 's/bind 127.0.0.1/#bind 127.0.0.1/g' /etc/redis/redis.conf
