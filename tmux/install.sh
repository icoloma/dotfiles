#!/bin/sh

if test ! $(which tmux)
then
  echo "  Installing tmux."
  sudo apt-get -y install tmux > /tmp/tmux-install.log
fi
