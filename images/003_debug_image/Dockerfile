#FROM debian:jessie
FROM clojure:latest

MAINTAINER Bosko Devetak <bosko.devetak@booking.com>

ENV https_proxy=http://webproxy.corp.booking.com:3128
ENV http_proxy=http://webproxy.corp.booking.com:3128
ENV REPLICATOR_PATH=/replicator

ADD apt.conf /etc/apt/apt.conf
RUN apt-get update

RUN echo 'deb http://http.debian.net/debian jessie-backports main' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -t jessie-backports openjdk-8-jdk

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

# Replicator 0.14 branch

ADD ./input/replicator/mysql-replicator.jar            /replicator/mysql-replicator.jar
ADD ./input/replicator/mysql-replicator-0.14.5.jar     /replicator/mysql-replicator-0.14.5.jar

# Replicator 0.16 branch
ADD ./input/replicator/mysql-replicator-0.16.0-alpha-1-SNAPSHOT-distribution.zip /replicator/mysql-replicator-0.16.0-alpha-1-SNAPSHOT-distribution.zip

# Logging
ADD ./input/replicator/log4j.properties                /replicator/log4j.properties

# Config 0.14
ADD ./input/replicator/replicator-conf.yaml            /replicator/replicator-conf.yaml

# Config 0.16
ADD ./input/replicator/replicator-conf-v016.yaml       /replicator/replicator-conf-v016.yaml

# Replicator util scripts
ADD ./input/replicator/run_stdout                      /replicator/bin/run_stdout
ADD ./input/replicator/run_stdout_from_pgtid           /replicator/bin/run_stdout_from_pgtid
ADD ./input/replicator/run_kafka                       /replicator/bin/run_kafka
ADD ./input/replicator/run_016                         /replicator/bin/run_016
ADD ./input/replicator/run_hbase                       /replicator/bin/run_hbase
ADD ./input/replicator/print_json                      /replicator/bin/print_json

# MySQL init scripts
ADD ./input/replicator/random_mysql_ops                /replicator/bin/mysql-init/random_mysql_ops
ADD ./input/replicator/init_pgtid_and_heartbeat_events /replicator/bin/mysql-init/init_pgtid_and_heartbeat_events
ADD ./input/replicator/init_tables_and_reset_master    /replicator/bin/mysql-init/init_tables_and_reset_master

# Kafka util scripts
ADD ./input/replicator/read_kafka /replicator/util/kafka/read_kafka

# Debug env repl
ADD ./input/replicator/env-repl /replicator/util/repl/env-repl

# Zookeeper util scripts
ADD ./input/util /replicator/util/zk

ADD run.sh /app/run.sh

CMD ["/bin/bash", "-c", "/app/run.sh"]
