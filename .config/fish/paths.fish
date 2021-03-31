set OS (uname)
# Go
set -xg GOPATH ~/repo/go

# NVM
set -xg NVM_DIR ~/.nvm

if test "$OS" = "Darwin" ;
  set -xg JAVA_HOME (/usr/libexec/java_home)
end

# add homebrew bins to path
set -g PATH $PATH '/usr/local/sbin'

# brew appdir location
set -xg HOMEBREW_CASK_OPTS "--appdir=~/Applications --fontdir=/Library/Fonts"

source $HOME/.profile

#set -xg PATH $JAVA_HOME/bin:$PATH
