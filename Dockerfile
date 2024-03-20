FROM --platform=linux/amd64 ruby:2.3-stretch as builder
LABEL maintainer="Stéphane Busso <stephane.busso@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list
RUN sed -i s/security.debian.org/archive.debian.org/g /etc/apt/sources.list
RUN sed -i s/stretch-updates/stretch/g /etc/apt/sources.list

RUN apt-get update && apt-get install -q -y debconf locales curl
