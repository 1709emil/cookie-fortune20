#!/bin/bash
KUBECONFIG_CONTENT="${KUBECONFIG}"

if [ -z "$KUBECONFIG_CONTENT" ]; then
  echo "KUBECONFIG environment variable is not set. Exiting..."
  exit 1
fi

mkdir -p $HOME/.kube

echo "$KUBECONFIG_CONTENT" > $HOME/.kube/kubeconfig

chmod 600 $HOME/.kube/kubeconfig