## network config

*this is as of ubuntu 22.04*

server edition uses systemd-networkd which is a gui-less network manager that is under development. the desktop edition
uses network-manager, which has some apis for the d-bus (not sure exactly what this means) that helps with diplaying
things in the system tray etc. when I installed ubuntu server 22.04 I didnt need to change anything to set up ethernet
access, but it did hang for two min at boot waiting for an internet connection.

to get the desktop setup, replace any config files in /etc/netplan with the netplan file in this folder and install
network-manager
