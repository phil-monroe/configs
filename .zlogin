# echo 'zlogin loaded'

# # For some reason, my history configuration is getting overridden in zshrc
# source $HOME/.zsh/history.zsh

# Be sure to put these last to ensure they are not overwritten
precmd () {
  dir_mem_precmd;
  configure_prompt;
  name_tab `basename $PWD`;
}

preexec(){
  dir_mem_preexec
}
