#!/bin/bash
docker exec -it `docker ps | grep "wurstmeister/kafka" | cut -c1-12` /bin/bash

