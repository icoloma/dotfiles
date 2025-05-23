#!/bin/bash
# Git and Ubuntu dependencies

if test ! $(which meld); then
  echo "Installing git gui and meld"
  sudo apt-get -y install git git-gui meld vim > /tmp/git-install.log
fi

git config --global user.email icoloma@gmail.com
git config --global user.name 'Nacho Coloma'

