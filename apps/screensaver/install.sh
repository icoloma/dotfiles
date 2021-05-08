#!/bin/bash
# Install Light DM GTK+ to unlock the laptop
# https://wiki.archlinux.org/title/LightDM#Installation

sudo apt-get install -y lightdm-gtk-greeter-settings

# todo: cat or link into /etc/X11/default-display-manager
# contents: 
# /usr/sbin/lightdm

sudo apt install xfce4-screensaver
sudo apt remove xscreensaver xscreensaver-data gnome-screensaver

# Manually review that xfce4-screensaver is automatically started in "Session and Startup" -> Start

# Test screensaver with Ctrl + ALt + L, closing the lid, or with
# xfce4-screensaver-command --lock
# Each option is different! Test the three of them

