#!/bin/sh
# Install python
set -ex

if test ! $(which scudcloud)
then
  sudo apt-add-repository ppa:rael-gc/scudcloud
  sudo apt-get update
  sudo apt-get install scudcloud
fi