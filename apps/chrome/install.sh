#!/bin/sh

if test ! $(which google-chrome)
then
  echo "  Installing Google Chrome."
  sudo apt-get -y install libxss1 libappindicator1 libindicator7
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /tmp/google-chrome.deb
  sudo dpkg -i /tmp/google-chrome.deb
  google-chrome&
fi