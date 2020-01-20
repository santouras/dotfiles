#!/usr/bin/env bash
# https://github.com/kubernetes-sigs/krew/
set -ex

krew_version=v0.2.1

if [ -d $HOME/.krew ] ; then
    echo "krew already installed"
else
    cd "$(mktemp -d)"
    curl -fsSLO "https://storage.googleapis.com/krew/${krew_version}/krew.{tar.gz,yaml}"
    tar zxvf krew.tar.gz

    krew_binary="./krew_$(uname | tr '[:upper:]' '[:lower:]')_amd64"
    ${krew_binary} install --manifest=krew.yaml --archive=krew.tar.gz
fi

plugin_list="
    tree
"

for plugin in $plugin_list ; do
    kubectl krew install "$plugin"
done
