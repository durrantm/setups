WORKBASE="~/Dropbox/95_2014/work"
WORKBASE_GIT="~/Dropnot"
# One letter quickies:
alias a='. ~/.bash_aliases'
alias b="cd -"
alias c="cd $WORKBASE/code"
alias d="~/Dropbox"
alias f='git fetch'
alias g='git status'
alias h='history | tail -15'
alias l='ls -alFtrG'
alias m="cd $WORKBASE_GIT/webs/michaeldurrant.com"
alias n="cd $WORKBASE_GIT" # dropNot
alias p='pwd'
alias q="cd $WORKBASE/code/ruby__rails/ruby/ruby_quiz"
alias r='rspec spec'
alias s="cd $WORKBASE_GIT/setups"
alias v='vim .'
alias w="cd $WORKBASE_GIT/webs"
alias x='exit'
alias z='cd ~/zipcar'
# Two letter:
alias hg='history | tail -200 | grep -i'
alias la='ls -A'
alias le='less '
alias mv='mv -i'
# Easy update of .bashrc and .bash_aliases
alias bup='cp ~/.bashrc ~/Dropnot/setups; cd ~/Dropnot/setups; git add .bashrc; git commit -m".bashrc update"; git push origin master;'
alias bap='cp ~/.bash_aliases ~/Dropnot/setups; cd ~/Dropnot/setups; git add .bash_aliases; git commit -m"Aliases update"; git push origin master;'
# Other:
alias hga='history | grep -i' # All history
alias mvv='mv -iv'
alias rmi='rm -i'
alias rmv='rm -v'
alias rmiv='rm -iv'
alias hon='shopt -s histverify' # For scrolling back
alias hof='shopt -u histverify'
alias cpr='cp -r'
alias cpv='cp -v'
alias cprv='cp -rv'
alias lsd='ls -Fd .*'
alias lsd1='ls -d1 '
alias ldl='ls -d1'
alias play='cd ~/play/'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# Rails
alias rc='rails console'
alias rs='rails server'
# DropBox - syncd
alias work="cd $WORKBASE"
# DropNot - NOT syncd !
alias lnk="cd $WORKBASE_GIT/webs/rails_apps/linker"
# git
alias ga='git add '
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b '
alias gc='git commit'
alias gcv='git comit' # This is a git alias for git -v commit. Mispell intentional.
alias gf='git fetch'
alias gpull='git pull '
alias gpush='git push '
alias gpullom='git pull origin master'
alias gpushom='git push origin master'
alias gg='git grep '
alias gl='git log --pretty=oneline | head -8'
alias gla='git log --pretty=oneline' # a=all
alias gits='alias | grep "^alias g"'
alias grm='git reset --hard origin/master'
alias gfrm='git fetch; git reset --hard origin/master'
alias grs='git reset --hard origin/staging'
alias gfrs='git fetch; git reset --hard origin/staging'
alias gd='git diff'
alias gdt='git difftool '
alias gdtd='git difftool -d'
alias gm='git merge '
alias gmt='git mergetool'
# tmux
alias tn='tmux set -g mode-mouse on'
alias tf='tmux set -g mode-mouse off'
# zipcar
ZIPCAR_BASE='~/zipcar'
alias zaa="cd $ZIPCAR_BASE/zipcar-rails-admin-api"
alias zra="cd $ZIPCAR_BASE/reservations-api"
alias zrc="cd $ZIPCAR_BASE/zipcar-rails-core"
alias zag="cd $ZIPCAR_BASE/zipcar-auth-gem"
alias zrt="cd $ZIPCAR_BASE/tools"
alias zru="cd $ZIPCAR_BASE/reservations-ui"
alias dummy="cd $ZIPCAR_BASE/zipcar-rails-core/spec/dummy"
alias s20="ssh uscamwebq20.boston.zipcar.com"
alias s96="ssh uscamwebd96.boston.zipcar.com"
alias qa="cd $ZIPCAR_BASE/tools/qa/ui_auto"
alias auto="cd $ZIPCAR_BASE/tools/qa/ui_auto"
# git aliases
git config --global alias.comit 'commit -v'
