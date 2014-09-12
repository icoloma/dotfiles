#!/bin/sh
# Install the Google Cloud Platform SDK

if test ! $(which gcloud)
then
  echo "  Installing Google Cloud SDK."
#  CLOUDSDK_CORE_DISABLE_PROMPTS=true
  curl https://sdk.cloud.google.com | bash
fi
