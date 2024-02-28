set fish_greeting
set EDITOR 'nvim'

# Aliases
if command -q eza
  abbr ls 'eza --icons'
  abbr ll 'eza --icons -l'
  abbr la 'eza --icons -la'
end

abbr cat 'bat'
abbr top 'btop'
abbr vim 'nvim'
abbr g 'git'
abbr cl 'clear'

if [ -f $HOME/.config/fish/local.fish ]
    source $HOME/.config/fish/local.fish
end

if command -q starship
  starship init fish | source
end

if command -q zoxide
  zoxide init fish | source
  abbr cd 'z'
  abbr cdi 'zi'
end
