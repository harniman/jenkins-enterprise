#!/bin/bash


USER="harniman"
REPOSITORY_NAME="jenkins-enterprise"
VERSION="c-1.609.1.1"
BUILD="1"


IMAGE_NAME="$USER/$REPOSITORY_NAME"

if [ "$VERSION"  ]; then
    IMAGE_NAME+=":$VERSION"
fi
if [ "$BUILD"  ]; then
    IMAGE_NAME+="-$BUILD"
fi

echo Building docker file $IMAGE_NAME

docker build -t="$IMAGE_NAME" .

#docker push $IMAGE_NAME
