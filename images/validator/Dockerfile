FROM ubuntu:xenial

MAINTAINER Bosko Devetak <bosko.devetak@booking.com>

ENV VALIDATOR_PATH=/validator

ADD apt.conf /etc/apt/apt.conf
RUN apt-get update

RUN apt-get install -y openjdk-8-jdk

RUN apt-get install -y \
      vim-nox \
      libdbi-perl \
      libdata-dump-perl \
      libdata-uuid-perl \
      libterm-readkey-perl \
      libdbd-mysql-perl \
      libjson-perl \
      mysql-client \
      python2.7 \
      python-kazoo \
      python-kafka \
      python-click \
      wget \
      jq

# Jar
ADD ./input/service-0.0.1.jar /validator/service-0.0.1.jar

# Logging
ADD ./input/log4j.properties /validator/log4j.properties

# Config
ADD ./input/validator-conf.yaml /validator/config/validator-conf.yaml

# Util scripts
ADD ./input/run_validator /validator/vrun

ADD run.sh /app/run.sh

CMD ["/bin/bash", "-c", "/app/run.sh"]
