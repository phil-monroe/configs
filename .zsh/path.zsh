# Project Bins
# https://thoughtbot.com/blog/git-safe
# PATH="./bin:$PATH"
PATH=".git/safe/../../bin"

# My bins
PATH="$PATH:$HOME/bin"

# ASDF
PATH="$PATH:${ASDF_BIN}"
PATH="$PATH:${ASDF_USER_SHIMS}"

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
