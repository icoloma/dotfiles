#!/bin/bash
# Oracle Java SDK, Gradle and IntelliJ IDEA

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

# Select a concrete Java version:
# sudo update-alternatives --config java
# sudo update-alternatives --config javac
if test ! $(which java); then
  echo "Installing Java"
  sudo apt-get -y install openjdk-11-jdk-headless
  source ~/.bash_profile
fi

# No need to install gradle. Use ./gradlew in your project instead

if test ! $(which idea); then
  sudo snap install intellij-idea-community --classic
fi

