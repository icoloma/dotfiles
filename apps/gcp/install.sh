#!/bin/bash
# Google Cloud Platform SDK

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

if test ! $(which gcloud)
then
  echo "Installing Google Cloud Platform SDK"

  # run install.sh --help to get a list of available flags
  curl https://sdk.cloud.google.com | bash

  if test ! "$(grep completion.bash.inc ~/.extra ~/.bashrc ~/.bash_profile)"; then

    # the user did not let Google change .bashrc, we do it ourselves

    ln -sf ~/google-cloud-sdk/bin/gcloud ~/bin
    ln -sf ~/google-cloud-sdk/bin/gsutil ~/bin
    ln -sf ~/google-cloud-sdk/bin/bq ~/bin

    printf "\n# Google Cloud Platform Config\nsource $HOME/google-cloud-sdk/completion.bash.inci\n" >> ~/.extra

    if test ! "$(grep 'alias gce' ~/.extra)"; then
      echo "alias gce='gcloud compute'" >> ~/.extra
    fi
    extra_set GOOGLE_CLOUD_HOME=$HOME/google-cloud-sdk
    extra_set APPENGINE_HOME=/opt/appengine-java-sdk

    echo "Please download the App Engine SDK, install in /opt and ln -s into /opt/appengine-java-sdk"
    xdg-open https://cloud.google.com/appengine/downloads

  fi

  ~/google-cloud-sdk/gcloud components update app-engine-python app-engine-java app-engine-java
  ~/google-cloud-sdk/gcloud components update
fi

