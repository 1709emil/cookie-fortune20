#!/bin/bash
KUBECONFIG_CONTENT="${KUBECONFIG}"

mkdir -p $HOME/.kube
echo "$KUBECONFIG_CONTENT" > $HOME/.kube/kubeconfig

chmod 600 $HOME/.kube/kubeconfig