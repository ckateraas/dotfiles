#! /usr/bin/env bash

IMAGE_NAME="i3-gaps-builder"

echo "Fetching Git repo for i3-gaps"
git clone https://github.com/Airblader/i3.git i3-gaps

echo "Pulling latest changes"
cd i3-gaps
git pull
cd -

echo "Clearing out old builds"
rm i3-gaps/build/dist/*.deb

echo "Building Docker image for building i3-gaps"
docker build -t $IMAGE_NAME .

echo "Building i3-gaps with Docker"
cd i3-gaps
docker run --rm -v $(pwd):/build $IMAGE_NAME

echo "Installing .deb packages for i3-gaps"
sudo apt install ./build/dist/i3_1-gaps-next-1_amd64.deb
