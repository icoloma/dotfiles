#!/bin/bash
# Git and Ubuntu dependencies

if test ! $(which meld); then
  echo "Installing git gui and meld"
  sudo apt-get -y install git git-gui meld vim > /tmp/git-install.log
fi

echo '
[user]
        name = Nacho Coloma
        email = icoloma@gmail.com
' >> ~/.gitconfig.local
