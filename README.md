Rancher
=========

Install Rancher server and host

Requirements
------------

Ansible
Ubuntu or Debian server

Role Variables
--------------

Located in vars directory

Create dev-secrets.yml

---
# Development secrets
rancher_access_key:
rancher_secret_key:
rancher_server_url:


And create vault.yml

---
# Vault
vault_rancher_access_key:
vault_rancher_secret_key:
vault_rancher_server_url:



Dependencies
------------

None

Example Playbook
----------------

Located in git repository

License
-------

BSD
