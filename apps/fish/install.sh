#!/bin/bash
FOLDER=$(cd "$(dirname $0)"; pwd)

# install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

# add fish init
mkdir -p ~/.config/fish/conf.d/
ln -s "${FOLDER}/icoloma.fish" ~/.config/fish/conf.d/

# make fish the default shell
chsh -s /usr/bin/fish