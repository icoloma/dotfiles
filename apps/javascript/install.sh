#!/bin/bash
# node.js, Gulp, Grunt, etc

# Official way of upgrading node and stuff
# Install nvm, the node version manager
# See https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
if test ! $(which nvm)
then
  sudo apt-get install build-essential libssl-dev
  curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
  source ~/.nvm/nvm.sh
  VERSION="$(nvm ls-remote | tail -1 | tr -d ' ')"
  echo "Installing node.js $VERSION"
  nvm install $VERSION
fi


