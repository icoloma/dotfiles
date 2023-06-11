#!/bin/bash
# Configure default programs to open files
set -euo pipefail
FOLDER=$(cd "$(dirname $0)"; pwd)

echo "Configuring default applications associated to mime types"

mkdir -p ~/.config/ # ~/.local/share/applications/

cat "$FOLDER/mimeapps.list" >> ~/.config/mimeapps.list

#  ln -s "$FOLDER/mimeapps.list" ~/.local/share/applications/mimeapps.list
