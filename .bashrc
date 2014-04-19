[ -z "$PS1" ] && return # If not running interactively, don't do anything
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=100000
HISTFILESIZE=200000
shopt -s histappend
shopt -s checkwinsize
cdc() {
  for fn in "$@"; do
    source-highlight --out-format=esc -o STDOUT -i $fn 2>/dev/null || /bin/cat $fn;
  done
}
alias cat='cdc' # Put this alias here to be next the cdc definition above.
# make less more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# Add -v as a 'default' to git commit
git () {
  if [[ $1 = commit ]]
  then command git commit -v "${@:2}"
  else command git "$@"
  fi
}
# For the PS1 prompt...
parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
COLON=' ' # was '\033[00m\]:'
TIME='\033[01;31m\]\t'$COLON
USER='\033[02;32m\]\u'$COLON
HOST='\033[02;36m\]\h'$COLON'\033[01;34m\]'
LOCATION='`pwd | sed "s#\(/[^/]\+/[^/]\+/[^/]\+/\).*\(/[^/]\+/[^/]\+\)/\?#\1_\2#g"`'
BRANCH=$COLON'\033[00;33m\]$(parse_git_branch)\[\033[00m\]\n\$ '
PS1=$TIME$USER$HOST$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'
alias alert='notify-send -u low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi
# Automatic CD'ing
[ "${BASH_VERSINFO[0]}" -ge 4 ] && shopt -s autocd
# Bash completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then . /etc/bash_completion; fi
# Git completion
if [ -f ~/.git-completion.bash ]; then . ~/.git-completion.bash; fi
# 10/22/13 function "md dirname" will make & cd into a directory called dirname Includes dirs
md () { mkdir -p "$@" && cd "$@"; }
[ -z "$TMUX" ] && export TERM=xterm-256color
if ls --color=auto -d / >/dev/null 2>&1; then alias ls='ls --color=auto'; fi
export EDITOR=vim
set -o vi # mdd 8/3/13 vi at the command line
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# mdd Terminal Multiplexor 6/15/2012
if [[ ! $TERM =~ screen ]]; then
  if [ -n "$(type -P tmux)" ]; then
    exec tmux
  fi
fi
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/ # for meld mdd 4/19/2014
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
