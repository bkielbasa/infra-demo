# Kubernetes

Workspace settings:

- Engine: Kubernetes
- Working directory: `kubernetes`
- Manifest path: `deploy`
- Namespace: `demo`
- Prune: on
- Tool version: a kubectl release such as `1.31.2`, or empty to use the runner PATH

Attach a context entry of kind **Kubeconfig**. The run mounts it at `.kube/config` and sets `KUBECONFIG`.

Plan runs `kubectl diff`. Apply runs `kubectl apply`. Prune removes objects labeled `app.kubernetes.io/managed-by=infra-guy` that are no longer in `deploy/`.

The rendered Deployment is also visible to policies as `input.kubernetes.objects` (`kind`, `namespace`, `name`, `images`). See `policies/pinned-images.rego`.
