#!/bin/sh

if test ! $(which avconv)
then
  echo "  Installing video editing tools."
  sudo apt-get -y install libav-tools
fi

if test ! $(which gifsicle)
then
  sudo apt-get -y install gifsicle
fi

if test ! $(which openshot)
then
  sudo apt-get -y install openshot
fi

if test ! $(which pitivi)
then
  sudo apt-get -y install pitivi
fi
