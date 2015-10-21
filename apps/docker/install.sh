#!/bin/bash
# Docker is a container engine, more lightweight than a full-blown Virtual Machine engine
# See also VirtualBox

set -e
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
