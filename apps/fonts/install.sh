#!/bin/sh
# Install (non-free) fonts from Dropbox/fonts
set -e

if [ ! -d ~/.fonts ]
then
  echo "   Installing fonts."
  ln -s ~/Dropbox/fonts ~/.fonts
fi
