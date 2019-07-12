#! /usr/bin/env bash

set -ex

apt install -y \
  git \
  vim \
  fish \
  feh \
  i3lock \
  rofi \
  scrot \
  pavucontrol \
  dunst \
  signal-desktop \
  snapd

echo "export PATH=$PATH:/snap/bin" >> /etc/bash.bashrc

snap install docker
snap install jq
