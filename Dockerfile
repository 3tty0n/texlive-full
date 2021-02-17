FROM ubuntu:20.04

MAINTAINER Yusuke Izawa <yuizalp@gmail.com>

WORKDIR /data
VOLUME /data

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -q && \
    apt-get install -y wget unzip \
    texlive-full make git \
    python3-pygments fonts-noto-cjk fonts-noto-cjk-extra

RUN wget https://github.com/bBoxType/FiraSans/archive/master.zip && \
    unzip master.zip && \
    mkdir -p /usr/share/fonts/opentype/fira && \
    mkdir -p /usr/share/fonts/truetype/fira && \
    find FiraSans-master/ -name "*.otf" -exec cp {} /usr/share/fonts/opentype/fira/ \; && \
    find FiraSans-master/ -name "*.ttf" -exec cp {} /usr/share/fonts/truetype/fira/ \;
