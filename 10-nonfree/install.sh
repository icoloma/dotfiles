#!/bin/sh
# Install software that is not avaiulable in apt repositories

set -e

if [ ! -d ~/Dropbox ]
then
  echo "   Installing dropbox."
  cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
  ~/.dropbox-dist/dropboxd &
fi

if test ! $(which google-chrome)
then
  echo "  Installing Google Chrome."
  sudo apt-get -y install libxss1 libappindicator1 libindicator7
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /tmp/google-chrome.deb
  sudo dpkg -i /tmp/google-chrome.deb
  google-chrome&
fi

# Install Sublime Text Editor 2
# see http://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3
if test ! $(which subl)
then
	sudo add-apt-repository ppa:webupd8team/sublime-text-2
	sudo apt-get update
	sudo apt-get install sublime-text
fi

# Skype does not support unbuntu 14 yet
#if test ! $(which skype)
#then
#  echo "  Installing Skype."
#  wget 'http://www.skype.com/en/download-skype/skype-for-linux/downloading/?type=ubuntu64' > /tmp/skype.deb
#  sudo dpkg -i /tmp/skype.deb
#  skype&
#fi
