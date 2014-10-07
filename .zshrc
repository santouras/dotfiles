# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# fixes bizarre gap in some combinations of iTerm/zsh/tmux
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="kafeitu"

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

PROMPT='%{$fg[yellow]%}%n %{$fg[cyan]%}%~ %{$fg[green]%}%# %{$fg_bold[blue]%}$(git_prompt_info)
%{$fg_bold[red]%} %(?..[%?] ) %{$fg[red]%}➜  %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="±(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[white]%}✗%{$fg[blue]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# common between shells
source ~/.shell_common

source ~/.bash_aliases

# include some things if found locally
if [ -f ~/.bash_local ]; then
  . ~/.bash_local
fi

# autocorrect is killing me
unsetopt correct
unsetopt correct_all

# use bash style ctrl+u
bindkey \^U backward-kill-line

# Base16 Shell
BASE16_SCHEME="default"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

