output "hcp_vault_cluster" {
  description = "Exported Attributes for `hcp_vault_cluster` data source."
  value       = module.hcp_vault_kvv2.hcp_vault_cluster
}

output "vault_mount" {
  description = "Exported Attributes for `vault_mount`."
  value       = module.hcp_vault_kvv2.vault_mount
}

output "vault_kv_secret_backend_v2" {
  description = "Exported Attributes for `vault_kv_secret_backend_v2`."
  value       = module.hcp_vault_kvv2.vault_kv_secret_backend_v2
}

output "vault_ui_main_url" {
  description = "Vault Secrets Engines URL."
  value       = module.hcp_vault_kvv2.vault_ui_main_url
}

output "secrets_engine_view_url" {
  description = "Secrets Engine main view URL."
  value       = module.hcp_vault_kvv2.secrets_engine_view_url
}

output "secrets_engine_configuration_url" {
  description = "Secrets Engine configuration view URL."
  value       = module.hcp_vault_kvv2.secrets_engine_configuration_url
}
