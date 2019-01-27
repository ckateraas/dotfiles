setxkbmap -option ctrl:nocaps

alias dra="docker rm -f (docker ps -qa)"
alias terraform="docker run --rm -it -v (pwd):/terraform terraform"
alias ansible="docker run -it --rm -v (pwd):/ansible -v ~/.ssh:/home/ansible/.ssh ansible"

abbr --add g git
abbr --add dc docker-compose

set fish_greeting ""
set VISUAL vim
set EDITOR "$VISUAL"
set fish_user_paths $PATH $HOME/.cargo/bin /opt/node-8.9/bin

function history
    builtin history --show-time='%h/%d - %H:%M:%S '
end

if status is-interactive
and not set -q TMUX
    exec tmux
end
clear
