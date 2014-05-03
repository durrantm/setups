[ -z "$PS1" ] && return # If not running interactively, don't do anything
HISTCONTROL=ignoreboth:erasedups; HISTSIZE=100000; HISTFILESIZE=200000
shopt -s histappend; shopt -s checkwinsize
cdc() { for fn in "$@"; do source-highlight --out-format=esc -o STDOUT -i $fn 2>/dev/null || /bin/cat $fn; done; }
alias cat='cdc' # Keeo this alias here next to the cdc definition above
HOST='\033[02;36m\]\h'
HOST=' '$HOST
export not='~/Dropnot/'
[ ls --version 2>/dev/null | grep -q 'coreutils'] && alias ls='ls --color=always' || alias ls='ls -G'
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)" # make 'less' friendlier for non-text files
git () { [ $1 = commit ] && command git commit -v "${@:2}" || command git "$@"; }
parse_git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
TIME='\033[01;31m\]\t \033[01;32m\]'
LOCATION=' \033[01;34m\]`pwd | sed \
"s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \033[00;33m\]$(parse_git_branch)\[\033[00m\]\n\$ '
PS1=$TIME$USER$HOST$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ "${BASH_VERSINFO[0]}" -ge 4 ] && shopt -s autocd
[ -f ~/.git-completion.bash ] && source ~/.git-completion.bash
[ -f /etc/bash_completion ] && ! shopt -oq posix && . /etc/bash_completion
md () { mkdir -p "$@" && cd "$@"; }
[ -z "$TMUX" ] && export TERM=xterm-256color
export EDITOR=vim
set -o vi # mdd 8/3/13 vi at the command line
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
[[ ! $TERM =~ screen ]] && [ -n "$(type -P tmux)" ] && exec tmux
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/ # for meld mdd 4/19/2014
PATH=$PATH:$HOME/.rvm/bin # Add RVM for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
