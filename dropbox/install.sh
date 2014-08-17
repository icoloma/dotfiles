#!/bin/sh

if test ! ~/Dropbox
then
  echo "   Installing dropbox."
  cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
  ~/.dropbox-dist/dropboxd &
fi
