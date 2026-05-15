export PATH="/opt/homebrew/bin:$PATH"

starship init fish | source
if status is-interactive
and not set -q TMUX
    exec tmux
end
