#!/bin/sh
# Video editing tools and such
# Also, see images/install.sh
FOLDER=$(cd "$(dirname $0)"; pwd)

if test ! $(which gifsicle)
then
  sudo apt-get -y install gifsicle
fi

if test ! $(which openshot)
then
  sudo apt-get -y install openshot
fi

if test ! $(which kazam)
then
  sudo apt-get -y install kazam
fi

if test ! $(which gifify)
then
	echo "Installing gifify"
	sudo ln -s "$FOLDER/gifify" /usr/local/bin/
fi

if test ! $(which webm)
then
	echo "Installing webm"
	sudo ln -s "$FOLDER/webm" /usr/local/bin/
fi