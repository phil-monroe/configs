# Aliases
alias ll='ls -lah'
alias be='bundle exec'
alias rc='bundle exec rails c'
alias rs='bundle exec rails s'
alias sk='bundle exec sidekiq'

alias spec='time bundle exec rspec -c'
alias reload='. ~/.zprofile ; . ~/.zshrc'

alias opmaven='eval $(op signin mavenlabs)'
alias oppersonal='eval $(op signin themonroes)'

alias rspec='rspec --color' # Force Rspec color

alias git_changed_files="echo \"$(git diff --name-only) $(git diff --name-only --cached)\" | tr ' ' '\n' | sort"
alias git_changed_specs="git_changed_files | grep --color=no _spec.rb "

alias rspech='echo $(git_changed_specs); rspec $(git_changed_specs)'


alias lzgit='lazygit'

alias gitx='fork status'
alias gitfs='fork status'

alias atom='/usr/local/bin/code "$@"'

