FROM debian:buster

COPY . .
RUN chmod +x install.sh && sh install.sh

# ENTRYPOINT vsftpd 
# ENTRYPOINT ["tail", "-f", "/dev/null"]


EXPOSE 4443

ENTRYPOINT ["nginx", "-g", "daemon off;"]