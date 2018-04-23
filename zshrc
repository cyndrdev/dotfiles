export ZSH=/home/cyndr/.oh-my-zsh
export PATH=${PATH}:${HOME}/.local/bin:${HOME}/.scripts
export PATH=${PATH}:/opt/texlive/2017/bin/x86_64-linux
export EDITOR=$(which nvim)

ZSH_THEME="flazz"

ZSH_CUSTOM=$HOME/.zsh-custom

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
