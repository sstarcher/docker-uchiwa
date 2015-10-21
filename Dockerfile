FROM debian:jessie
MAINTAINER Shane Starcher <shanestarcher@gmail.com>

RUN apt-get update && apt-get install -y wget ca-certificates && apt-get -y clean
RUN wget -q http://repositories.sensuapp.org/apt/pubkey.gpg -O-  | apt-key add -
RUN echo "deb     http://repositories.sensuapp.org/apt sensu main" > /etc/apt/sources.list.d/sensu.list

RUN wget https://github.com/jwilder/dockerize/releases/download/v0.0.3/dockerize-linux-amd64-v0.0.3.tar.gz
RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.0.3.tar.gz

RUN \
    apt-get update && \
    apt-get install -y uchiwa && \
    apt-get -y clean

ADD config.json.tmpl /config/config.json.tmpl

EXPOSE 3000

CMD dockerize -template /config/config.json.tmpl:/config/config.json /opt/uchiwa/bin/uchiwa -c /config/config.json -p /opt/uchiwa/src/public
