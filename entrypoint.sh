#!/bin/sh -l

ALPINE_VERSION=$1

cd /docker-action
echo "creating docker image with alpine version: $ALPINE_VERSION"

echo aaaa
# here we can make the construction of the image as customizable as we need
# and if we need parameterizable values it is a matter of sending them as inputs
docker build -t docker-action --build-arg alpine_version="$ALPINE_VERSION" . && docker run docker-action


