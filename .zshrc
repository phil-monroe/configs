echo 'zshrc loaded'

export LANG="en_US.UTF-8"
export EDITOR="/usr/local/bin/atom --wait"
export MAKE_OPTS=-j8

# Ruby
source $HOME/.zsh/ruby_tuning.zsh

# Node
export NODE_PATH=/usr/local/lib/node_modules

# GO
export GOPATH="$HOME/Development/golang"

# Java
use_homebrew_java 'java11'

# PostgreSQL
export PGDATA="./.postgres"

# Android
export ANDROID_HOME=${HOME}/Library/Android/sdk

# Amazon AWS CLI
source /opt/homebrew/share/zsh/site-functions/_aws

# ASDF
source $(/opt/homebrew/bin/brew --prefix asdf)/asdf.sh

# rbenv
eval "$(/opt/homebrew/bin/rbenv init - zsh)"

# Customizations
source $HOME/.zsh/path.zsh
source $HOME/.zsh/history.zsh
