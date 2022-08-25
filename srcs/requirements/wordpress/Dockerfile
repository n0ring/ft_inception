FROM debian:buster
COPY tools/ .
RUN chmod +x install.sh start.sh && sh install.sh
EXPOSE 9000
CMD sh start.sh