#!/bin/bash
# Video editing tools and such
# Also, see gifify in .functions, and gifify.sh and webm.sh in this same folder

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)

if test ! $(which gifsicle); then
  sudo apt-get -y install gifsicle
fi

if test ! $(which openshot); then
  sudo apt-get -y install openshot
fi

if test ! $(which kazam); then
  sudo add-apt-repository -y ppa:kazam-team/unstable-series
  sudo apt-get update
  sudo apt-get install kazam python3-cairo python3-xlib
fi
