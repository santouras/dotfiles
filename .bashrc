# common things
. ~/.shell_common

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

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

# include some things if found locally
if [ -f ~/.bash_local ]; then
  . ~/.bash_local
fi

# linuxish
# if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
if [ "$OS" = "LINUX" ]; then
    . /etc/bash_completion
fi

# macish
# if which brew > /dev/null &&  [ -f `brew --prefix`/etc/bash_completion ]; then
if [ "$OS" = "OSX" ]; then
    . `brew --prefix`/etc/bash_completion
fi

eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
