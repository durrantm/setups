# ~/.bash_aliases
# One letter quickies:
alias p='pwd'
alias h='history | tail'
alias x='exit'
alias l='ls -alFtrG'
alias s='cd ..'
alias g='git status'
# Various
alias la='ls -A'
alias lsd='ls -Fd .*'
alias hg='history | grep'
alias mv='mv -i'
alias mvv='mv -iv'
alias rm='rm -I' # prompt if more than 3 files
alias zap='rm -i'
alias vl='vi `ls -t | head -1`' # edit last file
alias {ack,ak}='ack-grep'
alias ba='. ~/.bash_aliases'
alias ggg='alias | grep "^alias g"'
alias cdb='cd -'
alias cdu='cd ..'
alias cpr='cp -r'
alias cpv='cp -v'
alias bwcat="/bin/cat"
alias ccat="source-highlight --out-format=esc -o STDOUT -i"
# color (for ubuntu)
#if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
#  export TERM=xterm-256color
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
CODEBASE="$WORKBASE/code"
RUBYCODEBASE="$CODEBASE/ruby__rails"
alias work="cd $WORKBASE"
alias {play,code}="cd $CODEBASE/"
alias {rubycode,rcd}="cd $RUBYCODEBASE/ruby"
alias {ruby_quiz,rubyquiz,rq}="cd $RUBYCODEBASE/ruby/best_of_ruby_quiz"
alias {railscode,ror}="cd $RUBYCODEBASE/rails/"
alias dmc="cd $RUBYCODEBASE/rails/dmc"
alias zc="cd $RUBYCODEBASE/rails/zipcar"
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
alias gst='git status -sb' # Warning: gst conflicts with gnu-smalltalk (when used).
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b '
alias ga='git add '
alias gc='git commit'
alias gm='git merge '
alias gpl='git pull '
alias gplom='git pull origin master'
alias gps='git push '
alias gpsom='git push origin master'
alias gg='git grep '
alias grv='git remote -v'
alias gls="git log -S '" # Search for content, e.g. css
alias gcv='git comit' # This is a git alias for git -v commit. Mispell of 'comit' is intentional see git config below.
# git aliases
git config --global alias.comit 'commit -v'
# vim
alias v='vim'
#
# tmux
alias tn='tmux set -g mode-mouse on'
alias tf='tmux set -g mode-mouse off'
#
