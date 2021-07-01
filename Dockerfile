FROM docker.io/jeanblanchard/alpine-glibc
# author
MAINTAINER haosenwei
# A streamlined jdk
sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk upgrade

ENV LANG zh_CN.utf8 
ENV TZ=Asia/Shanghai

# set env
ENV JAVA_HOME /jdk1.8.0_201
ENV PATH ${PATH}:${JAVA_HOME}/bin