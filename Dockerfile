FROM ubuntu:14.04

MAINTAINER "Timo Tiuraniemi <timo.tiuraniemi@iki.fi>"

ENV DEBIAN_FRONTEND noninteractive

# Install basics
RUN apt-get -q update
RUN apt-get -qy install curl

# Install confd

RUN curl -qL https://github.com/kelseyhightower/confd/releases/download/v0.10.0/confd-0.10.0-linux-amd64 -o /usr/src/confd && chmod +x /usr/src/confd
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates

ENTRYPOINT ["/usr/src/confd"]
