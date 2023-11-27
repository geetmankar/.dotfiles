#!/usr/bin/env bash

alias z..='z ..'
alias ..='z ..'
alias ...='z ../../'

alias hist="cat .bash_history | fzf"
alias bashrc='nvim ~/.bashrc'
alias c='clear'

alias cp='cp -vi'
alias cpv='rsync -avh --info=progress2'
alias mv='mv -vi'
# alias fzf='sk'

alias b='batcat'
alias bc='batcat'
alias bat='batcat'
# alias update='sudo apt update && sudo apt upgrade -y && sudo snap refresh'
alias update='sudo nala update && sudo nala upgrade -y && sudo snap refresh'
alias python='python3'

alias count='ls * | wc -l'
alias ex='chmod +x'

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias linuxpath='echo $PATH | tr : "\n" | rg -v "mnt"'

addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

export EDITOR=nvim
export GIT_EDITOR=nvim
