#! /usr/bin/env bash

autoreconf --force --install

mkdir -p build
cd build/
mkdir -p dist

../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make

echo 'i3-gaps & i3 with more features' > description-pak

checkinstall \
  --type=debian \
  --maintainer=hvemvet \
  --nodoc \
  --pkgname=i3 \
  --pkgversion=5.0.0-next \
  --default \
  --pakdir=./dist \
  --instal=no \
  --provides='x-window-manager' \
  --replaces='i3,i3-wm'
