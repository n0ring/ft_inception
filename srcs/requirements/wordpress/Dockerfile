FROM debian:buster


ADD tools/install.sh .
ADD tools/conf .
ADD tools/www.conf .
RUN chmod +x install.sh && sh install.sh


COPY tools/start.sh .

CMD chmod +x start.sh &&  sh start.sh