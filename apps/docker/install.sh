#!/bin/sh

if test ! $(which docker)
then
  echo "  Installing docker."
  sudo apt-get -y install docker.io
  sudo usermod -aG docker $USER
fi