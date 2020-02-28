#! /usr/bin/env bash

apt install -y \
  feh \
  i3lock \
  rofi \
  scrot \
  pavucontrol \
  dunst \
  snapd \
  git \
  vim \
  snapd \
  tmux

mkdir -p ~/.config

ln -sf ./configs/gitconfig ~/.gitconfig
ln -sf ./configs/tmux.conf ~/.tmux.conf
ln -sf ./configs/vimrc ~/.vimrc

mkdir -p ~/.config/fish
ln -sf ./configs/config.fish ~/.config/fish/config.fish

mkdir -p ~/.config/polybar
ln -sf ./configs/polybar.conf ~/.config/polybar/config

mkdir -p ~/.config/dunst
ln -sf ./configs/dunstrc ~/.config/dunst/dunstrc

mkdir -p ~/.config/sxhkd
ln -sf ./configs/sxhkdrc ~/.config/sxhkd/sxhkdrc

echo "$(which fish)" >> /etc/shells
chsh "$(whoami)" -s "$(which fish)"

mkdir -p ~/bin
cp  ./bin/* ~/bin

snap install code
snap install signal-desktop
