WORKBASE="~/Dropbox/95_2014/work"
WORKBASE_GIT="~/Dropnot"
# One letter quickies:
alias a='. ~/.bash_aliases'
alias b="cd -"
alias c="cd $WORKBASE/code"
alias d="~/Dropbox"
alias f='git fetch'
alias g='git status' # Warning: gst conflicts with gnu-smalltalk (when used).
alias h='history | tail -15'
alias l='ls -alFtrG'
alias n="cd $WORKBASE_GIT" # dropNot
alias p='pwd'
alias q="cd $WORKBASE/code/ruby__rails/ruby/ruby_quiz"
alias r='rspec spec'
alias s='git fetch; git reset --hard origin/staging'
alias v='vim .'
alias w="cd $WORKBASE_GIT/webs"
alias x='exit'
alias z='cd ~/zipcar'
# Two letter:
alias hg='history | tail -200 | grep '
alias la='ls -A'
alias ll='ls -al'
alias le='less '
alias mv='mv -i'
# Other:
alias hga='history | grep' # All history
alias mvv='mv -iv'
alias zap='rm -i'
alias {ack,ak}='ack-grep'
alias hon='shopt -s histverify' # For scrolling back
alias hof='shopt -u histverify'
alias cpv='cp -v'
alias lsd='ls -Fd .*'
alias play='cd ~/play/'
alias mdd="cd $WORKBASE_GIT/webs/michaeldurrant.com"
#color
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# Rails
alias src='script/rails console'
alias srs='script/rails server'
alias raked='rake db:drop db:create db:migrate db:seed'
alias rvm-restart='source '\''/home/durrantm/.rvm/scripts/rvm'\'''
alias rrg='rake routes | grep '
alias rspecd='rspec --drb '
# DropBox - syncd
alias work="cd $WORKBASE"
# DropNot - NOT syncd !
alias {setups,docs}="cd $WORKBASE_GIT/setups"
alias {linker,lnk}="cd $WORKBASE_GIT/webs/rails_apps/linker"
# git
alias ga='git add '
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b '
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
# tmux
alias tn='tmux set -g mode-mouse on'
alias tf='tmux set -g mode-mouse off'
#
# zipcar
alias zrc='cd ~/zipcar/zipcar-rails-core'
alias zra='cd ~/zipcar/zipcar-rails-admin-api'
alias ra='cd ~/zipcar/reservations-api'
alias ru='cd ~/zipcar/reservations-ui'
alias dummy='cd /Users/mdurrant/zipcar/zipcar-rails-core/spec/dummy'
alias s20='ssh uscamwebq20.boston.zipcar.com'
alias s96='ssh uscamwebd96.boston.zipcar.com'
# git aliases
git config --global alias.comit 'commit -v'
