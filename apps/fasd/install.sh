#!/bin/bash
# fasd is a bash/zsh plugin to move between frequent folders with ease.
# https://github.com/clvv/fasd

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

ln -s $FOLDER/fasd ~/bin