#!/bin/sh
# Install all apt-get packages in a single call

# Git
PKG="$PKG git git-gui meld vim"

# Shell: tmux, zsh
PKG="$PKG tmux zsh"

# Multiple Clipboards
PKG="$PKG diodon diodon-plugins"

# Image processing: gimp, inkscape and converter tools
PKG="$PKG gimp gimp-help-en gimp-data gimp-plugin-registry gimp-data-extras inkscape"

# Media player
PKG="$PKG vlc"

# Compression
PKG="$PKG unrar rar"

# Java
PKG="$PKG oracle-java8-installer"

# Ruby
PKG="rbenv ruby-build ruby-dev"

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
fi
