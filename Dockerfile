FROM ubuntu:trusty
LABEL maintainer="DerEnderKeks <admin@derenderkeks.me>" version="0.0.1" description="Docker image for factorio servers"

WORKDIR /srv/factorio
ENV SERVER /srv/factorio/bin/x64/factorio
ENV CONFIG /srv/factorio/config/server-settings.json
ENV WHITELIST /srv/factorio/config/server-whitelist.json
ENV BANLIST /srv/factorio/config/server-banlist.json

RUN apt-get update
RUN apt-get install -y curl xz-utils

ARG VERSION=0.15.2

RUN curl -sL https://www.factorio.com/get-download/${VERSION}/headless/linux64 | tar --strip-components=1 -xJ

COPY . /srv/factorio/

EXPOSE 34197/udp
VOLUME /srv/factorio/config /srv/factorio/saves /srv/factorio/mods

CMD ["sh", "-c", "$SERVER --start-server-load-latest --server-settings $CONFIG --server-whitelist $WHITELIST --server-banlist $BANLIST"]


