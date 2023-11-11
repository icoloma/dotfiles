#!/bin/bash
# Google Cloud Platform SDK

set -euo pipefail
FOLDER=$(cd "$(dirname "$0")"; pwd)
source "$FOLDER"/../../_utils.sh

if test ! $(which gcloud)
then
  echo "Installing Google Cloud Platform SDK"

  # run install.sh --help to get a list of available flags
  curl https://sdk.cloud.google.com | bash

  # get gcloud in the path
  source ~/.bashrc
fi

#gcloud components update -q
gcloud components install -y \
  kubectl \
  kustomize \
  skaffold \
  terraform-tools
