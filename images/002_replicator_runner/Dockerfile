FROM ubuntu:xenial

MAINTAINER Bosko Devetak <bosko.devetak@booking.com>

RUN apt-get update
RUN apt-get -y  update \ 
	&& apt-get -y install openjdk-8-jdk \
	&& update-alternatives --config java

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
      jq

#ADD ./input/replicator/mysql-replicator.jar /replicator/mysql-replicator.jar
ADD ./input/replicator/log4j.properties     /replicator/log4j.properties
ADD ./input/replicator/replicator-conf.yaml /replicator/replicator-conf.yaml

ADD ./input/replicator/run_stdout /replicator/run_stdout
ADD ./input/replicator/run_kafka /replicator/run_kafka
ADD ./input/replicator/run_hbase /replicator/run_hbase
ADD ./input/replicator/print_json /replicator/print_json
ADD ./input/replicator/random_mysql_ops /replicator/random_mysql_ops
ADD ./input/replicator/read_kafka /replicator/read_kafka

ADD ./input/util /replicator/util

ADD run.sh /app/run.sh

CMD ["/bin/bash", "-c", "/app/run.sh"]
