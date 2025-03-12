#!/bin/bash

set -o allexport
. ./.env


# BUILD - DOCKER HUB
docker login
docker buildx build --platform "linux/amd64,linux/arm64" -t jackietreehorn/${STACK_NAME}:latest --push .

# BUILD - local registry
docker buildx build --platform "linux/amd64,linux/arm64" -t registry.bitwisesolutions.co/${STACK_NAME}:latest --push .

# BUJILD - local docker machine
docker build -t big-agi .


