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


