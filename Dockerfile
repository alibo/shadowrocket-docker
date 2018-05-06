FROM python:3.6-alpine
MAINTAINER Ali Borhani <github.com/alibo>

ARG SSR_VER=3.2.1

ENV SSR_PORT=443
ENV SSR_PASSWORD=123456
ENV SSR_METHOD=chacha20-ietf
ENV SSR_TIMEOUT=600
ENV SSR_OBFS=http_post_compatible
ENV SSR_WORKERS=1

RUN apk add --no-cache \
        linux-headers \
        zlib-dev \
        automake \
        openssl \
        unzip \
        make \
        libtool \
        curl \
        autoconf \
        build-base \
        libsodium 

WORKDIR /

RUN wget -q -O - https://github.com/shadowsocksrr/shadowsocksr/archive/$SSR_VER.tar.gz | tar xz \
    && mv shadowsocksr-$SSR_VER shadowsocksr

WORKDIR /shadowsocksr/shadowsocks

EXPOSE $SSR_PORT/tcp $SSR_PORT/udp

ENTRYPOINT python server.py \
    -s 0.0.0.0 \
    -p $SSR_PORT \
    -k $SSR_PASSWORD \
    -m $SSR_METHOD \
    -o $SSR_OBFS \
    -t $SSR_TIMEOUT \
    --workers $SSR_WORKERS \
    --fast-open
