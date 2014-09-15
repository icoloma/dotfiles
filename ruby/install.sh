#!/bin/sh
# Install ruby gems

# Ruby
if test ! $(which ruby)
then
  echo "  Installing ruby."
  sudo gem install rbenv ruby-build ruby-dev > /tmp/ruby-install.log
fi

if test ! $(which jekyll)
then
  echo "  Installing jekyll."
  sudo gem install jekyll > /tmp/jekyll-install.log
fi
