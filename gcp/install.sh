#!/bin/zsh
# Install the Google Cloud Platform SDK

if test ! $(which gcloud)
then
  echo "  Installing Google Cloud SDK."
# TODO: Make it install into /opt
# run install.sh --help to get a list of available flags
  curl https://sdk.cloud.google.com | bash

  # Install GAE python too
  source gcp/completion.zsh
  gcloud components update gae-python
fi