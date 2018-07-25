#!/bin/bash
# Configure default programs to open files
set -e
FOLDER=$(cd "$(dirname $0)"; pwd)

if [ ! -L /usr/share/applications/icoloma-open-mail.desktop ]
then
  sudo ln -s $FOLDER/icoloma-open-mail.desktop /usr/share/applications/
fi

if [ ! -L ~/.config/mimeapps.list ]
then
  rm -f ~/.config/mimeapps.list
  echo "Configuring default applications associated to mime types"
  mkdir -p ~/.config/
  ln -s "$FOLDER/mimeapps.list" ~/.config/mimeapps.list
fi
