#!/bin/bash
# Kubernetes tools
# kubectl is installed by gcp/install

set -e
FOLDER=$(cd "$(dirname $0)"; pwd)
source $FOLDER/../../_utils.sh

if ! kubectl krew version > /dev/null; then
  # Install krew (official hack at the time of this writing, Jan 2020 -- don't judge)
  # https://krew.sigs.k8s.io/docs/user-guide/setup/install/
  (
    set -x; cd "$(mktemp -d)" &&
    curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew.{tar.gz,yaml}" &&
    tar zxvf krew.tar.gz &&
    KREW=./krew-"$(uname | tr '[:upper:]' '[:lower:]')_amd64" &&
    "$KREW" install --manifest=krew.yaml --archive=krew.tar.gz &&
    "$KREW" update
  )
  echo 'export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"' >> ~/.extra
  source ~/.extra

  kubectl krew install ctx ns tree
fi

sudo snap install k9s
