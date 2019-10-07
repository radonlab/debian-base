FROM debian:stretch-slim

LABEL maintainer="skyler.ac.lee@gmail.com"

RUN mv /etc/apt/sources.list /etc/apt/sources.list.save \
    && printf '\
deb http://mirrors.aliyun.com/debian/ stretch main non-free contrib\n\
deb http://mirrors.aliyun.com/debian-security stretch/updates main\n\
deb http://mirrors.aliyun.com/debian/ stretch-updates main non-free contrib\n\
deb http://mirrors.aliyun.com/debian/ stretch-backports main non-free contrib\n\
' > /etc/apt/sources.list
