# Path to your oh-my-zsh installation.
export ZSH=/Users/luismendoza/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="luismendozamx"

# Plugins
plugins=(rails git ember-cli)

# User configuration
export PATH="$PATH:/Users/luismendoza/google-cloud-sdk/go_appengine:/Users/luismendoza/dev/kiwi/appengine/bin:/Users/luismendoza/.rvm/gems/ruby-2.1.2/bin:/Users/luismendoza/.rvm/gems/ruby-2.1.2@global/bin:/Users/luismendoza/.rvm/rubies/ruby-2.1.2/bin:/Users/luismendoza/google-cloud-sdk/bin:/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/luismendoza/.rvm/bin"

# Export ENV variables for Kiwi
export KIWI_SMTP_USER="hola@usekiwi.com"
export KIWI_SMTP_PASSWORD="BZKNb8nHR3JrTjRvVmpg"
export GOPATH="/Users/luismendoza/dev/kiwi/appengine"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

## Postgres Commands
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgstatus="pg_ctl -D /usr/local/var/postgres status"

## MySql Commands
alias msqlstart="mysql.server start"
alias msqlstop="mysql.server stop"
alias msqlstatus="mysql.server status"
alias kiwidb="mysql -uroot kiwi_dev"

##Solr Commands
alias solrstart="bundle exec sunspot-solr start"
alias solrrun="bundle exec sunspot-solr run"
alias solrstop="bundle exec sunspot-solr stop"

## Rails
alias be="bundle exec"
alias bi="bundle install"
alias rg='rails g'
alias rs='rails s'
alias rc='rails c'
alias rn='rails new'
alias rd='rails dbconsole'
alias rp='rails plugin'
alias ra='rails application'
alias rd='rails destroy'

## rake
alias rt='rake test'
alias rtu='rake test:units'
alias rtf='rake test:functionals'
alias rti='rake test:integration'
alias rr='rake routes'
alias rdbm='rake db:migrate'
alias rdbr='rake db:rollback'

## Utility Aliases
alias ~="cd ~"
alias flushDNS='dscacheutil -flushcache'
alias reload="source ~/.zshrc"

# Personal aliases
alias dotfiles="cd ~/dev/config/dotfiles"
alias dev="cd ~/dev"
alias personal="cd ~/dev/personal"
alias clientes="cd ~/dev/clientes"
alias kiwi="cd ~/dev/kiwi"
alias web="cd ~/dev/kiwi/web"
alias mkt="cd ~/dev/kiwi/mkt-py"
alias admin="cd ~/dev/kiwi/kwadmin"
alias api="cd ~/dev/kiwi/appengine/src/kiwi"
alias locale="cd ~/dev/clientes/local-e"

# Git aliases
alias commit="git commit -am"

# Git functions
gitlog () {
  if (( ! $# )); then
    git log -15 --oneline --decorate --color --graph | cat
  else
    git log -$1 --oneline --decorate --color --graph | cat
  fi
}

# Ember aliases
alias ets="ember test --server"

# Work Aliases
alias rr="rake run"
alias rdeploy="rake deploy"
alias rsdeploy="rake stage:deploy"
alias rkdeploy="rake kiwi:deploy"

# NPM and Bower
alias npmi="npm install"
alias bwi="bower install"
alias npmb="npm install && bower install"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# The next line updates PATH for the Google Cloud SDK.
source '/Users/luismendoza/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/luismendoza/google-cloud-sdk/completion.zsh.inc'
