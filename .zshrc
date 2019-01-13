# echo 'zshrc loaded'

autoload -U compinit
compinit

autoload -U select-word-style
select-word-style bash

# Setup Amazon AWS CLI`
# export JAVA_HOME=`/usr/libexec/java_home`
source /usr/local/share/zsh/site-functions/_aws

# My bins
PATH="$HOME/bin"

# Ruby
PATH="$PATH:$HOME/.rbenv/bin"

# GO
export GOPATH="$HOME/Development/golang"
PATH="$PATH:$GOPATH/bin"

# PostgreSQL
# PATH="$PATH:/Applications/Postgres.app/Contents/MacOS/bin"
export PGDATA="./.postgres"

# Android
export ANDROID_HOME=${HOME}/Library/Android/sdk

# curl via homebrew
PATH="$PATH:/usr/local/opt/curl/bin"

# Standard stuff
PATH="$PATH:/usr/local/bin"
PATH="$PATH:/usr/local/sbin"

PATH="$PATH:/usr/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/bin"
PATH="$PATH:/sbin"

PATH="${PATH}:${ANDROID_HOME}/tools"
PATH="${PATH}:${ANDROID_HOME}/platform-tools"

export PATH


# RBENV
eval "$(rbenv init -)"

# Project Bins
export PATH="./bin:$PATH"

# Ruby SSL Fix
# export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export MAKE_OPTS=-j8

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export BUNDLE_PATH=./.bundle
