#!/usr/bin/env bash

cd /opt/deploy

source ./.env

docker login -u="$DOCKER_REGISTRY_USER" -p="$DOCKER_REGISTRY_PASSWORD" registry.gitlab.com

docker-compose pull backend
docker-compose pull frontend
docker-compose pull api

docker-compose up -d

sleep 5
docker-compose restart nginx