#!/bin/bash

docker build -t big-agi .
docker-compose -f docker-compose-browserless.yaml up -d