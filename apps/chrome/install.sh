#!/bin/bash
# Google Chrome

if test ! $(which google-chrome)
then
  # https://askubuntu.com/questions/1275967/how-to-update-chrome-in-ubuntu-20-04
  echo "Installing Google Chrome"
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
  sudo apt update 
  sudo apt install google-chrome-stable
fi
