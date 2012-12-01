#export
PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LIBRETTO_HOME=~/libretto

export PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;36m\]\W\[\033[00m\]$(__git_ps1 " (%s)") \$ '
#enables color for iTerm
export TERM=xterm-color
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'

# include some more aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# linuxish
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# macish

if which brew > /dev/null &&  [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
