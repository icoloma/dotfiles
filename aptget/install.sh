#!/bin/sh
# Install all apt-get packages in a single call

# Ruby
PKG="rbenv ruby-build"

# Git
PKG="$PKG git git-gui meld"

# Shell: tmux, zsh
PKG="$PKG tmux zsh"

# Multiple Clipboards
PKG="$PKG diodon"

# Image processing: gimp, inkscape and converter tools
PKG="$PKG gimp gimp-help inkscape"

# Media player
PKG="$PKG vlc"

echo "Installing $PKG"
sudo apt-get -y install $PKG
