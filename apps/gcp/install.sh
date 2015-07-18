#!/bin/bash
# Google Cloud Platform SDK

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

if test ! $(which gcloud)
then
  echo "Installing Google Cloud Platform SDK"
  
  # TODO: Make it install into /opt
  # run install.sh --help to get a list of available flags
  curl https://sdk.cloud.google.com | bash

  # Install some packages
  source ~/.bash_profile
  gcloud components update gae-python gae-java app-engine-java
fi

extra_set APPENGINE_HOME=$HOME/google-cloud-sdk/platform/appengine-java-sdk
