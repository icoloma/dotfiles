#!/bin/bash
# VirtualBox is a virtual machine like VMWare, qemu, and others
# See also docker

if test ! $(which virtualbox); then
  echo "Installing VirtualBox"
  sudo apt-get -y install virtualbox virtualbox-guest-additions-iso
fi
