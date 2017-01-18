#!/bin/bash
# Oracle Java SDK, Gradle and IntelliJ IDEA

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

# Google Cloud Platform requires Java 7. Feel free to upgrade to Java 8 if you are not using it
# Select a concrete Java version:
# update-java-alternatives -s java-8-oracle
if test ! $(which java); then
  echo "Installing Java"
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update > /tmp/java-install.log
  sudo apt-get -y install oracle-java7-installer oracle-java8-installer oracle-java8-set-default
  sudo update-java-alternatives -s java-7-oracle
  source ~/.bash_profile
fi
extra_set JAVA_HOME=$(echo $(readlink -e $(which java)) | sed 's/oracle.*/oracle/')

if test ! $(which gradle); then
  sudo add-apt-repository ppa:cwchien/gradle
  sudo apt-get update >> /tmp/java-install.log
  sudo apt-get -y install gradle
  if [ ! -e ~/.gradle/gradle.properties ]; then
    mkdir -p ~/.gradle
    echo "# https://docs.gradle.org/2.5/userguide/gradle_daemon.html
org.gradle.daemon=true" >> ~/.gradle/gradle.properties
  fi
fi

if [ ! -d /opt/idea ]; then
  echo "You have to install IntelliJ into /opt/idea yourself, I'm afraid."
  echo "When prompted to import settings, use idea-settings.jar in this folder"
  xdg-open https://www.jetbrains.com/idea/download/
fi

