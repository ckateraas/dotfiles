#! /usr/bin/env bash

IMAGE_NAME="st-builder"

echo "Fetching Git repo for ST"
git clone https://github.com/lukesmithxyz/st

echo "Pulling latest changes"
cd st
git pull
cd -

echo "Overiding config.h in st/"
cp ./config.h st

echo "Building Docker image for building ST"
docker build -t $IMAGE_NAME .

echo "Building ST with Docker"
cd st
mkdir -p dist
docker run --rm -v $(pwd):/build $IMAGE_NAME

echo "Installing .deb packages for st"
sudo apt install ./dist/st_1.0.0-1_amd64.deb
