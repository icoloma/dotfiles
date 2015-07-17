#!/bin/sh
# Change shell to zsh

if test ! $(which zsh)
then
  echo "  Installing zsh."
  sudo apt-get -y install zsh > /tmp/zsh-install.log
fi

chsh -s /bin/zsh