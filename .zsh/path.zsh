# Project Bins
# https://thoughtbot.com/blog/git-safe
# PATH="./bin:$PATH"
PATH=".git/safe/../../bin"

# My bins
PATH="$PATH:$HOME/bin"

# Homebrew
PATH="/opt/homebrew/bin:$PATH"

# rbenv
PATH="$PATH:/Users/phil/.rbenv/shims"

# ASDF
PATH="$PATH:${$(/opt/homebrew/bin/brew --prefix asdf)}/libexec/bin"
PATH="$PATH:$HOME/.asdf/shims"

### Heroku Toolbelt
PATH="$PATH:/usr/local/heroku/bin"

# curl via homebrew
PATH="$PATH:/usr/local/opt/curl/bin"

# Ruby
# PATH="$PATH:$HOME/.rbenv/bin"

# Go
PATH="$PATH:$GOPATH/bin"

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
