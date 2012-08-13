# ~/.bash_aliases

# ls variants
#alias l='ls -CF' 
alias la='ls -A' 
alias l='ls -alFtr' 
alias lsd='ls -d .*' 
alias lsp='ls -prune'

# Various
alias h='history | tail'
alias hg='history | grep'
alias mv='mv -i' 
alias zap='rm -i'
alias nhistory="history | tr -s ' ' | cut -d' ' -f3-"
#
# One letter quickies:
alias p='pwd'
alias x='exit'

# Directories
alias s='cd ..'
alias play='cd ~/play/'

# Rails
alias src='script/rails console'
alias srs='script/rails server'
alias raked='rake db:drop db:create db:migrate db:seed' 
alias rvm-restart='source '\''/home/durrantm/.rvm/scripts/rvm'\'''
alias rrg='rake routes | grep'
#
# DropBox - syncd
WORKBASE="~/Dropbox/97_2012/work"
alias work="cd $WORKBASE"
alias code="cd $WORKBASE/ror/code"
#
# DropNot - NOT syncd !
WORKBASE_GIT="~/Dropnot"
alias dropnot="cd $WORKBASE_GIT"
alias webs="cd $WORKBASE_GIT/webs"
alias setups="cd $WORKBASE_GIT/setups_and_docs"
alias docs="cd $WORKBASE_GIT/setups_and_docs"
alias linker="cd $WORKBASE_GIT/webs/rails_v3/linker"
#
# git
alias gsta='git status'
alias gadd='git add '
alias gcom='git commit'
alias gpul='git pull '
alias gpus='git push '
alias gbra='git branch'
alias gche='git checkout '
alias gchm='git checkout master'
#
# vim
alias v='vim'
#
# tmux
alias ton='tmux set -g mode-mouse on'
alias tof='tmux set -g mode-mouse off'
# dmc
alias dmc='cd ~/dmc'
alias wf='cd /Users/durrantm/dmc/dmWorkflow' # wf for Workflow
alias ws='cd /Users/durrantm/dmc/dmStaffing' # ws for Staffing
alias wd='cd /Users/durrantm/dmc/teacher_eval' # wd for Develop
#
# tmux Terminal Multiplexer
alias tmux='/opt/bin/tmux'
#
# Rails, clear the database for running tests.
alias dbp='rake db:test:prepare'
#
# Rails run tests with spork using --drb
alias rspecd='rspec --drb ' 
#
# foreman, uses port 5000 and redis
alias fs='foreman start'
