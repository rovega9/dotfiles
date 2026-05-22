# PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.atuin/bin:$PATH"

# Starship prompt
eval "$(starship init bash)"

# Atuin shell history
. "$HOME/.atuin/bin/env"
eval "$(atuin init bash)"
