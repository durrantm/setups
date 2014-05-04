[ -z "$PS1" ] && return # If not running interactively, don't do anything
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=100000
HISTFILESIZE=200000
shopt -s histappend
shopt -s checkwinsize
cdc() { for fn in "$@"; do source-highlight --out-format=esc -o STDOUT -i $fn 2>/dev/null || /bin/cat $fn; done; }
alias cat='cdc' # Keeo this alias here next to the cdc definition above
HOST='\033[02;36m\]\h'
HOST=' '$HOST
if ls --version 2>/dev/null | grep -q 'coreutils'; then alias ls='ls --color=always'
else alias ls='ls -G'
fi
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)" # make less more friendly for non-text input files
git () { [ $1 = commit ] && command git commit -v "${@:2}" || command git "$@"; }
parse_git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
TIME='\033[01;31m\]\t \033[01;32m\]'
LOCATION=' \033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \033[00;33m\]$(parse_git_branch)\[\033[00m\]\n\$ '
PS1=$TIME$USER$HOST$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'
alias alert='notify-send -u low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
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
[[ -s /home/durrantm/.autojump/etc/profile.d/autojump.sh ]] && source /home/durrantm/.autojump/etc/profile.d/autojump.sh
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM as a function
