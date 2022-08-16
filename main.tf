# retrieve information about the HCP Vault Cluster
# see https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/vault_cluster
data "hcp_vault_cluster" "main" {
  cluster_id = var.cluster_id
}

# create Vault Admin Token to be able to make changes to Vault Backends
# ⚠️ Note that this will persist a Vault Admin Token to Terraform State.
# ⚠️ Disabling this resource does NOT invalidate the provisioned admin token.
# for more guidance, see https://www.terraform.io/language/state/sensitive-data
# and https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_cluster_admin_token
resource "hcp_vault_cluster_admin_token" "main" {
  cluster_id = data.hcp_vault_cluster.main.cluster_id
}

# convenience function to map correct Vault Address based on availability
locals {
  # map `vault_address` based on availability of Public Endpoint
  # TODO: add toggle so end-user can choose if `public` should even be considered
  vault_address = data.hcp_vault_cluster.main.public_endpoint ? data.hcp_vault_cluster.main.vault_public_endpoint_url : data.hcp_vault_cluster.main.vault_private_endpoint_url
}

# see https://registry.terraform.io/providers/hashicorp/vault/latest/docs#schema
provider "vault" {
  address   = local.vault_address
  namespace = data.hcp_vault_cluster.main.namespace
  token     = hcp_vault_cluster_admin_token.main.token
}

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
