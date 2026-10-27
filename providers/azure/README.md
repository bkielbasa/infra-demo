# Azure

Workspace settings:

- Engine: Terraform
- Working directory: `providers/azure`
- Attach an Azure cloud integration (client, tenant, and subscription)

infra-guy stores the state. Leave this directory without a `backend` block.

The integration sets `ARM_USE_OIDC` and the subscription id. This stack creates the resource group `infra-demo`.
