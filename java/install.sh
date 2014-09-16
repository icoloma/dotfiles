#!/bin/sh

# Google Cloud Platform requires Java 7. Feel free to upgrade to Java 8 if you are not using it
# Select a concrete Java version:
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
  tar -xvzf /tmp/$FILENAME -C /tmp > /tmp/idea-install.log
  sudo mv /tmp/idea*/ /opt

  echo 'Creating launcher'
  mkdir -p ~/.local/share/applications/
  EXEC=$(ls /opt/idea-IC*/bin/idea.sh | sort --version-sort | head -1)
  echo "
  [Desktop Entry]
  Version=1.0
  Type=Application
  Name=IntelliJ IDEA Community Edition
  Icon=$(echo $EXEC | sed s/.sh/.png/)
  Exec=$EXEC %f
  Comment=Develop with pleasure!
  Categories=Development;IDE;
  Terminal=false
  StartupWMClass=jetbrains-idea-ce
  " > ~/.local/share/applications/jetbrains-idea-ce.desktop
  #$(EXEC) >> /tmp/idea-install.log

fi

