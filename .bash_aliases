# use neovim
alias vim='nvim'

# docker things
alias d='docker'
alias dc='docker-compose'
alias dcr='dc run --rm'
alias db='dcr web bundle exec'
alias dbr='db rake'
alias dt='dcr -e "RAILS_ENV=test" -e "RACK_ENV=test" web bundle exec rspec'
de () { d exec -ti $(dc ps -q "$1") "${@:2}"; }

# rails shiz
alias be='bundle exec'
alias bi='bundle install'
alias br='be rake'
alias bs='be rspec'

alias ll='ls -hl'

# find dotfiles
alias finddot='find . -name "._*"'
alias killdot='finddot -print0 | xargs -0 rm'

if [ "$OS" = "LINUX" ]; then
  # colour
  alias ls='ls --color'
else
  #sets up proper alias commands when called
  alias ls='ls -G'
fi

