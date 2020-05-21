set OS (uname)
# Go
set -xg GOPATH ~/repo/go

# NVM
set -xg NVM_DIR ~/.nvm

if test "$OS" = "Darwin" ;
  set -xg JAVA_HOME (/usr/libexec/java_home)
end


#set -xg PATH $JAVA_HOME/bin:$PATH
