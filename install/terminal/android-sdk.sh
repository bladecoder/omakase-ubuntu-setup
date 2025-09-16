#!/bin/bash

# NOTE: Latest platform tools are in https://dl.google.com/android/repository/platform-tools-latest-linux.zip

ANDROID_SDK_ROOT=$HOME/apps/android-sdk
mkdir -p $ANDROID_SDK_ROOT
wget -P "/tmp" https://dl.google.com/android/repository/commandlinetools-linux-8092744_latest.zip
unzip "/tmp/commandlinetools-linux-8092744_latest.zip" -d $ANDROID_SDK_ROOT
rm /tmp/commandlinetools-linux-8092744_latest.zip

# Avoid annoying warning from sdkmanager
mkdir -p $HOME/.android
touch $HOME/.android/repositories.cfg

# move cmdline-tools to proper location
mv $ANDROID_SDK_ROOT/cmdline-tools $ANDROID_SDK_ROOT/latest
mkdir -p $ANDROID_SDK_ROOT/cmdline-tools
mv $ANDROID_SDK_ROOT/latest $ANDROID_SDK_ROOT/cmdline-tools/

# Accept all licences
yes | $ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager --licenses
# Update to lastest tools version
$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager --update
$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager "build-tools;35.0.1" "platforms;android-35" "emulator" "platform-tools" "system-images;android-29;default;x86_64"