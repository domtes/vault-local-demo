#!/bin/bash
set -ue

vault write grafanacloud/roles/examplerole \
    gc_role="Viewer" \
    ttl="60s"       \
    max_ttl="600s"   

vault read grafanacloud/creds/examplerole
