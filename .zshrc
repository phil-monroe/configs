# echo 'zshrc loaded'

autoload -U compinit
compinit

autoload -U select-word-style
select-word-style bash

# Setup Amazon EC2 Command-Line Tools`
# export JAVA_HOME=`/usr/libexec/java_home`

# My bins
PATH="$HOME/bin"

# Ruby
PATH="$PATH:$HOME/.rbenv/bin"

# PostgreSQL
# PATH="$PATH:/Applications/Postgres.app/Contents/MacOS/bin"
export PGDATA="./.postgres"


# Standard stuff
PATH="$PATH:/usr/local/bin"
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/bin"
PATH="$PATH:/sbin"

export PATH


# RBENV
eval "$(rbenv init -)"

# Project Bins
export PATH="./bin:$PATH"

# Ruby SSL Fix
# export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export MAKE_OPTS=-j8