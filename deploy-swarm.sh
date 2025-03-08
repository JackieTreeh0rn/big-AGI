#!/bin/bash

export ROOT_DOMAIN=bitwisesolutions.co #Traefik

docker network create -d overlay --subnet=10.0.10.0/24 --gateway=10.0.10.1 big-agi

# docker login
docker login -u admin -p admin13694587 registry.bitwisesolutions.co

# Build
# docker buildx build --platform "linux/amd64,linux/arm64" -t registry.bitwisesolutions.co/big-agi:latest --no-cache --push .

# Deploy
docker stack deploy -c docker-compose-browserless-swarm.yaml big-agi
