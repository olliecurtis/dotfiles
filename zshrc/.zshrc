# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="/usr/local/opt/openssl/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/olivercurtis/.oh-my-zsh"

# Theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Font mode
POWERLEVEL9K_MODE="nerdfont-complete"

# Icons
POWERLEVEL9K_USER_ICON="\uF415" #
POWERLEVEL9K_ROOT_ICON="\uF09C"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' #
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf408 '
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
POWERLEVEL9K_VCS_BRANCH_ICON=$'\ue725 '
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='cyan'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'

# Time
POWERLEVEL9K_TIME_FORMAT="%D{%d.%m \uf073 %H:%M}"
POWERLEVEL9K_TIME_BACKGROUND='cyan'

# Shorten Settings
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="red"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# Context
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='green'
USER=olivercurtis
POWERLEVEL9K_CONTEXT_TEMPLATE="%F{cyan}$USER%f"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'

# Settings for prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%(?:%{$fg_bold[green]%}↳ :%{$fg_bold[red]%}↳ )"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(battery time)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Setting for nvim
POWERLEVEL9K_NVM_BACKGROUND='28'
POWERLEVEL9K_NVM_FOREGROUND='15'

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Plugins to be used
plugins=(
  aws
  git
  kubectl
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Source
source $ZSH/oh-my-zsh.sh

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

# ALIAS
alias brupdate='brew update && brew outdated && brew upgrade && brew outdated --cask && brew upgrade --cask'
alias cat='bat'
alias osx_temp="/Users/olivercurtis/Downloads/osx-cpu-temp/osx-cpu-temp"
alias weather-home='curl "wttr.in/London?1F"'
alias disable-dnd='defaults -currentHost write ~/Library/Preferences/ByHost/com.apple.notificationcenterui doNotDisturb -boolean false && killall NotificationCenter'
alias lvim="/Users/olivercurtis/.local/bin/lvim"
alias nom='npm'
# ======================= MOBILE DEV ======================

alias adb='$ANDROID_HOME/platform-tools/adb'
alias android-shake='$ANDROID_SDK_ROOT/platform-tools/adb shell input keyevent 82'
alias android-shake-twice='android-shake && sleep 3 && android-shake'

alias run-android='$ANDROID_SDK_ROOT/emulator/emulator -avd Pixel_3_API_28'
alias run-ios='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# =========================================================

# ========================== NPM ==========================

alias clean-install='npm run clean && npm install' # For use with any project
alias npm-check-unused-dependencies='npm install depcheck -g && depcheck'
alias npm-set-normal-registry='npm config set registry https://registry.npmjs.org/'
alias clean-modules='find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;'

# ============================================================

# ========================== DOCKER ==========================

alias docker-list-ips='docker inspect -f "{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" $(docker ps -aq)'
alias docker-list-ports='docker inspect --format="{{range $p, $conf := .NetworkSettings.Ports}} {{$p}} -> {{(index $conf 0).HostPort}} {{end}}" $(docker ps -aq)'
alias docker-list-processes='docker ps -a'

alias docker-reset='docker rm $(docker ps -a -q) --force'
alias docker-reset-complete='docker-reset && docker-reset-images'
alias docker-reset-images='docker rmi $(docker images -q) --force'

alias docker-start-all='docker start $(docker ps -aq)'

# ===========================================================

# ======================= SKYSCANNER ========================

alias backpack='~/Documents/Backpack'

alias backpack-web='~/Documents/Backpack/backpack'
alias backpack-web-nuke='backpack && sudo rm -rf backpack/ && git clone --recursive git@github.com:Skyscanner/backpack.git && backpack-web'
alias update-bpk-deps='npx npm-check-updates -u "/^bpk-.*$/"'

alias backpack-foundations='~/Documents/Backpack/backpack-foundations'
alias backpack-foundations-nuke='backpack && sudo rm -rf backpack-foundations/ && git clone --recursive git@github.com:Skyscanner/backpack-foundations.git && backpack-foundations'

alias backpack-android='~/Documents/Backpack/backpack-android'
alias backpack-android-nuke='backpack && sudo rm -rf backpack-android/ && git clone --recursive git@github.com:Skyscanner/backpack-android.git && backpack-android'

alias backpack-ios='~/Documents/Backpack/backpack-ios'
alias backpack-ios-nuke='backpack && sudo rm -rf backpack-ios/ && git clone --recursive git@github.com:Skyscanner/backpack-ios.git && backpack-ios'

alias brs='backpack && cd backpack-react-scripts'
alias brs-nuke='backpack && sudo rm -rf backpack-react-scripts/ && git clone --recursive git@github.com:Skyscanner/backpack-react-scripts.git'
alias brs-setup='brs && (cd packages/react-error-overlay/ && npm i) && (cd packages/react-scripts/ && npm i) && npm i'

# ===========================================================

# Startup to run
# echo 'Your current operating temperature is:' 
# osx_temp

export GPG_AGENT_INFO
GPG_TTY=$(tty)
export GPG_TTY

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/olivercurtis/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/olivercurtis/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/olivercurtis/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/olivercurtis/google-cloud-sdk/completion.zsh.inc'; fi

# Python virtualenv setup
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# Setup nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setup Android paths
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"

# Auto switch nvm versions:
# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

export PATH="~/Library/Android/sdk/tools:$PATH"
export PATH="~/Library/Android/sdk/platform-tools:$PATH"
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
# export JAVA_HOME="/opt/homebrew/Cellar/openjdk/21.0.2/libexec/openjdk.jdk/Contents/Home"

export PATH="$PATH:/Users/olivercurtis/Library/Python/3.8/bin"


eval "$(rbenv init - zsh)"
