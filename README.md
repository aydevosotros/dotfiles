# 🧪 Antonio’s Dotfiles

```
    ____        __  _____ __
   / __ \____  / /_/ __(_) /__  _____
  / / / / __ \/ __/ /_/ / / _ \/ ___/
 / /_/ / /_/ / /_/ __/ / /  __(__  )
/_____/\____/\__/_/ /_/_/\___/____/

=====================================
   Configured by :: Antonio Molina
=====================================
```

My personal Linux/macOS configuration: **Zsh**, **Oh‑My‑Zsh**, terminal tweaks, git config, aliases…
Everything clean, modular, and easy to install.

![Status](https://img.shields.io/badge/Status-Active-brightgreen)
![CI](https://github.com/aydevosotros/dotfiles/actions/workflows/secret-scan.yml/badge.svg)
![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)
![Platform](https://img.shields.io/badge/Linux-macOS-blue)
![Zsh](https://img.shields.io/badge/Shell-Zsh-green)
![License](https://img.shields.io/badge/License-MIT-yellow)
---

## ✨ Highlights

### 🐚 Zsh Setup
- **Theme:** `agnoster` with custom right‑prompt
- Right prompt shows ⚡ (root), 💥 (exit status), and 🐍 (virtualenv)
- Autosuggestions (`zsh-autosuggestions`) & syntax highlighting (`zsh-syntax-highlighting`)
- Command execution timer (⏱) and tidy history defaults

### ⌨️ Tmux Profile
- Prefix remapped to `Ctrl+A`, mouse mode, 50k scrollback
- Status bar with CPU/memory, host, date, and session/window info
- TPM + plugins: `sensible`, `resurrect`, `continuum`, `prefix-highlight`, `yank`
- Continuum auto-save/restore enabled out of the box

### 💻 VS Code Settings
- Workspace settings synced via symlink (`vscode/settings.json`)
- Auto-save, trimming, JetBrains Mono with ligatures, rulers at 88/120
- Python defaults (pytest, basic type checking) and terminal profile tweaks

### 🎮 Extras
- `proton-run` function for launching Windows games with persistent Proton prefixes

### 🧰 Git Configuration
This repo ships an opinionated `.gitconfig` with:

- **diff-so-fancy** integration
- Rich color configuration
- Productivity aliases:
  - `s`, `lg`, `ll`, `d`, `ds`
  - `aa`, `cm`, `amend`
  - `co`, `nb`, `bd`, `bdd`
  - `pu`, `pl`
  - `st`, `stp`, `stl`
- Clean‑up helper: `git cleanall`
- `pull --rebase`, `fetch.prune`, `push.default=current`
- `merge.conflictstyle = diff3`

---

## 📦 Installation

Clone and run the installer:

```bash
git clone https://github.com/tuusuario/dotfiles.git
cd dotfiles
./install.sh
```

The installer checks for `fzf`, symlinks all configs (Zsh, Git, tmux, etc.), and links VS Code settings after backing up any local copy.

---

## 📁 Structure

```
dotfiles/
├── git/
│   └── gitconfig
├── tmux/
│   └── tmux.conf
├── vscode/
│   └── settings.json
├── zsh/
│   └── zshrc
├── install.sh
└── README.md
```

---

## 🤝 Contributions
While this is a personal setup, PRs with improvements are welcome.

Enjoy! 😄
