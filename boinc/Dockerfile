FROM ubuntu:latest
MAINTAINER Sumin Byeon <suminb@gmail.com>

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y boinc

COPY startup.sh ./
CMD ./startup.sh
