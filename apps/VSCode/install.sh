#!/bin/bash
FOLDER=$(cd "$(dirname $0)"; pwd)
mkdir -p ~/.config/Code/User
ln -s "${FOLDER}/keybindings.json" "${FOLDER}/settings.json" ~/.config/Code/User
