# icoloma dotfiles

## dotfiles

This is my dotfiles repository. It's a fork from [Holfman repo](https://github.com/holman/dotfiles.git) adapted to my favorite tools.

There should be a lot of Java, zsh, atom/sublime and cloud computing here.

## install

When installing from scratch:

```sh
sudo apt-get install git
ssh-keygen

# Install ssh public key on Github, then
git clone ssh://github.com/icoloma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

Reboot, then repeat executing `script/install`

For a more detailed description, go to Holfman repo.
