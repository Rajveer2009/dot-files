#!/bin/bash

set -e

# Install yay if not present
if ! command -v yay &>/dev/null; then
    echo "Installing yay (AUR helper)..."
    sudo pacman -S --needed --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si --noconfirm
    cd -
fi

# Install packages
yay -S --noconfirm zed-editor-bin
sudo pacman -S --noconfirm alacritty helix zsh

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

