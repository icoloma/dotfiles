#!/bin/bash
# SSH key pair 

if [ ! -f ~/.ssh/id_rsa ]; then
  echo "Generating key pair for SSH"
  ssh-keygen
fi

