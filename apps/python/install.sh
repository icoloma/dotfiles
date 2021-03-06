#!/bin/bash
# Python, pip and virtualenv

if test ! $(which pip)
then
	echo "Installing Python tools"
	sudo apt-get -y install python-pip python-dev build-essential python3-pip
	sudo pip install --upgrade pip 
	sudo pip install --upgrade virtualenv 
fi

# pytest
if test ! $(which py.test)
then
    sudo pip install -U pytest
fi

# Install and configure virtualenv following
# http://saurabh-kumar.com/blog/virtualenv-vs-virtualenvwrapper.html
if test ! $(which virtualenv)
then
    echo "Installing virtualenv"
    sudo pip install -U virtualenv
fi
