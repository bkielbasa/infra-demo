# infra-demo

Small workspaces for [infra-guy](https://github.com/bkielbasa/infra-guy). Each directory is one project. Set the working directory to that path. infra-guy stores Terraform state, so these stacks have no `backend` block.

## Providers

| Directory | What it applies |
| --- | --- |
| `providers/aws` | SSM parameter, using an AWS cloud integration |
| `providers/gcp` | Storage bucket, using a GCP cloud integration and `TF_VAR_project_id` |
| `providers/azure` | Resource group, using an Azure cloud integration |

## Other features

| Directory | Workspace |
| --- | --- |
| `kubernetes` | Kubernetes engine, kubeconfig context, optional kubectl version |
| `ansible` | Ansible engine, local inventory, SSH key and vault password contexts |
| `helm` | Helm engine, release history, and one-click rollback |
| `contexts` | `TF_VAR_message` from a context entry |
| `policies` | OPA policy over `input.kubernetes.objects` |
| `drift` | Scheduled plan-only drift check |
| `ephemeral` | TTL with auto-destroy |
| `dependencies` | Upstream output mapped into a downstream variable |
