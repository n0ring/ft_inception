#!bin/bash


apt update
apt install -y redis-server vim
sed -i 's/protected-mode yes/protected-mode no/g' /etc/redis/redis.conf
sed -i 's/# syslog-enabled no/syslog-enabled yes/g' /etc/redis/redis.conf
sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis/redis.conf
sed -i "s|maxmemory <bytes>|maxmemory 2mb|g" /etc/redis/redis.conf
sed -i "s|maxmemory-policy noevicrion|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf
