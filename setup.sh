#! /usr/bin/env bash

ln -sf "$(pwd)"/gitconfig ~/.gitconfig
ln -sf "$(pwd)"/tmux.conf ~/.tmux.conf
ln -sf "$(pwd)"/vimrc ~/.vimrc
mkdir -p ~/.config/fish
ln -sf "$(pwd)"/config.fish ~/.config/fish/config.fish

mkdir -p ~/.config/yabar
ln -sf "$(pwd)"/yabar.config ~/.config/yabar/yabar.fish

chsh "$(whoami)" -s /usr/bin/fish

mkdir -p ~/bin
cp ./bin/* ~/bin
