# GCP

Workspace settings:

- Engine: Terraform
- Working directory: `providers/gcp`
- Attach a GCP cloud integration (workload identity provider and service account)
- Context entry `TF_VAR_project_id` set to the GCP project id

infra-guy stores the state. Leave this directory without a `backend` block.

The integration writes `GOOGLE_APPLICATION_CREDENTIALS`. This stack creates one storage bucket.
