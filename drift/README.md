# Drift

Workspace settings:

- Engine: Terraform
- Working directory: `drift`
- Drift detection: on

Apply once so the state holds `v1`. The next scheduled check is a plan-only run. Change `input` to `v2` and push; the following check reports the workspace as drifted.

Cloud resources drift the same way. The AWS demo's SSM parameter is a good target: edit the parameter in AWS and the next check plans an update.
