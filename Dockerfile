FROM debian:stretch-slim

LABEL maintainer="skyler.ac.lee@gmail.com"

RUN apt-get update \
    && apt-get install -y apt-transport-https \
    && rm -rf /var/lib/apt/lists/* \
    && sed -i.save "s@http://[a-z]*.debian.org@https://mirrors.aliyun.com@g" /etc/apt/sources.list
