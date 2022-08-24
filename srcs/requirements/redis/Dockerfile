FROM debian:buster
# RUN chmod +x install.sh && sh install.sh

COPY install.sh .
RUN chmod +x install.sh && sh install.sh
EXPOSE 6379

ENTRYPOINT redis-server --protected-mode no