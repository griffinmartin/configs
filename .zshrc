# oh-my-zsh path
export ZSH=$HOME/.oh-my-zsh

# Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status nvm node_version)

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

# 256 colors
export TERM="xterm-256color"

# Set correct path for NPM. Required for live-server
export PATH=$PATH:/Users/griffinmartin/.npm-global/bin

# Command auto correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins:
plugins=(
    git
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Redefine prompt_context for hiding user@hostname
prompt_context () { }

# React Native debug editor
REACT_EDITOR=code

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# Set ENV for $ANDROID_HOME
export ANDROID_HOME=~/Library/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform_tools
export ANDROID_SDK_ROOT=~/Library/Android/Sdk
export ANDROID_NDK_ROOT=/Users/gmartin/Library/Android/sdk/ndk-bundle

# Set ENV for Flutter
export PATH="/usr/local/opt/flutter/bin:$PATH"

# Rust
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GO111MODULE=on
export GIT_TERMINAL_PROMPT=1

# Elixir
export ERL_AFLAGS="-kernel shell_history enabled"

# Editor
export EDITOR=nvim

# Aliases
#alias ls='lsd'
alias v="nvim"
alias vimdiff="nvim -f -c \'Gdiffsplit!\' \'$MERGED\'"
