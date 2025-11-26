#!/bin/bash
set -e

if ! command -v fzf >/dev/null 2>&1; then
	echo "⚠️  Missing dependency: fzf"
	echo "   Please install fzf (e.g., 'sudo pacman -S fzf') and re-run this script."
	exit 1
fi

echo "🔗 Linking zsh config…"
ln -sf "$PWD/zsh/.zshrc" "$HOME/.zshrc"

echo "🔗 Linking git config…"
ln -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"

echo "✨ Done! Reload your shell."

