#!/bin/sh
# Install ruby gems

if test ! $(which tmuxinator)
then
  echo "  Installing tmuxinator."
  sudo gem install tmuxinator > /tmp/tmuxinator-install.log
fi
