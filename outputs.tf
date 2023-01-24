output "vault_mount" {
  description = "Exported Attributes for `vault_mount`."
  value       = vault_mount.main
}

output "vault_kv_secret_backend_v2" {
  description = "Exported Attributes for `vault_kv_secret_backend_v2`."
  value       = vault_kv_secret_backend_v2.main
}

locals {
  mount           = vault_kv_secret_backend_v2.main.mount
  base_url_suffix = "namespace=${var.mount_namespace}"
  base_url        = "${var.vault_addr}/ui/vault/secrets"
}

output "vault_ui_main_url" {
  description = "Vault Secrets Engines URL."
  value       = "${local.base_url}/?${local.base_url_suffix}"
}

output "secrets_engine_view_url" {
  description = "Secrets Engine main view URL."
  value       = "${local.base_url}/${local.mount}/list?${local.base_url_suffix}"
}

output "secrets_engine_configuration_url" {
  description = "Secrets Engine configuration view URL."
  value       = "${local.base_url}/${local.mount}/configuration?${local.base_url_suffix}"
}
