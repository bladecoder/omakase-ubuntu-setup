#!/bin/bash

read -p "Enter your Spine activation code: " ACTIVATION_CODE
curl -sLo /tmp/spine.tar.gz "https://eu.esotericsoftware.com/launcher/linux/$ACTIVATION_CODE"
tar -xzf /tmp/spine.tar.gz -C /tmp
mv /tmp/Spine $HOME/programs