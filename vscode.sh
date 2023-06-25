#!/bin/sh

sudo chown $USER vscode.repo
sudo cp vscode.repo /etc/yum.repos.d/
sudo dnf update

sudo dnf install code

zenity --info --text "Everything done seccesfully, maybe..."