#!/bin/sh
# Install node.js files

# Install nvm, the node version manager
# See https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server
if test ! $(which nvm)
then
  sudo apt-get install build-essential libssl-dev
  curl https://raw.githubusercontent.com/creationix/nvm/v0.16.0/install.sh | bash
#  reload!
  VERSION="$(nvm ls-remote | tail -1 | tr -d ' ')"
  echo "Installing node.js $VERSION"
  nvm install $VERSION
fi

if test ! $(which gulp)
then
  echo "  Installing gulp."
  npm -g install gulp
fi
