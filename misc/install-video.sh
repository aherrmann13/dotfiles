#! /bin/bash


apt install arandr
apt install brightnessctl
# grant user permission for brighness control
usermod -aG video $USER

