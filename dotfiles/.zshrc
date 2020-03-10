# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh path
export ZSH=$HOME/.oh-my-zsh

# Themes

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
alias k="kak"
alias v="nvim"
alias c="clear"
alias vimdiff="nvim -f -c \'Gdiffsplit!\' \'$MERGED\'"
alias tmux="tmux -2"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
