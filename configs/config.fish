setxkbmap -option ctrl:nocaps
set fish_color_search_match --background='333'
alias dra="docker rm -f (docker ps -qa)"
abbr --add g git
abbr --add dc docker-compose

alias terraform="docker run --rm -it -v (pwd):/terraform terraform"
alias ansible="docker run -it --rm -v (pwd):/ansible -v ~/.ssh:/home/ansible/.ssh ansible"
alias portainer="docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer"
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -i percentage | cut -d: -f2 | xargs -IX echo Battery: X"

set fish_greeting ""
set VISUAL vim
set EDITOR "$VISUAL"
set fish_user_paths $PATH $HOME/.cargo/bin /opt/node-8.9/bin $HOME/bin

#function history
#builtin history --show-time='%h/%d - %H:%M:%S '
#end

if status is-interactive
and not set -q TMUX
    exec tmux
end
