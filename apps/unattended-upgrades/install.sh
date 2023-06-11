#!/bin/bash
# Unattended upgrades
# https://help.ubuntu.com/community/AutomaticSecurityUpdates

set -euo pipefail
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

sudo apt install unattended-upgrades
