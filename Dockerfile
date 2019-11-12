FROM debian:stretch-slim

LABEL maintainer="skyler.ac.lee@gmail.com"

RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-transport-https \
    && rm -rf /var/lib/apt/lists/* \
    && mv /etc/apt/sources.list /etc/apt/sources.list.save \
    && printf '\
deb https://mirrors.aliyun.com/debian/ stretch main non-free contrib\n\
deb https://mirrors.aliyun.com/debian-security stretch/updates main\n\
deb https://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib\n\
deb https://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib\n\
' > /etc/apt/sources.list
