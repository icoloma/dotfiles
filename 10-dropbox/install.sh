#!/bin/sh
# Install software that is not available in apt repositories

set -e

if [ ! -d ~/Dropbox ]
then
  echo "   Installing dropbox."
  cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
  ~/.dropbox-dist/dropboxd &
fi
