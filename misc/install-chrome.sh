#! /bin/bash

storeDir=~/.store

if [ ! -d $storeDir ]
then
    mkdir $storeDir
fi

## google chrome download
wget -P $storeDir https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i $storeDir/google-chrome-stable_current_amd64.deb
apt install $storeDir/google-chrome-stable_current_amd64.deb
 
