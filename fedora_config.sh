#!/bin/sh

echo ""
echo "Checking for Zenity availability"
sudo dnf install zenity

if zenity --question --text "Add RPMfusion repositories?"
then
sh rpmfusion.sh
else
zenity --info --text "Okay"
fi

if zenity --question --text "Installing the best YTmusic client ever?"
then
sh YTM.sh
else
zenity --info --text "Okay"
fi

if zenity --question --text "Would you like to add Terra repo for minecraft launcher?"
then
sh minecraft-launcher.sh
else
zenity --info --text "Okay"
fi

if zenity --question --text "What about Timeshift, a recovery utility?"
then
sh timeshift.sh
else
zenity --info --text "Okay"
fi

if zenity --question --text "Desktop icons manager Alacarte?"
then
sh alacarte.sh
else
zenity --info --text "Okay"
fi

if zenity --question --text "Best browser ever - Vivaldi?"
then
sh vivaldi.sh
else
zenity --info --text "Okay"
fi

if zenity --question --text "VSCode repo and install?"
then
sh vscode.sh
else
zenity --info --text "Okay"
fi

if zenity --question --text "Use Alt + Shift for changing languages?"
then
sh alt_shift.sh
else
zenity --info --text "Okay"
fi
