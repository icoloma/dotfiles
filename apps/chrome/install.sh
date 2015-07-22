#!/bin/bash
# Google Chrome

if test ! $(which google-chrome)
then
  echo "Installing Google Chrome. You will have to do this by hand :)"
  xdg-open http://www.google.com/chrome
fi
