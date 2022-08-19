FROM debian:buster
COPY . .
RUN chmod +x tools/install.sh && sh tools/install.sh
ENTRYPOINT ["nginx", "-g", "daemon off;"]