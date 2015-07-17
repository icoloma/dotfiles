#!/bin/sh
FOLDER=$(cd "$(dirname $0)"; pwd)

# Install Sublime Text Editor 3 
# see http://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3
if test ! $(which subl)
then
	sudo add-apt-repository ppa:webupd8team/sublime-text-3
	sudo apt-get update
	sudo apt-get install sublime-text-installer

  mkdir -p "$HOME/.config/sublime-text-3/Installed Packages"
  mkdir -p "$HOME/.config/sublime-text-3/Packages/User"
  echo '[
  {"command": "expand_selection", "args": {"to": "line"}},
  {"command": "duplicate_line"}
  ]' > "$HOME/.config/sublime-text-3/Packages/User/duplicate_lines.sublime-macro"
  ln -s $FOLDER/Default\ \(Linux\).sublime-keymap ~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap

  # this should install all plugins required for a healthy and long life
  wget -O "$HOME/.config/sublime-text-3/Installed Packages/Package Control.sublime-package" https://sublime.wbond.net/Package%20Control.sublime-package
  ln -s $FOLDER/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User/
  
fi
