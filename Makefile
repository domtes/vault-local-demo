.PHONY: up
up: plugins/vault-plugin-secrets-grafanacloud
	docker-compose up

plugins/vault-plugin-secrets-grafanacloud:
	scripts/download_plugin.sh

.PHONY: init
init: plugins/vault-plugin-secrets-grafanacloud
	scripts/write_grafana_config.sh

.PHONY: revoke-all
revoke-all: plugins/vault-plugin-secrets-grafanacloud
	scripts/revoke_all_leases.sh

.PHONY: clean
clean:
	rm plugins/vault-plugin-secrets-grafanacloud
