#!/bin/sh

CONTAINER_SRC_PATH="/home/sibcore/.nvm/versions/node/v4.8.4/lib/node_modules/bitcore-dash"

docker volume create --name=bitcore-dash
docker run --rm -it -v bitcore-dash:${CONTAINER_SRC_PATH} sibcore:2

# Source data to path /var/lib/docker/volumes/bitcore-dash/_data
