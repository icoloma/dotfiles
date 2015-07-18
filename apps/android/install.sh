#!/bin/bash
# Android SDK and Ubuntu dependencies for Android

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

if test ! $(which adb)
then
  echo "Installing Android"
  sudo apt-get install libstdc++6 lib32stdc++6
  wget http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz -O /tmp/android-sdk-linux.tgz
  tar -xvzf /tmp/android-sdk-linux.tgz -C /opt/
  . android/path.zsh
  android update sdk --no-ui --filter 1,platform-tools
  android&

  ln -sf /opt/android-sdk-linux/platform-tools/adb ~/bin
fi

extra_set ANDROID_HOME=/opt/android-sdk-linux "Android tools"