set fish_greeting
set EDITOR 'nvim'

# Aliases
abbr ls 'eza --icons'
abbr ll 'eza --icons -l'
abbr la 'eza --icons -la'

abbr cat 'bat'
abbr top 'btop'
abbr vim 'nvim'
abbr g 'git'
abbr cl 'clear'

source $HOME/.config/fish/config_local.fish

if command -q starship
    starship init fish | source
end
