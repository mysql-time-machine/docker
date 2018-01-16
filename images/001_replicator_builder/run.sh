#!/usr/bin/env bash

BRANCH="$1"
set -eu -o pipefail
if [ -z "$BRANCH" ]; then
    BRANCH=master
fi

git clone https://github.com/mysql-time-machine/replicator.git

cd /replicator

git checkout "$BRANCH"

mvn package

eval $(printf 'VERSION=${project.version}\n0\n' | mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate | grep '^VERSION')

cp "/replicator/target/mysql-replicator-$VERSION.jar" /output/mysql-replicator.jar
