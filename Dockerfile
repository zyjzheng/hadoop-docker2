FROM jstepien/openjdk8
MAINTAINER zyj.hit@gmail.com

USER root

RUN mkdir -p /opt/local/java
RUN ln -s /opt/openjdk8   /opt/local/java/openjdk8
ADD sources.list /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install curl
RUN mkdir -p /opt/hadoop
RUN curl -o - http://mirrors.aliyun.com/apache/hadoop/common/hadoop-2.7.0/hadoop-2.7.0.tar.gz | tar xzf - -C /opt/hadoop
ADD etc/hadoop/* /opt/hadoop/etc/hadoop/