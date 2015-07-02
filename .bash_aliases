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
alias t='tmux'
alias v='vim .'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias w="cd $WORKBASE_GIT/webs"
alias x='exit'
alias z='cd ~/zipcar'
# Two letter:
alias hg='history | tail -200 | grep -i'
alias la='ls -A'
alias le='less '
alias mv='mv -i'
# Other:
alias alert='notify-send -u low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[    ;&|]\s*alert$//'\'')"'
alias hga='history | grep -i' # All history
alias crr="cd $WORKBASE/code/ruby__rails/rails"
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
alias br='bundle exec rspec spec'
alias bs='bundle exec rails server'
alias ber='bundle exec rspec '
# DropBox - syncd
alias work="cd $WORKBASE"
# DropNot - NOT syncd !
alias lnk="cd $WORKBASE_GIT/webs/rails_apps/linker"
# git
alias ga='git add '
alias gb='git branch'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcob='git checkout -b '
alias gc='git commit'
alias gcv='git comit' # This is a git alias for git -v commit. Mispell intentional.
alias gf='git fetch'
alias gpull='git pull '
alias gpush='git push '
alias gpom='git push '
alias gpullom='git pull origin master'
alias go='git push origin master'
alias gh='git push heroku master'
alias gg='git grep '
alias gl='git log'
alias gla='git log --pretty=oneline'
alias gls='git log --name-status'
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
EVERQUOTE_BASE='~/eq'
# alias lynx="cd $EVERQUOTE_BASE/lynx"
# git aliases
git config --global alias.comit 'commit -v'
alias fffff='fdfdfdf'
