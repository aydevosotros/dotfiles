#!/bin/bash
# Simple dotfiles installer for Antonio
set -euo pipefail

# Always work from the directory where this script lives
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link_optional_config() {
  local source_path="$1"
  local target_path="$2"
  local label="$3"

  if [ -f "$source_path" ]; then
    echo "🔗 Linking $label…"
    ln -sf "$source_path" "$target_path"
    echo "   ✅ $label installed."
  else
    echo "⚪️ Skipping $label (not found)."
  fi
}

if ! command -v fzf >/dev/null 2>&1; then
  echo "⚠️  Missing dependency: fzf"
  echo "   Please install fzf (e.g., 'sudo pacman -S fzf') and re-run this script."
  exit 1
fi

echo "🔗 Linking zsh config…"
ln -sf "$REPO_DIR/zsh/.zshrc" "$HOME/.zshrc"

echo "🔗 Linking main git config…"
ln -sf "$REPO_DIR/git/gitconfig" "$HOME/.gitconfig"

link_optional_config "$REPO_DIR/git/gitconfig_qustodio" "$HOME/.gitconfig_qustodio" "Qustodio git config"
link_optional_config "$REPO_DIR/git/gitconfig_local" "$HOME/.gitconfig_local" "local git config"
link_optional_config "$REPO_DIR/git/gitignore_global" "$HOME/.gitignore_global" "global gitignore"

echo "✨ Done! Reload your shell or start a new terminal."
