FROM debian:buster
COPY . .
RUN chmod +x tools/install.sh && sh tools/install.sh
# ENTRYPOINT ["bash"]
ENTRYPOINT ["tail", "-f", "/dev/null"]
# CMD "/bin/bash"