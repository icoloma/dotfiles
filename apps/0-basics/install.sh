#!/bin/bash
# A lot of small, super necessary tools

# Multiple Clipboard Manager. After installing, add a shortcut:
# https://esite.ch/2015/07/using-custom-shortcuts-of-de-as-diodon-hotkey/
# TODO: do this automatically in the CLI: http://askubuntu.com/questions/597395/how-to-set-custom-keyboard-shortcuts-from-terminal
# TODO: is the keyboard part necessary? It seems to come already configured now.

# Media player
PKG="vlc"

# Can focus windows with a keyboard shortcut like Meta+2 with Cinnamon (like in Unity)
PKG="$PKG wmctrl"

# Better than du and top
PKG="$PKG htop ncdu"

# Compression
PKG="$PKG unrar rar unzip zip"

# Text-to-speech
PKG="$PKG espeak"

# Basics
PKG="$PKG traceroute"

# the j alias: https://github.com/wting/autojump
PKG="$PKG autojump"

# Test one application. If it's not there, install everything
if test ! $(which htop)
then
	echo "Installing $PKG"
	sudo apt-get -y install $PKG
fi

# remove applications that we do not use
sudo apt-get remove thunderbird

# If old apt-get repo, update
if test `find /var/cache/apt/pkgcache.bin -mmin +1200`
then
	echo "Upgrading packages"
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get autoremove
fi

# Get normal scrollbars
gsettings set com.canonical.desktop.interface scrollbar-mode normal

# Not really working (ಠ_ಠ)
# Lock to launcher? test this
# gsettings set com.canonical.Unity.Launcher favorites "['application://gnome-terminal.desktop', 'application://google-chrome.desktop', 'application://sublime-text-2.desktop', 'application://jetbrains-idea-ce.desktop', 'application://nautilus.desktop', 'application://gnome-screenshot.desktop', 'application://gimp.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"
