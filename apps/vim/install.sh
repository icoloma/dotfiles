#!/bin/bash
# Install plugins for vim

set -euo pipefail
FOLDER=$(cd "$(dirname $0)"; pwd)

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  vim -c "PlugInstall | q"
fi

if [ ! -s ~/.vim/colors/molotov.vim ]; then
  mkdir -p ~/.vim/colors/
  ln -s ${FOLDER}/molotov.vim ~/.vim/colors/molotov.vim
fi
mkdir -p ~/.vim/backups ~/.vim/swaps ~/.vim/undo