docker run \
    -v "${PWD}/input:/input" \
    -v "${PWD}/output:/output" \
    --network host \
    replicator-runner
