#!/bin/sh
FOLDER=$(cd "$(dirname $0)"; pwd)

if test ! $(which terminator)
then
  echo "  Installing terminator."
  sudo apt-get -y install terminator > /tmp/terminator-install.log
  ln -s $FOLDER/config ~/.config/terminator/config
fi
