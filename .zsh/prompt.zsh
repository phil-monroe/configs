# echo 'git prompt loaded'

function findup(){
  arg="$1"
  if test -z "$arg"; then exit 1; fi

  while ! test -e "$arg"; do
    cd ..
    if test "$PWD" = "/"; then
      exit 1
    fi
  done
  echo $PWD/$arg
}

# This zsh function is called whenever changing directories and
# shows the current git branch in the prompt
function git_rprompt()
{
  # Adjust this to your current preferred prompt
  local _git _branch _sha

  # This call requires the "findup" script from http://www.davidfaure.fr/scripts
  _git=`findup .git`

  if test -n "$_git" && test -f $_git/HEAD;
  then
    _branch=`sed -e 's/ref: refs\/heads\///' $_git/HEAD`
    _sha=`git log --pretty=format:'%h' -n 1`
    RPROMPT="[$_branch|$_sha]"
  else
    RPROMPT=""
  fi
}

configure_prompt() {
  PROMPT=$'%{\e[1;32m%}%c%# %{\e[1;00m%}'
  git_rprompt
}
