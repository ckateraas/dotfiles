#! /usr/bin/env bash

IMAGE_NAME="yabar-builder"

echo "Fetching Git repo for Yabar"
git clone https://github.com/geommer/yabar

echo "Pulling latest changes"
cd yabar
git pull
cd -

echo "Clearing out old builds"
rm yabar/dist/*.deb

echo "Building Docker image for building Yabar"
docker build -t $IMAGE_NAME .

echo "Building Yabar with Docker"
cd yabar
mkdir -p dist
docker run --rm -v $(pwd):/build $IMAGE_NAME

echo "Installing .deb for Yabar"
sudo apt install ./dist/*.deb
