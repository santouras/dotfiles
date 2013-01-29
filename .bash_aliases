# rails shiz
alias be='bundle exec'
alias bi='bundle install'
alias br='be rake'


alias ll='ls -hl'

if [ "$OS" = "LINUX" ]; then
	# colour 
	alias ls='ls --color'
else
	#sets up proper alias commands when called
	alias ls='ls -G'
fi


