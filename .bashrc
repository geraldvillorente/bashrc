# Drupal
alias cc='drush cc all'
alias stat='drush status'
alias dl='drush dl'
alias en='drush en -y'
alias dis='drush dis -y'
alias uninstall='drush pm-uninstall'
alias fra='drush fra -y'
alias fr='drush fr'
alias vset='drush vset'
alias vdel='drush vdel'
alias cli='drush sql-cli'
alias create='drush sql-create'
alias uli='drush uli'
alias pmi='drush pmi'
alias ws='drush ws'
alias updb='drush updb -y'

# Apache2
alias a2reload='/etc/init.d/apache2 reload'
alias a2restart='/etc/init.d/apache2 restart'
alias a2stop='/etc/init.d/apache2 stop'
alias a2start='/etc/init.d/apache2 start'

# MySQL
alias myrestart='/etc/init.d/mysql restart'
alias myreload='/etc/init.d/mysql reload'
alias mystop='/etc/init.d/mysql stop'
alias mystart='/etc/init.d/mysql start'
sqlcli() {
  if [ -n $1 ]; then
    mysql -u $1
  else
    echo "MySQL username required."
  fi
}
sqlwatch() {
  if [ -n $1 ]; then
    mysql -u$1 --exec="SHOW PROCESSLIST"
  else
    echo "MySQL username required."
  fi
}

# Log
alias errorlog='tailf /var/log/apache2/error.log'
alias accesslog='tailf /var/log/apache2/access.log'

# Process
alias process='ps -aux'

# Permissions
alias perm='ls -l'

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
