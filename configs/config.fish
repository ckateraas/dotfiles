setxkbmap -option ctrl:nocaps
set fish_color_search_match --background='333'
alias dra="docker rm -f (docker ps -qa)"
alias g="git"
alias dc="docker-compose"
if status --is-interactive
    abbr --add --universal g git
    abbr --add --universal dc docker-compose
end

alias terraform="docker run --rm -it -v /home/christian/.ssh:/root/.ssh -v (pwd):/terraform terraform"
alias ansible-playbook="docker run -it --rm -v (pwd):/ansible -v ~/.ssh:/home/ansible/.ssh slipway-ansible-playbook"
alias ansible-vault="docker run -it --rm -v (pwd):/ansible -v ~/.ssh:/home/ansible/.ssh slipway-ansible-vault"
alias ansible="docker run -it --rm -v (pwd):/ansible -v ~/.ssh:/home/ansible/.ssh ansible"
alias portainer="docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer"

set fish_greeting ""
set VISUAL vim
set EDITOR "$VISUAL"
set fish_user_paths $PATH $HOME/bin

if status --is-interactive
and not set -q TMUX
    exec tmux
end
