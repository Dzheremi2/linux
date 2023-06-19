#!/bin/sh

sudo chown $USER vivaldi.repo
sudo cp vivaldi.repo /etc/yum.repos.d/
sudo dnf update

sudo dnf install vivaldi

zenity --info --text "Everything done seccesfully, maybe..."
