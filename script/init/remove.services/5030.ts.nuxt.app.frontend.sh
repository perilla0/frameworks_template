#!/bin/bash

# Docker Compose サービス名
DC_SERRVICE_NAME='ts.nuxt.app.frontend'

cd `dirname $0`
cd ../../
bash func/remove.service.sh ${DC_SERRVICE_NAME}