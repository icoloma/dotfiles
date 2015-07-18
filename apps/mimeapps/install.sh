#!/bin/bash
# Configure default programs to open files
set -e
FOLDER=$(cd "$(dirname $0)"; pwd)

if [ ! -L ~/.local/share/applications/mimeapps.list ]
then
  rm -f ~/.local/share/applications/mimeapps.list
  echo "Configuring default applications associated to mime types"
  mkdir -p ~/.local/share/applications/
  ln -s "$FOLDER/mimeapps.list" ~/.local/share/applications/mimeapps.list
fi
