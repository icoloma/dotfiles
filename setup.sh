#!/bin/bash
# This file is not intended for direct execution. Instead,
# copy and paste parts of it, bit by bit.

set -e

echo "Do not run this script in one go. Hit Ctrl-C NOW"
read -n 1

# z is hooked up in .bash_profile
chmod +x $(pwd)/submodules/z/z.sh
