#!/bin/bash

apt update 
apt install -y vsftpd vim  net-tools

cp /etc/vsftpd.conf /etc/vsftpd.conf.orig
cat conf > /etc/vsftpd.conf
adduser --disabled-password --gecos "" ftp_user
echo "ftp_user:1234567" | chpasswd
echo "ftp_user" | tee -a /etc/vsftpd.userlist
service vsftpd restart
# service vsftpd enable
