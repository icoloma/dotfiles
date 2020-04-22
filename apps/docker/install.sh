#!/bin/bash
# See also VirtualBox

set -euo pipefail
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

if test ! $(which docker)
then
  echo "Installing docker"
  sudo apt-get -y install docker-engine
  sudo usermod -aG docker $USER
fi

extra_set DOCKER_HOST=unix:///var/run/docker.sock
extra_set DOCKER_CERT_PATH=""
