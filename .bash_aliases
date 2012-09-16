# ~/.bash_aliases

# ls variants
#alias l='ls -CF' 
alias la='ls -A' 
alias l='ls -alFtr' 
alias lsd='ls -d .*' 

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

# Directories
alias s='cd ..'
alias play='cd ~/play/'

# Rails
alias src='script/rails console'
alias srs='script/rails server'
alias srst='script/rails server thin'
alias raked='rake db:drop db:create db:migrate db:seed' 
alias rvm-restart='source '\''/home/durrantm/.rvm/scripts/rvm'\'''
alias rrg='rake routes | grep '
alias rspecd='rspec --drb '
#
# DropBox - syncd
WORKBASE="~/Dropbox/97_2012/work"
alias work="cd $WORKBASE"
alias code="cd $WORKBASE/ror/code"
#
# DropNot - NOT syncd !
WORKBASE_GIT="~/Dropnot"
alias {dropnot,not}="cd $WORKBASE_GIT"
alias {webs,ww}="cd $WORKBASE_GIT/webs"
alias {setups,docs}="cd $WORKBASE_GIT/setups"
alias {linker,lnk}="cd $WORKBASE_GIT/webs/rails_v3/linker"
#
# git
alias {gsta,gst}='git status' # Warning: gst conflicts with gnu-smalltalk (when used).
alias {gbra,gb}='git branch'
alias {gco,go}='git checkout'
alias {gcob,gob}='git checkout -b '
alias {gadd,ga}='git add '
alias {gcom,gc}='git commit'
alias {gpul,gl}='git pull '
alias {gpus,gh}='git push '
alias glom='git pull origin master'
alias ghom='git push origin master'
alias gg='git grep '
alias gri='git rebase -i HEAD~10'
alias grh='git reset --hard '
#
# vim
alias v='vim'
#
# tmux
alias {ton,tn}='tmux set -g mode-mouse on'
alias {tof,tf}='tmux set -g mode-mouse off'
#
# dmc
alias {dmc,dm}='cd ~/Dropnot/webs/rails_v3/dmc/'
alias wf='cd ~/Dropnot/webs/rails_v3/dmc/dmWorkflow'
alias ws='cd ~/Dropnot/webs/rails_v3/dmc/dmStaffing'
