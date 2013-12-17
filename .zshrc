# echo 'zshrc loaded'

autoload -U compinit
compinit

autoload -U select-word-style
select-word-style bash

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME="$HOME/.ec2"
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk.pem`
export EC2_CERT=`ls $EC2_HOME/cert.pem`
export JAVA_HOME=`/usr/libexec/java_home`

# My bins
PATH="$HOME/bin"

# Ruby
PATH="$PATH:$HOME/.rbenv/bin"

# PostgreSQL
PATH="$PATH:/Applications/Postgres.app/Contents/MacOS/bin"

# Hadoop
export HADOOP_CONF_DIR="$HOME/Development/identified/hadoop/etc/hadoop-identified"
PATH="$PATH:/usr/local/hadoop/bin"

# EC2
PATH="$PATH:$EC2_HOME/bin"

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
export SSL_CERT_FILE=/usr/local/Cellar/curl-ca-bundle/1.87/share/ca-bundle.crt
