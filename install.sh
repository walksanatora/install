#! /usr/bin/env bash

if [ `whoami` != 'root' ]
  then
    echo "You must be root to do this."
    exit
fi

dpkg -i discord.deb
dpkg -i chrome.deb
dpkg -i zoom.deb

echo "install should be finished now press enter to exit the script"
read
