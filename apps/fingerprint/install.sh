#!/bin/bash
# Fingerprint reader for Lenovo
# Source: 
# https://glsk.net/2018/05/t460s-fingerprint-reader-in-linux/
# https://github.com/3v1n0/libfprint/blob/vfs0090/README.md#device-initialization-and-pairing

# Initialize the device
sudo snap install validity-sensors-tools
sudo snap connect validity-sensors-tools:raw-usb
sudo snap connect validity-sensors-tools:hardware-observe
sudo validity-sensors-tools.initializer

# Add the repository and install the tod package (supports both chips)
sudo add-apt-repository -u ppa:3v1n0/libfprint-vfs0090
sudo apt install libfprint-2-tod-vfs0090

# Add to pam.d
sudo apt install libpam-fprintd

# enroll fingerprint
fprintd-enroll -f "right-index-finger" "$USER"
fprintd-verify

