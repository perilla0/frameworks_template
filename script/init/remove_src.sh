#!/bin/bash

cd `dirname $0`
cd ../../

source .env

docker compose down
docker rmi -f ${PROJECT_NAME}_nginx.web.backend
docker rmi -f ${PROJECT_NAME}_nginx.web.frontend
docker rmi -f ${PROJECT_NAME}_laravel.app.backend
docker rmi -f ${PROJECT_NAME}_rails.app.backend
docker rmi -f ${PROJECT_NAME}_django.app.backend
docker rmi -f ${PROJECT_NAME}_echo.app.backend
docker rmi -f ${PROJECT_NAME}_react-ts.client.apollo.app.frontend
docker rmi -f ${PROJECT_NAME}_ts.next.app.frontend
docker rmi -f ${PROJECT_NAME}_ts.nuxt.app.frontend
docker builder prune

sudo rm -rf src