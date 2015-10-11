# Environment
export EDITOR=emacs
export TERMINAL=lxterminal
export BROWSER=chromium
shopt -s checkwinsize



# Path
PATH=$HOME/bin:$PATH



# History
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000



# Prompt
source /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
[[ -z "$BS_ENV" ]] || export BS_ENV="<$BS_ENV>"
PS1='[\u@\h \W$(__git_ps1 "(%s)")$BS_ENV]\$ '



# Ruby
source /usr/local/share/chruby/chruby.sh
chruby 2.2
source /usr/local/share/chruby/auto.sh



# Java
export JDK_HOME=/usr/lib/jvm/default/
export JAVA_HOME=/usr/bin/java



# Android
export ANDROID_TMP=$HOME/tmp
export ANDROID_HOME=$HOME/apps/android/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH



# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias e='emacs'

alias be="bundle exec"
alias t='ruby -Itest:lib'

alias gitd="git daemon --export-all --base-path=."

alias aur="yaourt --noconfirm"
alias sys="sudo systemctl"



# Completion
source $HOME/.bash_completion
