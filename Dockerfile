FROM laurenss/texlive-full:latest

MAINTAINER Yusuke Izawa <yuizalp@gmail.com>

WORKDIR /data
VOLUME /data

RUN apt-get update -q && \
    apt-get install -y python3-pygments
