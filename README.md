setups
======

## Setup files

### Highlights

#### Aliases - one letter favorites

    alias a='. ~/.bash_aliases'
    alias b="cd -"
    alias f='git fetch'
    alias g='git status'
    alias h='history | tail -15'
    alias l='ls -alFtrG'
    alias p='pwd'
    alias r='rspec spec'
    alias v='vim .'
    alias x='exit'

#### Functions

    Example: function to maintain setup files

    bup () {
      [ $# = 1 ] && {
        cp -v ~/$1 ~/Dropnot/setups
        #install -D -v ~/$1 ~/Dropnot/setups/$1
        cd ~/Dropnot/setups
        git fetch
        git merge origin/master
        git add $1
        git commit -m"$1 update"
        git push -f origin master
        cp -v $1 ~
        cd -; } || echo "Error - no filename passed!"
      }

#### Setup Files

    Example: compact and universal .bashrc

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
    export PATH="/usr/local/heroku/bin:$PATH" # Added by the Heroku Toolbelt
    export PYTHONPATH=/usr/local/lib/python2.7/site-packages/ # for meld mdd 4/19/2014
    [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)" # friendly for non-text files
    [ ${BASH_VERSINFO[0]} -ge 4 ] && shopt -s autocd
    tmux
    export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    export PATH=$HOME/.node/bin:$PATH


