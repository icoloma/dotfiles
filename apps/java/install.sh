#!/bin/bash
# Oracle Java SDK, Gradle and IntelliJ IDEA

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

# Select a concrete Java version:
# update-java-alternatives -s java-8-oracle
if test ! $(which java); then
  echo "Installing Java"
  sudo apt-get -y install oracle-java8-installer oracle-java8-set-default
  source ~/.bash_profile
fi

if test ! $(which gradle); then
#  sudo add-apt-repository ppa:cwchien/gradle
  sudo apt-get -y install gradle
fi

if test ! $(which idea); then
  sudo snap install intellij-idea-community --classic
fi

