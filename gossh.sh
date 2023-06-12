#!/bin/bash

CONTAINER_NAME=$1
CONTAINER_ID=$(docker ps -aqf "name=^${CONTAINER_NAME}$")

if [ -z "$CONTAINER_ID" ]
then
      echo "Error: Couldn't find a container named \"${CONTAINER_NAME}\""
fi

echo "Connecting to ssh on the container ${CONTAINER_ID} (${CONTAINER_NAME})..."

docker exec -it "$CONTAINER_ID" /bin/bash