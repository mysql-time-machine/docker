#!/bin/bash

docker-compose down --remove-orphans  && docker-compose rm -f  && docker-compose up --force-recreate  --always-recreate-deps
