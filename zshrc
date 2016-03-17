source ~/.dotfiles/zsh/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
git
zsh-users/zsh-syntax-highlighting
kennethreitz/autoenv
command-not-found
EOBUNDLES

antigen theme af-magic

antigen apply

alias ls="ls --color=auto --time-style=long-iso"
alias v="vim"
alias h="history | tail -20"
alias j="jobs"
alias quit="exit"
