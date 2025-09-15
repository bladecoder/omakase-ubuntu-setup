# Omakase Ubuntu Setup

Opinionated Ubuntu Setup by @bladecoder

This repository contains scripts and configurations to transform a fresh Ubuntu installation into a fully-configured, beautiful, and modern system by running a single command.

It automates the installation of essential software, system tweaks, and user preferences to create a streamlined and efficient workspace.

Omakase Ubuntu Setup is inspired by Basecamp's [Omakub](https://github.com/basecamp/omakub) project. The follows the spirit of "omakase" (お任せ, Japanese for "I leave it up to you"), where the chef selects the best dishes for you. Similarly, this setup script curates a selection of tools and configurations to enhance your Ubuntu experience.

## Install

You can install Omakase Ubuntu using one of these two methods:

### Option 1: Direct Install (Recommended)

Run this single command in your terminal:

```sh
curl -L https://raw.githubusercontent.com/bladecoder/omakase-ubuntu-setup/main/boot.sh | bash
```

### Option 2: Manual Install

If you prefer to review the code first:

1. Download the repo:

```sh
git clone https://github.com/bladecoder/omakase-ubuntu-setup.git && cd omakase-ubuntu-setup
```

2. Run the install script:

```sh
./install.sh 2>&1 | tee ~/omakase-ubuntu-setup.log
```

Just follow the prompts and you'll be fine.