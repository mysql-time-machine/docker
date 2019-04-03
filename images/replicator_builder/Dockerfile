FROM ubuntu:xenial

MAINTAINER Bosko Devetak <bosko.devetak@booking.com>

RUN apt-get update

RUN apt-get install -y openjdk-8-jdk

RUN apt-get install -y \
    git-core \
    maven

ADD ~/.m2/settings.xml /root/.m2/settings.xml
ADD run.sh /app/run.sh


ENTRYPOINT ["/app/run.sh"]

