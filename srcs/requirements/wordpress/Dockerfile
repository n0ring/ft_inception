FROM debian:buster
COPY tools/ .
RUN chmod +x install.sh start.sh && sh install.sh
EXPOSE 9000
ENTRYPOINT sh start.sh


# [0 192.168.16.4:52250] "INFO" // vm
# [0 192.168.16.4:53892] 