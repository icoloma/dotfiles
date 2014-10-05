#!/bin/sh

if test ! $(which avconv)
then
  echo "  Installing video editing tools."
  sudo apt-get -y install libav-tools openshot
fi
