#!/bin/bash
set -ue

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

RELEASE_URL=$(curl -s https://api.github.com/repos/form3tech-oss/vault-plugin-secrets-grafanacloud/releases/latest | \
    jq --raw-output '.assets[] | select(.content_type=="application/octet-stream") | .browser_download_url')

PLUGIN=$SCRIPT_DIR/../plugins/vault-plugin-secrets-grafanacloud
curl -L -o $PLUGIN $RELEASE_URL
chmod +x $PLUGIN
