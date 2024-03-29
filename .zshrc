# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# fixes bizarre gap in some combinations of iTerm/zsh/tmux
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set zsh to use xterm
export TERM=xterm-256color

# Add in homebrew site functions
if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

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

# autocorrect is killing me
unsetopt correct
unsetopt correct_all

# zsh-autosuggestions autocomplete, ctrl+space
bindkey '^ ' autosuggest-accept

# use bash style ctrl+u
bindkey \^U backward-kill-line

if [[ ! "$PATH" == */google-cloud-sdk/* ]]; then
  [ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc ] && source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
  [ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc ] && source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

