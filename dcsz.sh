#!/usr/bin/env zsh

docker-compose --profile quartzy_no_workers up -d

docker-compose stop public-api
docker-compose stop webhooks

docker-compose up -d vendor-frontend
