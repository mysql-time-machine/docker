#!/bin/bash
git clone https://github.com/mysql-time-machine/replicator.git

cd /replicator

mvn package

cp /replicator/target/mysql-replicator-0.15.0-alpha.jar /output/mysql-replicator.jar

# TODO:
#   - run in the same pod as mysql
#   - run insert_update_random_data.pl
#   - run OR > file
#   - run BC > file
#   - prove -v t/compare.t
