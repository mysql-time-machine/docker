docker run \
    -v "${PWD}/input:/input" \
    -v "${PWD}/output:/output" \
    --network host \
    -ti replicator-runner bash
