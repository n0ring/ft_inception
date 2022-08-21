FROM debian:buster
COPY tools/ . 
RUN chmod +x install.sh && sh ./install.sh

EXPOSE 3306
ENTRYPOINT [ "mysqld_safe" ]