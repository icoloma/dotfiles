# dotfiles

This is the dotfiles repository used inside Extrema Sistemas. It's a mixture from multiple sources (in its current edition, most notably [Paul Irish](https://github.com/paulirish/dotfiles)), and super focused on development on Ubuntu. The shell by default will be bash, because real life hits hard when you are trying to use zsh.

### installing

* Fork this repository (or clone straight into your local machine). For cloning I would recommend to clone into ~/.dotfiles
* Read and run parts of `setup.sh`
* Run `symlink-setup.sh`. This will symlink all links from dotfiles into the home folder
* Read and remember the git and bash shortcuts
* Go into the `apps` folder and start installing your selection of tools

Once your installation is complete you will have to manually add the following:

* Add ~/.gitconfig.local with your user data

## Start reading

You should start with .functions, .aliases and .gitconfig. Good stuff.

~/.extra will contain anything that you don't want to commit back to the git repo, like 
configuration-specific stuff.

If you decide to install fasd (you should!) it pays off to read [the one-page documentation](https://github.com/clvv/fasd).

## What is included here

A lot of bash and git configuration, some handy aliases for everyday tasks (like launching a web server on the command line, or getting the public IP of this machine on the Internet). But also:

* Dev environment for JavaScript (npm), Ruby (gems), Python (pip) and Java (gradle)
* The Google Cloud Platform SDK
* Some .deb packages that we consider important for day-to-day development, like gimp, inkscape or terminator.
