# Environment
export EDITOR=emacs
export TERMINAL=terminator
export BROWSER=chromium
shopt -s checkwinsize



# Path
PATH=$HOME/bin:$PATH



# History
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000




# Bash completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
[[ -f  $HOME/.bash_completion ]] && source $HOME/.bash_completion




# Prompt
[[ -f /usr/share/git/completion/git-prompt.sh ]] && source /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

PROMPT_COMMAND='__git_ps1 "\u@\h:\w" " "'



# Java
export JAVA_HOME=$HOME/apps/jre1.8.0_101/bin
export PATH=$JAVA_HOME:$PATH



# Android
export ANDROID_TMP=$HOME/tmp
export ANDROID_HOME=$HOME/apps/android/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH



# Node
export PATH=$HOME/apps/node/bin:$PATH



# Ruby
[[ -z "$NV" ]] && {
  source /usr/local/share/chruby/chruby.sh
  chruby 2.3.0
  source /usr/local/share/chruby/auto.sh
}




# SSH: add ssh key to agent the first time a terminal is open
ssh-add -l &> /dev/null || ssh-add 


# helper to open a file in emacs at a certain line using "file:line:column" syntax
function emacs_at_line() {
  emacs $(echo $1 | ruby -ne 'file,line = *$_.split(":")[0..1]; puts "+#{line} #{file}"')
}

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias e='emacs_at_line'

alias be="bundle exec"
alias t='ruby -Itest:lib'

alias gitd="git daemon --export-all --base-path=."

alias sysc="sudo systemctl"
