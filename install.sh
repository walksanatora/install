#! /usr/bin/env bash

if [ `whoami` != 'root' ]
  then
    echo "You must be root to do this.(install packges)"
    exit 1
fi

#gotta update that cache
yes | apt update

#misc
yes | apt install steam
yes | apt install obs-studio

#fish and installing bobthe fish (powerline) and making t deafault
yes | apt install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh $(logname) -s /usr/local/bin/fish
curl -L https://get.oh-my.fish | fish
echo "omf install bobthefish" | fish
cp -a /fish/. /home/$(logname)/.config/fish/functions
echo "source /home/$(logname)/.config/fish/functions/func.fish" >> /home/$(logname)/.config/fish/config.fish

#web server stuffs
yes | apt install apache2
yes | apt-get install php5 libapache2-mod-php5

#downloaded packages
wget -O discord.deb "https://discord.com/api/download?platform=linux"
yes | apt install ./discord.deb
wget -O chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
yes | apt install ./chrome.deb
yes | apt remove firefox
wget -O zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb"
yes | apt install ./zoom.deb
rm chrome.deb zoom.deb discord.deb

#mindustry setup is long
curl -s https://api.github.com/repos/anuken/mindustrybuilds/releases/latest \
| grep "browser_download_url.*jar" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
rm *Server*
mdir = $(pwd)
rm *Server*
cd /home/$(logname)/.local/share
mkdir Mindustry
cd Mindustry
mkdir be_builds
cd $mdir
mv *Desktop* /home/$(logname)/.local/share/mindustry/be_builds
#everything else
yes | apt upgrade

#finished gotta let them know
echo "install finished press enter to exit"
read
exit 0

