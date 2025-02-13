#!/usr/bin/env bash

bind '"\C-f":"~/bin/.local/scripts/tmux-sessionizer\n"'

alias z..='z ..'
alias ..='z ..'
alias ...='z ../../'

alias vim='nvim'
alias hist="cat ~/.bash_history | fzf"
alias bashrc='nvim ~/.bashrc'
alias bashal='nvim ~/.bash_aliases'
alias c='clear'

alias cp='cp -vi'
alias cpv='rsync -avh --info=progress2'
alias mv='mv -vi'
# alias fzf='sk'

alias b='bat'
alias bc='bat'
alias bat='bat'
alias cat='bat'

alias update='sudo nala update && sudo nala upgrade -y' ## && sudo snap refresh'
alias nvimconfig='z ~/.config/nvim/lua; nvim .'
# alias python='python3'

alias countf='ls * | wc -l'
alias ex='chmod +x'
alias totalsize='du -sh'

alias mamba='micromamba'
# alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias Path='echo $PATH | tr : "\n" | rg -v "mnt"'
alias get_saved_imgs='cpv gmankar@euclid:/home/gmankar/work/num_density/saved_data/*.png /home/geet/Downloads/Project_images/'

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

# addToPathFront "$HOME/.local/bin/scripts"
addToPath "$HOME/bin/.local/scripts"
# Usage: bind_key_ctrl <key> <command>
# That will bind "Ctrl-<key>" to <command>
function bind_key_ctrl() {
    local key=$1
    local command=$2
    bind "\"\C-${key}\":\"${command}\n\""
}

export EDITOR=nvim
export GIT_EDITOR=nvim

complete -F _complete_alias nvim
complete -F _complete_alias "${!BASH_ALIASES[@]}"
