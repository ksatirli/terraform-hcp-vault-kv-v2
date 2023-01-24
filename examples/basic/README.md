# Example: `basic`

This is a _basic_ example of the `terraform-hcp-vault-kv-v2` module.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| hcp_vault_cluster_id | HCP Vault Cluster Identifier. | `string` | n/a | yes |
| hcp_vault_token | The Token of the HCP Vault Cluster. | `string` | n/a | yes |

### Outputs

| Name | Description |
|------|-------------|
| hcp_vault_cluster | Exported Attributes for `hcp_vault_cluster` data source. |
| vault_kv_secret_backend_v2 | Exported Attributes for `vault_kv_secret_backend_v2`. |
| vault_mount | Exported Attributes for `vault_mount`. |
<!-- END_TF_DOCS -->
