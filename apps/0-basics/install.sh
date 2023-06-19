#!/bin/bash
# A lot of small, super necessary tools
set -euo pipefail

# Generic Colorizer
PKG="grc"

# Better than du and top
PKG="$PKG htop ncdu"

# Basics
PKG="$PKG traceroute net-tools curl wget inotify-tools"

# the j alias: https://github.com/wting/autojump
PKG="$PKG autojump"

# Test one application. If it's not there, install everything
if test ! $(which htop)
then
	echo "Installing $PKG"
	sudo apt-get -y install $PKG
fi

# If old apt-get repo, update
if test "$(find /var/cache/apt/pkgcache.bin -mmin +1200)"
then
	echo "Upgrading packages"
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get autoremove
fi

# install shellcheck
sudo snap install shellcheck

