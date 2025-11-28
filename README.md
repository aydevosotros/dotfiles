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
- Right prompt shows:
  - ⚡ *root indicator*
  - 💥 *exit code on failures*
  - 🐍 *active Python virtualenv*
- Autosuggestions (`zsh-autosuggestions`)
- Syntax highlighting (`zsh-syntax-highlighting`)
- Command execution timer (⏱)
- Clean history settings

### 🎮 Extras
- `proton-run` function for launching Windows games with persistent Proton prefixes

### 🧰 Git Configuration
Your repository includes an opinionated `.gitconfig` with:

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

The install script symlinks everything safely into `$HOME`.

---

## 🔖 Versioning & Releases

- Version number lives in the `VERSION` file and is managed by [bumpversion](https://github.com/c4urself/bump2version).
- Install the tool once (e.g. `pip install --user bump2version`).
- To cut a new release:
  1. Decide the part to bump (`patch`, `minor`, or `major`).
  2. Run `bumpversion <part>` which updates `VERSION`, commits, and tags using `.bumpversion.cfg`.
  3. Push everything: `git push && git push --tags`.

---

## 📁 Structure

```
dotfiles/
├── .bumpversion.cfg
├── .github/
│   └── workflows/
│       └── secret-scan.yml
├── .gitignore
├── .pre-commit-config.yaml
├── README.md
├── VERSION
├── git/
│   ├── gitconfig
│   └── gitconfig_qustodio (optional)
├── install.sh
└── zsh/
    └── zshrc
```

---

## 🛠️ TODO / Future Ideas
- Add tmux config

---

## 🤝 Contributions
While this is a personal setup, PRs with improvements are welcome.

Enjoy! 😄
