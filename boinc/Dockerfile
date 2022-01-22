FROM ubuntu:latest
MAINTAINER Sumin Byeon <suminb@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y boinc && \
    apt-get clean

COPY startup.sh ./
CMD ./startup.sh
