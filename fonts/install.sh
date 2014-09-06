#!/bin/sh
# Install (non-free) fonts from Dropbox/fonts
set -e

if [ ! -f ~/.fonts ]
then
  echo "   Installing fonts."
#  mkdir -p ~/.fonts
  cp -R ~/Dropbox/fonts ~/.fonts
fi
