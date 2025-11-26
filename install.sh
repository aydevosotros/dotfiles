#!/bin/bash
set -e

echo "🔗 Linking zsh config…"
ln -sf "$PWD/zsh/.zshrc" "$HOME/.zshrc"

echo "✨ Done! Reload your shell."

