#! /usr/bin/env bash

if [ `whoami` != 'root' ]
  then
    echo "You must be root to do this.(install packges)"
    exit
fi

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y com.discordapp.Discord
flatpak install -y com.valvesoftware.Steam
flatpak install -y com.obsproject.Studio
wget -O chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
apt install ./chrome.deb
apt remove firefox
wget -O zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb"
apt install ./zoom.deb
rm chrome.deb zoom.deb
apt update
apt install fish
apt upgrade
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh $(logname) -s /usr/local/bin/fish
echo "install finished press enter to exit"
read
