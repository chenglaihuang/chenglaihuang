#!/bin/bash
# Dotfiles sync script
# Creates symlinks from home directory to the repo.
# Runs on every terminal open via .zshrc.

DOTFILES_DIR="$HOME/Codebases/chenglaihuang"

_dotfiles_link() {
  local src="$1" dst="$2"
  # Skip if already a correct symlink
  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
    return
  fi
  # Back up existing file (not symlink) before replacing
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    mv "$dst" "${dst}.pre-sync"
  fi
  mkdir -p "$(dirname "$dst")"
  ln -sfn "$src" "$dst"
}

# --- Symlinks ---
_dotfiles_link "$DOTFILES_DIR/.gitconfig"                  "$HOME/.gitconfig"
_dotfiles_link "$DOTFILES_DIR/claude/CLAUDE.md"            "$HOME/.claude/CLAUDE.md"
_dotfiles_link "$DOTFILES_DIR/claude/settings.json"        "$HOME/.claude/settings.json"
_dotfiles_link "$DOTFILES_DIR/claude/rules/team-rules"     "$HOME/.claude/rules/team-rules"

unset -f _dotfiles_link
