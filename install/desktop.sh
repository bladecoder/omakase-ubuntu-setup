#!/bin/bash

read -p $'\033[35mReady to reboot for all settings to take effect? [y/N]: \033[0m' confirm && [[ $confirm =~ ^[Yy]$ ]] && sudo reboot

false

# Run desktop installers
for installer in ./install/desktop/*.sh; do source $installer; done

# Logout to pickup changes
read -p $'\033[35mReady to reboot for all settings to take effect? [y/N]: \033[0m' confirm && [[ $confirm =~ ^[Yy]$ ]] && sudo reboot
