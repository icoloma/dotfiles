#!/bin/sh
set -e

if test ! $(which adb)
then
  echo "  Installing Android."
  sudo apt-get install libstdc++6 lib32stdc++6
  wget http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz -O /tmp/android-sdk-linux.tgz
  tar -xvzf /tmp/android-sdk-linux.tgz -C /opt/
  . android/path.zsh
  android update sdk --no-ui --filter 1,platform-tools
  android&
  sudo ln -s /opt/android-sdk-linux/platform-tools/adb /usr/local/bin
fi