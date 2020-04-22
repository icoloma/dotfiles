#!/bin/bash
# Android SDK and Ubuntu dependencies for Android

set -euo pipefail
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

if test ! $(which adb)
then
  echo "Installing Android"
  sudo apt-get install libstdc++6 lib32stdc++6
  wget http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz -O /tmp/android-sdk-linux.tgz
  tar -xvzf /tmp/android-sdk-linux.tgz -C /opt/
  /opt/android-sdk-linux/tools/android update sdk --no-ui --filter 1,platform-tools
  /opt/android-sdk-linux/tools/android&

  ln -sf /opt/android-sdk-linux/tools/android $HOME/bin
  ln -sf /opt/android-sdk-linux/platform-tools/adb $HOME/bin
fi

extra_set ANDROID_HOME=/opt/android-sdk-linux "Android tools"
