#!/bin/bash

# Run docker compose command on GCP "Container Optimized Instance"
# By default, these images only have docker:cli installed without compose

docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:$PWD" \
    -w="$PWD" \
    docker:latest compose up