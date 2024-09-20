set -x PATH $PATH /Users/ziggy/.local/bin
set -x PATH $PATH /Users/ziggy/zig
set -x PATH $PATH /Users/ziggy/zls/zig-out/bin
set -x PATH $PATH /Users/ziggy/Projects/private/flutter/bin

alias vim="nvim"
alias vi="nvim"
alias ls="exa -l -a"
alias l="ls"

if status is-interactive
end


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Odin
set --export PATH "$HOME/Projects/private/odin/Odin/" $PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ziggy/Projects/humbleai/google-cloud-sdk/path.fish.inc' ]; . '/Users/ziggy/Projects/humbleai/google-cloud-sdk/path.fish.inc'; end
