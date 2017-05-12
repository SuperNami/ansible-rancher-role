### Rancher
rancher: deploy-rancher configure-rancher


### Vault
vault-encrypt:
	ansible-vault encrypt vars/vault.yml


### Hostvars
hostvars:
	# Hostvars
	ansible -m setup localhost -i localhost


### Vault
deploy-rancher: deploy-server deploy-host install-cli install-compose
configure-rancher: configure-cli

deploy-server:
	# Deploy rancher server
	ansible-playbook main.yml -i localhost -t deploy_rancher_server

deploy-host:
	# Deploy rancher host
	ansible-playbook main.yml -i localhost -t deploy_rancher_host

install-cli:
	# Install rancher cli
	ansible-playbook main.yml -i localhost -t install_rancher_cli

configure-cli:
	# Configure rancher cli
	ansible-playbook main.yml -i localhost -t configure_rancher_cli

install-compose:
	# Install rancher compose
	ansible-playbook main.yml -i localhost -t install_rancher_compose
