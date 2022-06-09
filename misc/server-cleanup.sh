#! /bin/bash

## remove cloud init (not needed for laptop)
## https://gist.github.com/zoilomora/f862f76335f5f53644a1b8e55fe98320
echo "removing cloud-init"
dpkg-reconfigure cloud-init
dpkg-reconfigure cloud-init
apt-get purge cloud-init
rm -rf /etc/cloud/ && sudo rm -rf /var/lib/cloud/


## remove needrestart (annoying and unnecessary on laptop)
echo "removing needrestart"
apt purge needrestart
apt autoremove
