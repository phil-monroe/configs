caphub() {
  setopt pushdsilent
  pushd ~/Development/caphub
  cap $*
  popd
  unsetopt pushdsilent
}

_my_cpl() {
  [ -n "${CAP_AUTOCOMPLETE_LIST+x}" ] || CAP_AUTOCOMPLETE_LIST=`caphub autocomplete`
  reply=(${=CAP_AUTOCOMPLETE_LIST})
}

compctl -K _my_cpl caphub