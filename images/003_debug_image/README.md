Building and running the image
==============================

1. Build the replicator jar using the replicator builder image.

2. Copy the replicator jar to images/003_debug_image/input/replicator/mysql-replicator.jar

3. Build image

    ./container_build

4. Run all

    ../../docker-compose/debug_image/run_all

5. Attach

    ../../docker-compose/debug_image/attach_to_replicator
