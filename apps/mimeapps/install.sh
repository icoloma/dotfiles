#!/bin/bash
# Configure default programs to open files
set -euo pipefail
FOLDER=$(cd "$(dirname $0)"; pwd)

if [ ! -L /usr/share/applications/icoloma-open-mail.desktop ]
then
  sudo ln -s $FOLDER/icoloma-open-mail.desktop /usr/share/applications/
fi

if [ ! -L ~/.config/mimeapps.list ]
then
  rm -f ~/.config/mimeapps.list ~/.local/share/applications/mimeapps.list
  echo "Configuring default applications associated to mime types"
  mkdir -p ~/.config/ ~/.local/share/applications/
  ln -s "$FOLDER/mimeapps.list" ~/.config/mimeapps.list
  ln -s "$FOLDER/mimeapps.list" ~/.local/share/applications/mimeapps.list
fi
