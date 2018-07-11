setxkbmap -option ctrl:nocaps

alias dra="docker rm -f (docker ps -qa)"
alias g="git"
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -i percentage | cut -d: -f2 | xargs -IX echo Battery: X"
set fish_greeting ""

if status is-interactive
and not set -q TMUX
    exec tmux
end
clear

