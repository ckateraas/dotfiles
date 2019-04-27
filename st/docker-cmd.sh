#! /usr/bin/env bash

make

echo 'suckless terminal' > description-pak

checkinstall \
  --type=debian \
  --maintainer=hvemvet \
  --nodoc \
  --pkgname=st \
  --pkgversion=1.0.2 \
  --default \
  --pakdir=./dist \
  --instal=no \
  --replaces='st'
