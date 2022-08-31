FROM debian:buster

COPY . .
RUN chmod +x install.sh && sh install.sh


EXPOSE 4443

ENTRYPOINT ["nginx", "-g", "daemon off;"]