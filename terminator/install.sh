#!/bin/sh

if test ! $(which terminator)
then
  echo "  Installing terminator."
  sudo apt-get -y install terminator > /tmp/terminator-install.log
fi
