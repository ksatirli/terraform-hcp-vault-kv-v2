output "hcp_vault_cluster" {
  description = "Exported Attributes for `hcp_vault_cluster` data source."
  value       = data.hcp_vault_cluster.main
}

output "vault_mount" {
  description = "Exported Attributes for `vault_mount`."
  value       = module.hcp_vault_kvv2.vault_mount
}

output "vault_kv_secret_backend_v2" {
  description = "Exported Attributes for `vault_kv_secret_backend_v2`."
  value       = module.hcp_vault_kvv2.vault_kv_secret_backend_v2
}
