#!/bin/sh

# Google Cloud Platform requires Java 7. Feel free to upgrade to Java 8 if you are not using it
# Select a concrete Java version with 
# update-java-alternatives -s java-7-oracle
if test ! $(which java)
then
  echo "  Installing Java."
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update > /tmp/java-install.log
  sudo apt-get -y install oracle-java7-installer
fi


if test ! $(which gradle)
then
  sudo add-apt-repository ppa:cwchien/gradle
  sudo apt-get update >> /tmp/java-install.log
  sudo apt-get -y install gradle
fi

if [ ! -d /opt/idea ]
then
  URL=http://download-cf.jetbrains.com/idea/ideaIC-13.1.4b.tar.gz
  FILENAME=$(echo $URL | grep -o 'idea[^/]\+')
  echo "Installing IntelliJ IDEA into /opt/$(echo $FILENAME | sed s/\.tar\.gz//)"
  wget -O /tmp/$FILENAME $URL
  tar -xvzf /tmp/$FILENAME -C /tmp
  sudo mv /tmp/idea*/ /opt
fi

