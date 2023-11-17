FROM ubuntu:20.04 as builder

ARG MSMTP_VERSION=1.8.25

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libtool \
    gettext \
    texinfo \
    pkg-config \
    libgnutls28-dev \
    wget \
    make

RUN wget https://marlam.de/msmtp/releases/msmtp-${MSMTP_VERSION}.tar.xz \
    && tar xvf msmtp-${MSMTP_VERSION}.tar.xz

WORKDIR /msmtp-${MSMTP_VERSION}
RUN ./configure \
    && make \
    && make install

FROM ubuntu:20.04

COPY --from=builder /usr/local/bin/msmtp /usr/local/bin/

RUN apt-get update \
    && apt-get -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    php \
    php-cli \
    php-common \
    php-dev \
    php-mbstring \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
