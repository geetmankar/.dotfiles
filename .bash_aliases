#!/usr/bin/env bash

bind '"\C-f":"tmux-sessionizer\n"'

alias z..='z ..'
alias ..='z ..'
alias ...='z ../../'

alias vim='nvim'
alias hist="cat .bash_history | fzf"
alias bashrc='nvim ~/.bashrc'
alias c='clear'

alias cp='cp -vi'
alias cpv='rsync -avh --info=progress2'
alias mv='mv -vi'
alias fzf='sk'

alias b='batcat'
alias bc='batcat'
alias bat='batcat'
alias cat='batcat'

alias update='sudo nala update && sudo nala upgrade -y && sudo snap refresh'
alias python='python3'

alias countf='ls * | wc -l'
alias ex='chmod +x'

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias Path='echo $PATH | tr : "\n" | rg -v "mnt"'

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

# Usage: bind_key_ctrl <key> <command>
# That will bind "Ctrl-<key>" to <command>
function bind_key_ctrl() {
    local key=$1
    local command=$2
    bind "\"\C-${key}\":\"${command}\n\""
}

export EDITOR=nvim
export GIT_EDITOR=nvim
