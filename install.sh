#!/usr/bin/env bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
    mkdir -p "$(dirname "$2")"
    ln -sf "$1" "$2"
    echo "  linked $2"
}

echo "Installing dotfiles from $DOTFILES"

link "$DOTFILES/.config/kitty/kitty.conf"          "$HOME/.config/kitty/kitty.conf"
link "$DOTFILES/.config/zellij/layouts/tbrgm.kdl"  "$HOME/.config/zellij/layouts/tbrgm.kdl"
link "$DOTFILES/.config/zellij/layouts/pops.kdl"   "$HOME/.config/zellij/layouts/pops.kdl"
link "$DOTFILES/.config/zellij/layouts/workspace.kdl" "$HOME/.config/zellij/layouts/workspace.kdl"
link "$DOTFILES/bin/workspace"                     "$HOME/.local/bin/workspace"
link "$DOTFILES/applications/workspace.desktop"    "$HOME/.local/share/applications/workspace.desktop"
link "$DOTFILES/applications/workspace.desktop"    "$HOME/.config/autostart/workspace.desktop"

# Wire custom bash additions into .bashrc if not already present
if ! grep -q "dotfiles/.bashrc.d/custom.sh" "$HOME/.bashrc"; then
    echo "" >> "$HOME/.bashrc"
    echo "# Dotfiles" >> "$HOME/.bashrc"
    echo "source $DOTFILES/.bashrc.d/custom.sh" >> "$HOME/.bashrc"
    echo "  sourced custom.sh into .bashrc"
fi

echo "Done."
