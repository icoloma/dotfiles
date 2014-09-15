#!/bin/sh

# Google Cloud Platform requires Java 7. Feel free to upgrade to Java 8 if you are not using it
if test ! $(which java)
then
  echo "  Installing Java."
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get -y install oracle-java7-installer > /tmp/java-install.log
fi


if test ! $(which gradle)
then
  sudo add-apt-repository ppa:cwchien/gradle
  sudo apt-get update
  sudo apt-get install gradle
fi