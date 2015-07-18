#!/bin/bash
# Git and Ubuntu dependencies

if test ! $(which meld)
then
  echo "Installing git tools"
  sudo apt-get -y install git git-gui meld vim > /tmp/git-install.log
fi

