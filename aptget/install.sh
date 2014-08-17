#!/bin/sh

# Ruby
PKG="rbenv ruby-build"

# Git
PKG="$PKG git git-gui meld"

# Shell
PKG="$PKG tmux zsh"

sudo apt-get -y install $PKG
