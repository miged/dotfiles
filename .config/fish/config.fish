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
abbr rm 'rm -I'

# Functions
function cheat
  curl cheat.sh/$argv
end

function ytm
  mpv "ytdl://ytsearch1:$argv"
end

# Misc
if status --is-interactive
  if command -q starship
    starship init fish | source
    #  enable_transience
  end

  if command -q zoxide
    zoxide init fish | source
    abbr cd 'z'
    abbr cdi 'zi'
  end
end


# Load local config
if [ -f $HOME/.config/fish/local.fish ]
    source $HOME/.config/fish/local.fish
end
