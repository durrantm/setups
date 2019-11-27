WORKBASE="~/Dropbox/90_2019/work"
CODE="$WORKBASE/code"
AWS_MICHAEL_CODE="$CODE/aws/m1_snap2web.com/Michael"
# One letter quickies:
alias a='. ~/.bash_aliases'
alias b="cd -"
alias c="cd $CODE"
alias d="cd ~/Dropbox"
alias f='git fetch'
alias g='git status'
alias h='history | tail -15'
alias l='ls -alFtrG'
alias p='pwd'
alias s="cd ~/Dropnot/setups"
alias t='tmux'
alias v='vim .'
alias x='exit'
alias z='git add . && git commit -m"fix" && git push'
# Two letter:
alias aw="cd $CODE/aws"
alias awm="cd $AWS_MICHAEL_CODE"
alias awc="cd $AWS_MICHAEL_CODE/cli_scripts"
alias awlr="cd $AWS_MICHAEL_CODE/lambdas/ruby"
alias awlp="cd $AWS_MICHAEL_CODE/lambdas/python"
alias awln="cd $AWS_MICHAEL_CODE/lambdas/node"
alias di='docker image'
alias dis='docker images'
alias dc='docker container'
alias dcs='docker container ls'
alias hg='history | tail -200 | grep -i'
alias gg='git grep '
alias la='ls -A'
alias le='less '
alias mv='mv -i'
# Other:
alias rub="cd $CODE/ruby/"
alias fix='git commit -m"fix" && git push'
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
alias play='cd ~/play/'
alias please='sudo $(history -p !!)'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cda="cd $WORKBASE/aws"
alias python='python3'
# git - general commands.  For other commands that need a branch name, use
#       your ~/.gitconfig file as git aliases allow branch name tab completion
alias gcom='git checkout master'
alias gcob='git checkout -b '
alias ga='git add '
alias gd='git diff'
alias gc='git commit'
alias gcv='git commit -v' # This is a git alias for git -v commit (verbose)
alias gcam='git commit --amend'
alias gcah='git commit --amend -C HEAD'
alias gf='git fetch'
alias gpull='git pull '
alias gpush='git push '
alias go='git push origin master'
alias gg='git grep '
alias gl='git log'
alias gl1='git log --oneline'
alias glp='git log -p'
alias glf='git log --name-status'
alias gits='alias | grep "^alias g.*git.*$"'
alias grm='git reset --hard origin/master'
alias gfrm='git fetch; git reset --hard origin/master'
# tmux
alias tn='tmux set -g mode-mouse on'
alias tf='tmux set -g mode-mouse off'
# git aliases
git config --global alias.comit 'commit -v'
git config --global alias.co 'checkout'
git config --global alias.cob 'checkout -b'
git config --global alias.set-upstream '!git branch --set-upstream-to=origin/`git symbolic-ref --short HEAD`'
