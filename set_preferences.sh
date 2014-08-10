#!/bin/bash

# This script will set your Ubuntu theme settings for you
# Just set the variables to appropriate values, change your terminal to
# the directory with this file with the cd command and run:
#	bash set_preferences.sh

#--------   Variables   -------------
pictureUrl="http://www.kucuu.com/desktop-wallpaper-home/Black-Background-Metal-1080P-hd-wallpapers-hd-wallpaper-1920x1440-13-507f977a064c7-8556.jpg"

pictureFileName="Black-Background-Metal-1080P-hd-wallpapers-hd-wallpaper-1920x1440-13-507f977a064c7-8556.jpg"
#------------------------------------


#---------   Wallpaper  -------------
cd ~/Pictures

wget $pictureUrl

dir=$(pwd)
gsettings set org.gnome.desktop.background picture-uri file://$dir/$pictureFileName


gsettings set org.gnome.shell.background color %#000000
#------------------------------------

#----   Common Applications  --------
sudo apt-get install vim git

