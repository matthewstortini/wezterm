#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WEZTERM_CONFIG_SOURCE="$REPO_DIR"
WEZTERM_CONFIG_TARGET="$HOME/.config/wezterm"

BACKGROUND_DIR="$REPO_DIR/backgrounds"

if [[ ! -f "$REPO_DIR/wezterm.lua" ]]; then
  echo "Error: wezterm.lua not found in repo."
  exit 1
fi

# handle existing ~/.config/wezterm
if [[ -e "$WEZTERM_CONFIG_TARGET" || -L "$WEZTERM_CONFIG_TARGET" ]]; then
  echo "~/.config/wezterm already exists."
  read -r -p "Overwrite it with repo version? (y/n): " answer
  if [[ "$answer" != "y" && "$answer" != "Y" ]]; then
    echo "Aborting."
    exit 0
  fi
  rm -rf "$WEZTERM_CONFIG_TARGET"
fi

mkdir -p "$HOME/.config"

if [[ ! -d "$BACKGROUND_DIR" ]]; then
  echo "Warning: backgrounds directory not found in repo."
fi

echo "Linking wezterm configuration..."
ln -s "$WEZTERM_CONFIG_SOURCE" "$WEZTERM_CONFIG_TARGET"

echo "Done."
echo
echo "~/.config/wezterm now links to:"
echo "  $WEZTERM_CONFIG_SOURCE"
echo
echo "This includes:"
echo "  $REPO_DIR/wezterm.lua"
echo "  $REPO_DIR/backgrounds"
echo
echo "To activate the config:"
echo "  restart WezTerm"
