# Aliases
alias ll='ls -lah'
alias rake='noglob rake'

# Prompt
PROMPT=$'%{\e[1;32m%}%c%# %{\e[1;00m%}'

# Git Compleation
source ~/.zsh/git_rprompt.bash

# credentials
source ~/.credentials/s3_credentials
source ~/.credentials/identified-crankshaft

# Remember my directory on new tab!
precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

# Colorize Grep
if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
fi

# Colorize ls
export CLICOLOR=1;
export LSCOLORS=Cxfxcxdxbxegedabagacad;

# Fix Delete!!!
bindkey "^[[3~" delete-char