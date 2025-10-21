#!/bin/bash
# Font installation for Arch Linux home lab setup
# Installs professional open-source fonts for development

echo "Installing fonts for home lab..."

# Official repository fonts
FONTS=(
    "ttf-dejavu"
    "ttf-liberation"
    "ttf-fira-code"
    "ttf-fira-mono"
    "ttf-fira-sans"
    "noto-fonts-extra"
)

echo "Installing ${#FONTS[@]} font packages..."
sudo pacman -S --noconfirm "${FONTS[@]}"

# Rebuild font cache
echo "Rebuilding font cache..."
fc-cache -fv

echo "✓ Font installation complete!"
echo "Total fonts available: $(fc-list | wc -l)"
