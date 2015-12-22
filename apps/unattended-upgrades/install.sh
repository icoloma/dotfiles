#!/bin/bash
# Unattended upgrades
# https://help.ubuntu.com/community/AutomaticSecurityUpdates

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

sudo apt-get install unattended-upgrades
if [ -f "/etc/apt/apt.conf.d/50unattended-upgrades" ]; then
  sudo mv /etc/apt/apt.conf.d/50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades.bak
fi

sudo ln -sf $FOLDER/50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades
