#!/bin/bash

docker-compose down && docker-compose rm -f  && docker-compose up --force-recreate  --always-recreate-deps
