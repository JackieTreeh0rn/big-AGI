#!/bin/bash

set -o allexport
. ./.env


docker stack rm ${STACK_NAME}
docker-compose down #local instance
