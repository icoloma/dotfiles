#!/bin/bash

sudo snap install code

# Enable settings sync with Github Account from bottom right corner: Manage > Settings Sync 
# See instructions: https://code.visualstudio.com/docs/editor/settings-sync 

# Older installation script:
# FOLDER=$(cd "$(dirname $0)"; pwd)
# mkdir -p ~/.config/Code/User/snippets
# ln -s "${FOLDER}/keybindings.json" "${FOLDER}/settings.json" ~/.config/Code/User
# ln -s "${FOLDER}/global.code-snippets" ~/.config/Code/User/snippets

