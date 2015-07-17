#!/bin/sh
# Install node.js files

# Install nvm, the node version manager
# See https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server
#if test ! $(which nvm)
#then
#  sudo apt-get install build-essential libssl-dev
#  curl https://raw.githubusercontent.com/creationix/nvm/v0.16.0/install.sh | bash
#  source ~/.nvm/nvm.sh
#  VERSION="$(nvm ls-remote | tail -1 | tr -d ' ')"
#  echo "Installing node.js $VERSION"
#  nvm install $VERSION
#fi

# test is missing here
sudo apt-get -y install libcairo2-dev libjpeg-dev libgif-dev

if test ! $(which node)
then
  curl -sL https://deb.nodesource.com/setup | sudo bash -
  sudo apt-get -y install nodejs
fi

# avoid installing everything under /usr/local/npm
npm config set prefix ~/npm

if test ! $(which gulp)
then
  echo "  Installing gulp."
  npm -g install gulp
fi

if test ! $(which grunt)
then
  echo "  Installing grunt."
  npm -g install grunt-cli
fi

if test ! $(which jshint)
then
  echo "  Installing JSHint."
  npm -g install jshint jsxhint
fi

if test ! $(which casperjs)
then
  echo "  Installing CasperJS."
  npm -g install casperjs
fi

if test ! $(which jspm)
then
  echo "  Installing jspm."
  npm -g install jspm
fi