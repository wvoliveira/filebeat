#!/usr/bin/env bash
#
# Push base image
#

SERVICE_IMAGE="$1"

. ./jenkins/vars.sh

# Export docker host to get images builded in last step
# ingles merda viu huehue
export DOCKER_HOST="$DOCKER_HOST_BUILD"

echo "Images to push:"
echo "${SERVICE_IMAGE}:latest"
echo "${SERVICE_IMAGE}:v${BUILD_NUMBER}"

docker push "${SERVICE_IMAGE}:latest"
docker push "${SERVICE_IMAGE}:v${BUILD_NUMBER}"
