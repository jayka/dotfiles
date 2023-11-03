
# Powerline
# export LC_ALL=en_US.UTF-8
# export PATH="$PATH:$HOME/Library/Python/3.9/bin"
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# source $HOME/Library/Python/3.9/lib/python/site-packages/powerline/bindings/bash/powerline.sh

# source zshrc for mac
source ~/.zshrc

DOTFILE_DIR=$(dirname "$(readlink ~/.bashrc)")

source "$DOTFILE_DIR/aliases.sh"

export CLICOLOR=1
#export LSCOLORS="Gxfxcxdxbxegedabagacad"
#export LSCOLORS

# Homebrew application directory
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
# add our bin to PATH
export PATH=$PATH:/$DOTFILE_DIR/bin

# add cpair
export PATH="$HOME/.cpair/bin:$PATH"

# add VSCode
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/:$PATH"

# brew exports
# ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.2.0/bin"

export JAVA_HOME=$(/usr/libexec/java_home)

ssh-add --apple-use-keychain

eval "$(/opt/homebrew/bin/brew shellenv)"

# activate pyenv env
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# this has to be the last line in this file
[ -f `which starship` ] && eval "$(starship init bash)"
