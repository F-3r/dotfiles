# Environment
export EDITOR=emacs
export TERMINAL=terminator
export BROWSER=firefox
shopt -s checkwinsize



# Path
PATH=$HOME/bin:$PATH



# History
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000000
HISTFILESIZE=1000000
HISTCONTROL=erasedups
PROMPT_COMMAND="history -a"



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

PROMPT_COMMAND="$PROMPT_COMMAND; __git_ps1 '\u@\h:\w' ' '"



# Java
#export JAVA_HOME=$HOME/apps/jdk1.8.0_121
#export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
#export PATH=$JAVA_HOME/bin:$PATH



# Android
export ANDROID_TMP=$HOME/tmp
export ANDROID_HOME=$HOME/apps/android/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH



# Node
export PATH=$HOME/apps/node/bin:$PATH



# Ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh



# SSH: add ssh key to agent the first time a terminal is open
ssh-add -l &> /dev/null || ssh-add



# GCP
export PATH=$HOME/apps/google-cloud-sdk/bin:$PATH
source $HOME/apps/google-cloud-sdk/completion.bash.inc



# fzf
source ~/.fzf/config.bash



# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rgrep='grep -rn --color=auto'

alias be="bundle exec"
alias t='ruby -Itest:lib'

alias gitd="git daemon --export-all --base-path=."

alias sysc="sudo systemctl"
export GPG_TTY=$(tty)




export OVERCOMMIT_DISABLE=1
