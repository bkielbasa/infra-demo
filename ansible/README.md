# Ansible

Workspace settings:

- Engine: Ansible
- Working directory: `ansible`
- Playbook: `site.yml`
- Inventory: `inventories/hosts`
- Tool version: an ansible-core release such as `2.17.5`, or empty to use the runner PATH

This inventory uses a local connection, so a plan (`ansible-playbook --check --diff`) does not need SSH.

For a remote inventory, attach context entries instead of inventing variable names:

- **SSH private key** mounts `.ssh/id_rsa` and sets `ANSIBLE_PRIVATE_KEY_FILE`
- **Ansible vault password** mounts `.ansible/vault-password` and sets `ANSIBLE_VAULT_PASSWORD_FILE`

Extra vars on the workspace, such as `message=hello`, are passed as `-e`.
