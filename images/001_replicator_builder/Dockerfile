FROM debian:jessie

MAINTAINER Bosko Devetak <bosko.devetak@booking.com>

ENV https_proxy=http://webproxy.corp.booking.com:3128
ENV http_proxy=http://webproxy.corp.booking.com:3128

ADD apt.conf /etc/apt/apt.conf
RUN apt-get update

RUN echo 'deb http://http.debian.net/debian jessie-backports main' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -t jessie-backports openjdk-8-jdk

RUN apt-get install -y \
    git-core \
    maven

RUN git config --global http.proxy webproxy.corp.booking.com:3128
ADD settings/settings.xml /usr/share/apache-maven/conf/settings.xml

ADD run.sh /app/run.sh

ENTRYPOINT ["/app/run.sh"]

