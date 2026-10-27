# Helm

Workspace settings:

- Engine: Helm
- Working directory: `helm`
- Release name: `infra-demo`
- Namespace: `demo`
- Chart: `./chart`
- Create namespace: on
- Wait: on
- Tool version: a Helm release such as `3.16.2`, or empty to use the runner PATH

Attach a context entry of kind **Kubeconfig**.

Plan compares `helm template` with the current release (or `helm diff` when that plugin is installed). Apply runs `helm upgrade --install`.

After a plan or apply, the project **Releases** tab lists `helm history`. **Roll back** opens an auto-approved run that executes `helm rollback` to the chosen revision. That history is separate from Terraform state.
