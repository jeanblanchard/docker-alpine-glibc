#!/usr/bin/env sh

# Exit on first error
set -e

# Parameters check

if [ -z "$IMAGE_NAME" ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Please set the following environment variables:"
  echo "  IMAGE_NAME:     The name of the docker image to build"
  echo "  DOCKERFILE_DIR: The folder where the dockerfile is. Defaults to the current folder"
  echo
  echo "Additionnaly, to publish to the Docker hub, you can set:"
  echo "  PUBLISH_IMAGE:  Set to true to trigger the publication"
  echo "  IMAGE_TAGS:     A list of tags to publish, separated with spaces"
  echo "  HUB_USERNAME:   The username to use to connect to the Docker Hub"
  echo "  HUB_PASSWORD:   The username to use to connect to the Docker Hub"
  echo "  HUB_EMAIL:      The username to use to connect to the Docker Hub"
  exit -1
fi

if [ -z "$DOCKERFILE_DIR" ]; then
  DOCKERFILE_DIR=.
fi

# Build

if [ -n "$HUB_USERNAME" ]; then
  echo
  echo "###"
  echo "### Fetching previous versions of $HUB_USERNAME/$IMAGE_NAME to avoid duplicating layers"
  echo "###"
  docker pull $HUB_USERNAME/$IMAGE_NAME:$(echo \"$IMAGE_TAGS\" | awk '{print $1}') || true
fi

echo
echo "###"
echo "### Building $IMAGE_NAME from $DOCKERFILE_DIR"
echo "###"
docker build -t $IMAGE_NAME $DOCKERFILE_DIR

echo
echo "###"
echo "### Testing the image"
echo "###"
docker run $IMAGE_NAME apk info glibc

# Publish

if [ "$PUBLISH_IMAGE" = "true" ] && [ -n "$HUB_USERNAME" ] && [ -n "$HUB_PASSWORD" ]; then
  echo
  echo "###"
  echo "### Logging in to Docker Hub"
  echo "###"
  docker login -u $HUB_USERNAME -p $HUB_PASSWORD -e $HUB_EMAIL

  # Publish every tag
  for IMAGE_TAG in $IMAGE_TAGS; do
    echo
    echo "###"
    echo "### Building tag $HUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG"
    echo "###"
    docker build -t $HUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG $DOCKERFILE_DIR
    echo
    echo "###"
    echo "### Pushing tag $HUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG"
    echo "###"
    docker push $HUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG
    echo
    echo "###"
    echo "### Tag $IMAGE_TAG sucessfully published"
    echo "###"
  done

  echo
  echo "###"
  echo "### Logging out from Docker Hub"
  echo "###"
  docker logout
else
  echo
  echo "###"
  echo "### Not publishing!"
  echo "###"
fi

echo
echo "###"
echo "### All good!"
echo "###"