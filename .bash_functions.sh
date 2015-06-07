cdc() {
  for fn in "$@"; do
    source-highlight --out-format=esc -o STDOUT -i $fn 2>/dev/null || /bin/cat $fn
  done; }; alias cat='cdc' # Keep cat alias here by (cdc) function definition
md () {
  [ $# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!"
  }
bup () {
  [ $# = 1 ] && {
    cp -v ~/$1 ~/Dropnot/setups
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
