# see https://registry.terraform.io/modules/ksatirli/hvn-aws/hcp/1.0.0
module "hcp_vault_kvv2" {
  source = "../.."

  cluster_id = "workloads-aws"
}

output "hcp_vault_cluster" {
  description = "Exported Attributes for `hcp_vault_cluster` data source."
  value       = module.hcp_vault_kvv2.hcp_vault_cluster
}
