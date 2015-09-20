#!/usr/bin/env sh

# Exit on first error
set -e

# Parameters check

if [ -z "$IMAGE_NAME" ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Please set the following environment variables:"
  echo "  IMAGE_NAME:     The name of the docker image to build"
  exit -1
fi

# Tests

echo
echo "###"
echo "### Testing the image"
echo "###"
docker run $IMAGE_NAME apk info glibc
