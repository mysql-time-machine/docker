sudo docker run \
    -v "${PWD}/input:/input" \
    -v "${PWD}/output:/output" \
    -ti replicator-builder-image:latest bash
