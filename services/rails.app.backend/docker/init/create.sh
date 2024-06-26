#!/bin/bash

cd `dirname $0`
source ../../.service_env

cd ../../../../

source .env

mkdir -p ./services/${DC_SERRVICE_NAME}/src

docker compose run --rm ${DC_SERRVICE_NAME} bash -c "
rails _${RAILS_VERSION}_ new . --skip-bundle --skip ${RAILS_NEW_OPTION}
"

sudo chown -R $(id -u):$(id -g) ./services/${DC_SERRVICE_NAME}/src