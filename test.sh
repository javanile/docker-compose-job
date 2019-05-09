#!/bin/bash
set -e

docker-compose build

ZIP_FILE=ship-$(./cat-version Dockerfile).zip
[[ -f ${ZIP_FILE} ]] && rm ${ZIP_FILE}
docker-compose run --rm zip
[[ -f ${ZIP_FILE} ]] || echo "[ERROR] Missing zip file." && exit 1
