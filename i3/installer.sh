#! /bin/bash

# i3 install
echo "i3 install"
sudo apt install i3 xorg


# i3 config
echo "i3 config"
if [ -e ~/.config/i3/config ]
then
    mkdir -p ~/.bkp/i3/i3/
    mv ~/.config/i3/config ~/.bkp/i3/i3
    rm -r ~/.config/i3
fi
if [ -e ~/.config/i3status/config ]
then 
    mkdir -p ~/.bkp/i3/i3status
    mv ~/.config/i3status/config ~/.bkp/i3/i3status/
    rm -r ~/.config/i3status
fi
if [ ! -d ~/.config ]
then
    mkdir ~/.config
fi

cp -r ./files/* ~/.config/

