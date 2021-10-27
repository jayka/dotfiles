
# Powerline
# export LC_ALL=en_US.UTF-8
# export PATH="$PATH:$HOME/Library/Python/3.9/bin"
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# source $HOME/Library/Python/3.9/lib/python/site-packages/powerline/bindings/bash/powerline.sh

export CLICOLOR=1
#export LSCOLORS="Gxfxcxdxbxegedabagacad"
#export LSCOLORS

# Homebrew application directory
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

eval "$(starship init bash)"
