# AWS

Workspace settings:

- Engine: Terraform
- Working directory: `providers/aws`
- Attach an AWS cloud integration (OIDC or assume role)

infra-guy stores the state. Leave this directory without a `backend` block.

The integration injects short-lived AWS credentials and `AWS_REGION`. This stack writes one SSM parameter, `/infra-demo/infra-demo`.
