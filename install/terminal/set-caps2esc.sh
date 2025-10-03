#!/bin/sh

sudo apt install -y interception-tools interception-caps2esc

sudo cp ./configs/caps2esc/caps2esc.yaml /etc/interception/udevmon.d/
sudo cp ./configs/caps2esc/udevmon.service /etc/systemd/system/
