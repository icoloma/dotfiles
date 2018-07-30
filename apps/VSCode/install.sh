#!/bin/bash
FOLDER=$(cd "$(dirname $0)"; pwd)
mkdir -p ~/.config/Code/User/snippets
ln -s "${FOLDER}/keybindings.json" "${FOLDER}/settings.json" ~/.config/Code/User
ln -s "${FOLDER}/javascript.json" ~/.config/Code/User/snippets