#!/usr/bin/env sh

# Exit on first error
set -e

# Read parameters
. `dirname $0`/build/parseargs.sh

# Parameters check

if [ "$SHOW_HELP" = "true" ] || [ -z "$IMAGE_NAME" ]; then
  echo "Usage: $0 [options]"
  echo
  echo "Options:"
  echo " -n, --name, --image-name <name> The name of the docker image to test. REQUIRED"
  echo
  if [ "$SHOW_HELP" = "true" ]; then
    exit
  else
    exit 1
  fi
fi

# Tests

echo
echo "###"
echo "### Testing the image"
echo "###"
docker run ${IMAGE_NAME} apk info glibc
