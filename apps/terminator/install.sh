#!/bin/bash
# Terminator, an iTerm equivalent for Linux that supports multiple panes.
# It's like tmux, but works only in the local machine.

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)

if test ! $(which terminator)
then
  echo "Installing terminator"
  sudo apt-get -y install terminator > /tmp/terminator-install.log
fi

mkdir -p ~/.config/terminator/
ln -sf $FOLDER/config ~/.config/terminator/config
