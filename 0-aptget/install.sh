#!/bin/sh
# Install a lot of small tools

# Multiple Clipboards
PKG="diodon diodon-plugins"

# Image processing: gimp, inkscape and converter tools
PKG="$PKG gimp gimp-help-en gimp-data gimp-plugin-registry gimp-data-extras inkscape"

# Media player
PKG="$PKG vlc"

# Compression
PKG="$PKG unrar rar"

# Test one application at random. If it's not there, install everything
if test ! $(which inkscape)
then
	echo "Installing $PKG"
	sudo apt-get -y install $PKG
fi

# remove applications that we do not use
sudo apt-get remove thunderbird

if test `find /var/cache/apt/pkgcache.bin -mmin +1200`
then
	echo "Upgrading packages"
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get autoremove
fi

# Lock to launcher? test this
gsettings set com.canonical.Unity.Launcher favorites "['application://gnome-terminal.desktop', 'application://google-chrome.desktop', 'application://sublime-text-2.desktop', 'application://jetbrains-idea-ce.desktop', 'application://nautilus.desktop', 'application://gnome-screenshot.desktop', 'application://gimp.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"
