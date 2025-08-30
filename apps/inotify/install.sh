#/bin/bash
# We use inotify with a lot of files, which freezes my laptop unless we do this

# https://askubuntu.com/questions/1468383/desktop-freezes-and-resets-30-60-seconds-later
# default is 65536 and 128, respectively
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
echo fs.inotify.max_user_instances=8192 | sudo tee -a /etc/sysctl.conf

sudo sysctl -p


