FROM debian:buster

EXPOSE 9000


COPY tools/ .

RUN chmod +x install.sh start.sh && sh install.sh




ENTRYPOINT bash start.sh
