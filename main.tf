# see https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount
resource "vault_mount" "main" {
  type        = "kv"
  path        = var.mount_path
  description = var.mount_description
  namespace   = var.mount_namespace

  options = {
    version = "2"
  }
}

# see https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kv_secret_backend_v2
resource "vault_kv_secret_backend_v2" "main" {
  mount                = vault_mount.main.path
  namespace            = var.mount_namespace
  delete_version_after = var.delete_version_after
  max_versions         = var.max_versions
  cas_required         = var.cas_required
}
