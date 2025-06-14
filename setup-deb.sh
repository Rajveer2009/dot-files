#!/bin/bash

set -e

# Update and install dependencies
sudo apt update
sudo apt install -y curl git zsh alacritty helix

# Install Zed
curl -fsSL https://zed.dev/install.sh | sh

# Set Zsh as default shell
chsh -s "$(command -v zsh)"

# Copy configs
mkdir -p "$HOME/.config/alacritty"
cp alacritty/alacritty.toml "$HOME/.config/alacritty/alacritty.toml"

mkdir -p "$HOME/.config/zed"
cp zed/settings.json "$HOME/.config/zed/settings.json"

mkdir -p "$HOME/.config/helix"
cp helix/config.toml "$HOME/.config/helix/config.toml"

# Fonts
mkdir -p "$HOME/.local/share/fonts"
cp -r fonts/* "$HOME/.local/share/fonts/"
fc-cache -f

echo "Setup complete! Log out and back in for Zsh to take effect."

