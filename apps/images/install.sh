#!/bin/bash
# Image processing: gimp, inkscape and converter tools
# Also, see video/install.sh

if test ! $(which gimp)
then
	echo "Installing gimp"
	sudo apt-get -y install gimp gimp-help-en gimp-data gimp-plugin-registry gimp-data-extras
fi

if test ! $(which inkscape)
then
	echo "Installing inkscape"
	sudo apt-get -y install inkscape
fi

if test ! $(which avconv)
then
  echo "Installing video editing tools."
  sudo apt-get -y install libav-tools libavcodec-extra-54
fi
