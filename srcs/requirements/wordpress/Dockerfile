FROM debian:buster
COPY tools/ .
RUN chmod +x install.sh start.sh && sh install.sh
CMD sh start.sh