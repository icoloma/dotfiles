#!/bin/bash
FOLDER=$(cd "$(dirname $0)"; pwd)
mkdir -p ~/.config/Code/User/snippets
ln -s "${FOLDER}/keybindings.json" "${FOLDER}/settings.json" ~/.config/Code/User
ln -s "${FOLDER}/global.code-snippets" ~/.config/Code/User/snippets

# To install VSCode, visit https://code.visualstudio.com/docs/setup/linux


