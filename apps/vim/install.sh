#!/bin/bash
# Install plugins for vim

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  vim -c "PlugInstall | q"
fi

if [ ! -s ~/.vim/colors/molotov.vim ]; then
  ln -s ${FOLDER}/molotov.vim ~/.vim/colors/molotov.vim
fi
