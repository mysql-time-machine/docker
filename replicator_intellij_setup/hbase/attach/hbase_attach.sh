#!/bin/bash
docker exec -it `docker ps | grep harisekhon | cut -c1-12` /bin/bash
