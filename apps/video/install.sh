#!/bin/bash
# Video editing tools and such
# Also, see gifify in .functions, and gifify.sh and webm.sh in this same folder

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)

# TODO: Install gifsky or peek (peek is switching to gifski under the covers) when available in ubuntu
# https://github.com/phw/peek
# https://gif.ski/

if test ! $(which kazam); then
  sudo add-apt-repository -y ppa:kazam-team/unstable-series
  sudo apt-get update
  sudo apt-get install kazam python3-cairo python3-xlib
fi
