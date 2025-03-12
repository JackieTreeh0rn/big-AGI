#!/bin/bash

set -o allexport
. ./.env


# Docker
export PUID=$(id -u)
export PGID=$(id -g)

#Deploy
docker-compose -f docker-compose.yml up -d