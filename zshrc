# Plugins
source ~/.antigen.zsh
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
zsh-users/zsh-syntax-highlighting
kennethreitz/autoenv
EOBUNDLES

antigen apply

# zsh options
zstyle ':completion:*' menu select yes
zstyle ':completion:*:default' list-colors ''

REPORTTIME=10
setopt nocheckjobs nohup autocd

# Aliases
LOPTS='--color=auto --time-style=long-iso'
alias ls="ls -v $LOPTS"
alias ll="ls -lav --si $LOPTS"
alias v="vim"
alias quit="exit"

# Prompt
PROMPT='$FG[032]%~$(git_prompt_info) $FG[105]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$(virtualenv_prompt_info)$FG[237]%n@%m%{$reset_color%}%'
else
	RPROMPT='$FG[237]%n@%m%{$reset_color%}%'
fi

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]("
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[214]*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
