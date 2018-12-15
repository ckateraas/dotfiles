#! /usr/bin/env bash

ln -s ${pwd}/gitconfig ~/.gitconfig
ln -s ${pwd}/tmux.conf ~/.tmux.conf
ln -s ${pwd}/vimrc ~/.vimrc
mkdir ~/.config/fish
ln -s ${pwd}/config.fish ~/.config/fish/config.fish

mkdir ~/.config/yabar
ln -s ${pwd}/yabar.config ~/.config/yabar/yabar.fish

chsh ${whoami} -s /usr/bin/fish
