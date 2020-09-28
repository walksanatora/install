#! /usr/bin/env bash

if [ `whoami` != 'root' ]
  then
    echo "You must be root to do this.(install packges)"
    exit 1
fi
apt update
wget -O discord.deb "https://discord.com/api/download?platform=linux"
apt install ./discord.deb
apt install steam
apt install obs-studio
apt install -y fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh $(logname) -s /usr/local/bin/fish
curl -L https://get.oh-my.fish && omf install bobthefish | fish
cp -a /fish/. /home/$(logname)/.config/functions
apt install apache2
wget -O chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
apt install -y ./chrome.deb
apt remove firefox
wget -O zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb"
apt install ./zoom.deb
rm chrome.deb zoom.deb discord.deb
apt -y upgrade
echo "install finished press enter to exit"
read
exit 0
