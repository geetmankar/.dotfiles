alias z..='z ..'
alias ..='z ..'
alias ...='z ../../'

alias bashrc='nvim ~/.bashrc'
alias c='clear'

alias cp='cp -vi'
alias cpv='rsync -avh --info=progress2'
alias mv='mv -vi'
alias fzf='sk'

alias b='batcat'
alias bc='batcat'
alias bat='batcat'
# alias update='sudo apt update && sudo apt upgrade -y && sudo snap refresh'
alias update='sudo nala update && sudo nala upgrade -y && sudo snap refresh'
alias python='python3'

alias count='ls * | wc -l'
alias ex='chmod +x'

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

export EDITOR=nvim
export GIT_EDITOR=nvim
