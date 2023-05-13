#!/bin/sh

wget https://github.com/th-ch/youtube-music
#xmllint --html youtube-music
version=$(grep --only-matching '<span class="css-truncate css-truncate-target text-bold mr-2" style="max-width: none;">.*</span>' <(xmllint --html youtube-music) | sed 's/\(<span class="css-truncate css-truncate-target text-bold mr-2" style="max-width: none;">\|<\/span>\)//g')
echo "$version"

wget https://github.com/th-ch/youtube-music/releases/download/$version/youtube-music-${version//v}.x86_64.rpm 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --title="Downloading File..."
zenity --info --text "Everything seccesfully installed, maybe..."
#sudo rpm --install youtube-music-$version.x86_64.rpm
