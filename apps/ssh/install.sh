#!/bin/bash
# Generate key pair for SSH

if [ ! -f ~/.ssh/id_rsa ]
then
  echo "Generating key pair for SSH"
  ssh-keygen
fi
