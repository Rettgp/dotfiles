export PATH="/opt/homebrew/bin:$PATH"

starship init fish | source
if status is-interactive
    and not set -q TMUX
    tmux attach -t Default 2>/dev/null; or exec tmux new -s Default
end
export PATH="$HOME/.local/bin:$PATH"
