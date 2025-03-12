#!/bin/bash

set -o allexport
. ./.env


# Docker
export PUID=$(id -u)
export PGID=$(id -g)
# Create Network (customize)
docker network create -d overlay --subnet=10.0.10.0/24 --gateway=10.0.10.1 ${BACKEND_NETWORK_NAME}
# Deploy
docker stack deploy -c docker-stack-compose.yml ${STACK_NAME}
