#!/bin/bash

sudo snap install -y transmission --classic

mkdir -p ~/.config/Code/User
cp ./configs/vscode.json ~/.config/Code/User/settings.json

# Install default supported themes
code --install-extension enkia.tokyo-night
