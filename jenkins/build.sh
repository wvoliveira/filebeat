#!/usr/bin/env bash
#
# Build base image
#
# BUILD_NUMBER from Jenkins envs
#

SERVICE_IMAGE="$1"

# Get DOCKER_HOST_BUILD
. ./jenkins/vars.sh

# export docker_host to build image
export DOCKER_HOST="$DOCKER_HOST_BUILD"

# Build image by env
build_image() {
  docker build \
  -t "${SERVICE_IMAGE}:v${BUILD_NUMBER}" \
  -t "${SERVICE_IMAGE}:latest" .
}

main() {
  build_image
}

main
