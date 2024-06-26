#!/bin/bash

cd `dirname $0`
source ../../.service_env

cd ../../../../

source .env

mkdir -p ./services/${DC_SERRVICE_NAME}/src

# https://ja.react.dev/learn/typescript
# https://nextjs.org/docs/getting-started/installation
# https://nextjs.org/docs/pages/api-reference/create-next-app
# npx create-next-app@latest . --src-dir --ts --eslint --tailwind --app --import-alias '@/*'
docker compose run -u $(id -u):$(id -g) --rm ${DC_SERRVICE_NAME} bash -c "
npx create-next-app@latest .
"
