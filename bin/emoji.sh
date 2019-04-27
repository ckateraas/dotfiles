#! /usr/bin/env bash

EMOJI=$(grep -v "#" ~/git/dotfiles/bin/emoji.txt | rofi -dmenu -lines 10 -p "Emoji" | awk '{ print $1}')
if [[ $EMOJI == "" ]]; then
  exit 0
fi
echo ${EMOJI} | xclip -selection c
notify-send "Emoji copied" "Copied ${EMOJI} to clipboard"
