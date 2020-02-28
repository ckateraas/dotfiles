#! /usr/bin/env bash

apt install -y \
  feh \
  i3lock \
  rofi \
  scrot \
  pavucontrol \
  dunst \
  signal-desktop \
  snapd \
  git \
  vim \
  snapd

mkdir -p ~/.config

ln -sf ./configs/gitconfig ~/.gitconfig
ln -sf ./configs/tmux.conf ~/.tmux.conf
ln -sf ./configs/vimrc ~/.vimrc

mkdir -p ~/.config/fish
ln -sf ./configs/config.fish ~/.config/fish/config.fish

mkdir -p ~/.config/yabar
ln -sf ./configs/yabar.config ~/.config/yabar/yabar.conf

mkdir -p ~/.config/polybar
ln -sf ./configs/polybar.conf ~/.config/polybar/config

mkdir -p ~/.config/dunst
ln -sf ./configs/dunstrc~/.config/dunst/dunstrc

chsh "$(whoami)" -s /usr/bin/fish

mkdir -p ~/bin
cp  ./bin/* ~/bin

snap install jq
snap install procs
snap install atom
snap install docker