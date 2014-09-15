#!/bin/sh
# Change shell to zsh

if test ! $(which tmux)
then
  echo "  Installing tmux."
  sudo apt-get -y install tmux > /tmp/tmux-install.log
fi

if test ! $(which tmuxinator)
then
  echo "  Installing tmuxinator."
  sudo gem install tmuxinator > /tmp/tmuxinator-install.log
fi