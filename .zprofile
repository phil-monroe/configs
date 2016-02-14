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

# Prompt
PROMPT=$'%{\e[1;32m%}%c%# %{\e[1;00m%}'

# Remember my directory on new tab!
dir_mem_precmd () {print -Pn "\e]2; %~/ \a"}
dir_mem_preexec () {print -Pn "\e]2; %~/ \a"}

flush_cache() { sudo killall -HUP mDNSResponder }

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

export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

export EDITOR=mate
