#!/bin/bash
# Enable FID / Yubykey on Ubuntu
# Must run with sudo
# See https://www.key-id.com/enable-fido-u2f-linux/

echo '
# this udev file should be used with udev 188 and newer
ACTION!="add|change", GOTO="u2f_end"

# Key-ID FIDO U2F
KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="096e", ATTRS{idProduct}=="0850|0880", TAG+="uaccess"

LABEL="u2f_end"
' > /etc/udev/rules.d/70-u2f.rules