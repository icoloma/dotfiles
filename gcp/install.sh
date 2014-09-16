#!/bin/sh
# Install the Google Cloud Platform SDK

if test ! $(which gcloud)
then
  echo "  Installing Google Cloud SDK."
# TODO: Make it install into /opt
#  CLOUDSDK_CORE_DISABLE_PROMPTS=true
  curl https://sdk.cloud.google.com | bash

  # Install GAE python too
  source gcp/completion.zsh
  gcloud components update gae-python
fi
