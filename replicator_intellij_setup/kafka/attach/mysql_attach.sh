#!/bin/bash
docker exec -it `docker ps | grep mysql | cut -c1-12` /bin/bash

