#!/bin/sh

if test ! $(which git)
then
  echo "  Installing git."
  sudo apt-get -y install git git-gui > /tmp/git-install.log
fi
