#! /usr/bin/env bash

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
