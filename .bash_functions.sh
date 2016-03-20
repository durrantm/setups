cdc () {
  for fn in "$@"; do
    for fn do
      if [[ "${fn##*/}" == .* ]]
      then
        source-highlight --src-lang=sh --out-format=esc -i "$fn"
      else
        source-highlight               --out-format=esc -i "$fn"
      fi 2> /dev/null  ||  /bin/cat "$fn"
    done
  done; }; alias cat='cdc' # Keep cat alias here by (cdc) function definition
md () {
  [ $# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!"
  }
bup () {
  [ $# = 1 ] && {
    cp -v ~/$1 ~/Dropnot/setups
    #install -D -v ~/$1 ~/Dropnot/setups/$1
    cd ~/Dropnot/setups
    git fetch
    git merge origin/master
    git add $1
    git commit -m"$1 update"
    git push origin master
    cp -v $1 ~
    cd -; } || echo "Error - no filename passed!"
  }
git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
  }
newalias() {
  echo "alias ${1}" >> $HOME/.bash_aliases; source ~/.bash_aliases;
  }
diffit () {
  colordiff $1 $2
}
squash () {
 yourBranch="$(git symbolic-ref HEAD 2>/dev/null)"
 git checkout master
 git pull
 git checkout -
 git reset $(git merge-base master $yourBranch)
 git add -A
 git commit -v
 }
