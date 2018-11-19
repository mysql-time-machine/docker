#!/bin/bash

#BRANCH="$1"
#set -eu -o pipefail
#if [ -z "$BRANCH" ]; then
#    BRANCH=master
#fi

sleep 10000000
git config --global http.proxy webproxy.corp.booking.com:3128

git clone https://github.com/mysql-time-machine/replicator.git

cd /replicator

#git checkout "$BRANCH"

#mvn package

#eval $(printf 'VERSION=${project.version}\n0\n' | mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate | grep '^VERSION')

#cp "/replicator/target/mysql-replicator-$VERSION.jar" /output/mysql-replicator.jar

sleep 10000000
