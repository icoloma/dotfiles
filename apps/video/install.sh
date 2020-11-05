#!/bin/bash
# Video editing tools and such
# Also, see gifify in .functions, and gifify.sh and webm.sh in this same folder

set -euo pipefail
FOLDER=$(cd "$(dirname $0)"; pwd)

# TODO: Install gifsky or peek (peek is switching to gifski under the covers) when available in ubuntu
# https://github.com/phw/peek
# https://gif.ski/

# Use OBS Studio for video capturing (launch "obs")
# You may have to disable "video hardware aceleration" in Chrome Settings
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio

# Todo: OpenShot or Shotcut for video editing. Third option would be Kdenlive
