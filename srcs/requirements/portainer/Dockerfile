FROM alpine:latest

ENV PORTAINER_HOME=/var/lib/portainer

RUN apk update && \
    apk upgrade && \
    apk add bash bind-tools ca-certificates curl jq tar

RUN mkdir -p ${PORTAINER_HOME} 

RUN mkdir -p ${PORTAINER_HOME} && \
    addgroup -S portainer && \
    adduser -S -D -g "" -G portainer -s /bin/sh -h ${PORTAINER_HOME} portainer && \
    chown portainer:portainer ${PORTAINER_HOME}

RUN curl -sSL https://github.com/portainer/portainer/releases/download/2.14.2/portainer-2.14.2-linux-amd64.tar.gz | \
    tar -xzo -C /usr/local

RUN chmod 777 ${PORTAINER_HOME} 

CMD ["/usr/local/portainer/portainer"]
# 
# ENTRYPOINT ["tail", "-f", "/dev/null"]