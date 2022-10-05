# Using the Form3 Grafana cloud Vault secrets backend 

This project demonstrate the usage of the custom plugin, to issue short lived API tokens
that applications can use to access the [Grafana Cloud API](https://grafana.com/docs/grafana-cloud/reference/cloud-api/).

The `vault` server is launched in `dev` mode, so it starts unsealed and automatically
registers the [`vault-plugin-secrets-grafanacloud`](https://github.com/form3tech-oss/vault-plugin-secrets-grafanacloud) plugin.

## Demo script

Run the `make` command with no arguments to launch vault and initialize the 
plugin.

In another terminal, run the `make init` to create an example `Viewer` role.

To fetch a new short lived token, launch: `scripts/read_sole_cred.sh`.

To revoke all the credentials issued during the demo, run the `make revoke-all` command.

## Use case: pushing metrics to a Grafana Cloud prometheus instance

TODO

## Use case: pushing traces to a Grafana Cloud Tempo instance

TODO
