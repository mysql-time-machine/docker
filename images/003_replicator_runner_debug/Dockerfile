FROM ubuntu:xenial

MAINTAINER Bosko Devetak <bosko.devetak@booking.com>

ENV REPLICATOR_PATH=/replicator

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
      jq

ADD ./input/replicator/mysql-replicator-0.16.0-beta-SNAPSHOT-distribution.zip /replicator/mysql-replicator-0.16.0-beta-SNAPSHOT-distribution.zip

# Logging
ADD ./input/replicator/log4j.properties                /replicator/log4j.properties

# Config 0.16
ADD ./input/replicator/replicator-conf-v016.yaml       /replicator/replicator-conf-v016.yaml

# Replicator util scripts
ADD ./input/replicator/run_016                         /replicator/bin/run_016

# More util scripts
ADD ./input/replicator/00_setup                        /replicator/00_setup
ADD ./input/replicator/01_seed                         /replicator/01_seed_mysql
ADD ./input/replicator/02_run_016                      /replicator/02_run_016
ADD ./input/replicator/03_read_kafka                   /replicator/03_read_kafka

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
