PROMPT='$(gbt $?)'
RPROMPT='$(gbt -right)'

# custom right cars, golang & ruby version
export GBT_CAR_CUSTOM_TEXT_CMD="goenv version-name"
export GBT_CAR_CUSTOM_BG='light_blue'
export GBT_CAR_CUSTOM_FORMAT=' 🚀 {{ Text }} '
export GBT_CAR_CUSTOM_TEXT_FG='black'

export GBT_CAR_CUSTOM1_TEXT_CMD="rbenv version-name"
export GBT_CAR_CUSTOM1_BG='light_red'
export GBT_CAR_CUSTOM1_TEXT_FG='black'
export GBT_CAR_CUSTOM1_FORMAT=' 💎 {{ Text }} '

export GBT_RCARS='Custom, Custom1, Kubectl'

export GBT_CAR_STATUS_FORMAT=' {{ Symbol }} {{ Code }} '

export GBT_CAR_HOSTNAME_USER_FG='yellow'
export GBT_CAR_HOSTNAME_BG='default'
export GBT_CAR_HOSTNAME_USERHOST_FORMAT='{{ User }}'

export GBT_CAR_SIGN_WRAP=1
export GBT_CAR_SIGN_SEP=''
export GBT_CAR_SIGN_USER_TEXT='➜'
export GBT_CAR_SIGN_USER_FG='light_red'

export GBT_CAR_DIR_FORMAT='{{ Dir }}'
export GBT_CAR_DIR_DEPTH='10'
export GBT_CAR_DIR_BG='default'
export GBT_CAR_DIR_SEP=''
export GBT_CAR_DIR_FG='cyan'

export GBT_CAR_GIT_SEP=''
export GBT_CAR_GIT_HEAD_FM='bold'
export GBT_CAR_GIT_HEAD_FG='red'
export GBT_CAR_GIT_ICON_FG='blue'
export GBT_CAR_GIT_FG='light_blue'
export GBT_CAR_GIT_BG='default'
export GBT_CAR_GIT_FM='bold'
export GBT_CAR_GIT_DIRTY_FG='red'
export GBT_CAR_GIT_CLEAN_FG='green'
export GBT_CAR_GIT_FORMAT=' {{ Icon }}({{ Head }} {{ Status }}{{ Ahead }}{{ Behind }})'


#export GBT__HOME='/usr/local/Cellar/gbt/1.2.0_3/share/gbt'
#source "$GBT__HOME/sources/gbts/cmd/local.sh"
# alias docker='gbt_docker'
# alias mysql='gbt_mysql'
# alias screen='gbt_screen'
# alias ssh='gbt_ssh'
# alias su='gbt_su'
# alias sudo='gbt_sudo'
# alias vagrant='gbt_vagrant'<Paste>
