FROM docker.io/jeanblanchard/alpine-glibc
# author
MAINTAINER haosenwei
# A streamlined jdk
sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk upgrade && apk add openjdk7

ENV LANG zh_CN.utf8 
ENV TZ=Asia/Shanghai

# set env
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk
ENV PATH ${PATH}:${JAVA_HOME}/bin