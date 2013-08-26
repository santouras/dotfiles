# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# what OS are we using
case "$OSTYPE" in
  darwin*)  OS="OSX" ;;
  linux*)   OS="LINUX" ;;
esac


#export
export EDITOR=vim

# fixes bizarre gap in some combinations of iTerm/zsh/tmux
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kafeitu"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

source ~/.bash_aliases

# autocorrect is killing me
unsetopt correct
unsetopt correct_all

# Customize to your needs...
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

export PATH=~/.rbenv/shims:~/.rbenv/bin:~/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/mysql/bin
