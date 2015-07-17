#!/bin/sh
# Install virtual machines software
if test ! $(which VirtualBox)
then 
        echo "Installing VirtualBox" 
        sudo apt-get -y install virtualbox virtualbox-guest-additions-iso
fi  