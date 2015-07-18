#!/bin/bash
# Sublime Text Editor 3 with some plugins

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

# Install Sublime Text Editor 3 
# see http://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3
if test ! $(which subl); then
	echo "Installing Sublime Text Editor 3"
	sudo add-apt-repository ppa:webupd8team/sublime-text-3
	sudo apt-get update
	sudo apt-get install sublime-text-installer
fi

mkdir -p "$HOME/.config/sublime-text-3/Installed Packages"
mkdir -p "$HOME/.config/sublime-text-3/Packages/User"

ln -sf "$FOLDER/duplicate_lines.sublime-macro" "$HOME/.config/sublime-text-3/Packages/User/duplicate_lines.sublime-macro"
ln -sf "$FOLDER/Default (Linux).sublime-keymap" ~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap

# Install all plugins required for a healthy and long life

SUBLIME_PACKAGE="$HOME/.config/sublime-text-3/Installed Packages/Package Control.sublime-package"
[ -f "$SUBLIME_PACKAGE" ] || wget -O "$SUBLIME_PACKAGE" https://sublime.wbond.net/Package%20Control.sublime-package

ln -sf "$FOLDER/Package Control.sublime-settings" ~/.config/sublime-text-3/Packages/User/
  
