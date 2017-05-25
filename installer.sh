#i3 install
echo "i3 install"
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
    rm -r ~./config/i3status
fi 
cp -r ./i3/* ~/.config/
