#!/bin/bash
# Simple dotfiles installer for Antonio
set -euo pipefail

# Always work from the directory where this script lives
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link_config() {
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

install_vscode_config() {
  local source="$REPO_DIR/vscode/settings.json"
  local target="$HOME/.config/Code/User/settings.json"

  if [ ! -f "$source" ]; then
    echo "⚪️ Skipping VS Code settings (source file missing)."
    return
  fi

  mkdir -p "$(dirname "$target")"

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    local backup="${target}.bak.$(date +%Y%m%d-%H%M%S)"
    mv "$target" "$backup"
    echo "💾 Existing VS Code settings moved to $backup"
  fi

  ln -sf "$source" "$target"
  echo "🔗 VS Code settings linked to $target"
}

if ! command -v fzf >/dev/null 2>&1; then
  echo "⚠️  Missing dependency: fzf"
  echo "   Please install fzf (e.g., 'sudo pacman -S fzf') and re-run this script."
  exit 1
fi

link_config "$REPO_DIR/zsh/zshrc" "$HOME/.zshrc" "zsh config"
link_config "$REPO_DIR/git/gitconfig" "$HOME/.gitconfig" "main git config"
link_config "$REPO_DIR/tmux/tmux.conf" "$HOME/.tmux.conf" "tmux config"

link_config "$REPO_DIR/git/gitconfig_qustodio" "$HOME/.gitconfig_qustodio" "Qustodio git config"
link_config "$REPO_DIR/git/gitconfig_local" "$HOME/.gitconfig_local" "local git config"
link_config "$REPO_DIR/git/gitignore_global" "$HOME/.gitignore_global" "global gitignore"

install_vscode_config

echo "✨ Done! Reload your shell or start a new terminal."
