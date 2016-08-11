source ~/.antigen.zsh
antigen use oh-my-zsh

# Plugins
antigen bundles <<EOBUNDLES
git
zsh-users/zsh-syntax-highlighting
kennethreitz/autoenv
command-not-found
EOBUNDLES

# Theme
antigen theme miged/dotfiles zsh/af-magic

antigen apply

alias ls="ls --color=auto --time-style=long-iso"
alias v="vim"
alias h="history | tail -20"
alias j="jobs"
alias quit="exit"

setopt nocheckjobs
setopt nohup
autoload -U compinit
compinit

zstyle ':completion:*' menu select yes
zstyle ':completion:*:default' list-colors ''
