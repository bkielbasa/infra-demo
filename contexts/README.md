# Contexts

Workspace settings:

- Engine: Terraform
- Working directory: `contexts`
- Attach a context with a plain environment entry `TF_VAR_message` = `hello`

The same context form also has first-class credential kinds. Use those on the engine workspaces instead of picking your own variable names:

| Kind | File under `$HOME` | Environment variable |
| --- | --- | --- |
| Kubeconfig | `.kube/config` | `KUBECONFIG` |
| SSH private key | `.ssh/id_rsa` | `ANSIBLE_PRIVATE_KEY_FILE` |
| Ansible vault password | `.ansible/vault-password` | `ANSIBLE_VAULT_PASSWORD_FILE` |

Secret environment variables and secret files are still available when a tool needs a custom name. External references such as `env://VAR_NAME`, `vault://…`, `aws-sm://…`, and `ssm://…` resolve at run time.
