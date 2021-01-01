# echo 'zshrc loaded'

export LANG="en_US.UTF-8"
export EDITOR=atom
export MAKE_OPTS=-j8

# Ruby
source $HOME/.zsh/ruby_tuning.zsh

# Node
export NODE_PATH=/usr/local/lib/node_modules

# GO
export GOPATH="$HOME/Development/golang"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# PostgreSQL
export PGDATA="./.postgres"

# Android
export ANDROID_HOME=${HOME}/Library/Android/sdk

# Amazon AWS CLI
source /usr/local/share/zsh/site-functions/_aws

# ASDF
source $(brew --prefix asdf)/asdf.sh

source $HOME/.zsh/path.zsh
source $HOME/.zsh/history.zsh
