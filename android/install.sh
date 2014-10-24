#!/bin/sh

if test ! $(which adb)
then
  echo "  Installing Android."
  wget http://dl.google.com/android/android-sdk_r22.0.5-linux.tgz > /tmp/android-sdk-linux.tgz
  tar -xvzf /tmp/android-sdk-linux.tgz -C /opt/
  . android/path.zsh
  android update sdk --no-ui --filter 1
fi