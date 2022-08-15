FROM debian:buster
COPY tools/ . 
RUN chmod +x install.sh && sh ./install.sh

ENTRYPOINT [ "mysqld_safe" ]

EXPOSE 3306