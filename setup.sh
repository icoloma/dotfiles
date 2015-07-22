#!/bin/bash
# This file is not intended for direct execution. Instead,
# copy and paste parts of it, bit by bit.

set -e

echo "Do not run this script in one go. Hit Ctrl-C NOW"
read -n 1

# Backup your .extra config
[ -e ~/.extra ] && cp ~/.extra ~/.extra.bak

# We need more watches than what comes by default
# https://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit
if test ! "$(grep fs.inotify.max_user_watches /etc/sysctl.conf)"; then
  echo 'Adding a bigger limit to max_user_watches'
  echo "fs.inotify.max_user_watches = 64768" | sudo tee -a '/etc/sysctl.conf' > /dev/null
  sudo sysctl -p
fi

