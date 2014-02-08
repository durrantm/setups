# ~/.bashrc: executed by bash(1) for non-login shells.

MY_SNAP=96 # <-- Change this if the db snap number changes !!!!

export ORACLE_SPARSE="zipcar_base/nokia548@snap$MY_SNAP"
export ORACLE_LUSH="zipcar/nokia548@snap$MY_SNAP"

export ORACLE_DEV_USERNAME=zipcar
export ORACLE_DEV_PASSWORD=nokia548
export ORACLE_TEST_USERNAME=zipcar_base
export ORACLE_TEST_PASSWORD=nokia548
export ORACLE_CI_PASSWORD=nokia548

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=100000
HISTFILESIZE=200000

shopt -s checkwinsize

cdc() {
  for fn in "$@"; do
    source-highlight --out-format=esc -o STDOUT -i $fn 2>/dev/null || /bin/cat $fn;
  done
}
alias cat='cdc' # Put this alias here to be next the cdc definition above.

gd() {
   git diff -r --color=always "$@"
}

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

case "$TERM" in
    xterm*) color_prompt=yes;;
esac

force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

PS1='\u...$PWD\n\$ '

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

shopt -s autocd

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
# 10/22/2013 md will make a directory and cd into it!  Also will make intermediate directories.
md () { mkdir -p "$@" && cd "$@"; }

[ -z "$TMUX" ] && export TERM=xterm-256color

export EDITOR=vim

# mdd 8/3/13 vi at the command line
set -o vi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# For grunt (Jasmine headless testing)
export PATH=$PATH:/usr/local/share/npm/bin

# mdd Terminal Multiplexor 6/15/2012
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi

# git auto complete
. ~/zipcar/git-bash-completion/git-completion.bash

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
PS1="\[\e[1;91m\][\u@\h \w]\[\e[0m\]$GREEN\$(parse_git_branch)$NO_COLOUR\n\$ "

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
