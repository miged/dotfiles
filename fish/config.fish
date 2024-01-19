set fish_greeting
set EDITOR 'nvim'

# Aliases
abbr ls 'eza'
abbr ll 'eza -l'
abbr la 'eza -la'

abbr cat 'bat'
abbr top 'btop'
abbr vim 'nvim'
abbr g 'git'
abbr cl 'clear'

if command -q starship
    starship init fish | source
end
