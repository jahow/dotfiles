#source ~/git-completion.bash

export EDITOR=vim
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
export PATH=$PATH:/usr/local/share/npm/bin/:/usr/bin/node

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Load in the git branch prompt script.
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM=verbose
export GIT_PS1_DESCRIBE_STYLE=branch
export GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_COMMAND='__git_ps1 "\[\e[1;32m\]\u@\h:\[\e[1;33m\]\w\[\e[1;39m\]" "\[\e[0;39m\]$ "'

