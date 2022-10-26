#!/bin/bash

cd "$(dirname "$0")/.."

USER_ID=${SUDO_UID-$(id -u)}
USER_NAME="$(id -un $USER_ID)"
IMAGE="$USER_NAME/transfuser"

docker build \
    -f docker/Dockerfile \
    -t "$IMAGE" \
    .