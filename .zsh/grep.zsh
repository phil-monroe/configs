# Colorize Grep
if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
fi
