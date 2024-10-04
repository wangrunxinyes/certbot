FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git curl php php-curl wget vim certbot

WORKDIR /var/certbot

RUN wget https://github.com/mikefarah/yq/releases/download/v4.30.6/yq_linux_amd64 -O /usr/local/bin/yq

RUN git clone https://github.com/wangrunxinyes/certbot.git /var/certbot

RUN chmod +x /usr/local/bin/yq

RUN chmod +x run.sh

