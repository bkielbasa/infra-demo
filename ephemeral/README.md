# Ephemeral workspace

Workspace settings:

- Engine: Terraform
- Working directory: `ephemeral`
- TTL hours: `24`
- Auto-destroy: on

Apply creates one `terraform_data` resource. When the TTL expires, infra-guy opens a destroy run for this workspace. Extend the TTL from the project page to keep it.
