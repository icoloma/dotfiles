#!/bin/sh
# Install python

if test ! $(which pip)
then
	echo "Installing Python tools"
	sudo apt-get -y install python-pip python-dev build-essential
	sudo pip install --upgrade pip 
	sudo pip install --upgrade virtualenv 
fi