#! /usr/bin/env bash

if [ `whoami` != 'root' ]
  then
    echo "You must be root to do this.(install packges)"
    exit
fi
wget  -O discord.deb  "https://discord.com/api/download?platform=linux&format=deb"
apt install ./discord.deb
wget -O chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
apt install ./chrome.deb
wget -O zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb"
apt install ./zoom.deb
apt remove firefox
rm zoom.deb discord.deb chrome.deb
echo "install should be finished now press enter to exit the script"
apt update
apt install fish
apt upgrade
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh $(logname) -s /usr/local/bin/fish
echo "install finished press enter to exit"
read
