#!/bin/sh
# Configure default programs to open files
set -e
FOLDER=$(cd "$(dirname $0)"; pwd)

if [ ! -f ~/.local/share/applications/mimeapps.list ]
then
  echo "   Configuring default applications associated to mime types."
  mkdir -p ~/.local/share/applications/
  ln -s "$FOLDER/mimeapps.list" ~/.local/share/applications/mimeapps.list
fi
