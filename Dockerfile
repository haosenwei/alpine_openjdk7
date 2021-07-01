FROM docker.io/jeanblanchard/alpine-glibc
# author
MAINTAINER haosenwei
# A streamlined jdk
apk update && apk upgrade && apk add openjdk7

ENV LANG zh_CN.utf8 
ENV TZ=Asia/Shanghai

# set env
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk
ENV PATH ${PATH}:${JAVA_HOME}/bin