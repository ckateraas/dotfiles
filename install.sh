#! /usr/bin/env bash

cp ./configs/gitconfig ~/.gitconfig
cp ./configs/tmux.conf ~/.tmux.conf
cp ./configs/vimrc ~/.vimrc

mkdir -p ~/.config/fish
cp ./configs/config.fish ~/.config/fish/config.fish

chsh "$(whoami)" -s "$(which fish)"
