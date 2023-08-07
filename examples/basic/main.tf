# retrieve information about the HCP Vault Cluster
# see https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/vault_cluster
data "hcp_vault_cluster" "main" {
  cluster_id = var.hcp_vault_cluster_id
}

resource "hcp_vault_cluster_admin_token" "main" {
  cluster_id = var.hcp_vault_cluster_id
}

# see https://registry.terraform.io/modules/ksatirli/hvn-aws/hcp/1.0.0
module "hcp_vault_kvv2" {
  source = "../.."
}
