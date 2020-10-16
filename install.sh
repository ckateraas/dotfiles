#! /usr/bin/env bash

apt-get update
apt-get install -y vim tmux git fish

cp ./configs/gitconfig ~/.gitconfig
cp ./configs/tmux.conf ~/.tmux.conf
cp ./configs/vimrc ~/.vimrc

mkdir -p ~/.config/fish
cp ./configs/config.fish ~/.config/fish/config.fish

chsh "$(whoami)" -s "$(which fish)"
