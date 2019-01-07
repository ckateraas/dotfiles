setxkbmap -option ctrl:nocaps

alias dra="docker rm -f (docker ps -qa)"
abbr --add g git
abbr --add dc docker-compose
alias terraform="docker run --rm -it -v (pwd):/terraform terraform"
alias ansible="docker run -it --rm -v (pwd):/ansible -v ~/.ssh:/home/ansible/.ssh ansible"
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -i percentage | cut -d: -f2 | xargs -IX echo Battery: X"

set fish_greeting ""
set VISUAL vim
set EDITOR "$VISUAL"
set fish_user_paths $PATH $HOME/.cargo/bin /opt/node-8.9/bin

if status is-interactive
and not set -q TMUX
    exec tmux
end
clear
