#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing rbenv."
  sudo apt-get -y install rbenv > /tmp/rbenv-install.log
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build."
  sudo apt-get -y install ruby-build > /tmp/ruby-build-install.log
fi
