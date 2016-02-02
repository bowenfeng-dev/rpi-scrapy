FROM resin/rpi-raspbian:jessie
MAINTAINER Bowen Feng <bowenfeng.dev@gmail.com>

RUN apt-get update \
    && apt-get install -y autoconf \
                          build-essential \
                          curl \
                          git \
                          libffi-dev \
                          libssl-dev \
                          libtool \
                          python \
                          python-dev \
                          vim-tiny \
                          libxml2-dev \
                          libxslt-dev \
                          python-pip \
    && pip install scrapy \
    && apt-get purge -y --auto-remove autoconf \
                                      build-essential \
                                      libffi-dev \
                                      libssl-dev \
                                      libtool \
                                      python-dev \
    && rm -rf /var/lib/apt/lists/*
