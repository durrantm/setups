HISTCONTROL=ignoreboth:erasedups HISTSIZE=100000 HISTFILESIZE=200000
shopt -s histappend checkwinsize
PROMPT_COMMAND='history -a'
test -f ~/.bash_functions.sh && . $_
test -f ~/.bash_aliases && . $_
test -f ~/.eq_aliases && . $_
test -f ~/.git-completion.bash && . $_
test -f /etc/bash_completion && ! shopt -oq posix && . /etc/bash_completion
test -f ~/.autojump/etc/profile.d/autojump.sh && . $_
ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G'
HOST='\[\033[02;36m\]\h'; HOST=' '$HOST
TIME='\[\033[01;31m\]\t \[\033[01;32m\]'
LOCATION=' \[\033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \[\033[00;33m\]$(git_branch)\[\033[00m\]\n\$ '
PS1=$TIME$USER$HOST$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'
set -o vi # vi at command line
export EDITOR=vim
export PATH="/usr/local/heroku/bin:$PATH" # Added by Heroku Toolbelt
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/ # for meld mdd 4/19/2014
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)" # friendly for non-text files
[ ${BASH_VERSINFO[0]} -ge 4 ] && shopt -s autocd
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
<<<<<<< HEAD
=======
eval "$(rbenv init -)"
>>>>>>> origin/master
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$HOME/.node/bin:$PATH
test -f tmux && tmux
