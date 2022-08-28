FROM debian:buster

RUN 
# RUN chmod +x install.sh && sh install.sh

COPY install.sh .
RUN chmod +x install.sh && sh install.sh
RUN chmod +x /etc/redis/redis.conf
EXPOSE 6379

CMD redis-server --protected-mode no