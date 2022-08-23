FROM debian:buster
COPY . .
RUN chmod +x tools/install.sh && sh tools/install.sh

EXPOSE 8888
EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
