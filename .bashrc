# Git aliases.
if hash git 2>/dev/null; then
  alias gitco='git commit -m'
  alias gitch='git checkout'
  alias gitcl='git clone'
  alias gitad='git add'
  alias gitpl='git pull'
  alias gitps='git push'
  alias gitst='git status'
  alias gitbr='git branch'
  alias gitdi='git diff'
  alias gitfe='git fetch'
  alias gitgr='git grep'
  alias gitin='git init'
  alias gitme='git merge'
  alias gitlo='git log'
  alias gitfe='git fetch'
fi

# Make the back command shorter.
back() {
  if [ $1 == 1 ]; then
    cd ../
  elif [ $1 == 2 ]; then
    cd ../../
  elif [ $1 == 3 ]; then
    cd ../../../
  elif [ $1 == 4 ]; then
    cd ../../../../
  elif [ $1 == 5 ]; then
    cd ../../../../../
  elif [ $1 == 6 ]; then
    cd ../../../../../../
  else
    cd ~
  fi
}
