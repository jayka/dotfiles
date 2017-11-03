
shopt -s dotglob

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

#alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

alias l='ls $*'
alias ll='ls -Gal $*'
alias e='/Applications/Emacs.app/Contents/MacOS/Emacs -nw $*'

#maven
alias mci='mvn clean install'
alias mcist='mvn clean install -DskipTests=true'
alias mi='mvn install'
alias mist='mvn install -DskipTests=true'


function _update_ps1() {
    PS1="$(~/powerline-shell/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

source $(brew --cellar)/git/2.11.0/etc/bash_completion.d/git-completion.bash
source $(brew --cellar)/git/2.11.0/etc/bash_completion.d/git-prompt.sh


#GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='[\u@\h \W$(__git_ps1)]\$ '
