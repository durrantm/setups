# ls variants
#alias l='ls -CF'
alias la='ls -A'
alias l='ls -alFtrG'
alias lsd='ls -Fd .*'

# Various
alias h='history | tail'
alias hg='history | grep'
alias mv='mv -i'
alias zap='rm -i'
# One letter quickies:
alias p='pwd'
alias x='exit'
alias {ack,ak}='ack-grep'
alias ba='. ~/.bash_aliases'
alias hon='shopt -s histverify'
alias hof='shopt -u histverify'

# Directories
alias s='cd ..'
alias play='cd ~/play/'

# color (for ubuntu)
#if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
# export TERM=xterm-256color
#fi

# Rails
alias src='script/rails console'
alias srs='script/rails server'
alias raked='rake db:drop db:create db:migrate db:seed'
alias rvm-restart='source '\''/home/durrantm/.rvm/scripts/rvm'\'''
alias rrg='rake routes | grep '
alias rspecd='rspec --drb '
#
# DropBox - syncd
alias box="~/Dropbox"
WORKBASE="~/Dropbox/96_2013/work"
alias work="cd $WORKBASE"
alias code="cd $WORKBASE/ror/code"
#
# DropNot - NOT syncd !
WORKBASE_GIT="~/Dropnot"
alias {dropnot,not}="cd $WORKBASE_GIT"
alias {webs,ww}="cd $WORKBASE_GIT/webs"
alias {setups,docs}="cd $WORKBASE_GIT/setups"
alias {linker,lnk}="cd $WORKBASE_GIT/webs/rails_apps/linker"
alias mdd="cd $WORKBASE_GIT/webs/michaeldurrant.com"
#
# git
alias {g,gs,gst}='git status' # Warning: gst conflicts with gnu-smalltalk (when used).
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b '
alias gf='git fetch'
alias ga='git add '
alias gc='git commit'
alias gcv='git comit' # This is a git alias for git -v commit. Mispell of 'comit' is intentional.
alias gpull='git pull '
alias gm='git merge '
alias gpush='git push '
alias gpullom='git pull origin master'
alias gpushom='git push origin master'
alias gg='git grep '
alias gl='git log --pretty=oneline'
alias gls='git log --pretty=oneline | head -8'
alias glp='git log --patch ' # git info for a single file.
alias glps='git log --path --stat'
alias glss="git log -S '" # Search for content, e.g. css
alias glsd='git log --simplify_by_decoration 'i # Last commit for each branch
alias glsd='git log --all --simplify_by_decoration 'i # Last commit for all branches
alias {gal,ggg}='alias | grep "^alias g"'
alias grm='git reset --hard origin/master'
alias gfrm='git fetch; git reset --hard origin/master'
alias grs='git reset --hard origin/staging'
alias gfrs='git fetch; git reset --hard origin/staging'
#
# vim
alias v='vim'
#
# tmux
alias tn='tmux set -g mode-mouse on'
alias tf='tmux set -g mode-mouse off'
#
# zipcar
alias zx='cd ~/zipcar'
alias zrc='cd ~/zipcar/zipcar-rails-core'
alias zra='cd ~/zipcar/zipcar-rails-admin-api'
alias ra='cd ~/zipcar/reservations-api'
alias ru='cd ~/zipcar/reservations-ui'
alias dummy='cd /Users/mdurrant/zipcar/zipcar-rails-core/spec/dummy'

# git aliases
git config --global alias.comit 'commit -v'
