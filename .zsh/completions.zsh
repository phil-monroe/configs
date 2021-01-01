autoload -U compinit
compinit

# ZSH Completions
fpath=(~/.zsh/zsh-completions/src $fpath)

# Heroku Completions
HEROKU_AC_ZSH_SETUP_PATH=/Users/phil/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
