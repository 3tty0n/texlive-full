FROM laurenss/texlive-full:latest

MAINTAINER Yusuke Izawa <yuizalp@gmail.com>

WORKDIR /data
VOLUME /data

RUN apt-get update -q && \
    apt-get install -y python3-pygments wget unzip

RUN wget https://github.com/bBoxType/FiraSans/archive/master.zip && \
    unzip master.zip && \
    mkdir -p /usr/share/fonts/opentype/fira && \
    mkdir -p /usr/share/fonts/truetype/fira && \
    find FiraSans-master/ -name "*.otf" -exec cp {} /usr/share/fonts/opentype/fira/ \; && \
    find FiraSans-master/ -name "*.ttf" -exec cp {} /usr/share/fonts/truetype/fira/ \;
