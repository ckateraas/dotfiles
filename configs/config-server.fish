set fish_color_search_match --background='333'

set fish_greeting ""
set VISUAL vim
set EDITOR "$VISUAL"

if status --is-interactive
and not set -q TMUX
    exec tmux
end
