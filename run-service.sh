#!/usr/bin/env bash

echo "Launching Sample Service..."
docker run --detach \
           --link redis:redis \
           --publish 8080:8080 \
           --name "ecs-sample-service" \
           yuriyko/ecs-sample-service:redis
