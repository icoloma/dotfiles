# dotfiles

This is the dotfiles repository used inside Extrema Sistemas. It's a fork from [Holfman dotfiles repository](https://github.com/holman/dotfiles.git), adapted to use Ubuntu with our favorite tools.

*This is pre-alpha quality*. Please understand it as a list of nice tools, but in no way will it work flawlessly. We are still working on that.

## Things to know

* Anything called `install.sh` will be executed, following alphabetical order.
* Anything that ends in .zsh will be included in your zsh config
* Anything that ends in .symlink will be linked from your home folder

For a more detailed description, go to [the original README.md](https://github.com/holman/dotfiles.git)

## What is included here

Apart from a lot of crazy stuff from the original repository (like git aliases and such) this repo will install the following:

* A JavaScript (node + npm) environment
* A Ruby (gems and such) environment
* A Java (java + gradle) environment
* Some python tools
* The Google Cloud Platform SDK 
* Some .deb packages that we consider important for day-to-day development, like gimp, inkscape or tmux. The full list is in the `0-aptget` folder.
* Some "not free" tools like Sublime Text Editor, Google Chrome and Dropbox. The full list is in the `10-nonfree` folder.

Your shell will be changed to zsh. We are still experimenting with that.

## Install

When installing from scratch:

```sh
sudo apt-get install git
git clone ssh://github.com/icoloma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
script/install
```
