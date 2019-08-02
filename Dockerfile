FROM alpine:latest
LABEL description="Docker alpine image with nano"
LABEL version="0.0.1"
LABEL maintainer="dominus"

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apk update \
    && apk add --no-cache nano \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /data
VOLUME /data
WORKDIR /data

ENTRYPOINT ["nano"]
