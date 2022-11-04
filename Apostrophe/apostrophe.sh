#!/bin/bash
# Released under GPLv3+ Licence
# Arian Ebrahimi<ae@retal.tech>, 2022

# Run if the application is installed
if flatpak run org.gnome.gitlab.somas.Apostrophe & disown;
then
	echo opened;
	exit 0;
fi
# check if user is root
if [[ $EUID -ne 0 ]]; then
           echo "This script must be run as root." 
           exit 1
fi
# Check if flatpack is installed 
if ! command -v flatpack &> /dev/null
then
	echo "Flatpak not found, Installing"
	apt install -y flatpak
	cd /tmp 
	wget https://dl.flathub.org/repo/appstream/org.gnome.gitlab.somas.Apostrophe.flatpakref
	flatpack install ./org.gnome.gitlab.somas.Apostrophe.flatpakref
	flatpak run org.gnome.gitlab.somas.Apostrophe & disown > /dev/null
fi

