#!/bin/bash

if test ! $(which idea); then
  sudo snap install intellij-idea-community --classic
fi

# To enable sync settings, go to File > Manage IDE Settings > Settings Sync 
# and log into the Jetbrains account