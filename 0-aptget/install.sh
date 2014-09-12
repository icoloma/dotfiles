#!/bin/sh
# Install all apt-get packages in a single call

# Ruby
PKG="rbenv ruby-build"

# Git
PKG="$PKG git git-gui meld"

# Shell: tmux, zsh
PKG="$PKG tmux zsh"

# Multiple Clipboards
PKG="$PKG diodon diodon-plugins"

# Image processing: gimp, inkscape and converter tools
PKG="$PKG gimp gimp-help-en inkscape"

# Media player
PKG="$PKG vlc"

if test ! $(which inkscape)
then
	echo "Installing $PKG"
	sudo apt-get -y install $PKG
fi

if test `find /var/cache/apt/pkgcache.bin -mmin +1200`
then 
	echo "Upgrading packages"
	sudo apt-get update
	sudo apt-get upgrade
fi
