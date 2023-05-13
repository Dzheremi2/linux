#!/bin/sh

sudo dnf config-manager --add-repo https://terra.fyralabs.com/terra.repo
sudo dnf install minecraft-launcher
echo ""
echo "Don't worry, Chrome is just dependency of minecraft launcher, unfortunately"
echo ""
sudo dnf install google-chrome-stable
zenity --info --text "Everything done seccesfully, maybe..."
