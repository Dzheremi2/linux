#!/bin/sh

sudo dnf install dnf-utils -y
sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo

sudo dnf install vivaldi-stable

zenity --info --text "Everything done seccesfully, maybe..."
