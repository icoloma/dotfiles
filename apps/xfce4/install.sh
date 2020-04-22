#!/bin/bash
# Install packages and config to use XFCE4

set -euo pipefail

FOLDER=$(cd "$(dirname $0)"; pwd)

if test ! $(which xfce4-about)
then
  echo "Installing xfce4"
  sudo apt install -y xfce4 xfce4-screenshooter xfce4-appfinder xfce4-battery-plugin xfce4-dockbarx-plugin xfce4-power-manager xfce4-pulseaudio-plugin xfce4-settings gnome-screensaver
fi

sudo apt -y install bluetooth pulseaudio-module-bluetooth blueman bluewho

mkdir -p ~/.config/xfce4/xfconf/
ln -sf $FOLDER/xfce-perchannel-xml ~/.config/xfce4/xfconf/xfce-perchannel-xml
