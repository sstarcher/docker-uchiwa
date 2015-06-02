FROM uchiwa/uchiwa
MAINTAINER Shane Starcher <shanestarcher@gmail.com>

RUN wget https://github.com/jwilder/dockerize/releases/download/v0.0.2/dockerize-linux-amd64-v0.0.2.tar.gz
RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.0.2.tar.gz

ADD config.json.tmpl /config/config.json.tmpl

CMD dockerize -template /config/config.json.tmpl:/config/config.json /start