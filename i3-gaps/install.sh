#! /usr/bin/env bash

PACKAGE_NAME="i3-gaps"
IMAGE_NAME="$PACKAGE_NAME-builder"
source ../util.sh

git-fetch https://github.com/Airblader/i3.git
git-pull "$PACKAGE_NAME"
bump-package-version "$PACKAGE_NAME"
clean-build-dir "$PACKAGE_NAME"/build/dist
build-docker-image $IMAGE_NAME
build-package $IMAGE_NAME "$PACKAGE_NAME"
install-package ./"$PACKAGE_NAME"/build/dist/*.deb
