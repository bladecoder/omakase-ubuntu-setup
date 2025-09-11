#!/bin/bash

# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
sudo apt install -y alacritty
mkdir -p ~/.config/alacritty
cp ./configs/alacritty.toml ~/.config/alacritty/alacritty.toml
cp ./configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
cp ./configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
cp ./configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
cp ./configs/theme/alacritty.toml ~/.config/alacritty/theme.toml
cp ./configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
cp ./configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml

# Migrate config format if needed
alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true

source ./install/desktop/set-alacritty-default.sh
