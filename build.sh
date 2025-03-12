#!/bin/bash

export ROOT_DOMAIN=bitwisesolutions.co #Traefik

# docker login
docker login -u admin registry.bitwisesolutions.co

# Build
docker buildx build --platform "linux/amd64,linux/arm64" -t registry.bitwisesolutions.co/big-agi:latest --push .
