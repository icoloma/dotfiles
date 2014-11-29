#!/bin/sh

# Install Sublime Text Editor 2
# see http://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3
if test ! $(which subl)
then
	sudo add-apt-repository ppa:webupd8team/sublime-text-2
	sudo apt-get update
	sudo apt-get install sublime-text

  mkdir -p "$HOME/.config/sublime-text-2/Installed Packages"
  mkdir -p "$HOME/.config/sublime-text-2/Packages/User"
  echo '[
  {"command": "expand_selection", "args": {"to": "line"}},
  {"command": "duplicate_line"}
  ]' > "$HOME/.config/sublime-text-2/Packages/User/duplicate_lines.sublime-macro"
  ln -s $(pwd)/sublime/Default\ \(Linux\).sublime-keymap ~/.config/sublime-text-2/Packages/User/Default\ \(Linux\).sublime-keymap

  # this should install all plugins required for a healthy and long life
  wget -O "$HOME/.config/sublime-text-2/Installed Packages/Package Control.sublime-package" https://sublime.wbond.net/Package%20Control.sublime-package
  ln -s $(pwd)/sublime/Package\ Control.sublime-settings ~/.config/sublime-text-2/Packages/User/
  
fi