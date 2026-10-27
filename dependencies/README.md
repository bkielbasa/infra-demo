# Dependencies

Create two Terraform workspaces:

| Workspace | Working directory |
| --- | --- |
| `demo-upstream` | `dependencies/upstream` |
| `demo-downstream` | `dependencies/downstream` |

On `demo-downstream`, add a dependency on `demo-upstream`:

- Output name: `bucket_name`
- Input name: `bucket_name`

A successful upstream apply passes the output into the downstream run as `TF_VAR_bucket_name`. Turn on "trigger always" when every upstream apply should enqueue the downstream workspace.
