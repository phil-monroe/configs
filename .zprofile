# echo 'zprofile loaded'

# Aliases
alias ll='ls -lah'

alias rake='noglob rake'
alias heroku='/usr/bin/heroku'

alias spark_plug="pushd ~/Development/spark_plug"
alias piston="pushd ~/Development/piston"
alias crankshaft="pushd ~/Development/crankshaft"
source $HOME/.zsh/caphub-completion.zsh

alias vm_up="spark_plug; vagrant up; popd"
alias vm_halt="spark_plug; vagrant halt; popd"

# Prompt
PROMPT=$'%{\e[1;32m%}%c%# %{\e[1;00m%}'

# Remember my directory on new tab!
dir_mem_precmd () {print -Pn "\e]2; %~/ \a"}
dir_mem_preexec () {print -Pn "\e]2; %~/ \a"}

# Colorize Grep
if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
fi

# Colorize ls
export CLICOLOR=1;
export LSCOLORS=Cxfxcxdxbxegedabagacad;

# Fix Delete!!!
bindkey "^[[3~" delete-char

# Force Rspec color
alias rspec='rspec --color'

# Git Compleation
source $HOME/.zsh/git_rprompt.bash

# credentials
source ~/.credentials/s3_credentials
source ~/.credentials/identified

# History
HISTSIZE=50
SAVEHIST=50
HISTFILE=~/.history

# Be sure to put these last to ensure they are not overwritten
precmd () {
  dir_mem_precmd;
  git_prompt;
}

preexec(){
  dir_mem_preexec
}