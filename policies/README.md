# Policies

Paste `pinned-images.rego` into an approval policy and attach it to the Kubernetes or Helm workspace.

The policy reads `input.kubernetes.objects`, which infra-guy fills from rendered manifests (`kind`, `namespace`, `name`, `images`). It does not parse YAML text. A Deployment whose image is not `nginx:1.27.0` is denied.

`kubernetes/deploy/app.yaml` and `helm/chart` both render `nginx:1.27.0`, so a plan of those workspaces is allowed.
