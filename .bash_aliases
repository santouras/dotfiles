# use neovim
alias vim='nvim'
alias v='vim'

# docker things
alias d='docker'
alias dc='docker-compose'
alias dcr='dc run --rm'
alias db='dcr web bundle exec'
alias dbr='db rake'
alias dt='dcr -e "RAILS_ENV=test" -e "RACK_ENV=test" web bundle exec'
de () { d exec -ti $(dc ps -q "$1") "${@:2}"; }

# kube stuff
alias kb='kubectl'

# rails shiz
alias be='bundle exec'
alias bi='bundle install'
alias br='be rake'
alias bs='be rspec'

alias ll='ls -hla'

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

alias ag='ag --color-match="31"'
alias tree='tree -C'

alias cat='bat'
alias ping='prettyping'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
