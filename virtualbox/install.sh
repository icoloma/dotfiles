#!/bin/sh

if test ! $(which virtualbox)
then
  echo "  Installing VirtualBox"
  sudo apt-get -y install virtualbox virtualbox-guest-additions-iso
fi
