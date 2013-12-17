#!/usr/local/bin/zsh
# echo 'zprofile loaded'

# Aliases
alias ll='ls -lah'
alias be='bundle exec'
alias rc='bundle exec rails c'
alias rs='bundle exec rails s'
alias sk='bundle exec sidekiq'

alias spec='time bundle exec rspec -c'
alias reload='. ~/.zprofile ; . ~/.zshrc'


## Zeus
alias zc='zeus c'
alias zs='zeus s'
alias zrake='zeus rake'
# alias zrun='zeus rake run'

zrun() {
  arg="$1"
  [ "x$arg" = "x" ] || arg=":$arg"
  zeus rake run$arg
}

zspec() {
  test="$1"
  [ "x$test" = "x" ] && test="spec"
  time zeus rspec --color $test
}

zloop() {
  while true;
  do
    clear
    zeus start
  done
}

claws_run() {
  mvn clean install -DskipTests
  mvn -pl claws-ws jetty:run
}

name_tab() {
  echo -ne "\e]1;$1\a"
}

rtop(){
  ssh $1 -t 'sudo htop'
}

rsniff(){
	echo "wireshark -k -i <(ssh  $1 'sudo tcpdump -i eth0  -w - $2')"
}


# alias rake='noglob rake'
alias heroku='/usr/bin/heroku'
alias eclipse='open /Applications/eclipse/Eclipse.app'

alias spark_plug="pushd ~/Development/identified/spark_plug"
alias piston="pushd ~/Development/identified/piston"
alias crankshaft="pushd ~/Development/identified/crankshaft"


# Prompt
PROMPT=$'%{\e[1;32m%}%c%# %{\e[1;00m%}'

# Remember my directory on new tab!
dir_mem_precmd () {print -Pn "\e]2; %~/ \a"}
dir_mem_preexec () {print -Pn "\e]2; %~/ \a"}

flush_cache() { sudo killall -HUP mDNSResponder }
hadoop-logs(){
  hdfs dfs -cat "/var/log/hadoop-yarn/apps/$USER/logs/$1/prd-hdp-dn-*.identified.com_*" | less
}

# Colorize Grep
if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
fi

# Colorize ls
export CLICOLOR=1;
export LSCOLORS=Cxfxcxdxbxegedabagacad;

# Fix Delete!!!
# bindkey "^[[3~" delete-char

# Force Rspec color
alias rspec='rspec --color'

# Git Completion
source $HOME/.zsh/git_rprompt.bash

# ZSH Completions
fpath=(~/.zsh/zsh-completions/src $fpath)

# credentials
source ~/.credentials/s3_credentials
source ~/.credentials/identified

# History
export HISTSIZE=500000
export SAVEHIST=500000
export HISTFILE=~/.history
setopt INC_APPEND_HISTORY

# Be sure to put these last to ensure they are not overwritten
precmd () {
  dir_mem_precmd;
  git_prompt;
  name_tab `basename $PWD`;
}

preexec(){
  dir_mem_preexec
}

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

export EDITOR=mate