#! /usr/bin/env bash

IMAGE_NAME="i3-gaps-builder"

echo "Fetching Git repo for i3-gaps"
# git clone https://github.com/geommer/i3-gaps

echo "Building Docker image for building i3-gaps"
docker build -t $IMAGE_NAME .

echo "Building i3-gaps with Docker"
cd i3-gaps
mkdir -p dist
docker run --rm -v $(pwd):/build $IMAGE_NAME

echo "Installing .deb packages for i3-gaps"
cd build/dist
sudo dpkg -i i3_1-gaps-next-1_amd64.deb
