#!/bin/bash
set -e

if [[ -z "$GRAFANA_ORG" ]]; then
    echo "Must provide GRAFANA_ORG in environment" 1>&2
    exit 1
fi

if [[ -z "$GRAFANA_ADMIN_TOKEN" ]]; then
    echo "Must provide GRAFANA_ADMIN_TOKEN in environment" 1>&2
    exit 1
fi

vault secrets enable -path=grafanacloud vault-plugin-secrets-grafanacloud

vault write grafanacloud/config \
    organisation=$GRAFANA_ORG \
    key=$GRAFANA_ADMIN_TOKEN \
    ttl=300 \
    max_ttl=3600 \
    url=https://grafana.com/api/
