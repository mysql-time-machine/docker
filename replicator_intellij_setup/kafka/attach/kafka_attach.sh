#!/bin/bash
docker exec -it `docker ps | grep kafka | cut -c1-12` /bin/bash

