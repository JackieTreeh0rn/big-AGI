#!/bin/bash

export ROOT_DOMAIN=bitwisesolutions.co #Traefik

docker network create -d overlay --subnet=10.0.10.0/24 --gateway=10.0.10.1 big-agi

# Deploy
# docker pull registry.bitwisesolutions.co/big-agi:latest && \
docker stack deploy -c docker-compose-browserless-swarm.yaml big-agi
