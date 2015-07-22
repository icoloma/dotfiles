# dotfiles

This is the dotfiles repository used inside Extrema Sistemas. It's a mixture from multiple sources (in its current edition, most notably [Paul Irish](https://github.com/paulirish/dotfiles)), and super focused on development on Ubuntu. The shell by default will be bash, because real life hits hard when you are trying to use zsh.

### installing

* Fork this repository (or clone straight into your local machine). I would recommend to put it into ~/.dotfiles
* Read and run parts of `setup.sh`
* Run `symlink-setup.sh`. This will symlink everything from `dotfiles` into the home folder
* Read and memorize the git and bash shortcuts
* Go into the `apps` folder and start installing your selection of tools

Once the installation is complete you should add a `~/.gitconfig.local` file with your user account information:

```
[user]
        name = Nacho Coloma
        email = icoloma@gmail.com
```

## Start reading

You should start with `.functions`, `.aliases` and `.gitconfig`. Good stuff.

`~/.extra` will contain anything that you don't want to commit back to the git repo.

If you decide to install fasd (you should!) it pays off to read [the one-page documentation](https://github.com/clvv/fasd).

## What is included here

A lot of bash and git configuration, some handy aliases for everyday tasks (like launching a web server on the command line, or getting the public IP of this machine on the Internet). But also:

* Dev environment for JavaScript (npm), Python (pip) and Java (gradle)
* The Google Cloud Platform SDK
* Some installation scripts for tools that we consider important for day-to-day development, like gimp, inkscape or terminator.

We hope you also find it useful.

## TL;DR

This is not what you are looking for:

```
git clone git@github.com:icoloma/dotfiles.git .dotfiles
cd .dotfiles
./setup.sh
./symlink-setup.sh
cd apps
for i in */install.sh; do $i; done
```
