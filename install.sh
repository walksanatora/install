#! /usr/bin/env bash

if [ `whoami` != 'root' ]
  then
    echo "You must be root to do this.(install pacakges)"
    exit
fi
wget  -O discord.deb  "https://discord.com/api/download?platform=linux&format=deb"
dpkg -i discord.deb
wget -O chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
dpkg -i chrome.deb
wget -O zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb"
dpkg -i zoom.deb
rm zoom.deb discord.deb chrome.deb
echo "install should be finished now press enter to exit the script"
read
