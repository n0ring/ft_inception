FROM debian:buster
COPY . .
RUN chmod +x tools/install.sh && sh tools/install.sh

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
