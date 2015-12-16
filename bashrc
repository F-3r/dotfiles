# Environment
export EDITOR="emacs -nw"
export TERMINAL=lxterminal
export BROWSER=chromium
shopt -s checkwinsize



# Path
export PATH=$HOME/bin:/$HOME/apps/node/bin:/usr/local/heroku/bin:$PATH



# History
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000



# Prompt

## git prompt
[[ -e /usr/share/git/completion/git-prompt.sh ]] && . /usr/share/git/completion/git-prompt.sh
[[ -e /etc/bash_completion.d/git-prompt       ]] && . /etc/bash_completion.d/git-prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

PS1='[\u@\h \W$(__git_ps1 "(%s)")$NV]\$ '



# npm
PATH=`npm -g bin`:$PATH



# Ruby
[[ -z "$NV" ]] && { 
  source /usr/local/share/chruby/chruby.sh
  chruby 2
  source /usr/local/share/chruby/auto.sh
}



# Java
export JAVA_HOME=$HOME/apps/java
export PATH=$JAVA_HOME/bin:$PATH



# Android
export ANDROID_HOME=$HOME/apps/android/sdk
export PATH=$HOME/apps/android-studio/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH



# Completion
. /usr/share/bash-completion/bash_completion
. $HOME/.bash_completion



# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias e='XLIB_SKIP_ARGB_VISUALS=1 emacs' #elementary OS shit, breaks emacs

alias be="bundle exec"
alias t='ruby -Itest:lib'

alias gitd="git daemon --export-all --base-path=."

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
