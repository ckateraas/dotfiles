#! /usr/bin/env bash

PACKAGE_NAME="st"
IMAGE_NAME="$PACKAGE_NAME-builder"
source ../util.sh

git-fetch https://github.com/lukesmithxyz/st
git-pull "$PACKAGE_NAME"

echo "Overiding config.h in $PACKAGE_NAME/"
cp ./config.h "$PACKAGE_NAME"

bump-package-version "$PACKAGE_NAME"
clean-build-dir "$PACKAGE_NAME"/dist
build-docker-image $IMAGE_NAME
build-package $IMAGE_NAME "$PACKAGE_NAME"
install-package ./"$PACKAGE_NAME"/dist/*.deb
