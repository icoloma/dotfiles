#!/bin/sh

if test ! $(which meld)
then
  echo "  Installing git."
  sudo apt-get -y install git git-gui meld vim > /tmp/git-install.log
fi

# github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
bash < <( curl https://raw.githubusercontent.com/jamiew/git-friendly/master/install.sh)

# Type `git open` to open the GitHub page or website for a repository.
npm install -g git-open
