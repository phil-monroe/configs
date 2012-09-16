caphub() {
  if [ $# -eq 0 ]; then
    pushd ~/Development/caphub
  else
    setopt pushdsilent
    pushd ~/Development/caphub
    cap $*
    popd
    unsetopt pushdsilent
  fi
}

_caphub_cpl() {
  [ -n "${CAP_AUTOCOMPLETE_LIST+x}" ] || CAP_AUTOCOMPLETE_LIST=`caphub autocomplete`
  reply=(${=CAP_AUTOCOMPLETE_LIST})
}

compctl -K _caphub_cpl caphub