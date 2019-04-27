#! /usr/bin/env bash

make

echo 'st' > description-pak

checkinstall \
  --type=debian \
  --maintainer=hvemvet \
  --nodoc \
  --pkgname=st \
  --pkgversion=1.0.1 \
  --default \
  --pakdir=./dist \
  --instal=no \
  --replaces='st'
