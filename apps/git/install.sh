#!/bin/bash
# Git and Ubuntu dependencies

if test ! $(which meld); then
  echo "Installing git gui and meld"
  sudo apt-get -y install git git-gui meld vim > /tmp/git-install.log
fi

if test $(which npm); then
  echo "Installing git open"
  sudo npm install -g git-open
fi