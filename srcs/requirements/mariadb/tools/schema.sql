CREATE DATABASE IF NOT EXISTS wordpress_db;

CREATE USER 'namina'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'namina'@'%';

CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wordpress_user'@'%';

FLUSH PRIVILEGES;

DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');